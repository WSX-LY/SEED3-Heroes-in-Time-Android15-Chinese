.class public Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;
.super Lch/android/api/ui/ChImageView;
.source "NdkUiEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/ndk/NdkUiEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RaceCountView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1350
    invoke-direct {p0, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 1352
    const v0, 0x7f020084

    invoke-virtual {p0, v0}, Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;->setImageResource(I)V

    .line 1353
    return-void
.end method


# virtual methods
.method public releaseRsources()V
    .locals 0

    .prologue
    .line 1366
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->releaseRsources()V

    .line 1367
    return-void
.end method

.method public setCountNum(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 1356
    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 1357
    invoke-virtual {p0}, Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1358
    .local v0, "res":Landroid/content/res/Resources;
    rsub-int/lit8 p1, p1, 0x9

    .line 1359
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "colo_num"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "ch.kingdoms.market.compat"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;->setImageResource(I)V

    .line 1361
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method
