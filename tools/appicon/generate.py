"""Vygeneruje kandidáty ikony Běhánka přes ComfyUI na SPARKu (flux, stejný workflow jako Kirian).

Spouštět přes broker, ať SPARK ví, kdo ho používá:
  sparkctl exec behanek comfyui 30 "" "Běhánek ikona" -- python3 tools/appicon/generate.py

Každý koncept z concepts.json obalí společný rámec ikony (čtverec, jeden motiv,
pozadí do krajů, žádný text), aby varianty šly porovnat. Výstup: output/<id>_v<i>.png.
"""
import argparse
import json
import os
import random
import time
import urllib.parse
import urllib.request
import uuid

HERE = os.path.dirname(os.path.abspath(__file__))

FRAME = """Mobile app icon for "Běhánek", a minimalist running tracker app. Square 1:1 composition.
Subject: {subject}.
One bold subject, centred, filling about 65% of the frame, readable at 60x60 pixels. Full-bleed opaque background in near-black charcoal (#0B0B0B) with a very subtle dark green radial glow, reaching every edge (the corners are rounded off by the phone, so nothing important near them).
Clean, modern, high-contrast, calm and premium, like a well-designed iOS app icon. Neon lime (#C6FF00) is the only accent colour. No text, no letters, no logo type, no border, no frame, no watermark, no UI."""


def call(base, path, data=None):
    req = urllib.request.Request(base + path, data=data, headers={"Content-Type": "application/json"} if data else {})
    with urllib.request.urlopen(req, timeout=60) as r:
        return r.read()


def generate(base, workflow, prompt, n, prefix):
    g = json.loads(json.dumps(workflow))
    g["4"]["inputs"]["text"] = prompt
    g["6"]["inputs"]["batch_size"] = n
    g["8"]["inputs"]["seed"] = random.randrange(1, 2**62)
    g["10"]["inputs"]["filename_prefix"] = prefix
    body = json.dumps({"prompt": g, "client_id": str(uuid.uuid4())}).encode()
    pid = json.loads(call(base, "/prompt", body))["prompt_id"]
    deadline = time.time() + 20 * 60
    while time.time() < deadline:
        hist = json.loads(call(base, "/history/" + pid))
        if pid in hist:
            out = hist[pid].get("outputs", {}).get("10", {}).get("images", [])
            return [call(base, "/view?" + urllib.parse.urlencode(img)) for img in out]
        time.sleep(3)
    raise TimeoutError(pid)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--url", default=os.environ.get("COMFYUI_API_URL", "http://spark-99bb:8188"))
    ap.add_argument("-n", type=int, default=6)
    ap.add_argument("--only", default="")
    ap.add_argument("--out", default=os.path.join(HERE, "output"))
    a = ap.parse_args()
    workflow = json.load(open(os.path.join(HERE, "flux_icon.json")))
    concepts = json.load(open(os.path.join(HERE, "concepts.json")))
    only = {s.strip() for s in a.only.split(",") if s.strip()}
    os.makedirs(a.out, exist_ok=True)
    ok = failed = 0
    for c in concepts:
        if only and c["id"] not in only:
            continue
        print(f"--- {c['id']} ({c['title']})", flush=True)
        try:
            imgs = generate(a.url, workflow, FRAME.format(subject=c["prompt"]), a.n, "behanek_icon_" + c["id"])
        except Exception as e:  # jeden koncept nesmí shodit ostatní
            print(f"FAIL {c['id']}: {e}", flush=True)
            failed += 1
            continue
        for i, img in enumerate(imgs, 1):
            with open(os.path.join(a.out, f"{c['id']}_v{i}.png"), "wb") as f:
                f.write(img)
        ok += len(imgs)
        print(f"  OK {len(imgs)}", flush=True)
    print(json.dumps({"images": {"ok": ok, "failed": failed}}))
    raise SystemExit(1 if failed else 0)


if __name__ == "__main__":
    main()
