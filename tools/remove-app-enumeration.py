from pathlib import Path
import re,shutil
root=Path('decoded/smali')
count=0
for p in root.rglob('*.smali'):
 s=p.read_text(); s,n=re.subn(r'invoke-virtual \{[^}]+\}, Landroid/content/pm/PackageManager;->getInstalledApplications\(I\)Ljava/util/List;',r'invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;',s)
 if n:
  p.write_text(s); shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p); count+=n
p=root/'ch/kingdoms/kor/KingdomsActivity.smali'; s=p.read_text()
for signature,body in [('public checkHacks([Ljava/lang/String;)Z','    .locals 1\n    const/4 v0, 0x1\n    return v0\n'),('public updateHackApps()V','    .locals 0\n    return-void\n')]:
 pattern=r'\.method '+re.escape(signature)+r'\n.*?\.end method'
 s,n=re.subn(pattern,'.method '+signature+'\n'+body+'.end method',s,flags=re.S); assert n==1
p.write_text(s); shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p)
print('Removed installed-app enumeration sites:',count)
