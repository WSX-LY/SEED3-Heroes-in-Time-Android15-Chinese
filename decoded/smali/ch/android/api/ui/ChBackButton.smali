.class public Lch/android/api/ui/ChBackButton;
.super Landroid/widget/ImageButton;
.source "ChBackButton.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# instance fields
.field private final AD:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x1

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v1, p0, Lch/android/api/ui/ChBackButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    .line 17
    iget-object v1, p0, Lch/android/api/ui/ChBackButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 20
    const v2, 0x7f020021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 21
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lch/android/api/ui/ChBackButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 23
    const v2, 0x7f020020

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 24
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lch/android/api/ui/ChBackButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 26
    iget-object v1, p0, Lch/android/api/ui/ChBackButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 28
    iget-object v1, p0, Lch/android/api/ui/ChBackButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    invoke-super {p0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    return-void
.end method


# virtual methods
.method public releaseRsources()V
    .locals 4

    .prologue
    .line 38
    iget-object v3, p0, Lch/android/api/ui/ChBackButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 39
    iget-object v3, p0, Lch/android/api/ui/ChBackButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    .line 40
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 44
    return-void

    .line 41
    :cond_0
    iget-object v3, p0, Lch/android/api/ui/ChBackButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 42
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lch/android/api/ui/ChBackButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 33
    return-void
.end method
