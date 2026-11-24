.class public Lch/android/api/ui/ChPopUpMenuView;
.super Lch/android/api/ui/ChRelativeLayout;
.source "ChPopUpMenuView.java"


# instance fields
.field private final BG_RES_ID:I

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final closeBtn:Lch/android/api/ui/ChImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "titleResId"    # I
    .param p4, "bgResId"    # I
    .param p5, "views"    # [Landroid/view/View;
    .param p6, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput p4, p0, Lch/android/api/ui/ChPopUpMenuView;->BG_RES_ID:I

    .line 23
    iget v5, p0, Lch/android/api/ui/ChPopUpMenuView;->BG_RES_ID:I

    invoke-super {p0, v5}, Lch/android/api/ui/ChRelativeLayout;->setBackgroundResource(I)V

    .line 24
    if-eqz p3, :cond_0

    .line 25
    new-instance v3, Lch/android/api/ui/ChImageView;

    invoke-direct {v3, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 26
    .local v3, "titleView":Lch/android/api/ui/ChImageView;
    invoke-virtual {v3, p3}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 27
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 28
    .local v2, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 29
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 30
    invoke-super {p0, v3, v2}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .end local v2    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "titleView":Lch/android/api/ui/ChImageView;
    :cond_0
    new-instance v0, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v0, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, "lLayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 35
    array-length v6, p5

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_2

    .line 44
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45
    .restart local v2    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46
    invoke-super {p0, v0, v2}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    new-instance v5, Lch/android/api/ui/ChImageButton;

    const v6, 0x7f02007a

    const v7, 0x7f02007a

    invoke-direct {v5, p1, v6, v7}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lch/android/api/ui/ChPopUpMenuView;->closeBtn:Lch/android/api/ui/ChImageButton;

    .line 51
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    .restart local v2    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 54
    iget v5, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 55
    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lch/android/api/ui/ChPopUpMenuView;->BG_RES_ID:I

    invoke-static {v5, v6}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v5

    iget v6, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v7, 0x42400000    # 48.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 56
    iget-object v5, p0, Lch/android/api/ui/ChPopUpMenuView;->closeBtn:Lch/android/api/ui/ChImageButton;

    const/16 v6, 0x2744

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 57
    if-eqz p6, :cond_1

    .line 58
    iget-object v5, p0, Lch/android/api/ui/ChPopUpMenuView;->closeBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v5, p6}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v5, p0, Lch/android/api/ui/ChPopUpMenuView;->closeBtn:Lch/android/api/ui/ChImageButton;

    invoke-super {p0, v5, v2}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    :cond_1
    iput-object p2, p0, Lch/android/api/ui/ChPopUpMenuView;->DI:Lch/android/api/util/DisplayInfo;

    .line 64
    return-void

    .line 35
    .end local v2    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    aget-object v4, p5, v5

    .line 36
    .local v4, "view":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    .line 37
    const/4 v8, -0x1

    .line 36
    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lch/android/api/ui/ChPopUpMenuView;->BG_RES_ID:I

    invoke-static {v7, v8}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v7

    array-length v8, p5

    mul-int/lit8 v8, v8, 0x6

    div-int/2addr v7, v8

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 40
    const/16 v7, 0x10

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 41
    invoke-virtual {v0, v4, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;[Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "titleResId"    # I
    .param p4, "bgResId"    # I
    .param p5, "firstViews"    # [Landroid/view/View;
    .param p6, "secondViews"    # [Landroid/view/View;
    .param p7, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 69
    move/from16 v0, p4

    iput v0, p0, Lch/android/api/ui/ChPopUpMenuView;->BG_RES_ID:I

    .line 70
    iget v10, p0, Lch/android/api/ui/ChPopUpMenuView;->BG_RES_ID:I

    invoke-super {p0, v10}, Lch/android/api/ui/ChRelativeLayout;->setBackgroundResource(I)V

    .line 72
    if-eqz p3, :cond_0

    .line 73
    new-instance v8, Lch/android/api/ui/ChImageView;

    invoke-direct {v8, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 74
    .local v8, "titleView":Lch/android/api/ui/ChImageView;
    move/from16 v0, p3

    invoke-virtual {v8, v0}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 75
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v6, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 76
    .local v6, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0x9

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    const/16 v10, 0xa

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    invoke-super {p0, v8, v6}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .end local v6    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8    # "titleView":Lch/android/api/ui/ChImageView;
    :cond_0
    new-instance v2, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v2, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    .local v2, "lLayout":Lch/android/api/ui/ChLinearLayout;
    new-instance v1, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v1, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    .local v1, "firstLineLayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 84
    move-object/from16 v0, p5

    array-length v11, v0

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v11, :cond_2

    .line 93
    new-instance v7, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v7, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 94
    .local v7, "secondLineLayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 95
    move-object/from16 v0, p6

    array-length v11, v0

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v11, :cond_3

    .line 105
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    .line 106
    const/4 v11, -0x1

    .line 105
    invoke-direct {v4, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 107
    .local v4, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 108
    const/16 v10, 0x11

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 109
    invoke-virtual {v2, v1, v4}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    .line 111
    const/4 v11, -0x1

    .line 110
    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    .local v5, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 113
    const/16 v10, 0x11

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 114
    invoke-virtual {v2, v7, v5}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v6, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    .restart local v6    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xd

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 118
    invoke-super {p0, v2, v6}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v10, Lch/android/api/ui/ChImageButton;

    const v11, 0x7f02007a

    const v12, 0x7f02007a

    invoke-direct {v10, p1, v11, v12}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    iput-object v10, p0, Lch/android/api/ui/ChPopUpMenuView;->closeBtn:Lch/android/api/ui/ChImageButton;

    .line 123
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v6    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v6, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 124
    .restart local v6    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0x9

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    const/16 v10, 0xa

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 126
    move-object/from16 v0, p2

    iget v10, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v11, 0x41700000    # 15.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 127
    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lch/android/api/ui/ChPopUpMenuView;->BG_RES_ID:I

    invoke-static {v10, v11}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v10

    move-object/from16 v0, p2

    iget v11, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v12, 0x42200000    # 40.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    sub-int/2addr v10, v11

    iput v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 128
    iget-object v10, p0, Lch/android/api/ui/ChPopUpMenuView;->closeBtn:Lch/android/api/ui/ChImageButton;

    const/16 v11, 0x2744

    invoke-virtual {v10, v11}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 129
    if-eqz p7, :cond_1

    .line 130
    iget-object v10, p0, Lch/android/api/ui/ChPopUpMenuView;->closeBtn:Lch/android/api/ui/ChImageButton;

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v10, p0, Lch/android/api/ui/ChPopUpMenuView;->closeBtn:Lch/android/api/ui/ChImageButton;

    invoke-super {p0, v10, v6}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    :cond_1
    move-object/from16 v0, p2

    iput-object v0, p0, Lch/android/api/ui/ChPopUpMenuView;->DI:Lch/android/api/util/DisplayInfo;

    .line 136
    return-void

    .line 84
    .end local v4    # "lp1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "secondLineLayout":Lch/android/api/ui/ChLinearLayout;
    :cond_2
    aget-object v9, p5, v10

    .line 85
    .local v9, "view":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    .line 86
    const/4 v13, -0x2

    .line 85
    invoke-direct {v3, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget v13, p0, Lch/android/api/ui/ChPopUpMenuView;->BG_RES_ID:I

    invoke-static {v12, v13}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v12

    move-object/from16 v0, p5

    array-length v13, v0

    mul-int/lit8 v13, v13, 0x6

    div-int/2addr v12, v13

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 90
    const/16 v12, 0x11

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 91
    invoke-virtual {v1, v9, v3}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 95
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "view":Landroid/view/View;
    .restart local v7    # "secondLineLayout":Lch/android/api/ui/ChLinearLayout;
    :cond_3
    aget-object v9, p6, v10

    .line 96
    .restart local v9    # "view":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    .line 97
    const/4 v13, -0x2

    .line 96
    invoke-direct {v3, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget v13, p0, Lch/android/api/ui/ChPopUpMenuView;->BG_RES_ID:I

    invoke-static {v12, v13}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v12

    move-object/from16 v0, p5

    array-length v13, v0

    mul-int/lit8 v13, v13, 0x6

    div-int/2addr v12, v13

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 101
    const/16 v12, 0x11

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 102
    invoke-virtual {v7, v9, v3}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChRelativeLayout;->onMeasure(II)V

    .line 142
    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChPopUpMenuView;->BG_RES_ID:I

    invoke-static {v0, v1}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lch/android/api/ui/ChPopUpMenuView;->BG_RES_ID:I

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChRelativeLayout;->setMeasuredDimension(II)V

    .line 143
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v2, -0x2

    .line 148
    iget-object v1, p0, Lch/android/api/ui/ChPopUpMenuView;->closeBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v1, p1}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v1, p0, Lch/android/api/ui/ChPopUpMenuView;->closeBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v1}, Lch/android/api/ui/ChImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 150
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 152
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    iget-object v1, p0, Lch/android/api/ui/ChPopUpMenuView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 154
    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lch/android/api/ui/ChPopUpMenuView;->BG_RES_ID:I

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v1

    iget-object v2, p0, Lch/android/api/ui/ChPopUpMenuView;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 155
    iget-object v1, p0, Lch/android/api/ui/ChPopUpMenuView;->closeBtn:Lch/android/api/ui/ChImageButton;

    invoke-super {p0, v1, v0}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    .end local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method
