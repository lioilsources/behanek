#!/usr/bin/env python3
"""Zkontroluje texty obchodů v store/<jazyk>.json proti limitům App Store a Google Play.

Vypíše i kódy jazyka, pod kterými text patří do App Store Connect a Play Console
(nahrávají se ručně). Návratový kód 1 = něco přetéká nebo chybí.
"""
import json
import pathlib
import sys

ROOT = pathlib.Path(__file__).resolve().parent.parent

# Klíč -> (limit znaků, kde)
LIMITS = {
    'subtitle': (30, 'Apple subtitle'),
    'promo': (170, 'Apple promotional text'),
    'keywords': (100, 'Apple keywords'),
    'playShort': (80, 'Google short description'),
    'description': (4000, 'Apple description / Google full description'),
    'iapName': (30, 'IAP display name'),
    'iapDescription': (55, 'Apple IAP description'),
}

# store/<jazyk> -> (App Store Connect, Google Play); None = obchod jazyk nemá.
CODES = {
    'ar': ('ar-SA', 'ar'), 'bn': ('bn-BD', 'bn-BD'), 'ca': ('ca', 'ca'), 'cs': ('cs', 'cs-CZ'),
    'da': ('da', 'da-DK'), 'de': ('de-DE', 'de-DE'), 'el': ('el', 'el-GR'),
    'en': ('en-US (+ en-GB, en-AU, en-CA)', 'en-US'), 'es': ('es-ES (+ es-MX)', 'es-ES'),
    'fi': ('fi', 'fi-FI'), 'fr': ('fr-FR (+ fr-CA)', 'fr-FR'), 'gu': ('gu-IN', 'gu'),
    'he': ('he', 'iw-IL'), 'hi': ('hi', 'hi-IN'), 'hr': ('hr', 'hr'), 'hu': ('hu', 'hu-HU'),
    'id': ('id', 'id'), 'it': ('it', 'it-IT'), 'ja': ('ja', 'ja-JP'), 'kn': ('kn-IN', 'kn-IN'),
    'ko': ('ko', 'ko-KR'), 'ml': ('ml-IN', 'ml-IN'), 'mr': ('mr-IN', 'mr-IN'), 'ms': ('ms', 'ms'),
    'nb': ('no', 'no-NO'), 'nl': ('nl-NL', 'nl-NL'), 'or': ('or-IN', None), 'pa': ('pa-IN', 'pa'),
    'pl': ('pl', 'pl-PL'), 'pt': ('pt-BR', 'pt-BR'), 'pt-PT': ('pt-PT', 'pt-PT'),
    'ro': ('ro', 'ro'), 'ru': ('ru', 'ru-RU'), 'sk': ('sk', 'sk'), 'sl': ('sl-SI', 'sl'),
    'sv': ('sv', 'sv-SE'), 'ta': ('ta-IN', 'ta-IN'), 'te': ('te-IN', 'te-IN'), 'th': ('th', 'th'),
    'tr': ('tr', 'tr-TR'), 'uk': ('uk', 'uk'), 'ur': ('ur-PK', 'ur'), 'vi': ('vi', 'vi'),
    'zh-Hans': ('zh-Hans', 'zh-CN'), 'zh-Hant': ('zh-Hant', 'zh-TW'),
}

ok = True
for p in sorted((ROOT / 'store').glob('*.json')):
    lang = p.stem
    data = json.loads(p.read_text())
    problems = []
    for key, (limit, where) in LIMITS.items():
        v = data.get(key)
        if not v:
            problems.append(f'{key} chybí')
        elif len(v) > limit:
            problems.append(f'{key} {len(v)}/{limit} ({where})')
    kw = data.get('keywords', '')
    if ' ,' in kw or ', ' in kw:
        problems.append('keywords: mezera u čárky')
    if lang not in CODES:
        problems.append('neznámý kód obchodu')
    apple, google = CODES.get(lang, ('?', '?'))
    status = 'OK' if not problems else '; '.join(problems)
    print(f'{lang:8} Apple {apple:30} Google {google or "—":6}  {status}')
    ok &= not problems
sys.exit(0 if ok else 1)
