.class public final Lch/kingdoms/ndk/SceneHdBridge;
.super Ljava/lang/Object;
.method public static native setEnabled(Z)V
.end method

.method private static native nativeTick()V
.end method
.method public static tick()V
    .locals 1
    :start
    invoke-static {}, Lch/kingdoms/ndk/SceneHdBridge;->nativeTick()V
    :end
    .catch Ljava/lang/UnsatisfiedLinkError; {:start .. :end} :fallback
    return-void
    :fallback
    move-exception v0
    invoke-static {}, Lch/kingdoms/ndk/NdkGraphicManager;->callNativeTimerCallback()V
    return-void
.end method

.method public static native setLogicHz(I)V
.end method
