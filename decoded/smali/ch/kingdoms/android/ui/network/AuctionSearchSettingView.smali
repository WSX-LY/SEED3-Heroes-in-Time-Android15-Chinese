.class public Lch/kingdoms/android/ui/network/AuctionSearchSettingView;
.super Lch/android/api/ui/ChRelativeLayout;
.source "AuctionSearchSettingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;,
        Lch/kingdoms/android/ui/network/AuctionSearchSettingView$OnCategoryViewClickListener;
    }
.end annotation


# instance fields
.field private final ARMOR_CATEGORIES:[Ljava/lang/String;

.field private final MAIN_CATEGORIES:[Ljava/lang/String;

.field private final SORT_CATEGORIES:[Ljava/lang/String;

.field private final WEAPON_CATEGORIES:[Ljava/lang/String;

.field private final backBtn:Lch/android/api/ui/ChImageButton;

.field private final mainCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

.field private final okBtn:Lch/android/api/ui/ChImageButton;

.field private final sortCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

.field private final subCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x23

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0x24

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/16 v11, 0x25

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    .line 22
    const/16 v11, 0x26

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    iput-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->MAIN_CATEGORIES:[Ljava/lang/String;

    .line 23
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x28

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0x29

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/16 v11, 0x2a

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    .line 24
    const/16 v11, 0x2b

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    iput-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->WEAPON_CATEGORIES:[Ljava/lang/String;

    .line 25
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x2c

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0x2d

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/16 v11, 0x2e

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    .line 26
    const/16 v11, 0x2f

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    iput-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->ARMOR_CATEGORIES:[Ljava/lang/String;

    .line 27
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x34

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0x35

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/16 v11, 0x36

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    iput-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->SORT_CATEGORIES:[Ljava/lang/String;

    .line 39
    const v9, 0x7f02020f

    invoke-super {p0, v9}, Lch/android/api/ui/ChRelativeLayout;->setBackgroundResource(I)V

    .line 41
    const/16 v1, 0xc8

    .line 42
    .local v1, "ID_MAIN":I
    const/16 v3, 0xc9

    .line 43
    .local v3, "ID_SUB":I
    const/16 v2, 0xca

    .line 44
    .local v2, "ID_SORT":I
    new-instance v9, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x22

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\t\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->MAIN_CATEGORIES:[Ljava/lang/String;

    invoke-direct {v9, p0, p1, v10, v11}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;-><init>(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->mainCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    .line 45
    iget-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->mainCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    const/16 v10, 0xc8

    invoke-virtual {v9, v10}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->setId(I)V

    .line 46
    new-instance v9, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x27

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\t\t\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->WEAPON_CATEGORIES:[Ljava/lang/String;

    invoke-direct {v9, p0, p1, v10, v11}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;-><init>(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->subCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    .line 47
    iget-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->subCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    const/16 v10, 0xc9

    invoke-virtual {v9, v10}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->setId(I)V

    .line 48
    new-instance v9, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x31

    invoke-static {v11}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\t\t\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->SORT_CATEGORIES:[Ljava/lang/String;

    invoke-direct {v9, p0, p1, v10, v11}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;-><init>(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->sortCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    .line 49
    iget-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->sortCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    const/16 v10, 0xca

    invoke-virtual {v9, v10}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->setId(I)V

    .line 50
    new-instance v7, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$1;

    invoke-direct {v7, p0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$1;-><init>(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;)V

    .line 75
    .local v7, "ocvcl":Lch/kingdoms/android/ui/network/AuctionSearchSettingView$OnCategoryViewClickListener;
    iget-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->mainCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-virtual {v9, v7}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->setOnCategoryViewClickListener(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$OnCategoryViewClickListener;)V

    .line 76
    iget-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->subCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-virtual {v9, v7}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->setOnCategoryViewClickListener(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$OnCategoryViewClickListener;)V

    .line 77
    iget-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->sortCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-virtual {v9, v7}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->setOnCategoryViewClickListener(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$OnCategoryViewClickListener;)V

    .line 79
    const/16 v0, 0x64

    .line 80
    .local v0, "ID_CATEGORIES":I
    new-instance v5, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v5, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 81
    .local v5, "ll":Lch/android/api/ui/ChLinearLayout;
    const/16 v9, 0x64

    invoke-virtual {v5, v9}, Lch/android/api/ui/ChLinearLayout;->setId(I)V

    .line 82
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 83
    const v9, 0x7f020071

    invoke-virtual {v5, v9}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 84
    invoke-static {}, Lch/android/api/util/DisplayInfo;->getInstance()Lch/android/api/util/DisplayInfo;

    move-result-object v4

    .line 86
    .local v4, "di":Lch/android/api/util/DisplayInfo;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v9, v4, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v10, 0x41400000    # 12.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 89
    iget-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->mainCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-virtual {v5, v9, v6}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    .restart local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v9, v4, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v10, 0x41400000    # 12.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 95
    iget-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->subCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-virtual {v5, v9, v6}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    .restart local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v9, v4, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v10, 0x41400000    # 12.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 101
    iget-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->sortCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-virtual {v5, v9, v6}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 105
    .local v8, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 106
    invoke-virtual {p0, v5, v8}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v9, Lch/android/api/ui/ChImageButton;

    const v10, 0x7f020235

    const v11, 0x7f020234

    invoke-direct {v9, p1, v10, v11}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    iput-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->okBtn:Lch/android/api/ui/ChImageButton;

    .line 110
    iget-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->okBtn:Lch/android/api/ui/ChImageButton;

    const/16 v10, 0x2742

    invoke-virtual {v9, v10}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 112
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v8    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 114
    .restart local v8    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 115
    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 116
    iget v9, v4, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v10, 0x43320000    # 178.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 117
    iget-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->okBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {p0, v9, v8}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v9, Lch/android/api/ui/ChImageButton;

    const v10, 0x7f02007a

    const v11, 0x7f02007a

    invoke-direct {v9, p1, v10, v11}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    iput-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->backBtn:Lch/android/api/ui/ChImageButton;

    .line 121
    iget-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->backBtn:Lch/android/api/ui/ChImageButton;

    const/16 v10, 0x2744

    invoke-virtual {v9, v10}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 123
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v8    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 124
    .restart local v8    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 126
    iget v9, v4, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v10, 0x41a00000    # 20.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 127
    iget-object v9, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->backBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {p0, v9, v8}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;)Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->subCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->WEAPON_CATEGORIES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->ARMOR_CATEGORIES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;)Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->mainCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    return-object v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;)Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->sortCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    return-object v0
.end method


# virtual methods
.method public getMainType()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->mainCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->getSelectedCategoryIndex()I

    move-result v0

    return v0
.end method

.method public getSortType()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->sortCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->getSelectedCategoryIndex()I

    move-result v0

    return v0
.end method

.method public getSubType()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->subCategoryView:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->getSelectedCategoryIndex()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v2, 0x7f02020f

    .line 146
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChRelativeLayout;->onMeasure(II)V

    .line 147
    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    .line 148
    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    .line 147
    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChRelativeLayout;->setMeasuredDimension(II)V

    .line 149
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lch/android/api/ui/ChRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->okBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->backBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void
.end method
