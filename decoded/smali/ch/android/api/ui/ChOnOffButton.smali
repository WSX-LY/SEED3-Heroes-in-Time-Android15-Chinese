.class public Lch/android/api/ui/ChOnOffButton;
.super Landroid/widget/ImageButton;
.source "ChOnOffButton.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# instance fields
.field protected alpha:I

.field protected final f_downDrawable:I

.field protected final f_upDrawable:I

.field private m_isSelect:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_upDrawable"    # I
    .param p3, "_downDrawable"    # I

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 19
    iput p2, p0, Lch/android/api/ui/ChOnOffButton;->f_upDrawable:I

    .line 20
    iput p3, p0, Lch/android/api/ui/ChOnOffButton;->f_downDrawable:I

    .line 21
    iput-boolean v1, p0, Lch/android/api/ui/ChOnOffButton;->m_isSelect:Z

    .line 22
    invoke-super {p0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 23
    .local v0, "bgDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 24
    iget v1, p0, Lch/android/api/ui/ChOnOffButton;->f_upDrawable:I

    invoke-super {p0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public click()V
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lch/android/api/ui/ChOnOffButton;->m_isSelect:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lch/android/api/ui/ChOnOffButton;->setToUnSelect()V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lch/android/api/ui/ChOnOffButton;->setToSelect()V

    goto :goto_0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lch/android/api/ui/ChOnOffButton;->m_isSelect:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 32
    invoke-virtual {p0}, Lch/android/api/ui/ChOnOffButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChOnOffButton;->f_upDrawable:I

    invoke-static {v0, v1}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {p0}, Lch/android/api/ui/ChOnOffButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lch/android/api/ui/ChOnOffButton;->f_upDrawable:I

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/ImageButton;->setMeasuredDimension(II)V

    .line 33
    return-void
.end method

.method public releaseRsources()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0}, Lch/android/api/ui/ChOnOffButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 72
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lch/android/api/ui/ChOnOffButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 79
    :cond_1
    return-void
.end method

.method public setToSelect()V
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lch/android/api/ui/ChOnOffButton;->m_isSelect:Z

    if-nez v0, :cond_0

    .line 53
    iget v0, p0, Lch/android/api/ui/ChOnOffButton;->f_downDrawable:I

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/android/api/ui/ChOnOffButton;->m_isSelect:Z

    .line 56
    :cond_0
    return-void
.end method

.method public setToUnSelect()V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lch/android/api/ui/ChOnOffButton;->m_isSelect:Z

    if-eqz v0, :cond_0

    .line 61
    iget v0, p0, Lch/android/api/ui/ChOnOffButton;->f_upDrawable:I

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/android/api/ui/ChOnOffButton;->m_isSelect:Z

    .line 64
    :cond_0
    return-void
.end method
