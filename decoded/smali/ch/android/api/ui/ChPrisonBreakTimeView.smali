.class public Lch/android/api/ui/ChPrisonBreakTimeView;
.super Lch/android/api/ui/ChImageView;
.source "ChPrisonBreakTimeView.java"


# instance fields
.field private final TEXT_X:I

.field private final TEXT_Y:I

.field private final dstRect:Landroid/graphics/Rect;

.field private final srcRect:Landroid/graphics/Rect;

.field private final textPaint:Landroid/graphics/Paint;

.field private time:I

.field private final timeBarBmp:Landroid/graphics/Bitmap;

.field private totalTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    const/4 v5, 0x0

    .line 27
    invoke-direct {p0, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 29
    const v2, 0x7f02024c

    invoke-super {p0, v2}, Lch/android/api/ui/ChImageView;->setBackgroundResource(I)V

    .line 31
    invoke-virtual {p0}, Lch/android/api/ui/ChPrisonBreakTimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->timeBarBmp:Landroid/graphics/Bitmap;

    .line 32
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->timeBarBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->timeBarBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->srcRect:Landroid/graphics/Rect;

    .line 33
    iget v2, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42580000    # 54.0f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 34
    .local v0, "dstLeft":I
    iget v2, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 35
    .local v1, "dstTop":I
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->timeBarBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->timeBarBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->dstRect:Landroid/graphics/Rect;

    .line 37
    invoke-static {}, Lch/android/api/util/TextPaints;->getDefault()Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->textPaint:Landroid/graphics/Paint;

    .line 38
    iget-object v2, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->textPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 40
    iget v2, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->TEXT_X:I

    .line 41
    iget v2, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->TEXT_Y:I

    .line 43
    const/4 v2, -0x1

    iput v2, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->totalTime:I

    .line 44
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v6, 0x9

    .line 56
    invoke-super {p0, p1}, Lch/android/api/ui/ChImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    iget v2, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->totalTime:I

    if-ltz v2, :cond_0

    .line 59
    iget-object v2, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->srcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->timeBarBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->time:I

    mul-int/2addr v3, v4

    iget v4, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->totalTime:I

    div-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 60
    iget-object v2, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->dstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->dstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->srcRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 61
    iget-object v2, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->timeBarBmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->srcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->dstRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 62
    iget v2, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->time:I

    div-int/lit8 v0, v2, 0x3c

    .line 63
    .local v0, "min":I
    iget v2, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->time:I

    rem-int/lit8 v1, v2, 0x3c

    .line 64
    .local v1, "sec":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-le v0, v6, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-le v1, v6, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->TEXT_X:I

    int-to-float v3, v3

    iget v4, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->TEXT_Y:I

    int-to-float v4, v4

    iget-object v5, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 66
    .end local v0    # "min":I
    .end local v1    # "sec":I
    :cond_0
    return-void

    .line 64
    .restart local v0    # "min":I
    .restart local v1    # "sec":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public releaseRsources()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->releaseRsources()V

    .line 72
    iget-object v0, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->timeBarBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->timeBarBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->timeBarBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 75
    :cond_0
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "time"    # I
    .param p2, "maxTime"    # I

    .prologue
    .line 47
    iget v0, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->totalTime:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 48
    iput p2, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->totalTime:I

    .line 50
    :cond_0
    iput p1, p0, Lch/android/api/ui/ChPrisonBreakTimeView;->time:I

    .line 51
    return-void
.end method
