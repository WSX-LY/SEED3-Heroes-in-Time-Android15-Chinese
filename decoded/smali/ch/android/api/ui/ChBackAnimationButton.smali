.class public Lch/android/api/ui/ChBackAnimationButton;
.super Landroid/widget/ImageButton;
.source "ChBackAnimationButton.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# instance fields
.field private final AD:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lch/android/api/ui/ChBackAnimationButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    .line 17
    const v0, 0x7f020021

    const v1, 0x7f020020

    invoke-virtual {p0, p1, v0, v1}, Lch/android/api/ui/ChBackAnimationButton;->init(Landroid/content/Context;II)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "firstResId"    # I
    .param p3, "secondResId"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lch/android/api/ui/ChBackAnimationButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lch/android/api/ui/ChBackAnimationButton;->init(Landroid/content/Context;II)V

    .line 25
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "firstResId"    # I
    .param p3, "secondResId"    # I

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x1

    .line 28
    iget-object v1, p0, Lch/android/api/ui/ChBackAnimationButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 31
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lch/android/api/ui/ChBackAnimationButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 33
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lch/android/api/ui/ChBackAnimationButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 35
    iget-object v1, p0, Lch/android/api/ui/ChBackAnimationButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 37
    iget-object v1, p0, Lch/android/api/ui/ChBackAnimationButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    invoke-super {p0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    return-void
.end method

.method public releaseRsources()V
    .locals 4

    .prologue
    .line 47
    iget-object v3, p0, Lch/android/api/ui/ChBackAnimationButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 48
    iget-object v3, p0, Lch/android/api/ui/ChBackAnimationButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    .line 49
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 53
    return-void

    .line 50
    :cond_0
    iget-object v3, p0, Lch/android/api/ui/ChBackAnimationButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lch/android/api/ui/ChBackAnimationButton;->AD:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 42
    return-void
.end method
