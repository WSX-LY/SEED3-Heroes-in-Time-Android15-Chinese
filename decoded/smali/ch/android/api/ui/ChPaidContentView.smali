.class public Lch/android/api/ui/ChPaidContentView;
.super Lch/android/api/ui/ChLinearLayout;
.source "ChPaidContentView.java"


# static fields
.field private static final ID_TITLE:I = 0x64

.field private static final ID_TXT:I = 0x65


# instance fields
.field private closeBtn:Lch/android/api/ui/ChBackAnimationButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/View$OnClickListener;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "titleTxt"    # Ljava/lang/String;
    .param p4, "txt"    # Ljava/lang/String;
    .param p5, "bgResId"    # I
    .param p6, "characterResId"    # I
    .param p7, "isPurchased"    # Z
    .param p8, "ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 24
    invoke-direct/range {p0 .. p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const v13, 0x7f0200b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lch/android/api/ui/ChPaidContentView;->setBackgroundResource(I)V

    .line 28
    new-instance v8, Lch/android/api/ui/ChRelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    .local v8, "rLayout":Lch/android/api/ui/ChRelativeLayout;
    new-instance v10, Lch/android/api/ui/ChTextView;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    .line 31
    .local v10, "titleView":Lch/android/api/ui/ChTextView;
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const/16 v13, 0x11

    invoke-virtual {v10, v13}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 33
    const/16 v13, 0x64

    invoke-virtual {v10, v13}, Lch/android/api/ui/ChTextView;->setId(I)V

    .line 34
    const/4 v13, 0x1

    invoke-static {}, Lch/android/api/util/TextPaints;->getBigSize()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v10, v13, v14}, Lch/android/api/ui/ChTextView;->setTextSize(IF)V

    .line 35
    sget-object v13, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v13}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    const/16 v13, -0x100

    invoke-virtual {v10, v13}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 38
    new-instance v5, Lch/android/api/ui/ChLinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    .local v5, "lLayout":Lch/android/api/ui/ChLinearLayout;
    const/16 v13, 0x65

    invoke-virtual {v5, v13}, Lch/android/api/ui/ChLinearLayout;->setId(I)V

    .line 40
    const v13, 0x7f0202b2

    invoke-virtual {v5, v13}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 43
    new-instance v6, Lch/android/api/ui/ChLinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .local v6, "leftLayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 46
    new-instance v11, Lch/android/api/ui/ChTextView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    .line 47
    .local v11, "txtView":Lch/android/api/ui/ChTextView;
    move-object/from16 v0, p2

    iget v13, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v14, 0x41a00000    # 20.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v15, 0x41100000    # 9.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p2

    iget v15, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p2

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    move/from16 v16, v0

    const/high16 v17, 0x41100000    # 9.0f

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Lch/android/api/ui/ChTextView;->setPadding(IIII)V

    .line 48
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const/4 v13, -0x1

    invoke-virtual {v11, v13}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 52
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v7, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v7, "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v11, v7}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    if-nez p7, :cond_0

    .line 58
    new-instance v2, Lch/android/api/ui/ChImageButton;

    const v13, 0x7f020067

    const v14, 0x7f020063

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v13, v14}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 59
    .local v2, "buyBtn":Lch/android/api/ui/ChImageButton;
    const/16 v13, 0x2745

    invoke-virtual {v2, v13}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 60
    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    move-object v12, v2

    .line 68
    .end local v2    # "buyBtn":Lch/android/api/ui/ChImageButton;
    .local v12, "view":Landroid/view/View;
    :goto_0
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .end local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v7, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    .restart local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v13, 0x5

    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 70
    move-object/from16 v0, p2

    iget v13, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v14, 0x41200000    # 10.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 71
    invoke-virtual {v6, v12, v7}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .end local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lch/android/api/ui/ChPaidContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0202b2

    invoke-static {v13, v14}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    .line 75
    const/4 v14, -0x2

    .line 74
    invoke-direct {v7, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .restart local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v6, v7}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v4, Lch/android/api/ui/ChImageView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 80
    .local v4, "imgView":Lch/android/api/ui/ChImageView;
    move/from16 v0, p5

    invoke-virtual {v4, v0}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 82
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .end local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lch/android/api/ui/ChPaidContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0202b2

    invoke-static {v13, v14}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    .line 83
    const/4 v14, -0x2

    .line 82
    invoke-direct {v7, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    .restart local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v4, v7}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v13, Lch/android/api/ui/ChBackAnimationButton;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lch/android/api/ui/ChBackAnimationButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lch/android/api/ui/ChPaidContentView;->closeBtn:Lch/android/api/ui/ChBackAnimationButton;

    .line 88
    move-object/from16 v0, p0

    iget-object v13, v0, Lch/android/api/ui/ChPaidContentView;->closeBtn:Lch/android/api/ui/ChBackAnimationButton;

    const/16 v14, 0x2744

    invoke-virtual {v13, v14}, Lch/android/api/ui/ChBackAnimationButton;->setId(I)V

    .line 89
    move-object/from16 v0, p0

    iget-object v13, v0, Lch/android/api/ui/ChPaidContentView;->closeBtn:Lch/android/api/ui/ChBackAnimationButton;

    move-object/from16 v0, p8

    invoke-virtual {v13, v0}, Lch/android/api/ui/ChBackAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    new-instance v3, Lch/android/api/ui/ChImageView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 92
    .local v3, "characterView":Lch/android/api/ui/ChImageView;
    move/from16 v0, p6

    invoke-virtual {v3, v0}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 95
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v9, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 96
    .local v9, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v13, 0x2

    const/16 v14, 0x65

    invoke-virtual {v9, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 97
    const/16 v13, 0xe

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 99
    invoke-virtual {v8, v10, v9}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v9    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v9, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 103
    .restart local v9    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0xc

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    const/16 v13, 0xe

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 106
    invoke-virtual {v8, v5, v9}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v9    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v9, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 110
    .restart local v9    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0xc

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 111
    const/16 v13, 0xb

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 112
    move-object/from16 v0, p2

    iget v13, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v14, 0x41700000    # 15.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v13, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 114
    invoke-virtual {v8, v3, v9}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v9    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v9, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 118
    .restart local v9    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0xb

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 119
    const/16 v13, 0xa

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    move-object/from16 v0, p0

    iget-object v13, v0, Lch/android/api/ui/ChPaidContentView;->closeBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {v8, v13, v9}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lch/android/api/ui/ChPaidContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200b7

    invoke-static {v14, v15}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v14

    .line 127
    invoke-virtual/range {p0 .. p0}, Lch/android/api/ui/ChPaidContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0200b7

    invoke-static/range {v15 .. v16}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lch/android/api/ui/ChPaidContentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void

    .line 63
    .end local v3    # "characterView":Lch/android/api/ui/ChImageView;
    .end local v4    # "imgView":Lch/android/api/ui/ChImageView;
    .end local v9    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "view":Landroid/view/View;
    :cond_0
    new-instance v1, Lch/android/api/ui/ChTextView;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    .line 64
    .local v1, "alreadyPurchasedTxtView":Lch/android/api/ui/ChTextView;
    const/16 v13, 0x11b

    invoke-static {v13}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v13, -0x333334

    invoke-virtual {v1, v13}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 66
    move-object v12, v1

    .restart local v12    # "view":Landroid/view/View;
    goto/16 :goto_0
.end method

.method static synthetic access$0(Lch/android/api/ui/ChPaidContentView;)Lch/android/api/ui/ChBackAnimationButton;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lch/android/api/ui/ChPaidContentView;->closeBtn:Lch/android/api/ui/ChBackAnimationButton;

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v2, 0x7f0200b7

    .line 133
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChLinearLayout;->onMeasure(II)V

    .line 134
    invoke-virtual {p0}, Lch/android/api/ui/ChPaidContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    .line 135
    invoke-virtual {p0}, Lch/android/api/ui/ChPaidContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    .line 134
    invoke-virtual {p0, v0, v1}, Lch/android/api/ui/ChPaidContentView;->setMeasuredDimension(II)V

    .line 136
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 140
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lch/android/api/ui/ChPaidContentView$1;

    invoke-direct {v1, p0}, Lch/android/api/ui/ChPaidContentView$1;-><init>(Lch/android/api/ui/ChPaidContentView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method
