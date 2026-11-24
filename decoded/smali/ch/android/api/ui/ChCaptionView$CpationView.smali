.class Lch/android/api/ui/ChCaptionView$CpationView;
.super Lch/android/api/ui/ChImageView;
.source "ChCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/ui/ChCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CpationView"
.end annotation


# instance fields
.field private final HANDLER:Landroid/os/Handler;

.field private NAME_PAINT:Landroid/graphics/Paint;

.field private final NAME_WIDTH:I

.field private TEXT_BG_BMP:Landroid/graphics/Bitmap;

.field private TEXT_PAINT:Landroid/graphics/Paint;

.field private final TYPING_DELAY:I

.field private characterBmp:Landroid/graphics/Bitmap;

.field private isLeft:Z

.field private isMouthOpen:Z

.field private mouthBmp:Landroid/graphics/Bitmap;

.field private mouthX:F

.field private mouthY:F

.field private name:Ljava/lang/String;

.field private textY:I

.field private texts:[Ljava/lang/String;

.field final synthetic this$0:Lch/android/api/ui/ChCaptionView;

.field private typingIndex:I

.field private typingLine:I


# direct methods
.method public constructor <init>(Lch/android/api/ui/ChCaptionView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 523
    iput-object p1, p0, Lch/android/api/ui/ChCaptionView$CpationView;->this$0:Lch/android/api/ui/ChCaptionView;

    .line 524
    invoke-direct {p0, p2}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 500
    const/16 v0, 0x1e

    iput v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->TYPING_DELAY:I

    .line 526
    invoke-static {p1}, Lch/android/api/ui/ChCaptionView;->access$0(Lch/android/api/ui/ChCaptionView;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x42dc0000    # 110.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->NAME_WIDTH:I

    .line 527
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->HANDLER:Landroid/os/Handler;

    .line 528
    invoke-virtual {p0}, Lch/android/api/ui/ChCaptionView$CpationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->TEXT_BG_BMP:Landroid/graphics/Bitmap;

    .line 529
    invoke-static {}, Lch/android/api/util/TextPaints;->getDefault()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->TEXT_PAINT:Landroid/graphics/Paint;

    .line 530
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->TEXT_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 531
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->TEXT_PAINT:Landroid/graphics/Paint;

    invoke-static {}, Lch/android/api/util/TextPaints;->getBigNormalSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 533
    invoke-static {}, Lch/android/api/util/TextPaints;->getDefault()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->NAME_PAINT:Landroid/graphics/Paint;

    .line 534
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->NAME_PAINT:Landroid/graphics/Paint;

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView$CpationView;->TEXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 535
    return-void
.end method


# virtual methods
.method public getCaptionText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 615
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 616
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lch/android/api/ui/ChCaptionView$CpationView;->texts:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 620
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 616
    :cond_0
    aget-object v1, v3, v2

    .line 617
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getTxtPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->TEXT_PAINT:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isTypingEnd()Z
    .locals 3

    .prologue
    .line 549
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->texts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingLine:I

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView$CpationView;->texts:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingIndex:I

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView$CpationView;->texts:[Ljava/lang/String;

    iget v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingLine:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 550
    const/4 v0, 0x0

    .line 552
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 626
    invoke-super/range {p0 .. p1}, Lch/android/api/ui/ChImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Lch/android/api/ui/ChCaptionView$CpationView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lch/android/api/ui/ChCaptionView$CpationView;->TEXT_BG_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v10, v1, 0x2

    .line 633
    .local v10, "textBgX":I
    invoke-virtual/range {p0 .. p0}, Lch/android/api/ui/ChCaptionView$CpationView;->getHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lch/android/api/ui/ChCaptionView$CpationView;->TEXT_BG_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v11, v1, v2

    .line 634
    .local v11, "textBgY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->TEXT_BG_BMP:Landroid/graphics/Bitmap;

    int-to-float v2, v10

    int-to-float v3, v11

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->characterBmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    .line 638
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->isLeft:Z

    if-eqz v1, :cond_5

    .line 639
    move-object/from16 v0, p0

    iget v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->NAME_WIDTH:I

    add-int/2addr v1, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lch/android/api/ui/ChCaptionView$CpationView;->this$0:Lch/android/api/ui/ChCaptionView;

    invoke-static {v2}, Lch/android/api/ui/ChCaptionView;->access$0(Lch/android/api/ui/ChCaptionView;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v12, v1, v2

    .line 650
    .local v12, "textX":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->textY:I

    add-int v13, v11, v1

    .line 651
    .local v13, "textY":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->typingLine:I

    if-lt v7, v1, :cond_8

    .line 655
    move-object/from16 v0, p0

    iget v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->typingLine:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lch/android/api/ui/ChCaptionView$CpationView;->texts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->typingIndex:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lch/android/api/ui/ChCaptionView$CpationView;->texts:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lch/android/api/ui/ChCaptionView$CpationView;->typingLine:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 656
    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->texts:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lch/android/api/ui/ChCaptionView$CpationView;->typingLine:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lch/android/api/ui/ChCaptionView$CpationView;->typingIndex:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v12

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/android/api/ui/ChCaptionView$CpationView;->TEXT_PAINT:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 660
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->characterBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->characterBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 661
    const/4 v14, 0x0

    .line 662
    .local v14, "x":I
    invoke-virtual/range {p0 .. p0}, Lch/android/api/ui/ChCaptionView$CpationView;->getHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lch/android/api/ui/ChCaptionView$CpationView;->characterBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v15, v1, v2

    .line 663
    .local v15, "y":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->isLeft:Z

    if-nez v1, :cond_1

    .line 664
    invoke-virtual/range {p0 .. p0}, Lch/android/api/ui/ChCaptionView$CpationView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lch/android/api/ui/ChCaptionView$CpationView;->characterBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v14, v1, v2

    .line 666
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->characterBmp:Landroid/graphics/Bitmap;

    int-to-float v2, v14

    int-to-float v3, v15

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 667
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->isMouthOpen:Z

    if-eqz v1, :cond_2

    .line 668
    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->mouthBmp:Landroid/graphics/Bitmap;

    int-to-float v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lch/android/api/ui/ChCaptionView$CpationView;->mouthX:F

    add-float/2addr v2, v3

    int-to-float v3, v15

    move-object/from16 v0, p0

    iget v4, v0, Lch/android/api/ui/ChCaptionView$CpationView;->mouthY:F

    add-float/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 675
    .end local v14    # "x":I
    .end local v15    # "y":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->characterBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->characterBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 676
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->isLeft:Z

    if-eqz v1, :cond_9

    .line 677
    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->this$0:Lch/android/api/ui/ChCaptionView;

    invoke-static {v1}, Lch/android/api/ui/ChCaptionView;->access$0(Lch/android/api/ui/ChCaptionView;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v8, v10, v1

    .line 681
    .local v8, "nameX":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->this$0:Lch/android/api/ui/ChCaptionView;

    invoke-static {v1}, Lch/android/api/ui/ChCaptionView;->access$0(Lch/android/api/ui/ChCaptionView;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v9, v11, v1

    .line 692
    .local v9, "nameY":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 693
    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->NAME_PAINT:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 694
    int-to-float v2, v8

    int-to-float v3, v9

    move-object/from16 v0, p0

    iget v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->NAME_WIDTH:I

    add-int/2addr v1, v8

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->NAME_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    float-to-double v5, v1

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    mul-double v5, v5, v16

    double-to-int v1, v5

    add-int/2addr v1, v9

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lch/android/api/ui/ChCaptionView$CpationView;->NAME_PAINT:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->NAME_PAINT:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 696
    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lch/android/api/ui/ChCaptionView$CpationView;->NAME_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v8

    int-to-float v2, v2

    int-to-float v3, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/android/api/ui/ChCaptionView$CpationView;->NAME_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/android/api/ui/ChCaptionView$CpationView;->NAME_PAINT:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 698
    :cond_4
    return-void

    .line 641
    .end local v7    # "i":I
    .end local v8    # "nameX":I
    .end local v9    # "nameY":I
    .end local v12    # "textX":I
    .end local v13    # "textY":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->this$0:Lch/android/api/ui/ChCaptionView;

    invoke-static {v1}, Lch/android/api/ui/ChCaptionView;->access$0(Lch/android/api/ui/ChCaptionView;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v12, v10, v1

    .restart local v12    # "textX":I
    goto/16 :goto_0

    .line 644
    .end local v12    # "textX":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->isLeft:Z

    if-eqz v1, :cond_7

    .line 645
    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->characterBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lch/android/api/ui/ChCaptionView$CpationView;->this$0:Lch/android/api/ui/ChCaptionView;

    invoke-static {v2}, Lch/android/api/ui/ChCaptionView;->access$0(Lch/android/api/ui/ChCaptionView;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v12, v1, v2

    .restart local v12    # "textX":I
    goto/16 :goto_0

    .line 647
    .end local v12    # "textX":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->this$0:Lch/android/api/ui/ChCaptionView;

    invoke-static {v1}, Lch/android/api/ui/ChCaptionView;->access$0(Lch/android/api/ui/ChCaptionView;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v12, v10, v1

    .restart local v12    # "textX":I
    goto/16 :goto_0

    .line 652
    .restart local v7    # "i":I
    .restart local v13    # "textY":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->texts:[Ljava/lang/String;

    aget-object v1, v1, v7

    int-to-float v2, v12

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/android/api/ui/ChCaptionView$CpationView;->TEXT_PAINT:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 653
    int-to-float v1, v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lch/android/api/ui/ChCaptionView$CpationView;->TEXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v13, v1

    .line 651
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 679
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lch/android/api/ui/ChCaptionView$CpationView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v10

    move-object/from16 v0, p0

    iget v2, v0, Lch/android/api/ui/ChCaptionView$CpationView;->NAME_WIDTH:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lch/android/api/ui/ChCaptionView$CpationView;->this$0:Lch/android/api/ui/ChCaptionView;

    invoke-static {v2}, Lch/android/api/ui/ChCaptionView;->access$0(Lch/android/api/ui/ChCaptionView;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v8, v1, v2

    .restart local v8    # "nameX":I
    goto/16 :goto_2

    .line 683
    .end local v8    # "nameX":I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lch/android/api/ui/ChCaptionView$CpationView;->isLeft:Z

    if-eqz v1, :cond_b

    .line 684
    const/4 v8, 0x0

    .line 688
    .restart local v8    # "nameX":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lch/android/api/ui/ChCaptionView$CpationView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lch/android/api/ui/ChCaptionView$CpationView;->TEXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v9, v1

    .restart local v9    # "nameY":I
    goto/16 :goto_3

    .line 686
    .end local v8    # "nameX":I
    .end local v9    # "nameY":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lch/android/api/ui/ChCaptionView$CpationView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lch/android/api/ui/ChCaptionView$CpationView;->NAME_WIDTH:I

    sub-int v8, v1, v2

    .restart local v8    # "nameX":I
    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 544
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChImageView;->onMeasure(II)V

    .line 545
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->this$0:Lch/android/api/ui/ChCaptionView;

    invoke-static {v0}, Lch/android/api/ui/ChCaptionView;->access$0(Lch/android/api/ui/ChCaptionView;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->widthPixels:I

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView$CpationView;->this$0:Lch/android/api/ui/ChCaptionView;

    invoke-static {v1}, Lch/android/api/ui/ChCaptionView;->access$0(Lch/android/api/ui/ChCaptionView;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    iget v1, v1, Lch/android/api/util/DisplayInfo;->heightPixels:I

    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChImageView;->setMeasuredDimension(II)V

    .line 546
    return-void
.end method

.method public passTyping()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->texts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->texts:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingLine:I

    .line 559
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->texts:[Ljava/lang/String;

    iget v1, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingLine:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingIndex:I

    .line 561
    :cond_0
    return-void
.end method

.method public releaseRsources()V
    .locals 0

    .prologue
    .line 732
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->releaseRsources()V

    .line 733
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 710
    iget v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingIndex:I

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    .line 711
    iget-boolean v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->isMouthOpen:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->isMouthOpen:Z

    .line 713
    :cond_0
    iget v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingIndex:I

    .line 714
    iget v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingLine:I

    iget-object v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->texts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingIndex:I

    iget-object v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->texts:[Ljava/lang/String;

    iget v3, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingLine:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 715
    iget v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingLine:I

    .line 716
    iput v1, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingIndex:I

    .line 717
    iput-boolean v1, p0, Lch/android/api/ui/ChCaptionView$CpationView;->isMouthOpen:Z

    .line 719
    :cond_1
    invoke-virtual {p0}, Lch/android/api/ui/ChCaptionView$CpationView;->invalidate()V

    .line 720
    iget v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingLine:I

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView$CpationView;->texts:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingIndex:I

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView$CpationView;->texts:[Ljava/lang/String;

    iget v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingLine:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 725
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$CpationView;->HANDLER:Landroid/os/Handler;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 727
    :cond_2
    return-void

    .line 711
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showCaption(Z[Ljava/lang/String;Lch/android/api/ui/ChCaptionView$CharacterInfo;Ljava/lang/String;)V
    .locals 7
    .param p1, "isLeft"    # Z
    .param p2, "texts"    # [Ljava/lang/String;
    .param p3, "characterInfo"    # Lch/android/api/ui/ChCaptionView$CharacterInfo;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 564
    iput-boolean p1, p0, Lch/android/api/ui/ChCaptionView$CpationView;->isLeft:Z

    .line 565
    iput-object p4, p0, Lch/android/api/ui/ChCaptionView$CpationView;->name:Ljava/lang/String;

    .line 566
    iput-object p2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->texts:[Ljava/lang/String;

    .line 572
    iget-object v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->this$0:Lch/android/api/ui/ChCaptionView;

    invoke-static {v2}, Lch/android/api/ui/ChCaptionView;->access$0(Lch/android/api/ui/ChCaptionView;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->textY:I

    .line 573
    if-eqz p3, :cond_3

    .line 574
    iget-object v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->characterBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->characterBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 575
    iget-object v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->characterBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 576
    iput-object v4, p0, Lch/android/api/ui/ChCaptionView$CpationView;->characterBmp:Landroid/graphics/Bitmap;

    .line 578
    :cond_0
    iget-object v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->mouthBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->mouthBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 579
    iget-object v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->mouthBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 580
    iput-object v4, p0, Lch/android/api/ui/ChCaptionView$CpationView;->mouthBmp:Landroid/graphics/Bitmap;

    .line 582
    :cond_1
    if-eqz p1, :cond_2

    .line 583
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 584
    .local v5, "inversion":Landroid/graphics/Matrix;
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 585
    invoke-virtual {p0}, Lch/android/api/ui/ChCaptionView$CpationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p3, Lch/android/api/ui/ChCaptionView$CharacterInfo;->CharacterResId:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 586
    .local v0, "tmpBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->characterBmp:Landroid/graphics/Bitmap;

    .line 587
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 588
    invoke-virtual {p0}, Lch/android/api/ui/ChCaptionView$CpationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 589
    iget v3, p3, Lch/android/api/ui/ChCaptionView$CharacterInfo;->MouthResId:I

    .line 588
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->mouthBmp:Landroid/graphics/Bitmap;

    .line 592
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 593
    iget-object v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->characterBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p3, Lch/android/api/ui/ChCaptionView$CharacterInfo;->MouthX:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lch/android/api/ui/ChCaptionView$CpationView;->mouthBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->mouthX:F

    .line 594
    iget v2, p3, Lch/android/api/ui/ChCaptionView$CharacterInfo;->MouthY:F

    iput v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->mouthY:F

    .line 604
    .end local v0    # "tmpBmp":Landroid/graphics/Bitmap;
    .end local v5    # "inversion":Landroid/graphics/Matrix;
    :goto_0
    iput-boolean v1, p0, Lch/android/api/ui/ChCaptionView$CpationView;->isMouthOpen:Z

    .line 609
    :goto_1
    iput v1, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingIndex:I

    .line 610
    iput v1, p0, Lch/android/api/ui/ChCaptionView$CpationView;->typingLine:I

    .line 611
    iget-object v1, p0, Lch/android/api/ui/ChCaptionView$CpationView;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 612
    return-void

    .line 597
    :cond_2
    invoke-virtual {p0}, Lch/android/api/ui/ChCaptionView$CpationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p3, Lch/android/api/ui/ChCaptionView$CharacterInfo;->CharacterResId:I

    .line 596
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->characterBmp:Landroid/graphics/Bitmap;

    .line 598
    invoke-virtual {p0}, Lch/android/api/ui/ChCaptionView$CpationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 599
    iget v3, p3, Lch/android/api/ui/ChCaptionView$CharacterInfo;->MouthResId:I

    .line 598
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->mouthBmp:Landroid/graphics/Bitmap;

    .line 600
    iget v2, p3, Lch/android/api/ui/ChCaptionView$CharacterInfo;->MouthX:F

    iput v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->mouthX:F

    .line 601
    iget v2, p3, Lch/android/api/ui/ChCaptionView$CharacterInfo;->MouthY:F

    iput v2, p0, Lch/android/api/ui/ChCaptionView$CpationView;->mouthY:F

    goto :goto_0

    .line 606
    :cond_3
    iput-object v4, p0, Lch/android/api/ui/ChCaptionView$CpationView;->characterBmp:Landroid/graphics/Bitmap;

    goto :goto_1
.end method
