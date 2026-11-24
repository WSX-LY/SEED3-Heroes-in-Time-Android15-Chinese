.class public Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;
.super Lch/android/api/ui/ChImageView;
.source "NdkUiEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/ndk/NdkUiEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RaceResultView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1373
    invoke-direct {p0, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 1375
    return-void
.end method


# virtual methods
.method public releaseRsources()V
    .locals 0

    .prologue
    .line 1388
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->releaseRsources()V

    .line 1389
    return-void
.end method

.method public setWin(Z)V
    .locals 1
    .param p1, "isWin"    # Z

    .prologue
    .line 1378
    if-eqz p1, :cond_0

    .line 1379
    const v0, 0x7f020079

    invoke-virtual {p0, v0}, Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;->setImageResource(I)V

    .line 1383
    :goto_0
    return-void

    .line 1381
    :cond_0
    const v0, 0x7f0200aa

    invoke-virtual {p0, v0}, Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;->setImageResource(I)V

    goto :goto_0
.end method
