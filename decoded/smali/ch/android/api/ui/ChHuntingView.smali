.class public Lch/android/api/ui/ChHuntingView;
.super Lch/android/api/ui/ChImageView;
.source "ChHuntingView.java"


# instance fields
.field private final cramerBmp:Landroid/graphics/Bitmap;

.field private cramerCnt:I

.field private final cramerDstRect:Landroid/graphics/Rect;

.field private final cramerSrcRect:Landroid/graphics/Rect;

.field private final cramerX:I

.field private final cramerY:I

.field private final heroBmp:Landroid/graphics/Bitmap;

.field private heroCnt:I

.field private final heroDstRect:Landroid/graphics/Rect;

.field private final heroSrcRect:Landroid/graphics/Rect;

.field private final heroX:I

.field private final heroY:I

.field private final textPaint:Landroid/graphics/Paint;

.field private totalCnt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    const v4, 0x7f020087

    const/high16 v7, 0x41900000    # 18.0f

    const/4 v6, 0x0

    .line 38
    invoke-direct {p0, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-super {p0, v4}, Lch/android/api/ui/ChImageView;->setBackgroundResource(I)V

    .line 42
    invoke-virtual {p0}, Lch/android/api/ui/ChHuntingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 43
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0200d2

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lch/android/api/ui/ChHuntingView;->heroBmp:Landroid/graphics/Bitmap;

    .line 44
    const v3, 0x7f02008b

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lch/android/api/ui/ChHuntingView;->cramerBmp:Landroid/graphics/Bitmap;

    .line 46
    invoke-static {v2, v4}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 47
    .local v1, "halfBgW":I
    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 49
    .local v0, "dstTop":I
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lch/android/api/ui/ChHuntingView;->heroBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lch/android/api/ui/ChHuntingView;->heroBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lch/android/api/ui/ChHuntingView;->heroSrcRect:Landroid/graphics/Rect;

    .line 50
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lch/android/api/ui/ChHuntingView;->heroBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v1, v4

    iget-object v5, p0, Lch/android/api/ui/ChHuntingView;->heroBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-direct {v3, v4, v0, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lch/android/api/ui/ChHuntingView;->heroDstRect:Landroid/graphics/Rect;

    .line 52
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lch/android/api/ui/ChHuntingView;->heroBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lch/android/api/ui/ChHuntingView;->heroBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lch/android/api/ui/ChHuntingView;->cramerSrcRect:Landroid/graphics/Rect;

    .line 53
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lch/android/api/ui/ChHuntingView;->heroBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lch/android/api/ui/ChHuntingView;->heroBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-direct {v3, v1, v0, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lch/android/api/ui/ChHuntingView;->cramerDstRect:Landroid/graphics/Rect;

    .line 55
    invoke-static {}, Lch/android/api/util/TextPaints;->getDefault()Landroid/graphics/Paint;

    move-result-object v3

    iput-object v3, p0, Lch/android/api/ui/ChHuntingView;->textPaint:Landroid/graphics/Paint;

    .line 56
    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x41c80000    # 25.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lch/android/api/ui/ChHuntingView;->heroX:I

    .line 57
    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lch/android/api/ui/ChHuntingView;->heroY:I

    .line 58
    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x43520000    # 210.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lch/android/api/ui/ChHuntingView;->cramerX:I

    .line 59
    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lch/android/api/ui/ChHuntingView;->cramerY:I

    .line 60
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 65
    invoke-super {p0, p1}, Lch/android/api/ui/ChImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    iget v4, p0, Lch/android/api/ui/ChHuntingView;->totalCnt:I

    if-eqz v4, :cond_0

    .line 67
    iget-object v4, p0, Lch/android/api/ui/ChHuntingView;->heroBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 68
    .local v0, "barW":I
    iget v4, p0, Lch/android/api/ui/ChHuntingView;->totalCnt:I

    div-int v2, v0, v4

    .line 70
    .local v2, "disp":I
    iget v4, p0, Lch/android/api/ui/ChHuntingView;->heroCnt:I

    mul-int v3, v2, v4

    .line 71
    .local v3, "heroDisp":I
    iget-object v4, p0, Lch/android/api/ui/ChHuntingView;->heroSrcRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lch/android/api/ui/ChHuntingView;->heroSrcRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 72
    iget-object v4, p0, Lch/android/api/ui/ChHuntingView;->heroDstRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lch/android/api/ui/ChHuntingView;->heroDstRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 73
    iget-object v4, p0, Lch/android/api/ui/ChHuntingView;->heroBmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lch/android/api/ui/ChHuntingView;->heroSrcRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lch/android/api/ui/ChHuntingView;->heroDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 75
    iget v4, p0, Lch/android/api/ui/ChHuntingView;->cramerCnt:I

    mul-int v1, v2, v4

    .line 76
    .local v1, "caramerDisp":I
    iget-object v4, p0, Lch/android/api/ui/ChHuntingView;->cramerSrcRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lch/android/api/ui/ChHuntingView;->cramerSrcRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 77
    iget-object v4, p0, Lch/android/api/ui/ChHuntingView;->cramerDstRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lch/android/api/ui/ChHuntingView;->cramerDstRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 79
    iget-object v4, p0, Lch/android/api/ui/ChHuntingView;->cramerBmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lch/android/api/ui/ChHuntingView;->cramerSrcRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lch/android/api/ui/ChHuntingView;->cramerDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 81
    iget-object v4, p0, Lch/android/api/ui/ChHuntingView;->textPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lch/android/api/ui/ChHuntingView;->heroCnt:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lch/android/api/ui/ChHuntingView;->totalCnt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lch/android/api/ui/ChHuntingView;->heroX:I

    int-to-float v5, v5

    iget v6, p0, Lch/android/api/ui/ChHuntingView;->heroY:I

    int-to-float v6, v6

    iget-object v7, p0, Lch/android/api/ui/ChHuntingView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 83
    iget-object v4, p0, Lch/android/api/ui/ChHuntingView;->textPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lch/android/api/ui/ChHuntingView;->cramerCnt:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lch/android/api/ui/ChHuntingView;->totalCnt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lch/android/api/ui/ChHuntingView;->cramerX:I

    int-to-float v5, v5

    iget v6, p0, Lch/android/api/ui/ChHuntingView;->cramerY:I

    int-to-float v6, v6

    iget-object v7, p0, Lch/android/api/ui/ChHuntingView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 86
    .end local v0    # "barW":I
    .end local v1    # "caramerDisp":I
    .end local v2    # "disp":I
    .end local v3    # "heroDisp":I
    :cond_0
    return-void
.end method

.method public releaseRsources()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->releaseRsources()V

    .line 98
    iget-object v0, p0, Lch/android/api/ui/ChHuntingView;->heroBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/android/api/ui/ChHuntingView;->heroBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lch/android/api/ui/ChHuntingView;->heroBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    :cond_0
    iget-object v0, p0, Lch/android/api/ui/ChHuntingView;->cramerBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/android/api/ui/ChHuntingView;->cramerBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lch/android/api/ui/ChHuntingView;->cramerBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 104
    :cond_1
    return-void
.end method

.method public updateCnt(III)V
    .locals 0
    .param p1, "heroCnt"    # I
    .param p2, "cramerCnt"    # I
    .param p3, "totalCnt"    # I

    .prologue
    .line 89
    iput p1, p0, Lch/android/api/ui/ChHuntingView;->heroCnt:I

    .line 90
    iput p2, p0, Lch/android/api/ui/ChHuntingView;->cramerCnt:I

    .line 91
    iput p3, p0, Lch/android/api/ui/ChHuntingView;->totalCnt:I

    .line 92
    return-void
.end method
