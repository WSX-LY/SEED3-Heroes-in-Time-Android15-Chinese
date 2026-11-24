.class Lch/kingdoms/ndk/NdkUiEventManager$15;
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
    .line 1305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1309
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$5()Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1310
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$6()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 1311
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$5()Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;

    move-result-object v1

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$6()I

    move-result v2

    invoke-virtual {v1, v2}, Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;->setCountNum(I)V

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    const v2, 0xc350

    aput v2, v0, v1

    .line 1314
    .local v0, "ids":[I
    invoke-static {v0}, Lch/android/api/ui/ChViewGen;->closePopUpViews([I)V

    .line 1315
    const/4 v1, 0x0

    invoke-static {v1}, Lch/kingdoms/ndk/NdkUiEventManager;->access$7(Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;)V

    goto :goto_0
.end method
