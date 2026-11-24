from pathlib import Path
p=Path('decoded/smali/ch/kingdoms/kor/KingdomsActivity.smali'); s=p.read_text(); needle='.method public startGame()V\n    .locals 13\n'; assert s.count(needle)==1
patch='''
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I
    move-result v1
    if-lez v1, :bounds_done
    iget-object v2, p0, Lch/kingdoms/kor/KingdomsActivity;->m_di:Lch/android/api/util/DisplayInfo;
    iput v1, v2, Lch/android/api/util/DisplayInfo;->widthPixels:I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I
    move-result v1
    iput v1, v2, Lch/android/api/util/DisplayInfo;->heightPixels:I
    :bounds_done
'''
p.write_text(s.replace(needle,needle+patch))
p=Path('decoded/smali/ch/android/api/util/DisplayInfo.smali'); s=p.read_text(); s=s[:s.index('\n.method private static useWindowBounds')]; s=s.replace('    invoke-static {p1, v1}, Lch/android/api/util/DisplayInfo;->useWindowBounds(Landroid/view/WindowManager;Landroid/util/DisplayMetrics;)V',''); p.write_text(s)
