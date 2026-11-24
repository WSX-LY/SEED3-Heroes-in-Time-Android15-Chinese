.class Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;
.super Landroid/widget/ImageView;
.source "QuestUi.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/QuestUi$QuestList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuestElement"
.end annotation


# instance fields
.field private NAME:Ljava/lang/String;

.field private final NAME_X:I

.field private final NAME_Y:I

.field private final SELECT_RES_ID:I

.field private final TXT_PAINT:Landroid/graphics/Paint;

.field private final UNSELECT_RES_ID:I

.field private curBmp:Landroid/graphics/Bitmap;

.field final synthetic this$1:Lch/kingdoms/android/ui/QuestUi$QuestList;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/QuestUi$QuestList;Landroid/content/Context;IILjava/lang/String;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "_bgUpResId"    # I
    .param p4, "_bgDownResId"    # I
    .param p5, "_name"    # Ljava/lang/String;

    .prologue
    .line 350
    iput-object p1, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->this$1:Lch/kingdoms/android/ui/QuestUi$QuestList;

    .line 351
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 341
    invoke-static {p1}, Lch/kingdoms/android/ui/QuestUi$QuestList;->access$0(Lch/kingdoms/android/ui/QuestUi$QuestList;)Lch/kingdoms/android/ui/QuestUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/QuestUi;->access$0(Lch/kingdoms/android/ui/QuestUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x428c0000    # 70.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->NAME_X:I

    .line 342
    invoke-static {p1}, Lch/kingdoms/android/ui/QuestUi$QuestList;->access$0(Lch/kingdoms/android/ui/QuestUi$QuestList;)Lch/kingdoms/android/ui/QuestUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/QuestUi;->access$0(Lch/kingdoms/android/ui/QuestUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->NAME_Y:I

    .line 343
    invoke-static {}, Lch/android/api/util/TextPaints;->getDefault()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->TXT_PAINT:Landroid/graphics/Paint;

    .line 353
    iput p3, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->UNSELECT_RES_ID:I

    .line 354
    iput p4, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->SELECT_RES_ID:I

    .line 356
    invoke-static {p1}, Lch/kingdoms/android/ui/QuestUi$QuestList;->access$0(Lch/kingdoms/android/ui/QuestUi$QuestList;)Lch/kingdoms/android/ui/QuestUi;

    move-result-object v0

    iget v1, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->UNSELECT_RES_ID:I

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/QuestUi;->access$1(Lch/kingdoms/android/ui/QuestUi;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->curBmp:Landroid/graphics/Bitmap;

    .line 357
    iput-object p5, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->NAME:Ljava/lang/String;

    .line 358
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 385
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 386
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->curBmp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 387
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->NAME:Ljava/lang/String;

    iget v1, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->NAME_X:I

    int-to-float v1, v1

    iget v2, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->NAME_Y:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 388
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 368
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 369
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->this$1:Lch/kingdoms/android/ui/QuestUi$QuestList;

    invoke-static {v0}, Lch/kingdoms/android/ui/QuestUi$QuestList;->access$0(Lch/kingdoms/android/ui/QuestUi$QuestList;)Lch/kingdoms/android/ui/QuestUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/QuestUi;->access$2(Lch/kingdoms/android/ui/QuestUi;)I

    move-result v0

    iget-object v1, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->this$1:Lch/kingdoms/android/ui/QuestUi$QuestList;

    invoke-static {v1}, Lch/kingdoms/android/ui/QuestUi$QuestList;->access$0(Lch/kingdoms/android/ui/QuestUi$QuestList;)Lch/kingdoms/android/ui/QuestUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/QuestUi;->access$3(Lch/kingdoms/android/ui/QuestUi;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->setMeasuredDimension(II)V

    .line 370
    return-void
.end method

.method public releaseRsources()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public select()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->this$1:Lch/kingdoms/android/ui/QuestUi$QuestList;

    invoke-static {v0}, Lch/kingdoms/android/ui/QuestUi$QuestList;->access$0(Lch/kingdoms/android/ui/QuestUi$QuestList;)Lch/kingdoms/android/ui/QuestUi;

    move-result-object v0

    iget v1, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->SELECT_RES_ID:I

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/QuestUi;->access$1(Lch/kingdoms/android/ui/QuestUi;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->curBmp:Landroid/graphics/Bitmap;

    .line 375
    return-void
.end method

.method public unselect()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->this$1:Lch/kingdoms/android/ui/QuestUi$QuestList;

    invoke-static {v0}, Lch/kingdoms/android/ui/QuestUi$QuestList;->access$0(Lch/kingdoms/android/ui/QuestUi$QuestList;)Lch/kingdoms/android/ui/QuestUi;

    move-result-object v0

    iget v1, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->UNSELECT_RES_ID:I

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/QuestUi;->access$1(Lch/kingdoms/android/ui/QuestUi;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->curBmp:Landroid/graphics/Bitmap;

    .line 380
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 361
    iput-object p1, p0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->NAME:Ljava/lang/String;

    .line 362
    invoke-virtual {p0}, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->unselect()V

    .line 363
    return-void
.end method
