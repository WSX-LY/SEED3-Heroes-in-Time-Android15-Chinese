.class public Lch/android/api/ui/ChQuickSlot;
.super Lch/android/api/ui/ChImageView;
.source "ChQuickSlot.java"


# instance fields
.field private final f_bgBmp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 17
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f020255

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChQuickSlot;->f_bgBmp:Landroid/graphics/Bitmap;

    .line 18
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-super {p0, p1}, Lch/android/api/ui/ChImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 29
    iget-object v0, p0, Lch/android/api/ui/ChQuickSlot;->f_bgBmp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 30
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChImageView;->onMeasure(II)V

    .line 36
    iget-object v0, p0, Lch/android/api/ui/ChQuickSlot;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lch/android/api/ui/ChQuickSlot;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lch/android/api/ui/ChQuickSlot;->setMeasuredDimension(II)V

    .line 37
    return-void
.end method

.method public releaseRsources()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lch/android/api/ui/ChQuickSlot;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lch/android/api/ui/ChQuickSlot;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 45
    :cond_0
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->releaseRsources()V

    .line 46
    return-void
.end method

.method public setSlot(I)V
    .locals 0
    .param p1, "_id"    # I

    .prologue
    .line 23
    return-void
.end method
