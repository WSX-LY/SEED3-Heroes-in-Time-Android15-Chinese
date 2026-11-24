.class Lch/kingdoms/android/ui/MainMenuUi$SlotListView;
.super Lch/android/api/ui/ChRelativeLayout;
.source "MainMenuUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/MainMenuUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlotListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;
    }
.end annotation


# instance fields
.field private final SLOT_SIZE:I

.field private final backBtn:Lch/android/api/ui/ChBackAnimationButton;

.field private final slotViews:[Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;

.field final synthetic this$0:Lch/kingdoms/android/ui/MainMenuUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/MainMenuUi;Landroid/content/Context;I)V
    .locals 12
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "titleResId"    # I

    .prologue
    .line 460
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    .line 461
    invoke-direct {p0, p2}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 456
    const/4 v0, 0x4

    iput v0, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->SLOT_SIZE:I

    .line 463
    const v0, 0x7f0202bb

    invoke-super {p0, v0}, Lch/android/api/ui/ChRelativeLayout;->setBackgroundResource(I)V

    .line 465
    invoke-static {p1}, Lch/kingdoms/android/ui/MainMenuUi;->access$3(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lch/android/api/ui/ChViewGen;->createImageView(Landroid/app/Activity;I)Lch/android/api/ui/ChImageView;

    move-result-object v10

    .line 466
    .local v10, "titleView":Lch/android/api/ui/ChImageView;
    new-instance v0, Lch/android/api/ui/ChBackAnimationButton;

    invoke-direct {v0, p2}, Lch/android/api/ui/ChBackAnimationButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->backBtn:Lch/android/api/ui/ChBackAnimationButton;

    .line 467
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->backBtn:Lch/android/api/ui/ChBackAnimationButton;

    const/16 v1, 0x2744

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChBackAnimationButton;->setId(I)V

    .line 469
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 470
    .local v9, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 471
    const/16 v0, 0x9

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 472
    invoke-virtual {p0, v10, v9}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v9    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 476
    .restart local v9    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 477
    const/16 v0, 0xb

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 478
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->backBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {p0, v0, v9}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    new-instance v7, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v7, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 482
    .local v7, "lLayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v0, 0x4

    new-array v0, v0, [Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;

    iput-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->slotViews:[Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;

    .line 483
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-static {p1}, Lch/kingdoms/android/ui/MainMenuUi;->access$5(Lch/kingdoms/android/ui/MainMenuUi;)[Lch/kingdoms/ndk/data/SaveSlotInfo;

    move-result-object v0

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 494
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v9    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 495
    .restart local v9    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 496
    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 497
    invoke-virtual {p0, v7, v9}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    invoke-static {p1}, Lch/kingdoms/android/ui/MainMenuUi;->access$4(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$1;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$1;-><init>(Lch/kingdoms/android/ui/MainMenuUi$SlotListView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    return-void

    .line 484
    :cond_0
    iget-object v11, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->slotViews:[Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;

    new-instance v0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;

    const v3, 0x7f02026d

    const v4, 0x7f02026c

    invoke-static {p1}, Lch/kingdoms/android/ui/MainMenuUi;->access$5(Lch/kingdoms/android/ui/MainMenuUi;)[Lch/kingdoms/ndk/data/SaveSlotInfo;

    move-result-object v1

    aget-object v5, v1, v6

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;-><init>(Lch/kingdoms/android/ui/MainMenuUi$SlotListView;Landroid/content/Context;IILch/kingdoms/ndk/data/SaveSlotInfo;)V

    aput-object v0, v11, v6

    .line 485
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->slotViews:[Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;

    aget-object v0, v0, v6

    invoke-virtual {v0, v6}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->setId(I)V

    .line 487
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 488
    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 487
    invoke-direct {v8, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 489
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 490
    invoke-static {p1}, Lch/kingdoms/android/ui/MainMenuUi;->access$0(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 491
    invoke-static {p1}, Lch/kingdoms/android/ui/MainMenuUi;->access$0(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 492
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->slotViews:[Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;

    aget-object v0, v0, v6

    invoke-virtual {v7, v0, v8}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/MainMenuUi$SlotListView;)Lch/android/api/ui/ChBackAnimationButton;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->backBtn:Lch/android/api/ui/ChBackAnimationButton;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/MainMenuUi$SlotListView;)Lch/kingdoms/android/ui/MainMenuUi;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    return-object v0
.end method


# virtual methods
.method public isExist(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 515
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi;->access$5(Lch/kingdoms/android/ui/MainMenuUi;)[Lch/kingdoms/ndk/data/SaveSlotInfo;

    move-result-object v0

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lch/kingdoms/ndk/data/SaveSlotInfo;->exist:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v2, 0x7f0202bb

    .line 522
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChRelativeLayout;->onMeasure(II)V

    .line 523
    invoke-virtual {p0}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    .line 524
    invoke-virtual {p0}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    .line 523
    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChRelativeLayout;->setMeasuredDimension(II)V

    .line 525
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 530
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->slotViews:[Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 533
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->backBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {v1, p1}, Lch/android/api/ui/ChBackAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    return-void

    .line 531
    :cond_0
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->slotViews:[Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$SlotView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
