.class Lch/kingdoms/ndk/NdkUiEventManager$17;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->closeColosseumView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 573
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$1()Lch/android/api/ui/ChColosseumView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 574
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 575
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->access$10(Lch/android/api/ui/ChColosseumView;)V

    .line 577
    :cond_0
    return-void
.end method
