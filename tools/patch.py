from pathlib import Path
p=Path('decoded/smali/ch/kingdoms/ndk/NdkResourceManager.smali')
s=p.read_text()
a='''    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1'''
b='''    const-string v10, "dat,eng_dat,eng_txt,img,snd,txt"

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1'''
assert s.count(a)==1
p.write_text(s.replace(a,b))
p=Path('decoded/AndroidManifest.xml'); s=p.read_text(); s=s.replace('package="ch.kingdoms.market"','package="ch.kingdoms.market.compat"'); p.write_text(s)
