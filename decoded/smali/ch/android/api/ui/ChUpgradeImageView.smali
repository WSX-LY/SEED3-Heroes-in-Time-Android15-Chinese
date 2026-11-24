.class public Lch/android/api/ui/ChUpgradeImageView;
.super Lch/android/api/ui/ChImageView;
.source "ChUpgradeImageView.java"


# instance fields
.field private final ITEM1_X:I

.field private final ITEM1_Y:I

.field private final ITEM2_X:I

.field private final ITEM2_Y:I

.field private final STR1_X:I

.field private final STR1_Y:I

.field private final STR2_X:I

.field private final STR2_Y:I

.field private final itemBmp1:Landroid/graphics/Bitmap;

.field private final itemBmp2:Landroid/graphics/Bitmap;

.field private final itemStr1:Ljava/lang/String;

.field private final itemStr2:Ljava/lang/String;

.field private final strPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Lch/kingdoms/ndk/data/Inven$Item;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "item1"    # Lch/kingdoms/ndk/data/Inven$Item;
    .param p4, "item2"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/high16 v6, 0x42c40000    # 98.0f

    const/high16 v5, 0x42040000    # 33.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 34
    invoke-direct {p0, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 35
    const v1, 0x7f02024b

    invoke-super {p0, v1}, Lch/android/api/ui/ChImageView;->setBackgroundResource(I)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "itemimg_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lch/android/api/ui/ChItemButton;->getItemNum(Lch/kingdoms/ndk/data/Inven$Item;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "ch.kingdoms.market.compat"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 37
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChUpgradeImageView;->itemBmp1:Landroid/graphics/Bitmap;

    .line 39
    iget-object v1, p3, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    iput-object v1, p0, Lch/android/api/ui/ChUpgradeImageView;->itemStr1:Ljava/lang/String;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "itemimg_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lch/android/api/ui/ChItemButton;->getItemNum(Lch/kingdoms/ndk/data/Inven$Item;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "ch.kingdoms.market.compat"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 40
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChUpgradeImageView;->itemBmp2:Landroid/graphics/Bitmap;

    .line 42
    iget-object v1, p4, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    iput-object v1, p0, Lch/android/api/ui/ChUpgradeImageView;->itemStr2:Ljava/lang/String;

    .line 44
    invoke-static {}, Lch/android/api/util/TextPaints;->getDefault()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChUpgradeImageView;->strPaint:Landroid/graphics/Paint;

    .line 45
    iget-object v1, p0, Lch/android/api/ui/ChUpgradeImageView;->strPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 47
    iget v1, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v5

    iget-object v2, p0, Lch/android/api/ui/ChUpgradeImageView;->itemBmp1:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChUpgradeImageView;->ITEM1_X:I

    .line 48
    iget v1, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v5

    iget-object v2, p0, Lch/android/api/ui/ChUpgradeImageView;->itemBmp1:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChUpgradeImageView;->ITEM1_Y:I

    .line 49
    iget v1, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChUpgradeImageView;->STR1_X:I

    .line 50
    iget v1, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x41900000    # 18.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChUpgradeImageView;->STR1_Y:I

    .line 52
    iget v1, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v5

    iget-object v2, p0, Lch/android/api/ui/ChUpgradeImageView;->itemBmp2:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChUpgradeImageView;->ITEM2_X:I

    .line 53
    iget v1, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v5

    iget-object v2, p0, Lch/android/api/ui/ChUpgradeImageView;->itemBmp2:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    iget v2, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42880000    # 68.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChUpgradeImageView;->ITEM2_Y:I

    .line 54
    iget v1, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChUpgradeImageView;->STR2_X:I

    .line 55
    iget v1, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x42ac0000    # 86.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChUpgradeImageView;->STR2_Y:I

    .line 56
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-super {p0, p1}, Lch/android/api/ui/ChImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    iget-object v0, p0, Lch/android/api/ui/ChUpgradeImageView;->itemBmp1:Landroid/graphics/Bitmap;

    iget v1, p0, Lch/android/api/ui/ChUpgradeImageView;->ITEM1_X:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChUpgradeImageView;->ITEM1_Y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    iget-object v0, p0, Lch/android/api/ui/ChUpgradeImageView;->itemStr1:Ljava/lang/String;

    iget v1, p0, Lch/android/api/ui/ChUpgradeImageView;->STR1_X:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChUpgradeImageView;->STR1_Y:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChUpgradeImageView;->strPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 76
    iget-object v0, p0, Lch/android/api/ui/ChUpgradeImageView;->itemBmp2:Landroid/graphics/Bitmap;

    iget v1, p0, Lch/android/api/ui/ChUpgradeImageView;->ITEM2_X:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChUpgradeImageView;->ITEM2_Y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 77
    iget-object v0, p0, Lch/android/api/ui/ChUpgradeImageView;->itemStr2:Ljava/lang/String;

    iget v1, p0, Lch/android/api/ui/ChUpgradeImageView;->STR2_X:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChUpgradeImageView;->STR2_Y:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChUpgradeImageView;->strPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    return-void
.end method

.method public releaseRsources()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->releaseRsources()V

    .line 62
    iget-object v0, p0, Lch/android/api/ui/ChUpgradeImageView;->itemBmp1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/android/api/ui/ChUpgradeImageView;->itemBmp1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lch/android/api/ui/ChUpgradeImageView;->itemBmp1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    :cond_0
    iget-object v0, p0, Lch/android/api/ui/ChUpgradeImageView;->itemBmp2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/android/api/ui/ChUpgradeImageView;->itemBmp2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lch/android/api/ui/ChUpgradeImageView;->itemBmp2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 68
    :cond_1
    return-void
.end method
