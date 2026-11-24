from pathlib import Path
root=Path('decoded/smali')
paths=[root/'ch/kingdoms/android/ui/StatusUi$StatusView.smali',root/'ch/android/api/ui/ChStatView.smali']
for p in paths:
 s=p.read_text(); n=s.count('Landroid/widget/TextView;->setTextSize(F)V'); assert n>0
 import re
 s=re.sub(r'invoke-virtual \{([^}]+)\}, Landroid/widget/TextView;->setTextSize\(F\)V',r'invoke-static {\1}, Lch/android/api/util/PixelText;->setSize(Landroid/widget/TextView;F)V',s)
 p.write_text(s); print(p.name,n)
p=root/'ch/android/api/util/PixelText.smali'
p.write_text('''.class public Lch/android/api/util/PixelText;
.super Ljava/lang/Object;
.method public static setSize(Landroid/widget/TextView;F)V
    .locals 1
    const/4 v0, 0x0
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V
    return-void
.end method
''')
