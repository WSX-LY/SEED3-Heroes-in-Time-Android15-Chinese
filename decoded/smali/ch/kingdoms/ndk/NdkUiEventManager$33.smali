.class Lch/kingdoms/ndk/NdkUiEventManager$33;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->showRaceUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 977
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v1

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$3()Lch/kingdoms/android/ui/RaceUi;

    move-result-object v2

    invoke-static {v1, v2}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 978
    .local v0, "view":Landroid/view/View;
    const v1, 0xc350

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 979
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$3()Lch/kingdoms/android/ui/RaceUi;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/android/ui/RaceUi;->startAnimation()V

    .line 980
    return-void
.end method
