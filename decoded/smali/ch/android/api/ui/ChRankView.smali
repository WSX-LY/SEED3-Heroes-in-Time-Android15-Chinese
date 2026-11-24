.class public abstract Lch/android/api/ui/ChRankView;
.super Lch/android/api/ui/ChRelativeLayout;
.source "ChRankView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final ID_CURRENT_PAGE_NUM:I

.field private final ID_CUR_SCORE:I

.field private final ID_MY_ID:I

.field private final ID_MY_RANK:I

.field private final ID_MY_REGISTER:I

.field private final ID_MY_SCORE:I

.field private final ID_NEXT_PAGE_BTN:I

.field private final ID_PREVIOUS_PAGE_BTN:I

.field private final ID_RANKS:I

.field private final ID_TITLE:I

.field private final closeBtn:Lch/android/api/ui/ChBackAnimationButton;

.field private final curPageView:Lch/android/api/ui/ChTextView;

.field private final currentScoreView:Lch/android/api/ui/ChTextView;

.field private final idsView:Lch/android/api/ui/ChTextView;

.field private final myIdView:Lch/android/api/ui/ChTextView;

.field private final myRankView:Lch/android/api/ui/ChTextView;

.field private final myScoreView:Lch/android/api/ui/ChTextView;

.field private numRanks:I

.field private final ranksView:Lch/android/api/ui/ChTextView;

.field private final registerMyRankBtn:Lch/android/api/ui/ChTextSlimButton;

.field private final scoresView:Lch/android/api/ui/ChTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Z)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "isRegitable"    # Z

    .prologue
    .line 48
    invoke-direct/range {p0 .. p1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/16 v23, 0x62

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lch/android/api/ui/ChRankView;->ID_TITLE:I

    .line 21
    const/16 v23, 0x63

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lch/android/api/ui/ChRankView;->ID_CUR_SCORE:I

    .line 22
    const/16 v23, 0x64

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lch/android/api/ui/ChRankView;->ID_MY_RANK:I

    .line 23
    const/16 v23, 0x65

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lch/android/api/ui/ChRankView;->ID_MY_SCORE:I

    .line 24
    const/16 v23, 0x66

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lch/android/api/ui/ChRankView;->ID_MY_REGISTER:I

    .line 25
    const/16 v23, 0x67

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lch/android/api/ui/ChRankView;->ID_RANKS:I

    .line 26
    const/16 v23, 0x68

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lch/android/api/ui/ChRankView;->ID_CURRENT_PAGE_NUM:I

    .line 27
    const/16 v23, 0x69

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lch/android/api/ui/ChRankView;->ID_PREVIOUS_PAGE_BTN:I

    .line 28
    const/16 v23, 0x6a

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lch/android/api/ui/ChRankView;->ID_NEXT_PAGE_BTN:I

    .line 29
    const/16 v23, 0x6b

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lch/android/api/ui/ChRankView;->ID_MY_ID:I

    .line 50
    const v23, 0x7f0200b7

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-super {v0, v1}, Lch/android/api/ui/ChRelativeLayout;->setBackgroundResource(I)V

    .line 52
    new-instance v23, Lch/android/api/ui/ChBackAnimationButton;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lch/android/api/ui/ChBackAnimationButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/android/api/ui/ChRankView;->closeBtn:Lch/android/api/ui/ChBackAnimationButton;

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->closeBtn:Lch/android/api/ui/ChBackAnimationButton;

    move-object/from16 v23, v0

    const/16 v24, 0x2744

    invoke-virtual/range {v23 .. v24}, Lch/android/api/ui/ChBackAnimationButton;->setId(I)V

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->closeBtn:Lch/android/api/ui/ChBackAnimationButton;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChBackAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v22, Lch/android/api/ui/ChTextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    .line 57
    .local v22, "titleView":Lch/android/api/ui/ChTextView;
    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const/16 v23, 0x62

    invoke-virtual/range {v22 .. v23}, Lch/android/api/ui/ChTextView;->setId(I)V

    .line 59
    const/16 v23, 0x1

    invoke-static {}, Lch/android/api/util/TextPaints;->getBigSize()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lch/android/api/ui/ChTextView;->setTextSize(IF)V

    .line 60
    sget-object v23, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual/range {v22 .. v23}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 61
    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 63
    invoke-direct/range {p0 .. p1}, Lch/android/api/ui/ChRankView;->getRankTxtView(Landroid/content/Context;)Lch/android/api/ui/ChTextView;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/android/api/ui/ChRankView;->currentScoreView:Lch/android/api/ui/ChTextView;

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->currentScoreView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    const/16 v24, 0x63

    invoke-virtual/range {v23 .. v24}, Lch/android/api/ui/ChTextView;->setId(I)V

    .line 65
    invoke-direct/range {p0 .. p1}, Lch/android/api/ui/ChRankView;->getRankTxtView(Landroid/content/Context;)Lch/android/api/ui/ChTextView;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/android/api/ui/ChRankView;->myRankView:Lch/android/api/ui/ChTextView;

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->myRankView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    const/16 v24, 0x64

    invoke-virtual/range {v23 .. v24}, Lch/android/api/ui/ChTextView;->setId(I)V

    .line 67
    invoke-direct/range {p0 .. p1}, Lch/android/api/ui/ChRankView;->getRankTxtView(Landroid/content/Context;)Lch/android/api/ui/ChTextView;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/android/api/ui/ChRankView;->myIdView:Lch/android/api/ui/ChTextView;

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->myIdView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    const/16 v24, 0x6b

    invoke-virtual/range {v23 .. v24}, Lch/android/api/ui/ChTextView;->setId(I)V

    .line 69
    invoke-direct/range {p0 .. p1}, Lch/android/api/ui/ChRankView;->getRankTxtView(Landroid/content/Context;)Lch/android/api/ui/ChTextView;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/android/api/ui/ChRankView;->myScoreView:Lch/android/api/ui/ChTextView;

    .line 71
    new-instance v23, Lch/android/api/ui/ChTextSlimButton;

    const v24, 0x7f020205

    const v25, 0x7f020204

    const/16 v26, 0x67

    invoke-static/range {v26 .. v26}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/android/api/ui/ChRankView;->registerMyRankBtn:Lch/android/api/ui/ChTextSlimButton;

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->registerMyRankBtn:Lch/android/api/ui/ChTextSlimButton;

    move-object/from16 v23, v0

    const/16 v24, 0x66

    invoke-virtual/range {v23 .. v24}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 73
    if-eqz p4, :cond_0

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->registerMyRankBtn:Lch/android/api/ui/ChTextSlimButton;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :goto_0
    invoke-direct/range {p0 .. p1}, Lch/android/api/ui/ChRankView;->getRankTxtView(Landroid/content/Context;)Lch/android/api/ui/ChTextView;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/android/api/ui/ChRankView;->ranksView:Lch/android/api/ui/ChTextView;

    .line 80
    invoke-direct/range {p0 .. p1}, Lch/android/api/ui/ChRankView;->getRankTxtView(Landroid/content/Context;)Lch/android/api/ui/ChTextView;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/android/api/ui/ChRankView;->idsView:Lch/android/api/ui/ChTextView;

    .line 81
    invoke-direct/range {p0 .. p1}, Lch/android/api/ui/ChRankView;->getRankTxtView(Landroid/content/Context;)Lch/android/api/ui/ChTextView;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/android/api/ui/ChRankView;->scoresView:Lch/android/api/ui/ChTextView;

    .line 83
    new-instance v15, Lch/android/api/ui/ChLinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 84
    .local v15, "rankListLayout":Lch/android/api/ui/ChLinearLayout;
    const/16 v23, 0x67

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lch/android/api/ui/ChLinearLayout;->setId(I)V

    .line 85
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    move-object/from16 v0, p2

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    move/from16 v24, v0

    const/high16 v25, 0x43310000    # 177.0f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v6, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v6, "llp1":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->ranksView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v6}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v7, "llp2":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->idsView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v7}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v8, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 95
    .local v8, "llp3":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->scoresView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v8}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v23, Lch/android/api/ui/ChTextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/android/api/ui/ChRankView;->curPageView:Lch/android/api/ui/ChTextView;

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->curPageView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    const-string v24, "0"

    invoke-virtual/range {v23 .. v24}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->curPageView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static {}, Lch/android/api/util/TextPaints;->getSmallSize()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lch/android/api/ui/ChTextView;->setTextSize(IF)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->curPageView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    sget-object v24, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual/range {v23 .. v24}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->curPageView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    const/16 v24, 0x11

    invoke-virtual/range {v23 .. v24}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->curPageView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->curPageView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    const/16 v24, 0x68

    invoke-virtual/range {v23 .. v24}, Lch/android/api/ui/ChTextView;->setId(I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->curPageView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance v14, Lch/android/api/ui/ChTextSlimButton;

    const v23, 0x7f020205

    const v24, 0x7f020204

    const v25, 0x7f05004e

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v14, v0, v1, v2, v3}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 108
    .local v14, "previousPageBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v23, 0x69

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 109
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    new-instance v13, Lch/android/api/ui/ChTextSlimButton;

    const v23, 0x7f020205

    const v24, 0x7f020204

    const v25, 0x7f05004d

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v13, v0, v1, v2, v3}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 111
    .local v13, "nextPageBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v23, 0x6a

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 112
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-direct/range {p0 .. p0}, Lch/android/api/ui/ChRankView;->getRelativeLayoutLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v21

    .line 115
    .local v21, "rlp5":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0xb

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 116
    const/16 v23, 0xa

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->closeBtn:Lch/android/api/ui/ChBackAnimationButton;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChRankView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-direct/range {p0 .. p0}, Lch/android/api/ui/ChRankView;->getRelativeLayoutLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v16

    .line 120
    .local v16, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0x9

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    const/16 v23, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    move-object/from16 v0, p2

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 123
    move-object/from16 v0, p2

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    move/from16 v23, v0

    const/high16 v24, 0x41700000    # 15.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 124
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChRankView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-direct/range {p0 .. p0}, Lch/android/api/ui/ChRankView;->getRelativeLayoutLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v17

    .line 127
    .local v17, "rlp0":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 128
    const/16 v23, 0x3

    const/16 v24, 0x62

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 129
    move-object/from16 v0, p2

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    move/from16 v23, v0

    const/high16 v24, 0x41700000    # 15.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->currentScoreView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChRankView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-direct/range {p0 .. p0}, Lch/android/api/ui/ChRankView;->getRelativeLayoutLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v19

    .line 132
    .local v19, "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0xb

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    const/16 v23, 0x3

    const/16 v24, 0x62

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 134
    move-object/from16 v0, p2

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    move/from16 v23, v0

    const/high16 v24, 0x42340000    # 45.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->registerMyRankBtn:Lch/android/api/ui/ChTextSlimButton;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChRankView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v12, Lch/android/api/ui/ChLinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 139
    .local v12, "myRankLayout":Lch/android/api/ui/ChLinearLayout;
    const/16 v23, 0x65

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lch/android/api/ui/ChLinearLayout;->setId(I)V

    .line 140
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v9, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v9, "llp4":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->myRankView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v9}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v10, "llp5":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->myIdView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v9}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v11, "llp6":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->myScoreView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v9}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v18, "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0xe

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 151
    const/16 v23, 0x3

    const/16 v24, 0x63

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 152
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Lch/android/api/ui/ChRankView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v18    # "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, -0x1

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 156
    .restart local v18    # "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0xe

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    const/16 v23, 0x3

    const/16 v24, 0x65

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 158
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 159
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lch/android/api/ui/ChRankView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-direct/range {p0 .. p0}, Lch/android/api/ui/ChRankView;->getRelativeLayoutLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v18

    .line 163
    const/16 v23, 0xe

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    const/16 v23, 0x3

    const/16 v24, 0x67

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->curPageView:Lch/android/api/ui/ChTextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChRankView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-direct/range {p0 .. p0}, Lch/android/api/ui/ChRankView;->getRelativeLayoutLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v19

    .line 168
    const/16 v23, 0x0

    const/16 v24, 0x68

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 169
    const/16 v23, 0x3

    const/16 v24, 0x67

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 170
    move-object/from16 v0, p2

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    move/from16 v23, v0

    const/high16 v24, 0x41400000    # 12.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lch/android/api/ui/ChRankView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    invoke-direct/range {p0 .. p0}, Lch/android/api/ui/ChRankView;->getRelativeLayoutLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v20

    .line 174
    .local v20, "rlp3":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0x1

    const/16 v24, 0x68

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 175
    const/16 v23, 0x3

    const/16 v24, 0x67

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 176
    move-object/from16 v0, p2

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    move/from16 v23, v0

    const/high16 v24, 0x41400000    # 12.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lch/android/api/ui/ChRankView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lch/android/api/ui/ChRankView;->init()V

    .line 181
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 182
    .local v5, "handler":Landroid/os/Handler;
    new-instance v23, Lch/android/api/ui/ChRankView$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lch/android/api/ui/ChRankView$1;-><init>(Lch/android/api/ui/ChRankView;)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void

    .line 76
    .end local v5    # "handler":Landroid/os/Handler;
    .end local v6    # "llp1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "llp2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "llp3":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "llp4":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "llp5":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "llp6":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "myRankLayout":Lch/android/api/ui/ChLinearLayout;
    .end local v13    # "nextPageBtn":Lch/android/api/ui/ChTextSlimButton;
    .end local v14    # "previousPageBtn":Lch/android/api/ui/ChTextSlimButton;
    .end local v15    # "rankListLayout":Lch/android/api/ui/ChLinearLayout;
    .end local v16    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17    # "rlp0":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18    # "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v19    # "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v20    # "rlp3":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v21    # "rlp5":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChRankView;->registerMyRankBtn:Lch/android/api/ui/ChTextSlimButton;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lch/android/api/ui/ChTextSlimButton;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lch/android/api/ui/ChRankView;)Lch/android/api/ui/ChBackAnimationButton;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lch/android/api/ui/ChRankView;->closeBtn:Lch/android/api/ui/ChBackAnimationButton;

    return-object v0
.end method

.method private getRankTxtView(Landroid/content/Context;)Lch/android/api/ui/ChTextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 216
    new-instance v0, Lch/android/api/ui/ChTextView;

    invoke-direct {v0, p1}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, "txtView":Lch/android/api/ui/ChTextView;
    invoke-static {}, Lch/android/api/util/TextPaints;->getSmallSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lch/android/api/ui/ChTextView;->setTextSize(IF)V

    .line 218
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 219
    invoke-virtual {v0, v2}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 220
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 222
    return-object v0
.end method

.method private getRelativeLayoutLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 192
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 193
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    return-object v0
.end method


# virtual methods
.method protected final getCurPageNum()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lch/android/api/ui/ChRankView;->curPageView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0}, Lch/android/api/ui/ChTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected final getRanksCount()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lch/android/api/ui/ChRankView;->numRanks:I

    return v0
.end method

.method protected abstract init()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 201
    :sswitch_0
    invoke-virtual {p0}, Lch/android/api/ui/ChRankView;->onRegisterRankButton()V

    goto :goto_0

    .line 204
    :sswitch_1
    iget-object v0, p0, Lch/android/api/ui/ChRankView;->curPageView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0}, Lch/android/api/ui/ChTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lch/android/api/ui/ChRankView;->onPageMove(I)V

    goto :goto_0

    .line 207
    :sswitch_2
    iget-object v0, p0, Lch/android/api/ui/ChRankView;->curPageView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0}, Lch/android/api/ui/ChTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lch/android/api/ui/ChRankView;->onPageMove(I)V

    goto :goto_0

    .line 210
    :sswitch_3
    invoke-virtual {p0}, Lch/android/api/ui/ChRankView;->onCloseButton()V

    goto :goto_0

    .line 199
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x69 -> :sswitch_1
        0x6a -> :sswitch_2
        0x2744 -> :sswitch_3
    .end sparse-switch
.end method

.method protected abstract onCloseButton()V
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v2, 0x7f0200b7

    .line 274
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChRelativeLayout;->onMeasure(II)V

    .line 275
    invoke-virtual {p0}, Lch/android/api/ui/ChRankView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {p0}, Lch/android/api/ui/ChRankView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lch/android/api/ui/ChRankView;->setMeasuredDimension(II)V

    .line 276
    return-void
.end method

.method protected abstract onPageMove(I)V
.end method

.method protected abstract onRegisterRankButton()V
.end method

.method protected final updateMyInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "curScore"    # I
    .param p2, "rank"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "score"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lch/android/api/ui/ChRankView;->currentScoreView:Lch/android/api/ui/ChTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x6b

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 228
    iget-object v0, p0, Lch/android/api/ui/ChRankView;->myRankView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, p2}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lch/android/api/ui/ChRankView;->myIdView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, p3}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lch/android/api/ui/ChRankView;->myScoreView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, p4}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lch/android/api/ui/ChRankView;->myRankView:Lch/android/api/ui/ChTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lch/android/api/ui/ChRankView;->myIdView:Lch/android/api/ui/ChTextView;

    const/16 v1, 0x6f

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lch/android/api/ui/ChRankView;->myScoreView:Lch/android/api/ui/ChTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final updatePage(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pageNum"    # I
    .param p2, "ranks"    # [Ljava/lang/String;
    .param p3, "ids"    # [Ljava/lang/String;
    .param p4, "scores"    # [Ljava/lang/String;

    .prologue
    .line 239
    iget-object v4, p0, Lch/android/api/ui/ChRankView;->curPageView:Lch/android/api/ui/ChTextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 241
    .local v2, "ranksBuffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 242
    .local v1, "idsBuffer":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 243
    .local v3, "scoresBuffer":Ljava/lang/StringBuffer;
    if-eqz p2, :cond_1

    .line 244
    array-length v4, p2

    iput v4, p0, Lch/android/api/ui/ChRankView;->numRanks:I

    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p2

    if-lt v0, v4, :cond_0

    .line 253
    .end local v0    # "i":I
    :goto_1
    iget-object v4, p0, Lch/android/api/ui/ChRankView;->ranksView:Lch/android/api/ui/ChTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x70

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v4, p0, Lch/android/api/ui/ChRankView;->idsView:Lch/android/api/ui/ChTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x71

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v4, p0, Lch/android/api/ui/ChRankView;->scoresView:Lch/android/api/ui/ChTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x72

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-void

    .line 246
    .restart local v0    # "i":I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, p2, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, p3, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, p4, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 251
    .end local v0    # "i":I
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lch/android/api/ui/ChRankView;->numRanks:I

    goto/16 :goto_1
.end method
