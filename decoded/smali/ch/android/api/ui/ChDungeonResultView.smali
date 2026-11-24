.class public Lch/android/api/ui/ChDungeonResultView;
.super Lch/android/api/ui/ChImageView;
.source "ChDungeonResultView.java"


# instance fields
.field private final cnt:I

.field private final di:Lch/android/api/util/DisplayInfo;

.field private final invenNum:I

.field private isShowResult:Z

.field private final item:Lch/kingdoms/ndk/data/Inven$Item;

.field private itemBmp:Landroid/graphics/Bitmap;

.field private final res:Landroid/content/res/Resources;

.field private final score:I

.field private final scorePaint:Landroid/graphics/Paint;

.field private final scoreTextPaint:Landroid/graphics/Paint;

.field private final textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;III)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "invenNum"    # I
    .param p4, "cnt"    # I
    .param p5, "score"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lch/android/api/ui/ChDungeonResultView;->di:Lch/android/api/util/DisplayInfo;

    .line 39
    iput p3, p0, Lch/android/api/ui/ChDungeonResultView;->invenNum:I

    .line 40
    iput p4, p0, Lch/android/api/ui/ChDungeonResultView;->cnt:I

    .line 41
    iput p5, p0, Lch/android/api/ui/ChDungeonResultView;->score:I

    .line 43
    const v2, 0x7f020088

    invoke-virtual {p0, v2}, Lch/android/api/ui/ChDungeonResultView;->setBackgroundResource(I)V

    .line 44
    const/4 v2, 0x0

    iput-boolean v2, p0, Lch/android/api/ui/ChDungeonResultView;->isShowResult:Z

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->res:Landroid/content/res/Resources;

    .line 47
    invoke-static {}, Lch/android/api/util/TextPaints;->getBig()Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->scoreTextPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->scoreTextPaint:Landroid/graphics/Paint;

    const v3, -0x8900

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->scoreTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 50
    invoke-static {}, Lch/android/api/util/TextPaints;->getBig()Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->scorePaint:Landroid/graphics/Paint;

    .line 51
    iget-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->scorePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 52
    invoke-static {}, Lch/android/api/util/TextPaints;->getBig()Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->textPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->textPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 55
    if-ltz p3, :cond_0

    .line 56
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v0

    .line 57
    .local v0, "items":[Lch/kingdoms/ndk/data/Inven$Item;
    aget-object v2, v0, p3

    iput-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->item:Lch/kingdoms/ndk/data/Inven$Item;

    .line 58
    iget-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->res:Landroid/content/res/Resources;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "itemimg_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lch/android/api/ui/ChDungeonResultView;->item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v4, v4, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    iget-object v5, p0, Lch/android/api/ui/ChDungeonResultView;->item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v5, v5, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    invoke-static {v5}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetItemRes(I)Lch/kingdoms/ndk/data/ItemRes;

    move-result-object v5

    invoke-static {v4, v5}, Lch/android/api/ui/ChItemButton;->getItemNum(ILch/kingdoms/ndk/data/ItemRes;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    const-string v4, "drawable"

    const-string v5, "ch.kingdoms.market.compat"

    .line 58
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 60
    .local v1, "resId":I
    iget-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->res:Landroid/content/res/Resources;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->itemBmp:Landroid/graphics/Bitmap;

    .line 65
    .end local v0    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    .end local v1    # "resId":I
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->item:Lch/kingdoms/ndk/data/Inven$Item;

    .line 63
    iget-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->res:Landroid/content/res/Resources;

    const v3, 0x7f020199

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->itemBmp:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x42e60000    # 115.0f

    const/high16 v5, 0x42880000    # 68.0f

    const/high16 v4, 0x42820000    # 65.0f

    .line 76
    invoke-super {p0, p1}, Lch/android/api/ui/ChImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    iget-boolean v0, p0, Lch/android/api/ui/ChDungeonResultView;->isShowResult:Z

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lch/android/api/ui/ChDungeonResultView;->res:Landroid/content/res/Resources;

    const v1, 0x7f050040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChDungeonResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x42040000    # 33.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChDungeonResultView;->scoreTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 80
    iget-object v0, p0, Lch/android/api/ui/ChDungeonResultView;->scorePaint:Landroid/graphics/Paint;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget v0, p0, Lch/android/api/ui/ChDungeonResultView;->score:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChDungeonResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChDungeonResultView;->scorePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 83
    iget-object v0, p0, Lch/android/api/ui/ChDungeonResultView;->itemBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/android/api/ui/ChDungeonResultView;->itemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lch/android/api/ui/ChDungeonResultView;->itemBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lch/android/api/ui/ChDungeonResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42dc0000    # 110.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 86
    :cond_0
    iget v0, p0, Lch/android/api/ui/ChDungeonResultView;->invenNum:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lch/android/api/ui/ChDungeonResultView;->item:Lch/kingdoms/ndk/data/Inven$Item;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lch/android/api/ui/ChDungeonResultView;->item:Lch/kingdoms/ndk/data/Inven$Item;

    iget-object v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    iget-object v1, p0, Lch/android/api/ui/ChDungeonResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChDungeonResultView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lch/android/api/ui/ChDungeonResultView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 92
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lch/android/api/ui/ChDungeonResultView;->res:Landroid/content/res/Resources;

    const v1, 0x7f05003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChDungeonResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChDungeonResultView;->di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChDungeonResultView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lch/android/api/ui/ChDungeonResultView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public releaseRsources()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->releaseRsources()V

    .line 98
    iget-object v0, p0, Lch/android/api/ui/ChDungeonResultView;->itemBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/android/api/ui/ChDungeonResultView;->itemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lch/android/api/ui/ChDungeonResultView;->itemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lch/android/api/ui/ChDungeonResultView;->itemBmp:Landroid/graphics/Bitmap;

    .line 102
    return-void
.end method

.method public showResult()V
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f020086

    invoke-virtual {p0, v0}, Lch/android/api/ui/ChDungeonResultView;->setBackgroundResource(I)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/android/api/ui/ChDungeonResultView;->isShowResult:Z

    .line 70
    invoke-virtual {p0}, Lch/android/api/ui/ChDungeonResultView;->invalidate()V

    .line 71
    return-void
.end method
