.class public Lch/android/api/ui/PurchaseNotice;
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
