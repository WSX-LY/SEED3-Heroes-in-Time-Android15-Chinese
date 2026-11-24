.class public Lch/kingdoms/android/dpad/DButton;
.super Lch/android/api/ui/ChImageButton;
.source "DButton.java"


# instance fields
.field private final hitRect:Landroid/graphics/Rect;

.field private final parent:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroid/widget/RelativeLayout;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_upDrawable"    # I
    .param p3, "_downDrawable"    # I
    .param p4, "parent"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 18
    iput-object p4, p0, Lch/kingdoms/android/dpad/DButton;->parent:Landroid/widget/RelativeLayout;

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lch/kingdoms/android/dpad/DButton;->hitRect:Landroid/graphics/Rect;

    .line 20
    invoke-virtual {p0, p2}, Lch/kingdoms/android/dpad/DButton;->setBackgroundResource(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public isHit(II)Z
    .locals 1
    .param p1, "X"    # I
    .param p2, "Y"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lch/kingdoms/android/dpad/DButton;->hitRect:Landroid/graphics/Rect;

    invoke-super {p0, v0}, Lch/android/api/ui/ChImageButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 37
    iget-object v0, p0, Lch/kingdoms/android/dpad/DButton;->hitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 41
    iput p1, p0, Lch/android/api/ui/ChImageButton;->alpha:I

    .line 42
    invoke-super {p0}, Lch/android/api/ui/ChImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 44
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 32
    invoke-super {p0, p1}, Lch/android/api/ui/ChImageButton;->setImageResource(I)V

    .line 33
    return-void
.end method

.method public setPosition(II)V
    .locals 3
    .param p1, "LEFT_MARGIN"    # I
    .param p2, "BOTTOM_MARGIN"    # I

    .prologue
    const/4 v2, -0x2

    .line 47
    iget-object v1, p0, Lch/kingdoms/android/dpad/DButton;->parent:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lch/kingdoms/android/dpad/DButton;->parent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 51
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 56
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 58
    iget-object v1, p0, Lch/kingdoms/android/dpad/DButton;->parent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    return-void
.end method

.method public setToSelect()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lch/kingdoms/android/dpad/DButton;->setImage(I)V

    .line 25
    return-void
.end method

.method public setToUnSelect()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lch/kingdoms/android/dpad/DButton;->setImage(I)V

    .line 29
    return-void
.end method
