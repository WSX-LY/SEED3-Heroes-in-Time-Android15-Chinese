.class Lch/kingdoms/ndk/NdkUiEventManager$43;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->showGameTipPopUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1217
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v0

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$9()Lch/android/api/util/DisplayInfo;

    move-result-object v1

    .line 1218
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getGameTipTxt()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1217
    invoke-static {v0, v1, v2, v3}, Lch/android/api/ui/ChViewGen;->popUpGameTipView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Z)Landroid/view/View;

    .line 1219
    return-void
.end method
