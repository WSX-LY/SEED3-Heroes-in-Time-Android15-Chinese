.class public Lch/android/api/ui/ChExpView;
.super Lch/android/api/ui/ChPointView;
.source "ChExpView.java"


# instance fields
.field private final HP_LEFT:I

.field private final HP_TOP:I

.field private final f_bgBmp:Landroid/graphics/Bitmap;

.field private final f_density:F

.field private final f_expBmp:Landroid/graphics/Bitmap;

.field private final f_expDstRect:Landroid/graphics/Rect;

.field private final f_expSrcRect:Landroid/graphics/Rect;

.field private m_exp:I

.field private m_maxExp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_density"    # F

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Lch/android/api/ui/ChPointView;-><init>(Landroid/content/Context;F)V

    .line 28
    iput p2, p0, Lch/android/api/ui/ChExpView;->f_density:F

    .line 30
    iget v1, p0, Lch/android/api/ui/ChExpView;->f_density:F

    const/high16 v2, 0x41b80000    # 23.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChExpView;->HP_LEFT:I

    .line 31
    iget v1, p0, Lch/android/api/ui/ChExpView;->f_density:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChExpView;->HP_TOP:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0200d3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChExpView;->f_bgBmp:Landroid/graphics/Bitmap;

    .line 36
    const v1, 0x7f0200a8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChExpView;->f_expBmp:Landroid/graphics/Bitmap;

    .line 37
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChExpView;->f_expBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lch/android/api/ui/ChExpView;->f_expBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChExpView;->f_expSrcRect:Landroid/graphics/Rect;

    .line 38
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lch/android/api/ui/ChExpView;->HP_LEFT:I

    iget v3, p0, Lch/android/api/ui/ChExpView;->HP_TOP:I

    iget v4, p0, Lch/android/api/ui/ChExpView;->HP_LEFT:I

    iget-object v5, p0, Lch/android/api/ui/ChExpView;->f_expBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lch/android/api/ui/ChExpView;->HP_TOP:I

    iget-object v6, p0, Lch/android/api/ui/ChExpView;->f_expBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChExpView;->f_expDstRect:Landroid/graphics/Rect;

    .line 39
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-super {p0, p1}, Lch/android/api/ui/ChPointView;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    iget-object v0, p0, Lch/android/api/ui/ChExpView;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 61
    iget-object v0, p0, Lch/android/api/ui/ChExpView;->f_expBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lch/android/api/ui/ChExpView;->f_expSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChExpView;->f_expDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 62
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChPointView;->onMeasure(II)V

    .line 45
    iget-object v0, p0, Lch/android/api/ui/ChExpView;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lch/android/api/ui/ChExpView;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lch/android/api/ui/ChExpView;->setMeasuredDimension(II)V

    .line 46
    return-void
.end method

.method public releaseRsources()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lch/android/api/ui/ChPointView;->releaseRsources()V

    .line 68
    iget-object v0, p0, Lch/android/api/ui/ChExpView;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lch/android/api/ui/ChExpView;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 71
    :cond_0
    iget-object v0, p0, Lch/android/api/ui/ChExpView;->f_expBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lch/android/api/ui/ChExpView;->f_expBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    :cond_1
    return-void
.end method

.method public setExp(II)V
    .locals 6
    .param p1, "_maxExp"    # I
    .param p2, "_exp"    # I

    .prologue
    .line 49
    iget v0, p0, Lch/android/api/ui/ChExpView;->m_maxExp:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lch/android/api/ui/ChExpView;->m_exp:I

    if-eq v0, p2, :cond_1

    .line 50
    :cond_0
    iput p1, p0, Lch/android/api/ui/ChExpView;->m_maxExp:I

    .line 51
    iput p2, p0, Lch/android/api/ui/ChExpView;->m_exp:I

    .line 52
    iget-object v1, p0, Lch/android/api/ui/ChExpView;->f_expSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChExpView;->f_expDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lch/android/api/ui/ChExpView;->f_expBmp:Landroid/graphics/Bitmap;

    iget v4, p0, Lch/android/api/ui/ChExpView;->m_maxExp:I

    iget v5, p0, Lch/android/api/ui/ChExpView;->m_exp:I

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lch/android/api/ui/ChPointView;->updateRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)V

    .line 54
    :cond_1
    return-void
.end method
