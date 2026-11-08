"""Přepne Release konfiguraci cílů appky na ruční podpis distribučními profily.

Jen v CI: lokálně zůstává automatický podpis, takže `flutter build ios --release`
na vlastní telefon funguje dál. Pody se nemění (profil na nich by build shodil).
Použití: python3 scripts/ci_ios_signing.py <bundle id>=<název profilu> [...]
  např.  com.ol1n.behanek="Behanek AppStore" com.ol1n.behanek.BehanekLive="Behanek Live AppStore"
"""
import re
import sys

PATH = "ios/Runner.xcodeproj/project.pbxproj"
profiles = dict(arg.split("=", 1) for arg in sys.argv[1:])
if not profiles:
    sys.exit(__doc__)
src = open(PATH).read()

# Release blok cíle = ten s jeho bundle id a jménem Release.
pattern = re.compile(
    r"(\w+ /\* Release \*/ = \{\s*isa = XCBuildConfiguration;.*?buildSettings = \{)(.*?)(\};\s*name = Release;)",
    re.S,
)
done = {}


def patch(m):
    body = m.group(2)
    bid = re.search(r"PRODUCT_BUNDLE_IDENTIFIER = ([^;]+);", body)
    profile = profiles.get(bid.group(1).strip('"')) if bid else None
    if profile is None:
        return m.group(0)
    for key in ("CODE_SIGN_STYLE", "CODE_SIGN_IDENTITY", "PROVISIONING_PROFILE_SPECIFIER"):
        body = re.sub(rf"\n\s*\"?{key}[^\n]*", "", body)
    body = (
        f'\n\t\t\t\tCODE_SIGN_IDENTITY = "Apple Distribution";'
        f"\n\t\t\t\tCODE_SIGN_STYLE = Manual;"
        f'\n\t\t\t\tPROVISIONING_PROFILE_SPECIFIER = "{profile}";' + body
    )
    done[bid.group(1).strip('"')] = done.get(bid.group(1).strip('"'), 0) + 1
    return m.group(1) + body + m.group(3)


out = pattern.sub(patch, src)
for bid in profiles:
    if done.get(bid) != 1:
        sys.exit(f"Release konfigurace pro {bid} nenalezena jednoznačně (nalezeno {done.get(bid, 0)})")
open(PATH, "w").write(out)
for bid, profile in profiles.items():
    print(f"{bid}/Release: ruční podpis profilem {profile!r}")
