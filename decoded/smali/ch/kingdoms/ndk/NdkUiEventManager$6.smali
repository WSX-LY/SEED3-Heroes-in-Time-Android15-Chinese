.class Lch/kingdoms/ndk/NdkUiEventManager$6;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/ndk/NdkUiEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 954
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$1()Lch/android/api/ui/ChColosseumView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 955
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$1()Lch/android/api/ui/ChColosseumView;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/ui/ChColosseumView;->invalidate()V

    .line 957
    :cond_0
    return-void
.end method
