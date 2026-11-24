.class Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;
.super Lch/android/api/ui/ChRelativeLayout;
.source "SkillUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/SkillUi$SkillView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkillInfoView"
.end annotation


# instance fields
.field private final ALLOC_BTN:Lch/android/api/ui/ChImageButton;

.field private final EXPLAIN_VIEW:Landroid/widget/TextView;

.field private final ID_ALLOC_SLOT:I

.field private final ID_EXPLAIN:I

.field private final ID_IMG:I

.field private final ID_NAME:I

.field private final ID_QUICK_SLOT:I

.field private final ID_SP:I

.field private final NAME_VIEW:Landroid/widget/TextView;

.field private final QUICK_BTN:Lch/android/api/ui/ChImageButton;

.field private final SKILL_IMG_VIEW:Landroid/widget/ImageView;

.field private final SP_VIEW:Landroid/widget/TextView;

.field private m_skillNum:I

.field final synthetic this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/SkillUi$SkillView;Landroid/content/Context;)V
    .locals 13
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0x3e9

    const/16 v12, 0x9

    const/4 v11, -0x1

    const/16 v8, 0x3e8

    const/4 v10, -0x2

    .line 550
    iput-object p1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    .line 551
    invoke-direct {p0, p2}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 533
    iput v8, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->ID_IMG:I

    .line 534
    iput v9, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->ID_NAME:I

    .line 535
    const/16 v6, 0x3ea

    iput v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->ID_SP:I

    .line 536
    const/16 v6, 0x3eb

    iput v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->ID_EXPLAIN:I

    .line 537
    const/16 v6, 0x3ec

    iput v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->ID_QUICK_SLOT:I

    .line 538
    const/16 v6, 0x3ed

    iput v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->ID_ALLOC_SLOT:I

    .line 553
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v6

    invoke-static {v6}, Lch/kingdoms/android/ui/SkillUi;->access$4(Lch/kingdoms/android/ui/SkillUi;)Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lch/android/api/ui/ChViewGen;->createImageView(Landroid/app/Activity;I)Lch/android/api/ui/ChImageView;

    move-result-object v6

    iput-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->SKILL_IMG_VIEW:Landroid/widget/ImageView;

    .line 554
    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->SKILL_IMG_VIEW:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 555
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 557
    .local v0, "rlp0":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 558
    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 559
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->NAME_VIEW:Landroid/widget/TextView;

    .line 560
    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->NAME_VIEW:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setId(I)V

    .line 561
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 563
    .local v1, "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 564
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 565
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->SP_VIEW:Landroid/widget/TextView;

    .line 566
    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->SP_VIEW:Landroid/widget/TextView;

    const/16 v7, 0x3ea

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    .line 567
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 569
    .local v2, "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x3

    invoke-virtual {v2, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 570
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 571
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->EXPLAIN_VIEW:Landroid/widget/TextView;

    .line 572
    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->EXPLAIN_VIEW:Landroid/widget/TextView;

    const/16 v7, 0x3eb

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    .line 573
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 575
    .local v3, "rlp3":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x3

    invoke-virtual {v3, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 576
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 578
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v6

    invoke-static {v6}, Lch/kingdoms/android/ui/SkillUi;->access$4(Lch/kingdoms/android/ui/SkillUi;)Landroid/app/Activity;

    move-result-object v6

    const/16 v7, 0x3ec

    const v8, 0x7f020257

    const v9, 0x7f020256

    invoke-static {v6, v7, v8, v9, p0}, Lch/android/api/ui/ChViewGen;->createImageButton(Landroid/app/Activity;IIILandroid/view/View$OnClickListener;)Lch/android/api/ui/ChImageButton;

    move-result-object v6

    iput-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->QUICK_BTN:Lch/android/api/ui/ChImageButton;

    .line 579
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 581
    .local v4, "rlp4":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 582
    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 583
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v6

    invoke-static {v6}, Lch/kingdoms/android/ui/SkillUi;->access$4(Lch/kingdoms/android/ui/SkillUi;)Landroid/app/Activity;

    move-result-object v6

    const/16 v7, 0x3ed

    const v8, 0x7f020004

    const v9, 0x7f020003

    invoke-static {v6, v7, v8, v9, p0}, Lch/android/api/ui/ChViewGen;->createImageButton(Landroid/app/Activity;IIILandroid/view/View$OnClickListener;)Lch/android/api/ui/ChImageButton;

    move-result-object v6

    iput-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->ALLOC_BTN:Lch/android/api/ui/ChImageButton;

    .line 584
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 586
    .local v5, "rlp5":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 587
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 588
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v6

    invoke-static {v6}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 590
    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->SKILL_IMG_VIEW:Landroid/widget/ImageView;

    invoke-super {p0, v6, v0}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->NAME_VIEW:Landroid/widget/TextView;

    invoke-super {p0, v6, v1}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->SP_VIEW:Landroid/widget/TextView;

    invoke-super {p0, v6, v2}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->EXPLAIN_VIEW:Landroid/widget/TextView;

    invoke-super {p0, v6, v3}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->QUICK_BTN:Lch/android/api/ui/ChImageButton;

    invoke-super {p0, v6, v4}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->ALLOC_BTN:Lch/android/api/ui/ChImageButton;

    invoke-super {p0, v6, v5}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->NAME_VIEW:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 598
    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->SP_VIEW:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 599
    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->EXPLAIN_VIEW:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->NAME_VIEW:Landroid/widget/TextView;
    invoke-static {}, Lch/android/api/util/TextPaints;->getSmallSize()I
    move-result v7
    int-to-float v7, v7
    invoke-static {v6, v7}, Lch/android/api/util/PixelText;->setSize(Landroid/widget/TextView;F)V
    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->SP_VIEW:Landroid/widget/TextView;
    invoke-static {}, Lch/android/api/util/TextPaints;->getSmallSize()I
    move-result v7
    int-to-float v7, v7
    invoke-static {v6, v7}, Lch/android/api/util/PixelText;->setSize(Landroid/widget/TextView;F)V
    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->EXPLAIN_VIEW:Landroid/widget/TextView;
    invoke-static {}, Lch/android/api/util/TextPaints;->getSmallSize()I
    move-result v7
    int-to-float v7, v7
    invoke-static {v6, v7}, Lch/android/api/util/PixelText;->setSize(Landroid/widget/TextView;F)V
    .line 600
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;)I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->m_skillNum:I

    return v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;)Lch/kingdoms/android/ui/SkillUi$SkillView;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 618
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$4(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->select(I)V

    .line 619
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->SKILL_IMG_VIEW:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 620
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->NAME_VIEW:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->SP_VIEW:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->EXPLAIN_VIEW:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->QUICK_BTN:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v0, v2}, Lch/android/api/ui/ChImageButton;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->ALLOC_BTN:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v0, v2}, Lch/android/api/ui/ChImageButton;->setVisibility(I)V

    .line 625
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 630
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$3(Lch/kingdoms/android/ui/SkillUi;)I

    move-result v0

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 631
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 636
    :pswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$4(Lch/kingdoms/android/ui/SkillUi;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$5(Lch/kingdoms/android/ui/SkillUi;)Lch/kingdoms/android/ui/SkillUi$TabBtnView;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->isActiveSkill()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    iget v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->m_skillNum:I

    rem-int/lit8 v3, v3, 0x6

    invoke-static {v1, v2, v0, v3}, Lch/android/api/ui/ChViewGen;->popUpQuickSlotsView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;II)Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 640
    :pswitch_1
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$5(Lch/kingdoms/android/ui/SkillUi;)Lch/kingdoms/android/ui/SkillUi$TabBtnView;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->isActiveSkill()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$5(Lch/kingdoms/android/ui/SkillUi;)Lch/kingdoms/android/ui/SkillUi$TabBtnView;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->isConsumableActiveSkillAddPoint()Z

    move-result v0

    if-nez v0, :cond_3

    .line 641
    :cond_2
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$5(Lch/kingdoms/android/ui/SkillUi;)Lch/kingdoms/android/ui/SkillUi$TabBtnView;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->isActiveSkill()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$5(Lch/kingdoms/android/ui/SkillUi;)Lch/kingdoms/android/ui/SkillUi$TabBtnView;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->isConsumableBuffSkillAddPoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    :cond_3
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$4(Lch/kingdoms/android/ui/SkillUi;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f05003a

    new-instance v2, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView$1;-><init>(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    goto/16 :goto_0

    .line 631
    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public set(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "_iconNum"    # I
    .param p2, "_name"    # Ljava/lang/String;
    .param p3, "_skillLevel"    # I
    .param p4, "_skillPlusLevel"    # I
    .param p5, "_sp"    # Ljava/lang/String;
    .param p6, "_explain"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 603
    iput p1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->m_skillNum:I

    .line 604
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

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

    move-result v0

    .line 605
    .local v0, "resId":I
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->SKILL_IMG_VIEW:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 606
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->NAME_VIEW:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, p3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->SP_VIEW:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xb1

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->EXPLAIN_VIEW:Landroid/widget/TextView;

    invoke-virtual {v1, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->QUICK_BTN:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v1, v5}, Lch/android/api/ui/ChImageButton;->setVisibility(I)V

    .line 610
    iget v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->m_skillNum:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/16 v1, 0xa

    if-ge p3, v1, :cond_1

    .line 611
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->ALLOC_BTN:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v1, v5}, Lch/android/api/ui/ChImageButton;->setVisibility(I)V

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->ALLOC_BTN:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v1}, Lch/android/api/ui/ChImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 613
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->ALLOC_BTN:Lch/android/api/ui/ChImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChImageButton;->setVisibility(I)V

    goto :goto_0
.end method
