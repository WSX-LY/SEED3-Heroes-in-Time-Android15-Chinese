.class Lch/kingdoms/android/dpad/DirectionButtons;
.super Lch/seed/android/ui/UiButton;
.source "DirectionButtons.java"


# static fields
.field public static final DIRECTION_DOWN:I = 0x14

.field public static final DIRECTION_HALT:I = 0x0

.field public static final DIRECTION_LEFT:I = 0x15

.field public static final DIRECTION_MAINTAIN:I = -0x270f

.field public static final DIRECTION_RIGHT:I = 0x16

.field public static final DIRECTION_UP:I = 0x13


# instance fields
.field private final HALT_RECT:Landroid/graphics/RectF;

.field private final HEIGHT:I

.field private final VIEW_RECT:Landroid/graphics/RectF;

.field private final WIDTH:I

.field private alpha:I

.field private final defaultResId:I

.field private final downResId:I

.field private isDown:Z

.field private final leftResId:I

.field private final parent:Lch/android/api/ui/ChRelativeLayout;

.field private final rightResId:I

.field private final upResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIILch/android/api/ui/ChRelativeLayout;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewId_"    # I
    .param p3, "defaultResId_"    # I
    .param p4, "upResId_"    # I
    .param p5, "downResId_"    # I
    .param p6, "lefResId_"    # I
    .param p7, "rightResId_"    # I
    .param p8, "parent"    # Lch/android/api/ui/ChRelativeLayout;

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lch/seed/android/ui/UiButton;-><init>(Landroid/content/Context;I)V

    .line 51
    iput p3, p0, Lch/kingdoms/android/dpad/DirectionButtons;->defaultResId:I

    .line 52
    iput p4, p0, Lch/kingdoms/android/dpad/DirectionButtons;->upResId:I

    .line 53
    iput p5, p0, Lch/kingdoms/android/dpad/DirectionButtons;->downResId:I

    .line 54
    iput p6, p0, Lch/kingdoms/android/dpad/DirectionButtons;->leftResId:I

    .line 55
    iput p7, p0, Lch/kingdoms/android/dpad/DirectionButtons;->rightResId:I

    .line 56
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lch/kingdoms/android/dpad/DirectionButtons;->updateButtonBmp(II)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->defaultResId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lch/kingdoms/android/dpad/DirectionButtons;->WIDTH:I

    .line 60
    iget v0, p0, Lch/kingdoms/android/dpad/DirectionButtons;->WIDTH:I

    iput v0, p0, Lch/kingdoms/android/dpad/DirectionButtons;->HEIGHT:I

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lch/kingdoms/android/dpad/DirectionButtons;->HEIGHT:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lch/kingdoms/android/dpad/DirectionButtons;->VIEW_RECT:Landroid/graphics/RectF;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    iget v2, p0, Lch/kingdoms/android/dpad/DirectionButtons;->HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    iget v3, p0, Lch/kingdoms/android/dpad/DirectionButtons;->WIDTH:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    iget v4, p0, Lch/kingdoms/android/dpad/DirectionButtons;->HEIGHT:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lch/kingdoms/android/dpad/DirectionButtons;->HALT_RECT:Landroid/graphics/RectF;

    .line 67
    iput-object p8, p0, Lch/kingdoms/android/dpad/DirectionButtons;->parent:Lch/android/api/ui/ChRelativeLayout;

    .line 68
    return-void
.end method

.method private getMoveDirection(FF)I
    .locals 6
    .param p1, "x_"    # F
    .param p2, "y_"    # F

    .prologue
    const/4 v2, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 160
    invoke-super {p0}, Lch/seed/android/ui/UiButton;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p1, v4

    .line 161
    invoke-super {p0}, Lch/seed/android/ui/UiButton;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p2, v4

    .line 162
    iget-object v4, p0, Lch/kingdoms/android/dpad/DirectionButtons;->VIEW_RECT:Landroid/graphics/RectF;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v3

    .line 168
    :cond_1
    div-float v4, p2, p1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    move v0, v2

    .line 169
    .local v0, "yDivX":Z
    :goto_1
    iget v4, p0, Lch/kingdoms/android/dpad/DirectionButtons;->WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v4, p1

    div-float v4, p2, v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    move v1, v2

    .line 171
    .local v1, "yDivXSubW":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 172
    const/16 v3, 0x13

    goto :goto_0

    .end local v0    # "yDivX":Z
    .end local v1    # "yDivXSubW":Z
    :cond_2
    move v0, v3

    .line 168
    goto :goto_1

    .restart local v0    # "yDivX":Z
    :cond_3
    move v1, v3

    .line 169
    goto :goto_2

    .line 173
    .restart local v1    # "yDivXSubW":Z
    :cond_4
    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    .line 174
    const/16 v3, 0x16

    goto :goto_0

    .line 175
    :cond_5
    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    .line 176
    const/16 v3, 0x15

    goto :goto_0

    .line 177
    :cond_6
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 178
    const/16 v3, 0x14

    goto :goto_0
.end method


# virtual methods
.method public isDown()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lch/kingdoms/android/dpad/DirectionButtons;->isDown:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lch/seed/android/ui/UiButton;->onMeasure(II)V

    .line 100
    iget-object v0, p0, Lch/kingdoms/android/dpad/DirectionButtons;->VIEW_RECT:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iget-object v1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->VIEW_RECT:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-super {p0, v0, v1}, Lch/seed/android/ui/UiButton;->setMeasuredDimension(II)V

    .line 101
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 75
    iput p1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->alpha:I

    .line 76
    invoke-super {p0}, Lch/seed/android/ui/UiButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 78
    return-void
.end method

.method public setHaltRange(F)Z
    .locals 3
    .param p1, "percent_"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 113
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lch/kingdoms/android/dpad/DirectionButtons;->HALT_RECT:Landroid/graphics/RectF;

    iget v1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->WIDTH:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 115
    iget-object v0, p0, Lch/kingdoms/android/dpad/DirectionButtons;->HALT_RECT:Landroid/graphics/RectF;

    iget v1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 116
    iget-object v0, p0, Lch/kingdoms/android/dpad/DirectionButtons;->HALT_RECT:Landroid/graphics/RectF;

    iget-object v1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->HALT_RECT:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lch/kingdoms/android/dpad/DirectionButtons;->WIDTH:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 117
    iget-object v0, p0, Lch/kingdoms/android/dpad/DirectionButtons;->HALT_RECT:Landroid/graphics/RectF;

    iget-object v1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->HALT_RECT:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lch/kingdoms/android/dpad/DirectionButtons;->HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 124
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 120
    :cond_0
    const-string v0, "KD"

    const-string v1, "DirectionButtons.setHaltRange : Out of Range"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPosition(II)V
    .locals 3
    .param p1, "leftMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    const/4 v2, -0x2

    .line 81
    iget-object v1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->parent:Lch/android/api/ui/ChRelativeLayout;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->parent:Lch/android/api/ui/ChRelativeLayout;

    invoke-virtual {v1, p0}, Lch/android/api/ui/ChRelativeLayout;->removeView(Landroid/view/View;)V

    .line 85
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 87
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 89
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 90
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 92
    iget-object v1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->parent:Lch/android/api/ui/ChRelativeLayout;

    invoke-virtual {v1, p0, v0}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method

.method public touch(IFF)I
    .locals 1
    .param p1, "action_"    # I
    .param p2, "x_"    # F
    .param p3, "y_"    # F

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lch/seed/android/ui/UiButton;->touch(IFF)I

    .line 107
    invoke-direct {p0, p2, p3}, Lch/kingdoms/android/dpad/DirectionButtons;->getMoveDirection(FF)I

    move-result v0

    .line 108
    .local v0, "direction":I
    invoke-virtual {p0, p1, v0}, Lch/kingdoms/android/dpad/DirectionButtons;->updateButtonBmp(II)V

    .line 109
    return v0
.end method

.method public updateButtonBmp(II)V
    .locals 3
    .param p1, "action_"    # I
    .param p2, "direction_"    # I

    .prologue
    .line 128
    const/4 v1, -0x1

    .line 130
    .local v1, "id":I
    if-eqz p1, :cond_0

    .line 131
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 132
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 146
    iget v1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->defaultResId:I

    .line 153
    :goto_0
    invoke-virtual {p0}, Lch/kingdoms/android/dpad/DirectionButtons;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 154
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lch/kingdoms/android/dpad/DirectionButtons;->alpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 155
    invoke-super {p0, v0}, Lch/seed/android/ui/UiButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget v2, p0, Lch/kingdoms/android/dpad/DirectionButtons;->defaultResId:I

    if-ne v1, v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lch/kingdoms/android/dpad/DirectionButtons;->isDown:Z

    .line 157
    return-void

    .line 134
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    :pswitch_0
    iget v1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->upResId:I

    .line 135
    goto :goto_0

    .line 137
    :pswitch_1
    iget v1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->downResId:I

    .line 138
    goto :goto_0

    .line 140
    :pswitch_2
    iget v1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->leftResId:I

    .line 141
    goto :goto_0

    .line 143
    :pswitch_3
    iget v1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->rightResId:I

    .line 144
    goto :goto_0

    .line 150
    :cond_1
    iget v1, p0, Lch/kingdoms/android/dpad/DirectionButtons;->defaultResId:I

    goto :goto_0

    .line 156
    .restart local v0    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 132
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
