.class Lch/kingdoms/ndk/NdkUiEventManager$34;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->closeRaceUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 989
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$3()Lch/kingdoms/android/ui/RaceUi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 990
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$3()Lch/kingdoms/android/ui/RaceUi;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/android/ui/RaceUi;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 991
    .local v0, "vg":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 992
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$3()Lch/kingdoms/android/ui/RaceUi;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 993
    const/4 v1, 0x0

    invoke-static {v1}, Lch/kingdoms/ndk/NdkUiEventManager;->access$16(Lch/kingdoms/android/ui/RaceUi;)V

    .line 996
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method
