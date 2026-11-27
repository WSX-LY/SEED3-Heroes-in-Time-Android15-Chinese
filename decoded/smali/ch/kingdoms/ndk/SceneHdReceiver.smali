.class public Lch/kingdoms/ndk/SceneHdReceiver;
.super Landroid/content/BroadcastReceiver;
.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    const-string v0, "enabled"
    const/4 v1, 0x1
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    move-result v0
    :try_start
    const-string v0, "logic_hz"
    const/4 v1, 0x0
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    move-result v1
    if-lez v1, :keep_logic
    invoke-static {v1}, Lch/kingdoms/ndk/SceneHdBridge;->setLogicHz(I)V
    :keep_logic
    const-string v0, "enabled"
    const/4 v1, 0x1
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    move-result v0
    invoke-static {v0}, Lch/kingdoms/ndk/SceneHdBridge;->setEnabled(Z)V
    :try_end
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start .. :try_end} :unavailable
    return-void
    :unavailable
    move-exception v0
    return-void
.end method
