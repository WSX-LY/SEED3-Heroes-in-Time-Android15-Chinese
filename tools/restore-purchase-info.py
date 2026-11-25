from pathlib import Path
import shutil
root=Path('decoded/smali')
items=[('BrandShopUi$2$1.smali','v1','v2'),('BrandShopUi$4.smali','v0','v1'),('BrandShopUi$BrandShopView$1$2.smali','v2','v3'),('BrandShopUi.smali','v2','v3')]
for name,activity,message in items:
 p=root/'ch/kingdoms/android/ui'/name;s=p.read_text();old=f'invoke-static {{{message}}}, Lch/android/api/ui/ChGamePlayMessage;->popUpMapName(Ljava/lang/String;)V';assert old in s;s=s.replace(old,f'invoke-static {{{activity}, {message}}}, Lch/android/api/ui/PurchaseNotice;->show(Landroid/app/Activity;Ljava/lang/String;)V');p.write_text(s);shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p)
p=root/'ch/android/api/ui/ChPaidContentView.smali';s=p.read_text();a='''    invoke-static {}, Lch/android/api/util/TextPaints;->getSmallSize()I
    move-result v13
    int-to-float v13, v13
    invoke-static {v11, v13}, Lch/android/api/util/PixelText;->setSize(Landroid/widget/TextView;F)V
''';assert a in s;s=s.replace(a,'');p.write_text(s);shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p)
p=root/'ch/android/api/ui/PurchaseNotice.smali';p.write_text('''.class public Lch/android/api/ui/PurchaseNotice;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private activity:Landroid/app/Activity;
.field private message:Ljava/lang/String;
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lch/android/api/ui/PurchaseNotice;->activity:Landroid/app/Activity;
    iput-object p2, p0, Lch/android/api/ui/PurchaseNotice;->message:Ljava/lang/String;
    return-void
.end method
.method public static show(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    new-instance v0, Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    new-instance v2, Lch/android/api/ui/PurchaseNotice;
    invoke-direct {v2, p0, p1}, Lch/android/api/ui/PurchaseNotice;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    return-void
.end method
.method public run()V
    .locals 2
    iget-object v0, p0, Lch/android/api/ui/PurchaseNotice;->activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z
    move-result v1
    if-nez v1, :done
    iget-object v1, p0, Lch/android/api/ui/PurchaseNotice;->message:Ljava/lang/String;
    invoke-static {v0, v1}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;
    :done
    return-void
.end method
''');shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p)
