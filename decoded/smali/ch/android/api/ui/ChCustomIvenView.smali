.class public abstract Lch/android/api/ui/ChCustomIvenView;
.super Lch/android/api/ui/ChRelativeLayout;
.source "ChCustomIvenView.java"


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final BG_RES_ID:I

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final ID_INVEN:I

.field private final RESOURCES:Landroid/content/res/Resources;

.field private invenAndInfoView:Lch/android/api/ui/ChInvenAndInfoView;

.field private moneyView:Lch/android/api/ui/ChTextView;

.field private titleView:Lch/android/api/ui/ChTextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "moeny"    # Ljava/lang/String;
    .param p5, "_storeType"    # I
    .param p6, "bgResId"    # I

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/16 v7, 0x3e8

    iput v7, p0, Lch/android/api/ui/ChCustomIvenView;->ID_INVEN:I

    .line 32
    move/from16 v0, p6

    invoke-super {p0, v0}, Lch/android/api/ui/ChRelativeLayout;->setBackgroundResource(I)V

    .line 33
    move/from16 v0, p6

    iput v0, p0, Lch/android/api/ui/ChCustomIvenView;->BG_RES_ID:I

    .line 34
    iput-object p1, p0, Lch/android/api/ui/ChCustomIvenView;->ACTIVITY:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lch/android/api/ui/ChCustomIvenView;->DI:Lch/android/api/util/DisplayInfo;

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->RESOURCES:Landroid/content/res/Resources;

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 38
    .local v2, "context":Landroid/content/Context;
    new-instance v7, Lch/android/api/ui/ChTextView;

    invoke-direct {v7, v2}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->titleView:Lch/android/api/ui/ChTextView;

    .line 39
    iget-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->titleView:Lch/android/api/ui/ChTextView;

    const v8, 0x7f0202bd

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setBackgroundResource(I)V

    .line 40
    iget-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->titleView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v7, p3}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->titleView:Lch/android/api/ui/ChTextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 42
    iget-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->titleView:Lch/android/api/ui/ChTextView;

    sget-object v8, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    iget-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->titleView:Lch/android/api/ui/ChTextView;

    const/16 v8, -0x100

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 45
    new-instance v7, Lch/android/api/ui/ChInvenAndInfoView;

    iget-object v8, p0, Lch/android/api/ui/ChCustomIvenView;->ACTIVITY:Landroid/app/Activity;

    iget-object v9, p0, Lch/android/api/ui/ChCustomIvenView;->DI:Lch/android/api/util/DisplayInfo;

    new-instance v10, Lch/android/api/ui/ChCustomIvenView$1;

    invoke-direct {v10, p0}, Lch/android/api/ui/ChCustomIvenView$1;-><init>(Lch/android/api/ui/ChCustomIvenView;)V

    move/from16 v0, p5

    invoke-direct {v7, v8, v9, v0, v10}, Lch/android/api/ui/ChInvenAndInfoView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;ILandroid/view/View$OnClickListener;)V

    iput-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->invenAndInfoView:Lch/android/api/ui/ChInvenAndInfoView;

    .line 51
    iget-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->invenAndInfoView:Lch/android/api/ui/ChInvenAndInfoView;

    const v8, 0x7f0202bc

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChInvenAndInfoView;->setBackgroundResource(I)V

    .line 53
    new-instance v7, Lch/android/api/ui/ChTextView;

    invoke-direct {v7, v2}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->moneyView:Lch/android/api/ui/ChTextView;

    .line 54
    iget-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->moneyView:Lch/android/api/ui/ChTextView;

    const v8, 0x7f02020a

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setBackgroundResource(I)V

    .line 55
    iget-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->moneyView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v7, p4}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->moneyView:Lch/android/api/ui/ChTextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 57
    iget-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->moneyView:Lch/android/api/ui/ChTextView;

    sget-object v8, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 58
    iget-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->moneyView:Lch/android/api/ui/ChTextView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 59
    iget-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->moneyView:Lch/android/api/ui/ChTextView;

    new-instance v8, Lch/android/api/ui/ChCustomIvenView$2;

    invoke-direct {v8, p0}, Lch/android/api/ui/ChCustomIvenView$2;-><init>(Lch/android/api/ui/ChCustomIvenView;)V

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    new-instance v4, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v4, v2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    .local v4, "lLayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 69
    iget-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->titleView:Lch/android/api/ui/ChTextView;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7, v8}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->invenAndInfoView:Lch/android/api/ui/ChInvenAndInfoView;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7, v8}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x11

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 73
    iget-object v7, p0, Lch/android/api/ui/ChCustomIvenView;->moneyView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v4, v7, v5}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    const/16 v7, 0x3e8

    invoke-virtual {v4, v7}, Lch/android/api/ui/ChLinearLayout;->setId(I)V

    .line 76
    new-instance v1, Lch/android/api/ui/ChBackAnimationButton;

    invoke-direct {v1, v2}, Lch/android/api/ui/ChBackAnimationButton;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, "backBtn":Lch/android/api/ui/ChBackAnimationButton;
    new-instance v7, Lch/android/api/ui/ChCustomIvenView$3;

    invoke-direct {v7, p0}, Lch/android/api/ui/ChCustomIvenView$3;-><init>(Lch/android/api/ui/ChCustomIvenView;)V

    invoke-virtual {v1, v7}, Lch/android/api/ui/ChBackAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p0}, Lch/android/api/ui/ChCustomIvenView;->getInvenLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    .line 87
    .local v6, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v6, :cond_0

    .line 88
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v6    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 89
    .restart local v6    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 91
    :cond_0
    invoke-virtual {p0, v4, v6}, Lch/android/api/ui/ChCustomIvenView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v6    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 95
    .restart local v6    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 96
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    invoke-virtual {p0, v1, v6}, Lch/android/api/ui/ChCustomIvenView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 106
    .local v3, "handler":Landroid/os/Handler;
    new-instance v7, Lch/android/api/ui/ChCustomIvenView$4;

    invoke-direct {v7, p0, v1}, Lch/android/api/ui/ChCustomIvenView$4;-><init>(Lch/android/api/ui/ChCustomIvenView;Lch/android/api/ui/ChBackAnimationButton;)V

    invoke-virtual {v3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method

.method static synthetic access$0(Lch/android/api/ui/ChCustomIvenView;)Lch/android/api/ui/ChInvenAndInfoView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lch/android/api/ui/ChCustomIvenView;->invenAndInfoView:Lch/android/api/ui/ChInvenAndInfoView;

    return-object v0
.end method

.method static synthetic access$1(Lch/android/api/ui/ChCustomIvenView;)Lch/android/api/ui/ChTextView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lch/android/api/ui/ChCustomIvenView;->moneyView:Lch/android/api/ui/ChTextView;

    return-object v0
.end method


# virtual methods
.method public getInvenId()I
    .locals 1

    .prologue
    .line 132
    const/16 v0, 0x3e8

    return v0
.end method

.method protected abstract getInvenLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lch/android/api/ui/ChCustomIvenView;->invenAndInfoView:Lch/android/api/ui/ChInvenAndInfoView;

    invoke-virtual {v0}, Lch/android/api/ui/ChInvenAndInfoView;->getItemCount()I

    move-result v0

    return v0
.end method

.method protected final getMoney()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lch/android/api/ui/ChCustomIvenView;->moneyView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0}, Lch/android/api/ui/ChTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected abstract onBackButtonClick()V
.end method

.method protected abstract onItemSelect(Landroid/view/View;Lch/kingdoms/ndk/data/Inven$Item;)V
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChRelativeLayout;->onMeasure(II)V

    .line 139
    iget-object v0, p0, Lch/android/api/ui/ChCustomIvenView;->RESOURCES:Landroid/content/res/Resources;

    iget v1, p0, Lch/android/api/ui/ChCustomIvenView;->BG_RES_ID:I

    invoke-static {v0, v1}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    iget-object v1, p0, Lch/android/api/ui/ChCustomIvenView;->RESOURCES:Landroid/content/res/Resources;

    iget v2, p0, Lch/android/api/ui/ChCustomIvenView;->BG_RES_ID:I

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lch/android/api/ui/ChCustomIvenView;->setMeasuredDimension(II)V

    .line 140
    return-void
.end method

.method protected abstract onMoneyClick(Lch/android/api/ui/ChTextView;)V
.end method

.method protected final setMoney(I)V
    .locals 2
    .param p1, "money"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lch/android/api/ui/ChCustomIvenView;->moneyView:Lch/android/api/ui/ChTextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method protected final setMoneyViewVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lch/android/api/ui/ChCustomIvenView;->moneyView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChTextView;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public update([Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 1
    .param p1, "items"    # [Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 143
    iget-object v0, p0, Lch/android/api/ui/ChCustomIvenView;->invenAndInfoView:Lch/android/api/ui/ChInvenAndInfoView;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChInvenAndInfoView;->update([Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 144
    return-void
.end method

.method public update([S[Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 1
    .param p1, "equipedItemIndices"    # [S
    .param p2, "items"    # [Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 147
    iget-object v0, p0, Lch/android/api/ui/ChCustomIvenView;->invenAndInfoView:Lch/android/api/ui/ChInvenAndInfoView;

    invoke-virtual {v0, p1, p2}, Lch/android/api/ui/ChInvenAndInfoView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 148
    return-void
.end method
