.class public Lch/android/api/ui/ChSlimImageButton;
.super Lch/android/api/ui/ChImageButton;
.source "ChSlimImageButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_upDrawable"    # I
    .param p3, "_downDrawable"    # I

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 11
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChImageButton;->onMeasure(II)V

    .line 17
    invoke-virtual {p0}, Lch/android/api/ui/ChSlimImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChSlimImageButton;->f_upDrawable:I

    invoke-static {v0, v1}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    .line 18
    invoke-virtual {p0}, Lch/android/api/ui/ChSlimImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lch/android/api/ui/ChSlimImageButton;->f_upDrawable:I

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    .line 17
    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChImageButton;->setMeasuredDimension(II)V

    .line 19
    return-void
.end method
