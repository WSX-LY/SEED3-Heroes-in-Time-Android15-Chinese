.class Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;
.super Lch/android/api/ui/ChImageButton;
.source "MainMenuUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/MainMenuUi$SlotListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlotView"
.end annotation


# instance fields
.field private CLASS_BMP_H:I

.field private CLASS_BMP_X:I

.field private TEXT_X:I

.field private classBmp:Landroid/graphics/Bitmap;

.field private classLv:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private isExist:Z

.field private score:Ljava/lang/String;

.field private textPaint:Landroid/graphics/Paint;

.field final synthetic this$1:Lch/kingdoms/android/ui/MainMenuUi$SlotListView;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/MainMenuUi$SlotListView;Landroid/content/Context;IILch/kingdoms/ndk/data/SaveSlotInfo;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "_upDrawable"    # I
    .param p4, "_downDrawable"    # I
    .param p5, "slotInfo"    # Lch/kingdoms/ndk/data/SaveSlotInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 550
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->this$1:Lch/kingdoms/android/ui/MainMenuUi$SlotListView;

    .line 551
    invoke-direct {p0, p2, p3, p4}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 553
    iget-boolean v1, p5, Lch/kingdoms/ndk/data/SaveSlotInfo;->exist:Z

    iput-boolean v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->isExist:Z

    .line 554
    iget-boolean v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->isExist:Z

    if-nez v1, :cond_0

    .line 555
    iput-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->classBmp:Landroid/graphics/Bitmap;

    .line 556
    iput v3, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->TEXT_X:I

    iput v3, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->CLASS_BMP_H:I

    iput v3, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->CLASS_BMP_X:I

    .line 557
    iput-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->time:Ljava/lang/String;

    iput-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->date:Ljava/lang/String;

    iput-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->score:Ljava/lang/String;

    iput-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->classLv:Ljava/lang/String;

    .line 558
    iput-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->textPaint:Landroid/graphics/Paint;

    .line 559
    const v1, 0x7f02026a

    invoke-virtual {p0, v1}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->setImageResource(I)V

    .line 582
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->classBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->classBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 562
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->classBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 564
    :cond_1
    iget-short v1, p5, Lch/kingdoms/ndk/data/SaveSlotInfo;->classType:S

    invoke-direct {p0, v1}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->getClassBmp(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->classBmp:Landroid/graphics/Bitmap;

    .line 565
    invoke-virtual {p0}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->f_upDrawable:I

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    .line 566
    .local v0, "bgW":I
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->classBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 567
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->classBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->CLASS_BMP_H:I

    .line 568
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->classBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->CLASS_BMP_X:I

    .line 574
    :goto_1
    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->TEXT_X:I

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lv. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p5, Lch/kingdoms/ndk/data/SaveSlotInfo;->classLv:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->classLv:Ljava/lang/String;

    .line 576
    iget v1, p5, Lch/kingdoms/ndk/data/SaveSlotInfo;->score:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->score:Ljava/lang/String;

    .line 577
    iget v1, p5, Lch/kingdoms/ndk/data/SaveSlotInfo;->year:I

    iget v2, p5, Lch/kingdoms/ndk/data/SaveSlotInfo;->month:I

    iget v3, p5, Lch/kingdoms/ndk/data/SaveSlotInfo;->day:I

    invoke-static {v1, v2, v3}, Lch/android/api/util/TimePrinter;->toDateString(III)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->date:Ljava/lang/String;

    .line 578
    iget v1, p5, Lch/kingdoms/ndk/data/SaveSlotInfo;->hour:I

    iget v2, p5, Lch/kingdoms/ndk/data/SaveSlotInfo;->min:I

    invoke-static {v1, v2}, Lch/android/api/util/TimePrinter;->toTimeString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->time:Ljava/lang/String;

    .line 579
    invoke-static {}, Lch/android/api/util/TextPaints;->getDefault()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->textPaint:Landroid/graphics/Paint;

    .line 580
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->textPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 570
    :cond_2
    invoke-virtual {p0}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020075

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->CLASS_BMP_H:I

    .line 571
    iput v3, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->CLASS_BMP_X:I

    goto :goto_1
.end method

.method private getClassBmp(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "classType"    # I

    .prologue
    .line 647
    invoke-virtual {p0}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 648
    .local v0, "res":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 658
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 650
    :pswitch_0
    const v1, 0x7f020076

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 652
    :pswitch_1
    const v1, 0x7f020077

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 654
    :pswitch_2
    const v1, 0x7f020075

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 656
    :pswitch_3
    const v1, 0x7f020078

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 623
    invoke-super {p0, p1}, Lch/android/api/ui/ChImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 625
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->textPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    .line 626
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->this$1:Lch/kingdoms/android/ui/MainMenuUi$SlotListView;

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->access$1(Lch/kingdoms/android/ui/MainMenuUi$SlotListView;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi;->access$0(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 627
    .local v0, "y":I
    iget-boolean v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->isExist:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->classBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->classBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 628
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->classBmp:Landroid/graphics/Bitmap;

    iget v2, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->CLASS_BMP_X:I

    int-to-float v2, v2

    int-to-float v3, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 631
    :cond_0
    iget v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->CLASS_BMP_H:I

    add-int/2addr v1, v0

    add-int/2addr v0, v1

    .line 632
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->classLv:Ljava/lang/String;

    iget v2, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->TEXT_X:I

    int-to-float v2, v2

    int-to-float v3, v0

    iget-object v4, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 633
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 634
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->textPaint:Landroid/graphics/Paint;

    const v2, -0xff0001

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 635
    const-string v1, "SCORE"

    iget v2, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->TEXT_X:I

    int-to-float v2, v2

    int-to-float v3, v0

    iget-object v4, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 636
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 637
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->textPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 638
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->score:Ljava/lang/String;

    iget v2, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->TEXT_X:I

    int-to-float v2, v2

    int-to-float v3, v0

    iget-object v4, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 639
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 640
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->date:Ljava/lang/String;

    iget v2, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->TEXT_X:I

    int-to-float v2, v2

    int-to-float v3, v0

    iget-object v4, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 641
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 642
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->time:Ljava/lang/String;

    iget v2, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->TEXT_X:I

    int-to-float v2, v2

    int-to-float v3, v0

    iget-object v4, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 644
    .end local v0    # "y":I
    :cond_1
    return-void
.end method

.method public releaseRsources()V
    .locals 1

    .prologue
    .line 665
    invoke-super {p0}, Lch/android/api/ui/ChImageButton;->releaseRsources()V

    .line 666
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->classBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->classBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->classBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 669
    :cond_0
    return-void
.end method
