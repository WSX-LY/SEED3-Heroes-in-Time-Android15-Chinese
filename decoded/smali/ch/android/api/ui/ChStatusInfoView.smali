.class public Lch/android/api/ui/ChStatusInfoView;
.super Lch/android/api/ui/ChPointView;
.source "ChStatusInfoView.java"


# instance fields
.field private final CASH_LEFT:I

.field private final CASH_TEXT_LEFT:I

.field private final CASH_TEXT_TOP:I

.field private final CASH_TOP:I

.field private final CLASS_LEFT:I

.field private final CLASS_TOP:I

.field private final EXP_LEFT:I

.field private final EXP_TOP:I

.field private final HP_LEFT:I

.field private final HP_TEXT_LEFT:I

.field private final HP_TEXT_TOP:I

.field private final HP_TOP:I

.field private final LEFT_TXT_PAINT:Landroid/graphics/Paint;

.field private final LV_LEFT:I

.field private final LV_TOP:I

.field private final MONEY_LEFT:I

.field private final MONEY_TEXT_LEFT:I

.field private final MONEY_TEXT_TOP:I

.field private final MONEY_TOP:I

.field private final SP_LEFT:I

.field private final SP_TEXT_LEFT:I

.field private final SP_TEXT_TOP:I

.field private final SP_TOP:I

.field private final TP_LEFT:I

.field private final TP_TEXT_LEFT:I

.field private final TP_TEXT_TOP:I

.field private final TP_TOP:I

.field private final TXT_PAINT:Landroid/graphics/Paint;

.field private classBmp:Landroid/graphics/Bitmap;

.field private final f_bgBmp:Landroid/graphics/Bitmap;

.field private final f_cashBmp:Landroid/graphics/Bitmap;

.field private final f_hpBmp:Landroid/graphics/Bitmap;

.field private final f_hpDstRect:Landroid/graphics/Rect;

.field private final f_hpSrcRect:Landroid/graphics/Rect;

.field private final f_moneyBmp:Landroid/graphics/Bitmap;

.field private final f_mpDstRect:Landroid/graphics/Rect;

.field private final f_mpSrcRect:Landroid/graphics/Rect;

.field private final f_spBmp:Landroid/graphics/Bitmap;

.field private final f_tpBmp:Landroid/graphics/Bitmap;

.field private final f_tpDstRect:Landroid/graphics/Rect;

.field private final f_tpSrcRect:Landroid/graphics/Rect;

.field private heroStat:Lch/kingdoms/ndk/data/HeroStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;FLch/kingdoms/ndk/data/HeroStatus;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_density"    # F
    .param p3, "_heroStatus"    # Lch/kingdoms/ndk/data/HeroStatus;

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Lch/android/api/ui/ChPointView;-><init>(Landroid/content/Context;F)V

    .line 64
    invoke-static {}, Lch/android/api/util/TextPaints;->getDefault()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->TXT_PAINT:Landroid/graphics/Paint;

    .line 65
    invoke-static {}, Lch/android/api/util/TextPaints;->getLeftAlign()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->LEFT_TXT_PAINT:Landroid/graphics/Paint;

    .line 70
    iput-object p3, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    .line 72
    mul-float v1, p2, v6

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->CLASS_LEFT:I

    .line 73
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->CLASS_TOP:I

    .line 74
    mul-float v1, p2, v7

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->LV_LEFT:I

    .line 75
    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->CLASS_TOP:I

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChStatusInfoView;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->LV_TOP:I

    .line 76
    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->EXP_LEFT:I

    .line 77
    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->CLASS_TOP:I

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChStatusInfoView;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->EXP_TOP:I

    .line 78
    mul-float v1, p2, v6

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->MONEY_LEFT:I

    .line 79
    const/high16 v1, 0x41880000    # 17.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->MONEY_TOP:I

    .line 80
    mul-float v1, p2, v7

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->CASH_LEFT:I

    .line 81
    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->MONEY_TOP:I

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->CASH_TOP:I

    .line 83
    const/high16 v1, 0x42fa0000    # 125.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->HP_LEFT:I

    .line 84
    const/high16 v1, 0x42140000    # 37.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->HP_TOP:I

    .line 85
    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->HP_LEFT:I

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->SP_LEFT:I

    .line 86
    const/high16 v1, 0x425c0000    # 55.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->SP_TOP:I

    .line 87
    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->HP_LEFT:I

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->TP_LEFT:I

    .line 88
    const/high16 v1, 0x42920000    # 73.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->TP_TOP:I

    .line 90
    const/high16 v1, 0x42a00000    # 80.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->HP_TEXT_LEFT:I

    .line 91
    const/high16 v1, 0x422c0000    # 43.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->HP_TEXT_TOP:I

    .line 92
    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->HP_TEXT_LEFT:I

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->SP_TEXT_LEFT:I

    .line 93
    const/high16 v1, 0x427c0000    # 63.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->SP_TEXT_TOP:I

    .line 94
    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->HP_TEXT_LEFT:I

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->TP_TEXT_LEFT:I

    .line 95
    const/high16 v1, 0x42a60000    # 83.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->TP_TEXT_TOP:I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0202b5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_bgBmp:Landroid/graphics/Bitmap;

    .line 99
    const v1, 0x7f0202d8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->classBmp:Landroid/graphics/Bitmap;

    .line 100
    const v1, 0x7f02020b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_moneyBmp:Landroid/graphics/Bitmap;

    .line 101
    const v1, 0x7f020070

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_cashBmp:Landroid/graphics/Bitmap;

    .line 103
    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->MONEY_LEFT:I

    iget-object v2, p0, Lch/android/api/ui/ChStatusInfoView;->f_moneyBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    mul-float v2, p2, v5

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->MONEY_TEXT_LEFT:I

    .line 104
    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->MONEY_TOP:I

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChStatusInfoView;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    add-float/2addr v1, v2

    mul-float v2, p2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->MONEY_TEXT_TOP:I

    .line 105
    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->CASH_LEFT:I

    iget-object v2, p0, Lch/android/api/ui/ChStatusInfoView;->f_cashBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    mul-float v2, p2, v5

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->CASH_TEXT_LEFT:I

    .line 106
    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->CASH_TOP:I

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChStatusInfoView;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    add-float/2addr v1, v2

    mul-float v2, p2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChStatusInfoView;->CASH_TEXT_TOP:I

    .line 108
    const v1, 0x7f0200d6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_hpBmp:Landroid/graphics/Bitmap;

    .line 109
    const v1, 0x7f02020c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_spBmp:Landroid/graphics/Bitmap;

    .line 110
    const v1, 0x7f0202d2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_tpBmp:Landroid/graphics/Bitmap;

    .line 112
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChStatusInfoView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lch/android/api/ui/ChStatusInfoView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_hpSrcRect:Landroid/graphics/Rect;

    .line 113
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChStatusInfoView;->f_spBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lch/android/api/ui/ChStatusInfoView;->f_spBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_mpSrcRect:Landroid/graphics/Rect;

    .line 114
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChStatusInfoView;->f_tpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lch/android/api/ui/ChStatusInfoView;->f_tpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_tpSrcRect:Landroid/graphics/Rect;

    .line 116
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lch/android/api/ui/ChStatusInfoView;->HP_LEFT:I

    iget v3, p0, Lch/android/api/ui/ChStatusInfoView;->HP_TOP:I

    iget v4, p0, Lch/android/api/ui/ChStatusInfoView;->HP_LEFT:I

    iget-object v5, p0, Lch/android/api/ui/ChStatusInfoView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lch/android/api/ui/ChStatusInfoView;->HP_TOP:I

    iget-object v6, p0, Lch/android/api/ui/ChStatusInfoView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_hpDstRect:Landroid/graphics/Rect;

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lch/android/api/ui/ChStatusInfoView;->SP_LEFT:I

    iget v3, p0, Lch/android/api/ui/ChStatusInfoView;->SP_TOP:I

    iget v4, p0, Lch/android/api/ui/ChStatusInfoView;->SP_LEFT:I

    iget-object v5, p0, Lch/android/api/ui/ChStatusInfoView;->f_spBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lch/android/api/ui/ChStatusInfoView;->SP_TOP:I

    iget-object v6, p0, Lch/android/api/ui/ChStatusInfoView;->f_spBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_mpDstRect:Landroid/graphics/Rect;

    .line 118
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lch/android/api/ui/ChStatusInfoView;->TP_LEFT:I

    iget v3, p0, Lch/android/api/ui/ChStatusInfoView;->TP_TOP:I

    iget v4, p0, Lch/android/api/ui/ChStatusInfoView;->TP_LEFT:I

    iget-object v5, p0, Lch/android/api/ui/ChStatusInfoView;->f_tpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lch/android/api/ui/ChStatusInfoView;->TP_TOP:I

    iget-object v6, p0, Lch/android/api/ui/ChStatusInfoView;->f_tpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_tpDstRect:Landroid/graphics/Rect;

    .line 119
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 169
    invoke-super {p0, p1}, Lch/android/api/ui/ChPointView;->onDraw(Landroid/graphics/Canvas;)V

    .line 170
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 172
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->classBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->classBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->classBmp:Landroid/graphics/Bitmap;

    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->CLASS_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChStatusInfoView;->CLASS_TOP:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LV . "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->LV_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChStatusInfoView;->LV_TOP:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChStatusInfoView;->LEFT_TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 176
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getMaxExp()I

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exp : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getExp()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/HeroStatus;->getMaxExp()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->EXP_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChStatusInfoView;->EXP_TOP:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChStatusInfoView;->LEFT_TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 180
    :cond_1
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->f_moneyBmp:Landroid/graphics/Bitmap;

    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->MONEY_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChStatusInfoView;->MONEY_TOP:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 181
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->MONEY_TEXT_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChStatusInfoView;->MONEY_TEXT_TOP:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChStatusInfoView;->LEFT_TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 182
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->f_cashBmp:Landroid/graphics/Bitmap;

    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->CASH_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChStatusInfoView;->CASH_TOP:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 183
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getCashPoints()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->CASH_TEXT_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChStatusInfoView;->CASH_TEXT_TOP:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChStatusInfoView;->LEFT_TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getHp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getMaxHp()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->HP_TEXT_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChStatusInfoView;->HP_TEXT_TOP:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChStatusInfoView;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getSp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getMaxSp()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->SP_TEXT_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChStatusInfoView;->SP_TEXT_TOP:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChStatusInfoView;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getTp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getMaxTp()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChStatusInfoView;->TP_TEXT_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChStatusInfoView;->TP_TEXT_TOP:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChStatusInfoView;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 189
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->f_hpBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_hpSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChStatusInfoView;->f_hpDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 190
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->f_spBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_mpSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChStatusInfoView;->f_mpDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 191
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->f_tpBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_tpSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChStatusInfoView;->f_tpDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 193
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChPointView;->onMeasure(II)V

    .line 163
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lch/android/api/ui/ChStatusInfoView;->setMeasuredDimension(II)V

    .line 164
    return-void
.end method

.method public releaseRsources()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-super {p0}, Lch/android/api/ui/ChPointView;->releaseRsources()V

    .line 199
    const/4 v3, 0x7

    new-array v1, v3, [Landroid/graphics/Bitmap;

    iget-object v3, p0, Lch/android/api/ui/ChStatusInfoView;->f_bgBmp:Landroid/graphics/Bitmap;

    aput-object v3, v1, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lch/android/api/ui/ChStatusInfoView;->classBmp:Landroid/graphics/Bitmap;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lch/android/api/ui/ChStatusInfoView;->f_moneyBmp:Landroid/graphics/Bitmap;

    aput-object v4, v1, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lch/android/api/ui/ChStatusInfoView;->f_hpBmp:Landroid/graphics/Bitmap;

    aput-object v4, v1, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lch/android/api/ui/ChStatusInfoView;->f_spBmp:Landroid/graphics/Bitmap;

    aput-object v4, v1, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lch/android/api/ui/ChStatusInfoView;->f_tpBmp:Landroid/graphics/Bitmap;

    aput-object v4, v1, v3

    .line 200
    .local v1, "bmps":[Landroid/graphics/Bitmap;
    array-length v3, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 205
    return-void

    .line 200
    :cond_0
    aget-object v0, v1, v2

    .line 201
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 202
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 200
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setHeroStatus(Lch/kingdoms/ndk/data/HeroStatus;)V
    .locals 2
    .param p1, "status"    # Lch/kingdoms/ndk/data/HeroStatus;

    .prologue
    .line 122
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v0

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 123
    iput-object p1, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    .line 148
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->classBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->classBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->classBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 128
    :cond_1
    iput-object p1, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    .line 129
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->classBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 131
    :pswitch_0
    invoke-virtual {p0}, Lch/android/api/ui/ChStatusInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020076

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->classBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-virtual {p0}, Lch/android/api/ui/ChStatusInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020077

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->classBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-virtual {p0}, Lch/android/api/ui/ChStatusInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020075

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->classBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 140
    :pswitch_3
    invoke-virtual {p0}, Lch/android/api/ui/ChStatusInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020078

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->classBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateHpSpTp()V
    .locals 6

    .prologue
    .line 151
    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_hpSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChStatusInfoView;->f_hpDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lch/android/api/ui/ChStatusInfoView;->f_hpBmp:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getMaxHp()I

    move-result v4

    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getHp()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lch/android/api/ui/ChStatusInfoView;->updateRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)V

    .line 153
    iget-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_mpSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChStatusInfoView;->f_mpDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lch/android/api/ui/ChStatusInfoView;->f_spBmp:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getMaxSp()I

    move-result v4

    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getSp()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lch/android/api/ui/ChStatusInfoView;->updateRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)V

    .line 154
    iget-object v1, p0, Lch/android/api/ui/ChStatusInfoView;->f_tpSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChStatusInfoView;->f_tpDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lch/android/api/ui/ChStatusInfoView;->f_tpBmp:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getMaxTp()I

    move-result v4

    iget-object v0, p0, Lch/android/api/ui/ChStatusInfoView;->heroStat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getTp()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lch/android/api/ui/ChStatusInfoView;->updateRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lch/android/api/ui/ChStatusInfoView;->invalidate()V

    .line 157
    return-void
.end method
