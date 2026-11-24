.class Lch/kingdoms/android/ui/NetworkUi$AuctionView;
.super Lch/android/api/ui/ChCustomIvenView;
.source "NetworkUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/NetworkUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuctionView"
.end annotation


# static fields
.field public static final MAIN_TYPE_ARMOR:I = 0x65

.field public static final MAIN_TYPE_RING:I = 0x66

.field public static final MAIN_TYPE_USE:I = 0x67

.field public static final MAIN_TYPE_WEAPON:I = 0x64

.field private static final NUM_ITEMS_PER_PAGE:I = 0x20

.field public static final SUB_TYPE_ARMOR:I = 0xd3

.field public static final SUB_TYPE_BOOTS:I = 0xd5

.field public static final SUB_TYPE_BOW:I = 0xca

.field public static final SUB_TYPE_CHAKRAM:I = 0xc9

.field public static final SUB_TYPE_GLOVES:I = 0xd4

.field public static final SUB_TYPE_HELMET:I = 0xd2

.field public static final SUB_TYPE_SWORD:I = 0xc8

.field public static final SUB_TYPE_WAND:I = 0xcb


# instance fields
.field private final ID_CUR_PAGE:I

.field private final ID_NEXT_BTN:I

.field private final ID_PREVIOUS_BTN:I

.field private final SORT_TYPE_CHEAP:I

.field private final SORT_TYPE_EXPENSIVE:I

.field private final SORT_TYPE_RECENTLY:I

.field private final TYPES:[B

.field private curPage:I

.field final curPageView:Lch/android/api/ui/ChTextView;

.field private curSortType:I

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lch/kingdoms/ndk/data/Inven$Item;",
            ">;"
        }
    .end annotation
.end field

.field private names:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lch/kingdoms/android/ui/NetworkUi;

.field private times:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lch/android/api/network/ChTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/NetworkUi;Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILjava/lang/String;)V
    .locals 24
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "di"    # Lch/android/api/util/DisplayInfo;
    .param p4, "mainType"    # I
    .param p5, "subType"    # I
    .param p6, "money"    # Ljava/lang/String;

    .prologue
    .line 1938
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    .line 1939
    const/16 v3, 0x20

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    .line 1940
    const/4 v8, 0x1

    const v9, 0x7f0200b7

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    invoke-direct/range {v3 .. v9}, Lch/android/api/ui/ChCustomIvenView;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1918
    const/16 v3, 0xc8

    move-object/from16 v0, p0

    iput v3, v0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->ID_PREVIOUS_BTN:I

    .line 1919
    const/16 v3, 0xc9

    move-object/from16 v0, p0

    iput v3, v0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->ID_NEXT_BTN:I

    .line 1920
    const/16 v3, 0xca

    move-object/from16 v0, p0

    iput v3, v0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->ID_CUR_PAGE:I

    .line 1922
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->SORT_TYPE_RECENTLY:I

    .line 1923
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->SORT_TYPE_CHEAP:I

    .line 1924
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->SORT_TYPE_EXPENSIVE:I

    .line 1942
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    .line 1943
    .local v14, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->getTypeFlags(II)[B

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->TYPES:[B

    .line 1945
    const/4 v3, 0x0

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1947
    const/16 v12, 0x64

    .line 1948
    .local v12, "ID_RECENTLY_BTN":I
    const/16 v10, 0x65

    .line 1949
    .local v10, "ID_CHEAP_BTN":I
    const/16 v11, 0x66

    .line 1951
    .local v11, "ID_EXPENSIVE_BTN":I
    new-instance v19, Lch/android/api/ui/ChTextSlimButton;

    const v3, 0x7f020205

    const v4, 0x7f020204

    const/16 v5, 0x34

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v0, v14, v3, v4, v5}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1952
    .local v19, "recentlyBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v3, 0x64

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1953
    new-instance v13, Lch/android/api/ui/ChTextSlimButton;

    const v3, 0x7f020205

    const v4, 0x7f020204

    const/16 v5, 0x35

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v13, v14, v3, v4, v5}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1954
    .local v13, "cheapBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v3, 0x65

    invoke-virtual {v13, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1955
    new-instance v15, Lch/android/api/ui/ChTextSlimButton;

    const v3, 0x7f020205

    const v4, 0x7f020204

    const/16 v5, 0x36

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v14, v3, v4, v5}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1956
    .local v15, "expensiveBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v3, 0x66

    invoke-virtual {v15, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1958
    new-instance v23, Lch/android/api/ui/ChLinearLayout;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 1960
    .local v23, "sortTypeLayout":Lch/android/api/ui/ChLinearLayout;
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1961
    .local v16, "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1962
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1965
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    .end local v16    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1966
    .restart local v16    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1967
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1970
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    .end local v16    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1971
    .restart local v16    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1972
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1975
    new-instance v21, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1976
    .local v21, "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xa

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1977
    const/16 v3, 0xe

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1978
    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x41500000    # 13.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v21

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1979
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1981
    new-instance v22, Lch/kingdoms/android/ui/NetworkUi$AuctionView$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lch/kingdoms/android/ui/NetworkUi$AuctionView$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)V

    .line 2001
    .local v22, "sortListner":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2002
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2003
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2006
    new-instance v18, Lch/android/api/ui/ChTextSlimButton;

    const v3, 0x7f020205

    const v4, 0x7f020204

    const v5, 0x7f05004e

    invoke-virtual {v14, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v14, v3, v4, v5}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 2007
    .local v18, "previousBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v3, 0xc8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 2008
    new-instance v17, Lch/android/api/ui/ChTextSlimButton;

    const v3, 0x7f020205

    const v4, 0x7f020204

    const v5, 0x7f05004d

    invoke-virtual {v14, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v14, v3, v4, v5}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 2009
    .local v17, "nextBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v3, 0xc9

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 2010
    new-instance v3, Lch/android/api/ui/ChTextView;

    invoke-direct {v3, v14}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->curPageView:Lch/android/api/ui/ChTextView;

    .line 2011
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->curPageView:Lch/android/api/ui/ChTextView;

    const/16 v4, 0xca

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChTextView;->setId(I)V

    .line 2012
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->curPageView:Lch/android/api/ui/ChTextView;

    move-object/from16 v0, p0

    iget v4, v0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->curPage:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2013
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->curPageView:Lch/android/api/ui/ChTextView;

    sget-object v4, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2014
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->curPageView:Lch/android/api/ui/ChTextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 2017
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2018
    .local v20, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x3

    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->getInvenId()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2019
    const/16 v3, 0xe

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2020
    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v20

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2021
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->curPageView:Lch/android/api/ui/ChTextView;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2024
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v20    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2025
    .restart local v20    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x3

    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->getInvenId()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2026
    const/4 v3, 0x0

    const/16 v4, 0xca

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2027
    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v20

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2028
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2031
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v20    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2032
    .restart local v20    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x3

    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->getInvenId()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2033
    const/4 v3, 0x1

    const/16 v4, 0xca

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2034
    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v20

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2035
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2037
    new-instance v3, Lch/kingdoms/android/ui/NetworkUi$AuctionView$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lch/kingdoms/android/ui/NetworkUi$AuctionView$2;-><init>(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2044
    new-instance v3, Lch/kingdoms/android/ui/NetworkUi$AuctionView$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lch/kingdoms/android/ui/NetworkUi$AuctionView$3;-><init>(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2052
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->curSortType:I

    .line 2053
    move-object/from16 v0, p0

    iget v3, v0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->curPage:I

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->requestItems(II)V

    .line 2054
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$AuctionView;I)V
    .locals 0

    .prologue
    .line 1930
    iput p1, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->curSortType:I

    return-void
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)I
    .locals 1

    .prologue
    .line 1929
    iget v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->curPage:I

    return v0
.end method

.method static synthetic access$10(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)Lch/kingdoms/android/ui/NetworkUi;
    .locals 1

    .prologue
    .line 1902
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/NetworkUi$AuctionView;II)V
    .locals 0

    .prologue
    .line 2056
    invoke-direct {p0, p1, p2}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->requestItems(II)V

    return-void
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)I
    .locals 1

    .prologue
    .line 1930
    iget v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->curSortType:I

    return v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/NetworkUi$AuctionView;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1932
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->items:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/NetworkUi$AuctionView;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1933
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->times:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$6(Lch/kingdoms/android/ui/NetworkUi$AuctionView;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1934
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->names:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$7(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1934
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->names:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1932
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1933
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->times:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getTypeFlags(II)[B
    .locals 6
    .param p1, "mainType"    # I
    .param p2, "subType"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2168
    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 2169
    .local v0, "types":[B
    packed-switch p1, :pswitch_data_0

    .line 2227
    :goto_0
    return-object v0

    .line 2171
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 2173
    :pswitch_1
    aput-byte v2, v0, v3

    .line 2174
    aput-byte v3, v0, v2

    .line 2175
    aput-byte v3, v0, v4

    goto :goto_0

    .line 2178
    :pswitch_2
    aput-byte v2, v0, v3

    .line 2179
    aput-byte v3, v0, v2

    .line 2180
    aput-byte v2, v0, v4

    goto :goto_0

    .line 2183
    :pswitch_3
    aput-byte v2, v0, v3

    .line 2184
    aput-byte v3, v0, v2

    .line 2185
    aput-byte v4, v0, v4

    goto :goto_0

    .line 2188
    :pswitch_4
    aput-byte v2, v0, v3

    .line 2189
    aput-byte v3, v0, v2

    .line 2190
    aput-byte v5, v0, v4

    goto :goto_0

    .line 2195
    :pswitch_5
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 2197
    :pswitch_6
    aput-byte v2, v0, v3

    .line 2198
    aput-byte v2, v0, v2

    .line 2199
    aput-byte v3, v0, v4

    goto :goto_0

    .line 2202
    :pswitch_7
    aput-byte v2, v0, v3

    .line 2203
    aput-byte v2, v0, v2

    .line 2204
    aput-byte v2, v0, v4

    goto :goto_0

    .line 2207
    :pswitch_8
    aput-byte v2, v0, v3

    .line 2208
    aput-byte v2, v0, v2

    .line 2209
    aput-byte v4, v0, v4

    goto :goto_0

    .line 2212
    :pswitch_9
    aput-byte v2, v0, v3

    .line 2213
    aput-byte v2, v0, v2

    .line 2214
    aput-byte v5, v0, v4

    goto :goto_0

    .line 2219
    :pswitch_a
    aput-byte v2, v0, v3

    .line 2220
    aput-byte v5, v0, v2

    goto :goto_0

    .line 2223
    :pswitch_b
    aput-byte v3, v0, v3

    goto :goto_0

    .line 2168
    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    .line 2169
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 2171
    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2195
    :pswitch_data_2
    .packed-switch 0xd2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private requestItems(II)V
    .locals 12
    .param p1, "page"    # I
    .param p2, "sortType"    # I

    .prologue
    const/16 v10, 0x20

    .line 2057
    if-eqz p1, :cond_0

    if-lez p1, :cond_1

    iget v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->curPage:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->curPage:I

    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->getItemCount()I

    move-result v0

    if-ne v0, v10, :cond_1

    .line 2058
    :cond_0
    iput p1, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->curPage:I

    .line 2059
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->curPageView:Lch/android/api/ui/ChTextView;

    iget v1, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->curPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2060
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v0

    new-instance v1, Lch/kingdoms/android/ui/NetworkUi$AuctionView$4;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/NetworkUi$AuctionView$4;-><init>(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)V

    .line 2089
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->TYPES:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->TYPES:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    iget-object v5, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->TYPES:[B

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    iget-object v6, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->TYPES:[B

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    const/4 v7, -0x1

    int-to-byte v8, p2

    mul-int/lit8 v9, p1, 0x20

    .line 2060
    invoke-virtual/range {v0 .. v10}, Lch/kingdoms/android/network/ChPacketFactory;->createAuctionSearchByType(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBBBBBIB)Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;

    move-result-object v11

    .line 2091
    .local v11, "sellingItemsPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v11, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 2095
    .end local v11    # "sellingItemsPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getInvenLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 2160
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2161
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2162
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2163
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x420c0000    # 35.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2164
    return-object v0
.end method

.method protected onBackButtonClick()V
    .locals 1

    .prologue
    .line 2151
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2152
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 2153
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$14(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 2155
    :cond_0
    return-void
.end method

.method protected onItemSelect(Landroid/view/View;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 2100
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2101
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    .line 2102
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f050096

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->names:Ljava/util/ArrayList;

    iget v3, p2, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2103
    const/16 v2, 0x45

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->times:Ljava/util/ArrayList;

    iget v3, p2, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/android/api/network/ChTime;

    invoke-virtual {v0}, Lch/android/api/network/ChTime;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2104
    const/16 v2, 0x52

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2104
    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;

    invoke-direct {v2, p0, p2}, Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;-><init>(Lch/kingdoms/android/ui/NetworkUi$AuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 2101
    invoke-static {v1, v0, v2}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 2138
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 2140
    :cond_0
    return-void
.end method

.method protected onMoneyClick(Lch/android/api/ui/ChTextView;)V
    .locals 0
    .param p1, "moneyView"    # Lch/android/api/ui/ChTextView;

    .prologue
    .line 2146
    return-void
.end method
