.class Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;
.super Landroid/widget/ImageView;
.source "SkillUi.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkillElementView"
.end annotation


# instance fields
.field private final BMP_X:I

.field private final BMP_Y:I

.field private NAME:Ljava/lang/String;

.field private final NAME_X:I

.field private final NAME_Y:I

.field private SKILL_BMP:Landroid/graphics/Bitmap;

.field private final TXT_PAINT:Landroid/graphics/Paint;

.field private isSelected:Z

.field final synthetic this$2:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;Landroid/content/Context;ILjava/lang/String;I)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "_num"    # I
    .param p4, "_name"    # Ljava/lang/String;
    .param p5, "color"    # I

    .prologue
    const/high16 v1, 0x40400000    # 3.0f

    .line 475
    iput-object p1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->this$2:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;

    .line 476
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 464
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;)Lch/kingdoms/android/ui/SkillUi$SkillView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->BMP_X:I

    .line 465
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;)Lch/kingdoms/android/ui/SkillUi$SkillView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->BMP_Y:I

    .line 466
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;)Lch/kingdoms/android/ui/SkillUi$SkillView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x425c0000    # 55.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->NAME_X:I

    .line 467
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;)Lch/kingdoms/android/ui/SkillUi$SkillView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x41d00000    # 26.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->NAME_Y:I

    .line 469
    invoke-static {}, Lch/android/api/util/TextPaints;->getLeftAlign()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->TXT_PAINT:Landroid/graphics/Paint;

    .line 478
    const v0, 0x7f020299

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 479
    iput-object p4, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->NAME:Ljava/lang/String;

    .line 480
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;)Lch/kingdoms/android/ui/SkillUi$SkillView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$1(Lch/kingdoms/android/ui/SkillUi;)Landroid/content/res/Resources;

    move-result-object v0

    .line 481
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;)Lch/kingdoms/android/ui/SkillUi$SkillView;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/SkillUi;->access$1(Lch/kingdoms/android/ui/SkillUi;)Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sicon_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "ch.kingdoms.market.compat"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    invoke-static {v2, v1}, Lch/android/api/util/Seed3Diag;->value(Ljava/lang/String;I)V

    .line 480
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->SKILL_BMP:Landroid/graphics/Bitmap;

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->isSelected:Z

    .line 483
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 484
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;)Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->isSelected:Z

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 517
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 518
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->SKILL_BMP:Landroid/graphics/Bitmap;

    if-eqz v0, :skip_skill_bitmap
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    move-result v1
    if-nez v1, :skip_skill_bitmap
    iget v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->BMP_X:I

    int-to-float v1, v1

    iget v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->BMP_Y:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :skip_skill_bitmap
    .line 519
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->NAME:Ljava/lang/String;

    iget v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->NAME_X:I

    int-to-float v1, v1

    iget v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->NAME_Y:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 520
    return-void
.end method

.method public releaseRsources()V
    .locals 2
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->SKILL_BMP:Landroid/graphics/Bitmap;
    if-eqz v0, :done
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    move-result v1
    if-nez v1, :done
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :done
    return-void
.end method

.method public select()V
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->isSelected:Z

    if-nez v0, :cond_0

    .line 501
    const v0, 0x7f020298

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->isSelected:Z

    .line 504
    :cond_0
    return-void
.end method

.method public setSkill(ILjava/lang/String;I)V
    .locals 5
    .param p1, "iconIndex"    # I
    .param p2, "skillName"    # Ljava/lang/String;
    .param p3, "color"    # I

    .prologue
    .line 488
    iput-object p2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->NAME:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 490
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->SKILL_BMP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->SKILL_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->SKILL_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 493
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->this$2:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;)Lch/kingdoms/android/ui/SkillUi$SkillView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$1(Lch/kingdoms/android/ui/SkillUi;)Landroid/content/res/Resources;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->this$2:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;

    invoke-static {v1}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;)Lch/kingdoms/android/ui/SkillUi$SkillView;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/SkillUi;->access$1(Lch/kingdoms/android/ui/SkillUi;)Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sicon_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "ch.kingdoms.market.compat"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    invoke-static {v2, v1}, Lch/android/api/util/Seed3Diag;->value(Ljava/lang/String;I)V

    .line 493
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->SKILL_BMP:Landroid/graphics/Bitmap;

    .line 495
    invoke-virtual {p0}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->invalidate()V

    .line 496
    return-void
.end method

.method public unselect()V
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->isSelected:Z

    if-eqz v0, :cond_0

    .line 509
    const v0, 0x7f020299

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->isSelected:Z

    .line 512
    :cond_0
    return-void
.end method
