.class public Lch/android/api/ui/ChColosseumView;
.super Lch/android/api/ui/ChImageView;
.source "ChColosseumView.java"


# static fields
.field public static final SS_COLORANKREG:I = 0x8

.field public static final SS_COMPLETE:I = 0x5

.field public static final SS_FAIL:I = 0x4

.field public static final SS_FIGHTLOADING:I = 0x0

.field public static final SS_JUSTWAIT:I = 0x1

.field public static final SS_NEXTWAIT:I = 0x3

.field public static final SS_NOWFIGHT:I = 0x2

.field public static final SS_SCORESHOW:I = 0x6

.field public static final SS_SKILLBONUS:I = 0x7


# instance fields
.field private final FIGHT_WAIT_TIME_MAX:I

.field private alramBarBmp:Landroid/graphics/Bitmap;

.field private clearBmp:Landroid/graphics/Bitmap;

.field private completeBmp:Landroid/graphics/Bitmap;

.field private final density:F

.field private final di:Lch/android/api/util/DisplayInfo;

.field private failureBmp:Landroid/graphics/Bitmap;

.field private fightingNextWaitFrm:I

.field private fightingWaitFrm:I

.field private levelBmp:Landroid/graphics/Bitmap;

.field private numberBmps:[Landroid/graphics/Bitmap;

.field private final res:Landroid/content/res/Resources;

.field private score:I

.field private stageNum:I

.field private state:I

.field private time:I

.field private timeAndScoreBmp:Landroid/graphics/Bitmap;

.field private timeBonusBmp:Landroid/graphics/Bitmap;

.field private final txtPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 16
    const/16 v0, 0x50

    iput v0, p0, Lch/android/api/ui/ChColosseumView;->FIGHT_WAIT_TIME_MAX:I

    .line 54
    invoke-virtual {p0, v2}, Lch/android/api/ui/ChColosseumView;->setClickable(Z)V

    .line 55
    invoke-virtual {p0, v2}, Lch/android/api/ui/ChColosseumView;->setFocusable(Z)V

    .line 56
    iput-object p2, p0, Lch/android/api/ui/ChColosseumView;->di:Lch/android/api/util/DisplayInfo;

    .line 57
    iget v0, p2, Lch/android/api/util/DisplayInfo;->density:F

    iput v0, p0, Lch/android/api/ui/ChColosseumView;->density:F

    .line 58
    invoke-virtual {p0}, Lch/android/api/ui/ChColosseumView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChColosseumView;->res:Landroid/content/res/Resources;

    .line 59
    invoke-static {}, Lch/android/api/util/TextPaints;->getBig()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChColosseumView;->txtPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lch/android/api/ui/ChColosseumView;->txtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 61
    invoke-virtual {p0, v2}, Lch/android/api/ui/ChColosseumView;->setFocusable(Z)V

    .line 62
    invoke-virtual {p0, v2}, Lch/android/api/ui/ChColosseumView;->setClickable(Z)V

    .line 63
    return-void
.end method

.method private drawTimeAndScore(IILandroid/graphics/Canvas;)V
    .locals 10
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v9, 0x9

    const/high16 v8, 0x420c0000    # 35.0f

    .line 164
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->timeAndScoreBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v2, p1, v4

    .line 165
    .local v2, "timeAndScoreBmpX":I
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->timeAndScoreBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    iget v5, p0, Lch/android/api/ui/ChColosseumView;->density:F

    mul-float/2addr v5, v8

    float-to-int v5, v5

    sub-int v3, v4, v5

    .line 166
    .local v3, "timeAndScoreBmpY":I
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->timeAndScoreBmp:Landroid/graphics/Bitmap;

    int-to-float v5, v2

    int-to-float v6, v3

    const/4 v7, 0x0

    invoke-virtual {p3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 167
    iget v4, p0, Lch/android/api/ui/ChColosseumView;->time:I

    div-int/lit8 v0, v4, 0x3c

    .line 168
    .local v0, "min":I
    iget v4, p0, Lch/android/api/ui/ChColosseumView;->time:I

    rem-int/lit8 v1, v4, 0x3c

    .line 169
    .local v1, "sec":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-le v0, v9, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-le v1, v9, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    iget v5, p0, Lch/android/api/ui/ChColosseumView;->density:F

    const/high16 v6, 0x41f00000    # 30.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    iget-object v6, p0, Lch/android/api/ui/ChColosseumView;->timeAndScoreBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget-object v7, p0, Lch/android/api/ui/ChColosseumView;->txtPaint:Landroid/graphics/Paint;

    .line 169
    invoke-virtual {p3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 171
    iget v4, p0, Lch/android/api/ui/ChColosseumView;->score:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lch/android/api/ui/ChColosseumView;->density:F

    mul-float/2addr v5, v8

    float-to-int v5, v5

    add-int/2addr v5, p1

    int-to-float v5, v5

    iget-object v6, p0, Lch/android/api/ui/ChColosseumView;->timeAndScoreBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget-object v7, p0, Lch/android/api/ui/ChColosseumView;->txtPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 172
    return-void

    .line 169
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v10, 0x32

    const/16 v9, 0xa

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 111
    invoke-virtual {p0}, Lch/android/api/ui/ChColosseumView;->getWidth()I

    move-result v4

    div-int/lit8 v0, v4, 0x2

    .line 112
    .local v0, "centerX":I
    invoke-virtual {p0}, Lch/android/api/ui/ChColosseumView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lch/android/api/ui/ChColosseumView;->density:F

    const/high16 v6, 0x42480000    # 50.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v1, v4, v5

    .line 113
    .local v1, "centerY":I
    invoke-super {p0, p1}, Lch/android/api/ui/ChImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 114
    iget v4, p0, Lch/android/api/ui/ChColosseumView;->state:I

    packed-switch v4, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 118
    :pswitch_1
    iget v4, p0, Lch/android/api/ui/ChColosseumView;->fightingWaitFrm:I

    if-lt v4, v7, :cond_0

    .line 119
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->alramBarBmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lch/android/api/ui/ChColosseumView;->alramBarBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget-object v6, p0, Lch/android/api/ui/ChColosseumView;->alramBarBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 120
    iget v4, p0, Lch/android/api/ui/ChColosseumView;->stageNum:I

    if-nez v4, :cond_1

    .line 121
    iget v4, p0, Lch/android/api/ui/ChColosseumView;->fightingWaitFrm:I

    rsub-int/lit8 v4, v4, 0x50

    div-int/lit8 v3, v4, 0xa

    .line 122
    .local v3, "index":I
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v3

    iget-object v5, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget-object v6, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 124
    .end local v3    # "index":I
    :cond_1
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->levelBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    .line 125
    .local v2, "halfWidthLevelTxt":I
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->levelBmp:Landroid/graphics/Bitmap;

    sub-int v5, v0, v2

    int-to-float v5, v5

    iget-object v6, p0, Lch/android/api/ui/ChColosseumView;->levelBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 126
    iget v4, p0, Lch/android/api/ui/ChColosseumView;->stageNum:I

    add-int/lit8 v3, v4, 0x1

    .line 127
    .restart local v3    # "index":I
    if-ge v3, v9, :cond_2

    .line 128
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v3

    add-int v5, v0, v2

    int-to-float v5, v5

    iget-object v6, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 130
    :cond_2
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    div-int/lit8 v5, v3, 0xa

    aget-object v4, v4, v5

    add-int v5, v0, v2

    int-to-float v5, v5

    iget-object v6, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    div-int/lit8 v7, v3, 0xa

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 131
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    rem-int/lit8 v5, v3, 0xa

    aget-object v4, v4, v5

    add-int v5, v0, v2

    iget-object v6, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    div-int/lit8 v7, v3, 0xa

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    rem-int/lit8 v7, v3, 0xa

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 137
    .end local v2    # "halfWidthLevelTxt":I
    .end local v3    # "index":I
    :pswitch_2
    iget v4, p0, Lch/android/api/ui/ChColosseumView;->fightingWaitFrm:I

    if-lt v4, v7, :cond_0

    .line 138
    invoke-direct {p0, v0, v1, p1}, Lch/android/api/ui/ChColosseumView;->drawTimeAndScore(IILandroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 142
    :pswitch_3
    iget v4, p0, Lch/android/api/ui/ChColosseumView;->fightingNextWaitFrm:I

    if-lt v4, v10, :cond_3

    iget v4, p0, Lch/android/api/ui/ChColosseumView;->fightingNextWaitFrm:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_3

    .line 143
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->timeBonusBmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lch/android/api/ui/ChColosseumView;->timeBonusBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget v6, p0, Lch/android/api/ui/ChColosseumView;->density:F

    const/high16 v7, 0x42680000    # 58.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 144
    invoke-direct {p0, v0, v1, p1}, Lch/android/api/ui/ChColosseumView;->drawTimeAndScore(IILandroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 145
    :cond_3
    iget v4, p0, Lch/android/api/ui/ChColosseumView;->fightingNextWaitFrm:I

    if-lt v4, v9, :cond_0

    iget v4, p0, Lch/android/api/ui/ChColosseumView;->fightingNextWaitFrm:I

    if-ge v4, v10, :cond_0

    .line 146
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->alramBarBmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lch/android/api/ui/ChColosseumView;->alramBarBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget-object v6, p0, Lch/android/api/ui/ChColosseumView;->alramBarBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 147
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->clearBmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lch/android/api/ui/ChColosseumView;->clearBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget-object v6, p0, Lch/android/api/ui/ChColosseumView;->clearBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 151
    :pswitch_4
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->alramBarBmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lch/android/api/ui/ChColosseumView;->alramBarBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget-object v6, p0, Lch/android/api/ui/ChColosseumView;->alramBarBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 152
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->failureBmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lch/android/api/ui/ChColosseumView;->failureBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget-object v6, p0, Lch/android/api/ui/ChColosseumView;->failureBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 155
    :pswitch_5
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->alramBarBmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lch/android/api/ui/ChColosseumView;->alramBarBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget-object v6, p0, Lch/android/api/ui/ChColosseumView;->alramBarBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 156
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->completeBmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lch/android/api/ui/ChColosseumView;->completeBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget-object v6, p0, Lch/android/api/ui/ChColosseumView;->completeBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChImageView;->onMeasure(II)V

    .line 69
    iget-object v0, p0, Lch/android/api/ui/ChColosseumView;->di:Lch/android/api/util/DisplayInfo;

    iget v0, v0, Lch/android/api/util/DisplayInfo;->widthPixels:I

    iget-object v1, p0, Lch/android/api/ui/ChColosseumView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->heightPixels:I

    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChImageView;->setMeasuredDimension(II)V

    .line 70
    return-void
.end method

.method public releaseRsources()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->releaseRsources()V

    .line 178
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 179
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    array-length v2, v4

    .local v2, "size":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 186
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    iput-object v3, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    .line 187
    const/4 v4, 0x7

    new-array v0, v4, [Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    iget-object v5, p0, Lch/android/api/ui/ChColosseumView;->alramBarBmp:Landroid/graphics/Bitmap;

    aput-object v5, v0, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lch/android/api/ui/ChColosseumView;->levelBmp:Landroid/graphics/Bitmap;

    aput-object v5, v0, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lch/android/api/ui/ChColosseumView;->timeAndScoreBmp:Landroid/graphics/Bitmap;

    aput-object v5, v0, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lch/android/api/ui/ChColosseumView;->timeBonusBmp:Landroid/graphics/Bitmap;

    aput-object v5, v0, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lch/android/api/ui/ChColosseumView;->clearBmp:Landroid/graphics/Bitmap;

    aput-object v5, v0, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lch/android/api/ui/ChColosseumView;->failureBmp:Landroid/graphics/Bitmap;

    aput-object v5, v0, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lch/android/api/ui/ChColosseumView;->completeBmp:Landroid/graphics/Bitmap;

    aput-object v5, v0, v4

    .line 188
    .local v0, "bmps":[Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    array-length v2, v0

    .restart local v2    # "size":I
    :goto_1
    if-lt v1, v2, :cond_3

    move-object v0, v3

    .line 194
    check-cast v0, [Landroid/graphics/Bitmap;

    .line 195
    return-void

    .line 180
    .end local v0    # "bmps":[Landroid/graphics/Bitmap;
    :cond_1
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 181
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    iget-object v4, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    aput-object v3, v4, v1

    .line 179
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .restart local v0    # "bmps":[Landroid/graphics/Bitmap;
    :cond_3
    aget-object v4, v0, v1

    if-eqz v4, :cond_4

    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 190
    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 191
    aput-object v3, v0, v1

    .line 188
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public update(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    .line 74
    iput p1, p0, Lch/android/api/ui/ChColosseumView;->state:I

    .line 75
    iget v1, p0, Lch/android/api/ui/ChColosseumView;->state:I

    packed-switch v1, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v1, p0, Lch/android/api/ui/ChColosseumView;->res:Landroid/content/res/Resources;

    const v2, 0x7f020005

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChColosseumView;->alramBarBmp:Landroid/graphics/Bitmap;

    .line 78
    const/16 v1, 0xa

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lch/android/api/ui/ChColosseumView;->res:Landroid/content/res/Resources;

    const v2, 0x7f0201f6

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChColosseumView;->levelBmp:Landroid/graphics/Bitmap;

    .line 83
    iget-object v1, p0, Lch/android/api/ui/ChColosseumView;->res:Landroid/content/res/Resources;

    const v2, 0x7f0202c5

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChColosseumView;->timeAndScoreBmp:Landroid/graphics/Bitmap;

    .line 84
    iget-object v1, p0, Lch/android/api/ui/ChColosseumView;->res:Landroid/content/res/Resources;

    const v2, 0x7f0202c6

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChColosseumView;->timeBonusBmp:Landroid/graphics/Bitmap;

    .line 85
    iget-object v1, p0, Lch/android/api/ui/ChColosseumView;->res:Landroid/content/res/Resources;

    const v2, 0x7f020079

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChColosseumView;->clearBmp:Landroid/graphics/Bitmap;

    .line 86
    iget-object v1, p0, Lch/android/api/ui/ChColosseumView;->res:Landroid/content/res/Resources;

    const v2, 0x7f0200aa

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChColosseumView;->failureBmp:Landroid/graphics/Bitmap;

    .line 87
    iget-object v1, p0, Lch/android/api/ui/ChColosseumView;->res:Landroid/content/res/Resources;

    const v2, 0x7f020088

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChColosseumView;->completeBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Lch/android/api/ui/ChColosseumView;->numberBmps:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lch/android/api/ui/ChColosseumView;->res:Landroid/content/res/Resources;

    iget-object v3, p0, Lch/android/api/ui/ChColosseumView;->res:Landroid/content/res/Resources;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "colo_num"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "ch.kingdoms.market.compat"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public update(II)V
    .locals 0
    .param p1, "time"    # I
    .param p2, "score"    # I

    .prologue
    .line 104
    iput p1, p0, Lch/android/api/ui/ChColosseumView;->time:I

    .line 105
    iput p2, p0, Lch/android/api/ui/ChColosseumView;->score:I

    .line 106
    return-void
.end method

.method public updateFightingWaitFrm(II)V
    .locals 1
    .param p1, "stageNum"    # I
    .param p2, "fightingWaitFrm"    # I

    .prologue
    .line 94
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 95
    iput p1, p0, Lch/android/api/ui/ChColosseumView;->stageNum:I

    .line 96
    iput p2, p0, Lch/android/api/ui/ChColosseumView;->fightingWaitFrm:I

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iput p2, p0, Lch/android/api/ui/ChColosseumView;->fightingNextWaitFrm:I

    goto :goto_0
.end method
