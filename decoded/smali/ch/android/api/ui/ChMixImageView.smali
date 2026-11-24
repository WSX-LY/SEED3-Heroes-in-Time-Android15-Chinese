.class public Lch/android/api/ui/ChMixImageView;
.super Lch/android/api/ui/ChImageView;
.source "ChMixImageView.java"


# instance fields
.field private final ITEM1_X:I

.field private final ITEM1_Y:I

.field private final ITEM2_X:I

.field private final ITEM2_Y:I

.field private final ITEM3_X:I

.field private final ITEM3_Y:I

.field private final STR1_X:I

.field private final STR1_Y:I

.field private final STR2_X:I

.field private final STR2_Y:I

.field private final STR3_X:I

.field private final STR3_Y:I

.field private final itemBmp1:Landroid/graphics/Bitmap;

.field private final itemBmp2:Landroid/graphics/Bitmap;

.field private final itemBmp3:Landroid/graphics/Bitmap;

.field private final itemStr1:Ljava/lang/String;

.field private final itemStr2:Ljava/lang/String;

.field private final itemStr3:Ljava/lang/String;

.field private final strPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Lch/kingdoms/ndk/data/Inven$Item;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "item1"    # Lch/kingdoms/ndk/data/Inven$Item;
    .param p4, "item2"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/high16 v8, 0x42c40000    # 98.0f

    const/high16 v7, 0x42040000    # 33.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 42
    invoke-direct {p0, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 43
    const v3, 0x7f020208

    invoke-super {p0, v3}, Lch/android/api/ui/ChImageView;->setBackgroundResource(I)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 46
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "itemimg_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lch/android/api/ui/ChItemButton;->getItemNum(Lch/kingdoms/ndk/data/Inven$Item;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "ch.kingdoms.market.compat"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 45
    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lch/android/api/ui/ChMixImageView;->itemBmp1:Landroid/graphics/Bitmap;

    .line 47
    iget-object v3, p3, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    iput-object v3, p0, Lch/android/api/ui/ChMixImageView;->itemStr1:Ljava/lang/String;

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "itemimg_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lch/android/api/ui/ChItemButton;->getItemNum(Lch/kingdoms/ndk/data/Inven$Item;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "ch.kingdoms.market.compat"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 48
    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lch/android/api/ui/ChMixImageView;->itemBmp2:Landroid/graphics/Bitmap;

    .line 50
    iget-object v3, p4, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    iput-object v3, p0, Lch/android/api/ui/ChMixImageView;->itemStr2:Ljava/lang/String;

    .line 51
    iget v3, p4, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    add-int/lit8 v2, v3, 0x15

    .line 52
    .local v2, "resultItemNum":I
    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetItemRes(I)Lch/kingdoms/ndk/data/ItemRes;

    move-result-object v0

    .line 54
    .local v0, "itemRes":Lch/kingdoms/ndk/data/ItemRes;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "itemimg_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lch/android/api/ui/ChItemButton;->getItemNum(ILch/kingdoms/ndk/data/ItemRes;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "ch.kingdoms.market.compat"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 53
    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lch/android/api/ui/ChMixImageView;->itemBmp3:Landroid/graphics/Bitmap;

    .line 55
    iget-object v3, v0, Lch/kingdoms/ndk/data/ItemRes;->name:Ljava/lang/String;

    iput-object v3, p0, Lch/android/api/ui/ChMixImageView;->itemStr3:Ljava/lang/String;

    .line 57
    invoke-static {}, Lch/android/api/util/TextPaints;->getDefault()Landroid/graphics/Paint;

    move-result-object v3

    iput-object v3, p0, Lch/android/api/ui/ChMixImageView;->strPaint:Landroid/graphics/Paint;

    .line 58
    iget-object v3, p0, Lch/android/api/ui/ChMixImageView;->strPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 60
    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v7

    iget-object v4, p0, Lch/android/api/ui/ChMixImageView;->itemBmp1:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lch/android/api/ui/ChMixImageView;->ITEM1_X:I

    .line 61
    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v7

    iget-object v4, p0, Lch/android/api/ui/ChMixImageView;->itemBmp1:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lch/android/api/ui/ChMixImageView;->ITEM1_Y:I

    .line 62
    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, p0, Lch/android/api/ui/ChMixImageView;->STR1_X:I

    .line 63
    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x41900000    # 18.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lch/android/api/ui/ChMixImageView;->STR1_Y:I

    .line 65
    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v7

    iget-object v4, p0, Lch/android/api/ui/ChMixImageView;->itemBmp2:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lch/android/api/ui/ChMixImageView;->ITEM2_X:I

    .line 66
    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v7

    iget-object v4, p0, Lch/android/api/ui/ChMixImageView;->itemBmp2:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    iget v4, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v5, 0x422c0000    # 43.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lch/android/api/ui/ChMixImageView;->ITEM2_Y:I

    .line 67
    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, p0, Lch/android/api/ui/ChMixImageView;->STR2_X:I

    .line 68
    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x42740000    # 61.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lch/android/api/ui/ChMixImageView;->STR2_Y:I

    .line 70
    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v7

    iget-object v4, p0, Lch/android/api/ui/ChMixImageView;->itemBmp2:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lch/android/api/ui/ChMixImageView;->ITEM3_X:I

    .line 71
    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v7

    iget-object v4, p0, Lch/android/api/ui/ChMixImageView;->itemBmp2:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    iget v4, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v5, 0x42aa0000    # 85.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lch/android/api/ui/ChMixImageView;->ITEM3_Y:I

    .line 72
    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, p0, Lch/android/api/ui/ChMixImageView;->STR3_X:I

    .line 73
    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x42ce0000    # 103.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lch/android/api/ui/ChMixImageView;->STR3_Y:I

    .line 74
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-super {p0, p1}, Lch/android/api/ui/ChImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 92
    iget-object v0, p0, Lch/android/api/ui/ChMixImageView;->itemBmp1:Landroid/graphics/Bitmap;

    iget v1, p0, Lch/android/api/ui/ChMixImageView;->ITEM1_X:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChMixImageView;->ITEM1_Y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    iget-object v0, p0, Lch/android/api/ui/ChMixImageView;->itemStr1:Ljava/lang/String;

    iget v1, p0, Lch/android/api/ui/ChMixImageView;->STR1_X:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChMixImageView;->STR1_Y:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChMixImageView;->strPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 94
    iget-object v0, p0, Lch/android/api/ui/ChMixImageView;->itemBmp2:Landroid/graphics/Bitmap;

    iget v1, p0, Lch/android/api/ui/ChMixImageView;->ITEM2_X:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChMixImageView;->ITEM2_Y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    iget-object v0, p0, Lch/android/api/ui/ChMixImageView;->itemStr2:Ljava/lang/String;

    iget v1, p0, Lch/android/api/ui/ChMixImageView;->STR2_X:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChMixImageView;->STR2_Y:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChMixImageView;->strPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 96
    iget-object v0, p0, Lch/android/api/ui/ChMixImageView;->itemBmp3:Landroid/graphics/Bitmap;

    iget v1, p0, Lch/android/api/ui/ChMixImageView;->ITEM3_X:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChMixImageView;->ITEM3_Y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 97
    iget-object v0, p0, Lch/android/api/ui/ChMixImageView;->itemStr3:Ljava/lang/String;

    iget v1, p0, Lch/android/api/ui/ChMixImageView;->STR3_X:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChMixImageView;->STR3_Y:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChMixImageView;->strPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 98
    return-void
.end method

.method public releaseRsources()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->releaseRsources()V

    .line 80
    iget-object v0, p0, Lch/android/api/ui/ChMixImageView;->itemBmp1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/android/api/ui/ChMixImageView;->itemBmp1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lch/android/api/ui/ChMixImageView;->itemBmp1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 83
    :cond_0
    iget-object v0, p0, Lch/android/api/ui/ChMixImageView;->itemBmp2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/android/api/ui/ChMixImageView;->itemBmp2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lch/android/api/ui/ChMixImageView;->itemBmp2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 86
    :cond_1
    return-void
.end method
