.class public Lch/android/api/ui/ChColosseumResultView;
.super Lch/android/api/ui/ChImageView;
.source "ChColosseumResultView.java"


# instance fields
.field private final di:Lch/android/api/util/DisplayInfo;

.field private fightingScoreFrm:I

.field private invenNum:I

.field private item:Lch/kingdoms/ndk/data/Inven$Item;

.field private itemBmp:Landroid/graphics/Bitmap;

.field private lvBonus:I

.field private final res:Landroid/content/res/Resources;

.field private rewardExp:I

.field private score:I

.field private final scorePaint:Landroid/graphics/Paint;

.field private final scoreTextPaint:Landroid/graphics/Paint;

.field private final textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 40
    const v0, 0x7f020086

    invoke-super {p0, v0}, Lch/android/api/ui/ChImageView;->setBackgroundResource(I)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->res:Landroid/content/res/Resources;

    .line 42
    iput-object p2, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    .line 44
    invoke-static {}, Lch/android/api/util/TextPaints;->getBig()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->scoreTextPaint:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->scoreTextPaint:Landroid/graphics/Paint;

    const v1, -0x8900

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->scoreTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 47
    invoke-static {}, Lch/android/api/util/TextPaints;->getBig()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->scorePaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->scorePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 49
    invoke-static {}, Lch/android/api/util/TextPaints;->getBig()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->textPaint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getScore()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lch/android/api/ui/ChColosseumResultView;->score:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x42ac0000    # 86.0f

    const/high16 v7, 0x42880000    # 68.0f

    const/high16 v6, 0x42300000    # 44.0f

    const/high16 v5, 0x43480000    # 200.0f

    const/high16 v4, 0x42820000    # 65.0f

    .line 88
    invoke-super {p0, p1}, Lch/android/api/ui/ChImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    iget v0, p0, Lch/android/api/ui/ChColosseumResultView;->fightingScoreFrm:I

    if-lez v0, :cond_0

    .line 90
    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->res:Landroid/content/res/Resources;

    const v1, 0x7f05003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x42040000    # 33.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChColosseumResultView;->scoreTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 91
    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->res:Landroid/content/res/Resources;

    const v1, 0x7f050040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x42040000    # 33.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChColosseumResultView;->scoreTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 92
    iget v0, p0, Lch/android/api/ui/ChColosseumResultView;->fightingScoreFrm:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    .line 93
    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->scorePaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget v0, p0, Lch/android/api/ui/ChColosseumResultView;->lvBonus:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChColosseumResultView;->scorePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 95
    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->scorePaint:Landroid/graphics/Paint;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget v0, p0, Lch/android/api/ui/ChColosseumResultView;->score:I

    div-int/lit8 v0, v0, 0xf

    iget v1, p0, Lch/android/api/ui/ChColosseumResultView;->fightingScoreFrm:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChColosseumResultView;->scorePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->scorePaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget v0, p0, Lch/android/api/ui/ChColosseumResultView;->lvBonus:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChColosseumResultView;->scorePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 100
    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->scorePaint:Landroid/graphics/Paint;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget v0, p0, Lch/android/api/ui/ChColosseumResultView;->score:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChColosseumResultView;->scorePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 103
    iget v0, p0, Lch/android/api/ui/ChColosseumResultView;->fightingScoreFrm:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_3

    iget v0, p0, Lch/android/api/ui/ChColosseumResultView;->fightingScoreFrm:I

    const/16 v1, 0x24

    if-ge v0, v1, :cond_3

    .line 104
    iget v0, p0, Lch/android/api/ui/ChColosseumResultView;->rewardExp:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_2

    .line 105
    iget v0, p0, Lch/android/api/ui/ChColosseumResultView;->rewardExp:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v8

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChColosseumResultView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lch/android/api/ui/ChColosseumResultView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 108
    :cond_2
    iget v0, p0, Lch/android/api/ui/ChColosseumResultView;->rewardExp:I

    div-int/lit8 v0, v0, 0xf

    iget v1, p0, Lch/android/api/ui/ChColosseumResultView;->fightingScoreFrm:I

    add-int/lit8 v1, v1, -0x11

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v8

    iget-object v3, p0, Lch/android/api/ui/ChColosseumResultView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChColosseumResultView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 110
    :cond_3
    iget v0, p0, Lch/android/api/ui/ChColosseumResultView;->fightingScoreFrm:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_0

    .line 111
    iget v0, p0, Lch/android/api/ui/ChColosseumResultView;->rewardExp:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v8

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChColosseumResultView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lch/android/api/ui/ChColosseumResultView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 112
    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->itemBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->itemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 113
    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->itemBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42dc0000    # 110.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 115
    :cond_4
    iget v0, p0, Lch/android/api/ui/ChColosseumResultView;->invenNum:I

    if-ltz v0, :cond_5

    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->item:Lch/kingdoms/ndk/data/Inven$Item;

    if-eqz v0, :cond_5

    .line 116
    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->item:Lch/kingdoms/ndk/data/Inven$Item;

    iget-object v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    iget-object v1, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42e60000    # 115.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChColosseumResultView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lch/android/api/ui/ChColosseumResultView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 118
    :cond_5
    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->res:Landroid/content/res/Resources;

    const v1, 0x7f05003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42e60000    # 115.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChColosseumResultView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lch/android/api/ui/ChColosseumResultView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public releaseRsources()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->releaseRsources()V

    .line 133
    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->itemBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->itemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->itemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lch/android/api/ui/ChColosseumResultView;->itemBmp:Landroid/graphics/Bitmap;

    .line 137
    return-void
.end method

.method public updateFightingScoreFrm(III)V
    .locals 0
    .param p1, "fightingScoreFrm"    # I
    .param p2, "lvBonus"    # I
    .param p3, "score"    # I

    .prologue
    .line 55
    iput p1, p0, Lch/android/api/ui/ChColosseumResultView;->fightingScoreFrm:I

    .line 56
    iput p2, p0, Lch/android/api/ui/ChColosseumResultView;->lvBonus:I

    .line 57
    iput p3, p0, Lch/android/api/ui/ChColosseumResultView;->score:I

    .line 58
    return-void
.end method

.method public updateScore(III)V
    .locals 6
    .param p1, "rewardExp"    # I
    .param p2, "invenNum"    # I
    .param p3, "rewardFence"    # I

    .prologue
    .line 63
    iput p1, p0, Lch/android/api/ui/ChColosseumResultView;->rewardExp:I

    .line 64
    iput p2, p0, Lch/android/api/ui/ChColosseumResultView;->invenNum:I

    .line 67
    if-ltz p2, :cond_1

    .line 71
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v0

    .line 72
    .local v0, "items":[Lch/kingdoms/ndk/data/Inven$Item;
    aget-object v2, v0, p2

    iput-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->item:Lch/kingdoms/ndk/data/Inven$Item;

    .line 73
    iget-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->res:Landroid/content/res/Resources;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "itemimg_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lch/android/api/ui/ChColosseumResultView;->item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v4, v4, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    iget-object v5, p0, Lch/android/api/ui/ChColosseumResultView;->item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v5, v5, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    invoke-static {v5}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetItemRes(I)Lch/kingdoms/ndk/data/ItemRes;

    move-result-object v5

    invoke-static {v4, v5}, Lch/android/api/ui/ChItemButton;->getItemNum(ILch/kingdoms/ndk/data/ItemRes;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    const-string v4, "drawable"

    const-string v5, "ch.kingdoms.market.compat"

    .line 73
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 76
    .local v1, "resId":I
    iget-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->res:Landroid/content/res/Resources;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->itemBmp:Landroid/graphics/Bitmap;

    .line 77
    sget-boolean v2, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 78
    const-string v2, "KD"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "item : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lch/android/api/ui/ChColosseumResultView;->item:Lch/kingdoms/ndk/data/Inven$Item;

    iget-object v4, v4, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lch/android/api/ui/ChColosseumResultView;->item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v4, v4, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v0    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    .end local v1    # "resId":I
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->res:Landroid/content/res/Resources;

    const v3, 0x7f020199

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lch/android/api/ui/ChColosseumResultView;->itemBmp:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
