#!/usr/bin/env python3
"""Přeloží iOS texty mimo Flutter (prompt pro polohu) ze store/<jazyk>.json.

Zapíše ios/Runner/<lproj>/InfoPlist.strings, zaregistruje je v Xcode projektu
a doplní CFBundleLocalizations do Info.plist. Jde pustit opakovaně.
"""
import hashlib
import json
import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parent.parent
RUNNER = ROOT / 'ios/Runner'
PBX = ROOT / 'ios/Runner.xcodeproj/project.pbxproj'
PLIST = RUNNER / 'Info.plist'

# store/<kód>.json -> iOS lproj
LPROJ = {'pt': 'pt-BR'}


def pbx_id(seed):
    return hashlib.md5(seed.encode()).hexdigest()[:24].upper()


def esc(s):
    return s.replace('\\', '\\\\').replace('"', '\\"')


langs = sorted(p.stem for p in (ROOT / 'store').glob('*.json'))
regions = [LPROJ.get(l, l) for l in langs]

for lang, region in zip(langs, regions):
    text = json.loads((ROOT / 'store' / f'{lang}.json').read_text())['locationUsage']
    d = RUNNER / f'{region}.lproj'
    d.mkdir(exist_ok=True)
    (d / 'InfoPlist.strings').write_text(
        f'"CFBundleDisplayName" = "Běhánek";\n"NSLocationWhenInUseUsageDescription" = "{esc(text)}";\n')

pbx = PBX.read_text()
group = pbx_id('InfoPlist.strings group')
build = pbx_id('InfoPlist.strings build')
if group not in pbx:
    pbx = pbx.replace(
        '/* Begin PBXBuildFile section */\n',
        '/* Begin PBXBuildFile section */\n'
        f'\t\t{build} /* InfoPlist.strings in Resources */ = {{isa = PBXBuildFile; fileRef = {group} /* InfoPlist.strings */; }};\n')
    pbx = pbx.replace(
        '\t\t\t\t97C146FA1CF9000F007C117D /* Main.storyboard */,\n',
        '\t\t\t\t97C146FA1CF9000F007C117D /* Main.storyboard */,\n'
        f'\t\t\t\t{group} /* InfoPlist.strings */,\n', 1)
    pbx = pbx.replace(
        '\t\t\t\t97C146FC1CF9000F007C117D /* Main.storyboard in Resources */,\n',
        '\t\t\t\t97C146FC1CF9000F007C117D /* Main.storyboard in Resources */,\n'
        f'\t\t\t\t{build} /* InfoPlist.strings in Resources */,\n')
    pbx = pbx.replace(
        '/* End PBXVariantGroup section */',
        f'\t\t{group} /* InfoPlist.strings */ = {{\n\t\t\tisa = PBXVariantGroup;\n\t\t\tchildren = (\n'
        '\t\t\t);\n\t\t\tname = InfoPlist.strings;\n\t\t\tsourceTree = "<group>";\n\t\t};\n'
        '/* End PBXVariantGroup section */')

for region in regions:
    ref = pbx_id(f'InfoPlist.strings {region}')
    if ref in pbx:
        continue
    pbx = pbx.replace(
        '/* Begin PBXFileReference section */\n',
        '/* Begin PBXFileReference section */\n'
        f'\t\t{ref} /* {region} */ = {{isa = PBXFileReference; lastKnownFileType = text.plist.strings; '
        f'name = {region}; path = {region}.lproj/InfoPlist.strings; sourceTree = "<group>"; }};\n')
    pbx = re.sub(
        rf'({group} /\* InfoPlist.strings \*/ = {{\n\t\t\tisa = PBXVariantGroup;\n\t\t\tchildren = \(\n)',
        rf'\g<1>\t\t\t\t{ref} /* {region} */,\n', pbx)

m = re.search(r'knownRegions = \(\n(.*?)\);', pbx, re.S)
known = re.findall(r'"?([\w-]+)"?,', m.group(1))
for r in ['Base', *regions]:
    if r not in known:
        known.append(r)
pbx = pbx[:m.start(1)] + ''.join(
    f'\t\t\t\t{r if re.fullmatch(r"\w+", r) else chr(34) + r + chr(34)},\n' for r in known) + pbx[m.end(1):]
PBX.write_text(pbx)

plist = PLIST.read_text()
array = '\t<key>CFBundleLocalizations</key>\n\t<array>\n' + ''.join(
    f'\t\t<string>{r}</string>\n' for r in regions) + '\t</array>\n'
plist = re.sub(r'\t<key>CFBundleLocalizations</key>\n\t<array>\n.*?\t</array>\n', '', plist, flags=re.S)
plist = plist.replace('\t<key>CFBundleDisplayName</key>', array + '\t<key>CFBundleDisplayName</key>', 1)
PLIST.write_text(plist)
print('iOS:', ' '.join(regions))
