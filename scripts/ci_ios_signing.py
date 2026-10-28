"""Přepne Release konfiguraci cíle Runner na ruční podpis distribučním profilem.

Jen v CI: lokálně zůstává automatický podpis, takže `flutter build ios --release`
na vlastní telefon funguje dál. Pody se nemění (profil na nich by build shodil).
Použití: python3 scripts/ci_ios_signing.py "<název profilu>"
"""
import re
import sys

PATH = "ios/Runner.xcodeproj/project.pbxproj"
profile = sys.argv[1]
src = open(PATH).read()

# Release blok cíle Runner = ten s bundle id appky a jménem Release.
pattern = re.compile(
    r"(\w+ /\* Release \*/ = \{\s*isa = XCBuildConfiguration;.*?buildSettings = \{)(.*?)(\};\s*name = Release;)",
    re.S,
)
done = 0


def patch(m):
    global done
    body = m.group(2)
    if "PRODUCT_BUNDLE_IDENTIFIER = cz.ol1n.behanek;" not in body:
        return m.group(0)
    for key in ("CODE_SIGN_STYLE", "CODE_SIGN_IDENTITY", "PROVISIONING_PROFILE_SPECIFIER"):
        body = re.sub(rf"\n\s*\"?{key}[^\n]*", "", body)
    body = (
        f'\n\t\t\t\tCODE_SIGN_IDENTITY = "Apple Distribution";'
        f"\n\t\t\t\tCODE_SIGN_STYLE = Manual;"
        f'\n\t\t\t\tPROVISIONING_PROFILE_SPECIFIER = "{profile}";' + body
    )
    done += 1
    return m.group(1) + body + m.group(3)


out = pattern.sub(patch, src)
if done != 1:
    sys.exit(f"Release konfigurace Runneru nenalezena jednoznačně (nalezeno {done})")
open(PATH, "w").write(out)
print(f"Runner/Release: ruční podpis profilem {profile!r}")
