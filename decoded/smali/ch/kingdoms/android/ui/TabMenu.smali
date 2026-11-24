.class public abstract Lch/kingdoms/android/ui/TabMenu;
.super Lch/android/api/ui/ChLinearLayout;
.source "TabMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lch/android/api/ui/ICheckConfirmObject;


# instance fields
.field private final BTNS_LAYOUT_ID:I

.field private final f_bgBmp:Landroid/graphics/Bitmap;

.field private final f_di:Lch/android/api/util/DisplayInfo;

.field private final f_equipBtn:Lch/android/api/ui/ChOnOffButton;

.field private final f_innerLayout:Lch/android/api/ui/ChLinearLayout;

.field private final f_itemBtn:Lch/android/api/ui/ChOnOffButton;

.field private final f_layout:Lch/android/api/ui/ChRelativeLayout;

.field private final f_questBtn:Lch/android/api/ui/ChOnOffButton;

.field private final f_skillBtn:Lch/android/api/ui/ChOnOffButton;

.field private final f_statusBtn:Lch/android/api/ui/ChOnOffButton;

.field private final f_systemBtn:Lch/android/api/ui/ChOnOffButton;

.field private final f_titleView:Landroid/widget/ImageView;

.field private final layerLevel:I

.field private m_innerView:Landroid/view/View;

.field private m_islockMenus:Z

.field private m_nextInnerView:Landroid/view/View;

.field private m_selectedBtnIndex:I

.field private m_selectedViewId:I

.field private m_titleImgResId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
    .locals 17
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const v12, 0x3938700

    move-object/from16 v0, p0

    iput v12, v0, Lch/kingdoms/android/ui/TabMenu;->BTNS_LAYOUT_ID:I

    .line 54
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/TabMenu;->f_di:Lch/android/api/util/DisplayInfo;

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 56
    .local v9, "res":Landroid/content/res/Resources;
    const v12, 0x7f0200b7

    invoke-static {v9, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_bgBmp:Landroid/graphics/Bitmap;

    .line 57
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/TabMenu;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-direct {v12, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    invoke-super {v0, v12}, Lch/android/api/ui/ChLinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lch/kingdoms/android/ui/TabMenu;->m_selectedBtnIndex:I

    .line 61
    const/4 v12, -0x2

    const/4 v13, -0x2

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lch/android/api/ui/ChViewGen;->createRelativeLayout(Landroid/app/Activity;II)Lch/android/api/ui/ChRelativeLayout;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_layout:Lch/android/api/ui/ChRelativeLayout;

    .line 63
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lch/android/api/ui/ChViewGen;->createImageView(Landroid/app/Activity;I)Lch/android/api/ui/ChImageView;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_titleView:Landroid/widget/ImageView;

    .line 64
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v10, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v10, "titleLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0x9

    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    const/16 v12, 0xa

    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67
    const v12, 0x7f0202b8

    move-object/from16 v0, p0

    iput v12, v0, Lch/kingdoms/android/ui/TabMenu;->m_titleImgResId:I

    .line 70
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v3, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v3, "backBtnLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0xb

    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    const/16 v12, 0xa

    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73
    new-instance v2, Lch/android/api/ui/ChBackButton;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v2, v12}, Lch/android/api/ui/ChBackButton;-><init>(Landroid/content/Context;)V

    .line 74
    .local v2, "backBtn":Lch/android/api/ui/ChBackButton;
    const/16 v12, 0x2738

    invoke-virtual {v2, v12}, Lch/android/api/ui/ChBackButton;->setId(I)V

    .line 75
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lch/android/api/ui/ChBackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const/4 v12, -0x2

    const/4 v13, -0x1

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13, v14}, Lch/android/api/ui/ChViewGen;->createLinearLayout(Landroid/app/Activity;III)Lch/android/api/ui/ChLinearLayout;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_innerLayout:Lch/android/api/ui/ChLinearLayout;

    .line 79
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_innerLayout:Lch/android/api/ui/ChLinearLayout;

    const/16 v13, 0x3039

    invoke-virtual {v12, v13}, Lch/android/api/ui/ChLinearLayout;->setId(I)V

    .line 80
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_innerLayout:Lch/android/api/ui/ChLinearLayout;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Lch/android/api/ui/ChLinearLayout;->setPadding(IIII)V

    .line 81
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_innerLayout:Lch/android/api/ui/ChLinearLayout;

    const v13, 0x7f0202b2

    invoke-virtual {v12, v13}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 82
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v7, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v7, "innerLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lch/kingdoms/android/ui/TabMenu;->f_di:Lch/android/api/util/DisplayInfo;

    iget v15, v15, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v16, 0x41d80000    # 27.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 85
    const/16 v12, 0xe

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    const/16 v12, 0xc

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 89
    new-instance v12, Lch/android/api/ui/ChOnOffButton;

    const v13, 0x7f0202b9

    const v14, 0x7f0202b6

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13, v14}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_statusBtn:Lch/android/api/ui/ChOnOffButton;

    .line 90
    new-instance v12, Lch/android/api/ui/ChOnOffButton;

    const v13, 0x7f0200a2

    const v14, 0x7f0200a0

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13, v14}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_equipBtn:Lch/android/api/ui/ChOnOffButton;

    .line 91
    new-instance v12, Lch/android/api/ui/ChOnOffButton;

    const v13, 0x7f0200e0

    const v14, 0x7f0200df

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13, v14}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_itemBtn:Lch/android/api/ui/ChOnOffButton;

    .line 92
    new-instance v12, Lch/android/api/ui/ChOnOffButton;

    const v13, 0x7f02029d

    const v14, 0x7f02029b

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13, v14}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_skillBtn:Lch/android/api/ui/ChOnOffButton;

    .line 93
    new-instance v12, Lch/android/api/ui/ChOnOffButton;

    const v13, 0x7f020253

    const v14, 0x7f02024f

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13, v14}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_questBtn:Lch/android/api/ui/ChOnOffButton;

    .line 94
    new-instance v12, Lch/android/api/ui/ChOnOffButton;

    const v13, 0x7f0202c4

    const v14, 0x7f0202c2

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13, v14}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_systemBtn:Lch/android/api/ui/ChOnOffButton;

    .line 95
    const/4 v12, 0x6

    new-array v11, v12, [Landroid/view/View;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/TabMenu;->f_statusBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/TabMenu;->f_equipBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/TabMenu;->f_itemBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v13, v11, v12

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/TabMenu;->f_skillBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v13, v11, v12

    const/4 v12, 0x4

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/TabMenu;->f_questBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v13, v11, v12

    const/4 v12, 0x5

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/TabMenu;->f_systemBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v13, v11, v12

    .line 96
    .local v11, "views":[Landroid/view/View;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v12, v11

    if-lt v6, v12, :cond_0

    .line 101
    const/4 v12, -0x2

    const/4 v13, -0x2

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13, v14}, Lch/android/api/ui/ChViewGen;->createLinearLayout(Landroid/app/Activity;III)Lch/android/api/ui/ChLinearLayout;

    move-result-object v4

    .line 102
    .local v4, "btnsLayout":Lch/android/api/ui/ChLinearLayout;
    const v12, 0x3938700

    invoke-virtual {v4, v12}, Lch/android/api/ui/ChLinearLayout;->setId(I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_statusBtn:Lch/android/api/ui/ChOnOffButton;

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v12, v13}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_equipBtn:Lch/android/api/ui/ChOnOffButton;

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v12, v13}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_itemBtn:Lch/android/api/ui/ChOnOffButton;

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v12, v13}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_skillBtn:Lch/android/api/ui/ChOnOffButton;

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v12, v13}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_questBtn:Lch/android/api/ui/ChOnOffButton;

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v12, v13}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_systemBtn:Lch/android/api/ui/ChOnOffButton;

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v12, v13}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lch/kingdoms/android/ui/TabMenu;->m_islockMenus:Z

    .line 112
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lch/kingdoms/android/ui/TabMenu;->m_selectedViewId:I

    .line 113
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lch/kingdoms/android/ui/TabMenu;->selectBtn(I)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/TabMenu;->onClickStatus()Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lch/kingdoms/android/ui/TabMenu;->setInnerView(Landroid/view/View;)Z

    .line 116
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v8, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    .local v8, "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0xc

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 118
    const/16 v12, 0xe

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_layout:Lch/android/api/ui/ChRelativeLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/TabMenu;->f_titleView:Landroid/widget/ImageView;

    invoke-virtual {v12, v13, v10}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_layout:Lch/android/api/ui/ChRelativeLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/TabMenu;->f_innerLayout:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {v12, v13, v7}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_layout:Lch/android/api/ui/ChRelativeLayout;

    invoke-virtual {v12, v2, v3}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_layout:Lch/android/api/ui/ChRelativeLayout;

    invoke-virtual {v12, v4, v8}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/TabMenu;->f_layout:Lch/android/api/ui/ChRelativeLayout;

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/TabMenu;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lch/kingdoms/android/ui/TabMenu;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-super {v0, v12, v13}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 128
    .local v5, "handler":Landroid/os/Handler;
    new-instance v12, Lch/kingdoms/android/ui/TabMenu$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lch/kingdoms/android/ui/TabMenu$1;-><init>(Lch/kingdoms/android/ui/TabMenu;Lch/android/api/ui/ChBackButton;)V

    invoke-virtual {v5, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lch/kingdoms/android/ui/TabMenu;->layerLevel:I

    .line 137
    return-void

    .line 97
    .end local v4    # "btnsLayout":Lch/android/api/ui/ChLinearLayout;
    .end local v5    # "handler":Landroid/os/Handler;
    .end local v8    # "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    aget-object v12, v11, v6

    invoke-virtual {v12, v6}, Landroid/view/View;->setId(I)V

    .line 98
    aget-object v12, v11, v6

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private changeInnerView(Landroid/view/View;)V
    .locals 5
    .param p1, "_view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 315
    iget-object v1, p0, Lch/kingdoms/android/ui/TabMenu;->m_innerView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lch/kingdoms/android/ui/TabMenu;->f_innerLayout:Lch/android/api/ui/ChLinearLayout;

    iget-object v2, p0, Lch/kingdoms/android/ui/TabMenu;->m_innerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChLinearLayout;->removeView(Landroid/view/View;)V

    .line 318
    :cond_0
    iput-object p1, p0, Lch/kingdoms/android/ui/TabMenu;->m_innerView:Landroid/view/View;

    .line 319
    iget-object v1, p0, Lch/kingdoms/android/ui/TabMenu;->m_innerView:Landroid/view/View;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 320
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 322
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 323
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 324
    iget-object v1, p0, Lch/kingdoms/android/ui/TabMenu;->f_innerLayout:Lch/android/api/ui/ChLinearLayout;

    iget-object v2, p0, Lch/kingdoms/android/ui/TabMenu;->m_innerView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v0}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget v1, p0, Lch/kingdoms/android/ui/TabMenu;->m_titleImgResId:I

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, p0, Lch/kingdoms/android/ui/TabMenu;->f_titleView:Landroid/widget/ImageView;

    iget v2, p0, Lch/kingdoms/android/ui/TabMenu;->m_titleImgResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    :cond_1
    return-void
.end method

.method private checkSaveStatus(Landroid/view/View;)Z
    .locals 2
    .param p1, "_view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 286
    iget-object v0, p0, Lch/kingdoms/android/ui/TabMenu;->m_innerView:Landroid/view/View;

    check-cast v0, Lch/android/api/ui/ICheckConfrm;

    invoke-interface {v0}, Lch/android/api/ui/ICheckConfrm;->checkConfirm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iput-object p1, p0, Lch/kingdoms/android/ui/TabMenu;->m_nextInnerView:Landroid/view/View;

    .line 288
    iput-boolean v1, p0, Lch/kingdoms/android/ui/TabMenu;->m_islockMenus:Z

    move v0, v1

    .line 291
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectBtn(I)V
    .locals 4
    .param p1, "_index"    # I

    .prologue
    const/4 v1, 0x0

    .line 253
    const/4 v2, 0x6

    new-array v0, v2, [Lch/android/api/ui/ChOnOffButton;

    iget-object v2, p0, Lch/kingdoms/android/ui/TabMenu;->f_statusBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v2, v0, v1

    const/4 v2, 0x1

    iget-object v3, p0, Lch/kingdoms/android/ui/TabMenu;->f_equipBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lch/kingdoms/android/ui/TabMenu;->f_itemBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lch/kingdoms/android/ui/TabMenu;->f_skillBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lch/kingdoms/android/ui/TabMenu;->f_questBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lch/kingdoms/android/ui/TabMenu;->f_systemBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v3, v0, v2

    .line 262
    .local v0, "btns":[Lch/android/api/ui/ChOnOffButton;
    iget v2, p0, Lch/kingdoms/android/ui/TabMenu;->m_selectedBtnIndex:I

    if-eq v2, p1, :cond_1

    .line 263
    iget v2, p0, Lch/kingdoms/android/ui/TabMenu;->m_selectedBtnIndex:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    iget v1, p0, Lch/kingdoms/android/ui/TabMenu;->m_selectedBtnIndex:I

    :cond_0
    aget-object v1, v0, v1

    invoke-virtual {v1}, Lch/android/api/ui/ChOnOffButton;->setToUnSelect()V

    .line 264
    iput p1, p0, Lch/kingdoms/android/ui/TabMenu;->m_selectedBtnIndex:I

    .line 265
    iget v1, p0, Lch/kingdoms/android/ui/TabMenu;->m_selectedBtnIndex:I

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lch/android/api/ui/ChOnOffButton;->setToSelect()V

    .line 267
    :cond_1
    return-void
.end method

.method private setInnerView(Landroid/view/View;)Z
    .locals 2
    .param p1, "_view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 270
    if-eqz p1, :cond_0

    iget-object v1, p0, Lch/kingdoms/android/ui/TabMenu;->m_innerView:Landroid/view/View;

    if-eq v1, p1, :cond_0

    .line 271
    iget-object v1, p0, Lch/kingdoms/android/ui/TabMenu;->m_innerView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lch/kingdoms/android/ui/TabMenu;->m_innerView:Landroid/view/View;

    instance-of v1, v1, Lch/android/api/ui/ICheckConfrm;

    if-eqz v1, :cond_1

    .line 272
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/TabMenu;->checkSaveStatus(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/TabMenu;->changeInnerView(Landroid/view/View;)V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lch/kingdoms/android/ui/TabMenu;->m_nextInnerView:Landroid/view/View;

    .line 278
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public changeInnerView()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lch/kingdoms/android/ui/TabMenu;->m_nextInnerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lch/kingdoms/android/ui/TabMenu;->m_nextInnerView:Landroid/view/View;

    invoke-direct {p0, v0}, Lch/kingdoms/android/ui/TabMenu;->changeInnerView(Landroid/view/View;)V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lch/kingdoms/android/ui/TabMenu;->m_nextInnerView:Landroid/view/View;

    .line 312
    :cond_0
    return-void
.end method

.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lch/kingdoms/android/ui/TabMenu;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lch/kingdoms/android/ui/TabMenu;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method protected getInnerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lch/kingdoms/android/ui/TabMenu;->m_innerView:Landroid/view/View;

    return-object v0
.end method

.method public getIsLockMenus()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lch/kingdoms/android/ui/TabMenu;->m_islockMenus:Z

    return v0
.end method

.method protected getSelectedViewId()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lch/kingdoms/android/ui/TabMenu;->m_selectedViewId:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 178
    .local v0, "id":I
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    .line 179
    .local v1, "layerLevel":I
    iget-boolean v2, p0, Lch/kingdoms/android/ui/TabMenu;->m_islockMenus:Z

    if-nez v2, :cond_1

    iget v2, p0, Lch/kingdoms/android/ui/TabMenu;->m_selectedViewId:I

    if-eq v2, v0, :cond_1

    iget v2, p0, Lch/kingdoms/android/ui/TabMenu;->layerLevel:I

    if-ne v1, v2, :cond_1

    .line 185
    sparse-switch v0, :sswitch_data_0

    .line 232
    :cond_0
    :goto_0
    iput v0, p0, Lch/kingdoms/android/ui/TabMenu;->m_selectedViewId:I

    .line 233
    invoke-static {}, Lch/android/api/util/NativeHeapChecker;->log()V

    .line 238
    :cond_1
    return-void

    .line 187
    :sswitch_0
    const v2, 0x7f0202b8

    iput v2, p0, Lch/kingdoms/android/ui/TabMenu;->m_titleImgResId:I

    .line 188
    invoke-virtual {p0}, Lch/kingdoms/android/ui/TabMenu;->onClickStatus()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lch/kingdoms/android/ui/TabMenu;->setInnerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lch/kingdoms/android/ui/TabMenu;->selectBtn(I)V

    goto :goto_0

    .line 193
    :sswitch_1
    const v2, 0x7f0200a6

    iput v2, p0, Lch/kingdoms/android/ui/TabMenu;->m_titleImgResId:I

    .line 194
    invoke-virtual {p0}, Lch/kingdoms/android/ui/TabMenu;->onClickEquip()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lch/kingdoms/android/ui/TabMenu;->setInnerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lch/kingdoms/android/ui/TabMenu;->selectBtn(I)V

    goto :goto_0

    .line 199
    :sswitch_2
    const v2, 0x7f0200de

    iput v2, p0, Lch/kingdoms/android/ui/TabMenu;->m_titleImgResId:I

    .line 200
    invoke-virtual {p0}, Lch/kingdoms/android/ui/TabMenu;->onClickItem()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lch/kingdoms/android/ui/TabMenu;->setInnerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lch/kingdoms/android/ui/TabMenu;->selectBtn(I)V

    goto :goto_0

    .line 205
    :sswitch_3
    const v2, 0x7f02029c

    iput v2, p0, Lch/kingdoms/android/ui/TabMenu;->m_titleImgResId:I

    .line 206
    invoke-virtual {p0}, Lch/kingdoms/android/ui/TabMenu;->onClickSkill()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lch/kingdoms/android/ui/TabMenu;->setInnerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lch/kingdoms/android/ui/TabMenu;->selectBtn(I)V

    goto :goto_0

    .line 211
    :sswitch_4
    const v2, 0x7f020251

    iput v2, p0, Lch/kingdoms/android/ui/TabMenu;->m_titleImgResId:I

    .line 212
    invoke-virtual {p0}, Lch/kingdoms/android/ui/TabMenu;->onClickQuest()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lch/kingdoms/android/ui/TabMenu;->setInnerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lch/kingdoms/android/ui/TabMenu;->selectBtn(I)V

    goto :goto_0

    .line 217
    :sswitch_5
    const v2, 0x7f0202c3

    iput v2, p0, Lch/kingdoms/android/ui/TabMenu;->m_titleImgResId:I

    .line 218
    invoke-virtual {p0}, Lch/kingdoms/android/ui/TabMenu;->onClickSystem()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lch/kingdoms/android/ui/TabMenu;->setInnerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lch/kingdoms/android/ui/TabMenu;->selectBtn(I)V

    goto :goto_0

    .line 223
    :sswitch_6
    iget v2, p0, Lch/kingdoms/android/ui/TabMenu;->m_selectedViewId:I

    if-nez v2, :cond_2

    .line 224
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lch/kingdoms/android/ui/TabMenu;->checkSaveStatus(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    invoke-virtual {p0}, Lch/kingdoms/android/ui/TabMenu;->onClickBackButton()V

    goto/16 :goto_0

    .line 229
    :cond_2
    invoke-virtual {p0}, Lch/kingdoms/android/ui/TabMenu;->onClickBackButton()V

    goto/16 :goto_0

    .line 185
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x2738 -> :sswitch_6
    .end sparse-switch
.end method

.method abstract onClickBackButton()V
.end method

.method abstract onClickEquip()Landroid/view/View;
.end method

.method abstract onClickItem()Landroid/view/View;
.end method

.method abstract onClickQuest()Landroid/view/View;
.end method

.method abstract onClickSkill()Landroid/view/View;
.end method

.method abstract onClickStatus()Landroid/view/View;
.end method

.method abstract onClickSystem()Landroid/view/View;
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChLinearLayout;->onMeasure(II)V

    .line 143
    iget-object v0, p0, Lch/kingdoms/android/ui/TabMenu;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 144
    iget-object v0, p0, Lch/kingdoms/android/ui/TabMenu;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 145
    invoke-virtual {p0, p1, p2}, Lch/kingdoms/android/ui/TabMenu;->setMeasuredDimension(II)V

    .line 146
    return-void
.end method

.method public pushChecked()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lch/kingdoms/android/ui/TabMenu;->m_nextInnerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lch/kingdoms/android/ui/TabMenu;->onClickBackButton()V

    .line 304
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/TabMenu;->m_islockMenus:Z

    .line 305
    return-void

    .line 301
    :cond_0
    iget v0, p0, Lch/kingdoms/android/ui/TabMenu;->m_selectedViewId:I

    invoke-direct {p0, v0}, Lch/kingdoms/android/ui/TabMenu;->selectBtn(I)V

    .line 302
    invoke-virtual {p0}, Lch/kingdoms/android/ui/TabMenu;->changeInnerView()V

    goto :goto_0
.end method

.method public releaseRsources()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lch/android/api/ui/ChLinearLayout;->releaseRsources()V

    .line 168
    iget-object v0, p0, Lch/kingdoms/android/ui/TabMenu;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lch/kingdoms/android/ui/TabMenu;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 171
    :cond_0
    return-void
.end method

.method public setIsLockMenus(Z)V
    .locals 0
    .param p1, "_isLockMenus"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lch/kingdoms/android/ui/TabMenu;->m_islockMenus:Z

    .line 154
    return-void
.end method
