.class public Lch/android/api/ui/ChImageButton;
.super Landroid/widget/ImageButton;
.source "ChImageButton.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# instance fields
.field protected alpha:I

.field protected final f_downDrawable:I

.field protected final f_upDrawable:I

.field private isSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_upDrawable"    # I
    .param p3, "_downDrawable"    # I

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 14
    iput-boolean v2, p0, Lch/android/api/ui/ChImageButton;->isSelected:Z

    .line 19
    iput p2, p0, Lch/android/api/ui/ChImageButton;->f_upDrawable:I

    .line 20
    iput p3, p0, Lch/android/api/ui/ChImageButton;->f_downDrawable:I

    .line 21
    const/16 v1, 0xff

    iput v1, p0, Lch/android/api/ui/ChImageButton;->alpha:I

    .line 23
    invoke-super {p0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 24
    .local v0, "bgDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 25
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lch/android/api/ui/ChImageButton;->setImage(I)V

    .line 26
    invoke-virtual {p0, v2, v2, v2, v2}, Lch/android/api/ui/ChImageButton;->setPadding(IIII)V

    .line 31
    return-void
.end method


# virtual methods
.method public isDown()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lch/android/api/ui/ChImageButton;->isSelected:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 37
    invoke-virtual {p0}, Lch/android/api/ui/ChImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChImageButton;->f_upDrawable:I

    invoke-static {v0, v1}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {p0}, Lch/android/api/ui/ChImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lch/android/api/ui/ChImageButton;->f_upDrawable:I

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/ImageButton;->setMeasuredDimension(II)V

    .line 38
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 56
    iget v0, p0, Lch/android/api/ui/ChImageButton;->f_upDrawable:I

    iget v1, p0, Lch/android/api/ui/ChImageButton;->f_downDrawable:I

    if-eq v0, v1, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lch/android/api/ui/ChImageButton;->setImage(I)V

    .line 59
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public releaseRsources()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0}, Lch/android/api/ui/ChImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lch/android/api/ui/ChImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 51
    :cond_1
    return-void
.end method

.method protected setImage(I)V
    .locals 3
    .param p1, "_action"    # I

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_0

    .line 73
    :pswitch_0
    invoke-virtual {p0}, Lch/android/api/ui/ChImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lch/android/api/ui/ChImageButton;->f_upDrawable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lch/android/api/ui/ChImageButton;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 75
    invoke-virtual {p0, v0}, Lch/android/api/ui/ChImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Lch/android/api/ui/ChImageButton;->isSelected:Z

    .line 78
    :goto_0
    return-void

    .line 66
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    invoke-virtual {p0}, Lch/android/api/ui/ChImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lch/android/api/ui/ChImageButton;->f_downDrawable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 67
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lch/android/api/ui/ChImageButton;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 68
    invoke-virtual {p0, v0}, Lch/android/api/ui/ChImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/android/api/ui/ChImageButton;->isSelected:Z

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
