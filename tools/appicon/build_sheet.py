"""Složí výběrovou stránku z vygenerovaných kandidátů: output/*.png -> sheet/img/*.jpg + sheet/out.html."""
import json
import os
import subprocess

HERE = os.path.dirname(os.path.abspath(__file__))
concepts = json.load(open(os.path.join(HERE, "concepts.json")))
img = os.path.join(HERE, "sheet", "img")
os.makedirs(img, exist_ok=True)
for f in sorted(os.listdir(os.path.join(HERE, "output"))):
    if f.endswith(".png"):
        subprocess.run(["sips", "-s", "format", "jpeg", "-s", "formatOptions", "82", "-Z", "512",
                        os.path.join(HERE, "output", f), "--out", os.path.join(img, f[:-4] + ".jpg")],
                       check=True, capture_output=True)
page = open(os.path.join(HERE, "sheet", "index.html")).read()
data = json.dumps([{k: c[k] for k in ("id", "title", "about")} for c in concepts], ensure_ascii=False)
open(os.path.join(HERE, "sheet", "out.html"), "w").write(page.replace("__CONCEPTS__", data))
print(len(os.listdir(img)), "obrázků")
