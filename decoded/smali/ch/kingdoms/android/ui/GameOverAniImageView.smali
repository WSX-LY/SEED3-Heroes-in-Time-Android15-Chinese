.class public Lch/kingdoms/android/ui/GameOverAniImageView;
.super Lch/android/api/ui/ChImageView;
.source "GameOverAniImageView.java"


# instance fields
.field private final ad:Lch/android/api/ui/ChAnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fisnishCallback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v7, 0x1

    .line 14
    invoke-direct {p0, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v3, Lch/android/api/ui/ChAnimationDrawable;

    invoke-direct {v3}, Lch/android/api/ui/ChAnimationDrawable;-><init>()V

    iput-object v3, p0, Lch/kingdoms/android/ui/GameOverAniImageView;->ad:Lch/android/api/ui/ChAnimationDrawable;

    .line 17
    const/16 v3, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 20
    .local v2, "ids":[I
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 24
    iget-object v3, p0, Lch/kingdoms/android/ui/GameOverAniImageView;->ad:Lch/android/api/ui/ChAnimationDrawable;

    invoke-virtual {v3, v7, v7}, Lch/android/api/ui/ChAnimationDrawable;->setVisible(ZZ)Z

    .line 25
    iget-object v3, p0, Lch/kingdoms/android/ui/GameOverAniImageView;->ad:Lch/android/api/ui/ChAnimationDrawable;

    invoke-virtual {v3, p2}, Lch/android/api/ui/ChAnimationDrawable;->setOnFinishCallback(Ljava/lang/Runnable;)V

    .line 26
    iget-object v3, p0, Lch/kingdoms/android/ui/GameOverAniImageView;->ad:Lch/android/api/ui/ChAnimationDrawable;

    invoke-virtual {v3, v7}, Lch/android/api/ui/ChAnimationDrawable;->setOneShot(Z)V

    .line 27
    iget-object v3, p0, Lch/kingdoms/android/ui/GameOverAniImageView;->ad:Lch/android/api/ui/ChAnimationDrawable;

    invoke-super {p0, v3}, Lch/android/api/ui/ChImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    return-void

    .line 20
    :cond_0
    aget v1, v2, v3

    .line 21
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 22
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lch/kingdoms/android/ui/GameOverAniImageView;->ad:Lch/android/api/ui/ChAnimationDrawable;

    const/16 v6, 0x78

    invoke-virtual {v5, v0, v6}, Lch/android/api/ui/ChAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 20
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    nop

    :array_0
    .array-data 4
        0x7f0200b8
        0x7f0200b9
        0x7f0200bc
        0x7f0200bd
        0x7f0200be
        0x7f0200bf
        0x7f0200c0
        0x7f0200c1
        0x7f0200c2
        0x7f0200c3
        0x7f0200ba
        0x7f0200bb
    .end array-data
.end method


# virtual methods
.method public releaseRsources()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->releaseRsources()V

    .line 38
    iget-object v0, p0, Lch/kingdoms/android/ui/GameOverAniImageView;->ad:Lch/android/api/ui/ChAnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChAnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 39
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lch/kingdoms/android/ui/GameOverAniImageView;->ad:Lch/android/api/ui/ChAnimationDrawable;

    invoke-virtual {v0}, Lch/android/api/ui/ChAnimationDrawable;->start()V

    .line 32
    return-void
.end method
