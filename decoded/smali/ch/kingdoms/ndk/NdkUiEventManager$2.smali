.class Lch/kingdoms/ndk/NdkUiEventManager$2;
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
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 525
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$0()Lch/kingdoms/android/ui/RealTimeUpdateUi;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->invalidateMonsterHpView()V

    .line 526
    return-void
.end method
