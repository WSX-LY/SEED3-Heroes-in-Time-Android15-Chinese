from pathlib import Path
import shutil
root=Path('decoded/smali/ch/kingdoms/android/ui')
p=root/'SkillUi$SkillView$SkillListView$SkillElementView.smali'; s=p.read_text(); old='Lch/android/api/util/TextPaints;->getBig()Landroid/graphics/Paint;'; assert old in s; p.write_text(s.replace(old,'Lch/android/api/util/TextPaints;->getLeftAlign()Landroid/graphics/Paint;')); shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p)
p=root/'SkillUi$SkillView$SkillInfoView.smali'; s=p.read_text(); at=s.index('    .line 600\n    return-void'); code=''
for field in ['NAME_VIEW','SP_VIEW','EXPLAIN_VIEW']:
 code+=f'''    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->{field}:Landroid/widget/TextView;
    invoke-static {{}}, Lch/android/api/util/TextPaints;->getSmallSize()I
    move-result v7
    int-to-float v7, v7
    invoke-static {{v6, v7}}, Lch/android/api/util/PixelText;->setSize(Landroid/widget/TextView;F)V
'''
p.write_text(s[:at]+code+s[at:]); shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p)
