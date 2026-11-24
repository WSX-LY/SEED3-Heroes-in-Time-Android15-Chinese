from pathlib import Path
root=Path('decoded/smali')
for p in root.rglob('*.smali'):
 s=p.read_text()
 if '"ch.kingdoms.market"' in s: p.write_text(s.replace('"ch.kingdoms.market"','"ch.kingdoms.market.compat"'))
d=root/'ch/android/api/util/Seed3Diag.smali'
d.write_text('''.class public Lch/android/api/util/Seed3Diag;
.super Ljava/lang/Object;
.method public static event(Ljava/lang/String;)V
    .locals 1
    const-string v0, "Seed3Diag"
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method
.method public static value(Ljava/lang/String;I)V
    .locals 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    const-string v1, "="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lch/android/api/util/Seed3Diag;->event(Ljava/lang/String;)V
    return-void
.end method
''')
def inject(path,method,code):
 p=root/path; s=p.read_text(); start=s.index(method); at=s.index('    .prologue',start)+len('    .prologue'); s=s[:at]+'\n'+code+s[at:]; p.write_text(s)
log=lambda msg,reg: f'    const-string {reg}, "{msg}"\n    invoke-static {{{reg}}}, Lch/android/api/util/Seed3Diag;->event(Ljava/lang/String;)V\n'
inject(Path('ch/kingdoms/kor/KingdomsActivity.smali'),'.method public startGame()V',log('startGame build=diagnostic-v1','v0'))
inject(Path('ch/kingdoms/android/ui/StaticTabMenu.smali'),'.method public selectPage(I)V','    const-string v0, "selectPage"\n    invoke-static {v0, p1}, Lch/android/api/util/Seed3Diag;->value(Ljava/lang/String;I)V\n')
inject(Path('ch/kingdoms/android/ui/StaticTabMenu.smali'),'.method public onClick(Landroid/view/View;)V','    invoke-virtual {p1}, Landroid/view/View;->getId()I\n    move-result v0\n    const-string v1, "menuClickId"\n    invoke-static {v1, v0}, Lch/android/api/util/Seed3Diag;->value(Ljava/lang/String;I)V\n')
p=root/'ch/kingdoms/android/ui/StatusUi$StatusView.smali'; s=p.read_text(); at=s.index('    .line 218\n    return-void'); s=s[:at]+log('statusView initialized pixel-fonts','v12')+s[at:]; p.write_text(s)
p=root/'ch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView.smali'; s=p.read_text()
needle='    move-result v1\n\n    .line 480'; s=s.replace(needle,'    move-result v1\n'+ '    invoke-static {v2, v1}, Lch/android/api/util/Seed3Diag;->value(Ljava/lang/String;I)V\n\n    .line 480')
needle='    move-result v1\n\n    .line 493'; s=s.replace(needle,'    move-result v1\n    invoke-static {v2, v1}, Lch/android/api/util/Seed3Diag;->value(Ljava/lang/String;I)V\n\n    .line 493')
start=s.index('.method protected onDraw('); at=s.index('    iget v1,',start)
s=s[:at]+'''    if-eqz v0, :skip_skill_bitmap
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    move-result v1
    if-nez v1, :skip_skill_bitmap
'''+s[at:]
s=s.replace('    .line 519\n','    :skip_skill_bitmap\n    .line 519\n',1)
start=s.index('.method public releaseRsources()'); end=s.index('.end method',start)
s=s[:start]+'''.method public releaseRsources()V
    .locals 2
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->SKILL_BMP:Landroid/graphics/Bitmap;
    if-eqz v0, :done
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    move-result v1
    if-nez v1, :done
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :done
    return-void
'''+s[end:]; p.write_text(s)
