.class Lch/kingdoms/android/dpad/Dpad$SlotButton;
.super Lch/kingdoms/android/dpad/DButton;
.source "Dpad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/dpad/Dpad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlotButton"
.end annotation


# instance fields
.field private ciclePaint:Landroid/graphics/Paint;

.field private final clipLeft:I

.field private final clipRight:I

.field private final clipSize:I

.field private final clipTop:I

.field private coolTime:I

.field private count:I

.field private countBmp:Landroid/graphics/Bitmap;

.field private final countBmpX:I

.field private final countBmpY:I

.field private final countX:I

.field private final countY:I

.field private final cx:I

.field private final cy:I

.field private maxCoolTime:I

.field private priviousId:I

.field private radius:I

.field private state:B

.field private final textPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lch/kingdoms/android/dpad/Dpad;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/dpad/Dpad;Landroid/content/Context;IILandroid/widget/RelativeLayout;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "_upDrawable"    # I
    .param p4, "_downDrawable"    # I
    .param p5, "parent"    # Landroid/widget/RelativeLayout;

    .prologue
    const/high16 v3, 0x42200000    # 40.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 700
    iput-object p1, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->this$0:Lch/kingdoms/android/dpad/Dpad;

    .line 701
    invoke-direct {p0, p2, p3, p4, p5}, Lch/kingdoms/android/dpad/DButton;-><init>(Landroid/content/Context;IILandroid/widget/RelativeLayout;)V

    .line 703
    invoke-static {}, Lch/android/api/util/TextPaints;->getSmall()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->textPaint:Landroid/graphics/Paint;

    .line 704
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 705
    const/4 v0, 0x0

    iput v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->priviousId:I

    .line 707
    invoke-static {p1}, Lch/kingdoms/android/dpad/Dpad;->access$11(Lch/kingdoms/android/dpad/Dpad;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->clipLeft:I

    .line 708
    invoke-static {p1}, Lch/kingdoms/android/dpad/Dpad;->access$11(Lch/kingdoms/android/dpad/Dpad;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->clipRight:I

    .line 709
    invoke-static {p1}, Lch/kingdoms/android/dpad/Dpad;->access$11(Lch/kingdoms/android/dpad/Dpad;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->clipTop:I

    .line 710
    invoke-static {p1}, Lch/kingdoms/android/dpad/Dpad;->access$11(Lch/kingdoms/android/dpad/Dpad;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x42180000    # 38.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->clipSize:I

    .line 712
    invoke-static {p1}, Lch/kingdoms/android/dpad/Dpad;->access$11(Lch/kingdoms/android/dpad/Dpad;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->cy:I

    iput v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->cx:I

    .line 714
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->ciclePaint:Landroid/graphics/Paint;

    .line 715
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->ciclePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 716
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->ciclePaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 718
    invoke-static {p1}, Lch/kingdoms/android/dpad/Dpad;->access$11(Lch/kingdoms/android/dpad/Dpad;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x41980000    # 19.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->radius:I

    .line 720
    invoke-static {p1}, Lch/kingdoms/android/dpad/Dpad;->access$11(Lch/kingdoms/android/dpad/Dpad;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x41900000    # 18.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countBmpX:I

    .line 721
    invoke-static {p1}, Lch/kingdoms/android/dpad/Dpad;->access$11(Lch/kingdoms/android/dpad/Dpad;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countBmpY:I

    .line 722
    invoke-static {p1}, Lch/kingdoms/android/dpad/Dpad;->access$11(Lch/kingdoms/android/dpad/Dpad;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x41e80000    # 29.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countX:I

    .line 723
    invoke-static {p1}, Lch/kingdoms/android/dpad/Dpad;->access$11(Lch/kingdoms/android/dpad/Dpad;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x42100000    # 36.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countY:I

    .line 724
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v0, 0x1

    .line 780
    invoke-super {p0, p1}, Lch/kingdoms/android/dpad/DButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 781
    iget v1, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->count:I

    if-lez v1, :cond_1

    .line 782
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 783
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    invoke-virtual {p0}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020217

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countBmp:Landroid/graphics/Bitmap;

    .line 786
    :cond_0
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countBmp:Landroid/graphics/Bitmap;

    iget v2, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countBmpX:I

    int-to-float v2, v2

    iget v3, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countBmpY:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 787
    iget v1, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countX:I

    int-to-float v2, v2

    iget v3, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countY:I

    int-to-float v3, v3

    iget-object v4, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 790
    :cond_1
    iget v1, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->maxCoolTime:I

    if-le v1, v0, :cond_4

    .line 791
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 792
    iget v1, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->clipLeft:I

    iget v2, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->clipTop:I

    iget v3, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->clipRight:I

    iget v4, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->clipSize:I

    iget v5, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->maxCoolTime:I

    iget v6, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->coolTime:I

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    iget v5, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->maxCoolTime:I

    if-nez v5, :cond_3

    :goto_0
    div-int v0, v4, v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 793
    iget v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->cx:I

    int-to-float v0, v0

    iget v1, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->cy:I

    int-to-float v1, v1

    iget v2, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->ciclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 794
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 801
    :cond_2
    :goto_1
    return-void

    .line 792
    :cond_3
    iget v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->maxCoolTime:I

    goto :goto_0

    .line 795
    :cond_4
    iget-byte v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->state:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 796
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 797
    iget v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->clipLeft:I

    iget v1, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->clipTop:I

    iget v2, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->clipRight:I

    iget v3, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->clipSize:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 798
    iget v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->cx:I

    int-to-float v0, v0

    iget v1, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->cy:I

    int-to-float v1, v1

    iget v2, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->ciclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 799
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1
.end method

.method public releaseRsources()V
    .locals 1

    .prologue
    .line 806
    invoke-super {p0}, Lch/kingdoms/android/dpad/DButton;->releaseRsources()V

    .line 807
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 810
    :cond_0
    return-void
.end method

.method public setIcon(BII)V
    .locals 2
    .param p1, "state"    # B
    .param p2, "resId"    # I
    .param p3, "cnt"    # I

    .prologue
    const/4 v1, 0x0

    .line 727
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_3

    .line 728
    :cond_0
    invoke-virtual {p0, v1}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->setImageResource(I)V

    .line 732
    :cond_1
    :goto_0
    iput-byte p1, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->state:B

    .line 733
    invoke-virtual {p0, v1, v1}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->updateCooltime(II)V

    .line 734
    iput p3, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->count:I

    .line 735
    iget v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->count:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 736
    invoke-virtual {p0}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020217

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countBmp:Landroid/graphics/Bitmap;

    .line 741
    :cond_2
    invoke-virtual {p0}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->invalidate()V

    .line 742
    iput p2, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->priviousId:I

    .line 755
    return-void

    .line 729
    :cond_3
    iget v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->priviousId:I

    if-eq v0, p2, :cond_1

    .line 730
    invoke-virtual {p0, p2}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public setState(B)V
    .locals 0
    .param p1, "state"    # B

    .prologue
    .line 758
    iput-byte p1, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->state:B

    .line 759
    return-void
.end method

.method public updateCnt(I)V
    .locals 2
    .param p1, "cnt"    # I

    .prologue
    .line 767
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->countBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 768
    iget v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->count:I

    add-int/2addr v0, p1

    iput v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->count:I

    .line 769
    iget v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->count:I

    if-lez v0, :cond_0

    iget-byte v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->state:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 770
    const/4 v0, 0x1

    iput-byte v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->state:B

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->count:I

    goto :goto_0
.end method

.method public updateCooltime(II)V
    .locals 0
    .param p1, "maxCoolTime"    # I
    .param p2, "coolTime"    # I

    .prologue
    .line 762
    if-nez p1, :cond_0

    const/4 p1, 0x1

    .end local p1    # "maxCoolTime":I
    :cond_0
    iput p1, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->maxCoolTime:I

    .line 763
    iput p2, p0, Lch/kingdoms/android/dpad/Dpad$SlotButton;->coolTime:I

    .line 764
    return-void
.end method
