from pathlib import Path
import re,shutil
for p in Path('decoded/smali').rglob('*.smali'):
 s=p.read_text()
 pattern=r'invoke-virtual \{[^}]+\}, Landroid/telephony/TelephonyManager;->(?:getLine1Number|getDeviceId|getSubscriberId|getSimSerialNumber)\(\)Ljava/lang/String;\s+move-result-object (v\d+|p\d+)'
 s,n=re.subn(pattern,lambda m:'const-string '+m[1]+', ""',s)
 if n: p.write_text(s); shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p); print(p.name,n)
