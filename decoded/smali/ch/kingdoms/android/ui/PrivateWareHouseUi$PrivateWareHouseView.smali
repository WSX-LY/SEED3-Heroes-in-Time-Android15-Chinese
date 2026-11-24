.class Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;
.super Lch/android/api/ui/ChRelativeLayout;
.source "PrivateWareHouseUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/PrivateWareHouseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateWareHouseView"
.end annotation


# instance fields
.field private final INVEN_INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView;

.field private final MONEY_VIEW:Lch/android/api/ui/ChTextView;

.field final synthetic this$0:Lch/kingdoms/android/ui/PrivateWareHouseUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/PrivateWareHouseUi;Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "_title"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->this$0:Lch/kingdoms/android/ui/PrivateWareHouseUi;

    .line 73
    invoke-direct {p0, p2}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 75
    const v7, 0x7f0202bb

    invoke-virtual {p0, v7}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->setBackgroundResource(I)V

    .line 77
    new-instance v3, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v3, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    .local v3, "lLayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 81
    new-instance v6, Lch/android/api/ui/ChTextView;

    invoke-direct {v6, p2}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    .line 82
    .local v6, "titleView":Lch/android/api/ui/ChTextView;
    invoke-virtual {v6, p3}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 84
    sget-object v7, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    const/16 v7, -0x100

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 86
    const v7, 0x7f0202bd

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChTextView;->setBackgroundResource(I)V

    .line 88
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v4, "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v6, v4}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v7, Lch/android/api/ui/ChInvenAndInfoView;

    invoke-static {p1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$0(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v8

    invoke-static {p1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$1(Lch/kingdoms/android/ui/PrivateWareHouseUi;)I

    move-result v9

    invoke-direct {v7, p2, v8, v9, p0}, Lch/android/api/ui/ChInvenAndInfoView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;ILandroid/view/View$OnClickListener;)V

    iput-object v7, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->INVEN_INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView;

    .line 93
    iget-object v7, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->INVEN_INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView;

    const v8, 0x7f0202bc

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChInvenAndInfoView;->setBackgroundResource(I)V

    .line 94
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 95
    .end local v4    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$2(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0202bc

    invoke-static {v7, v8}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v7

    invoke-static {p1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$2(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0202bc

    invoke-static {v8, v9}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v8

    .line 94
    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    .restart local v4    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->INVEN_INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView;

    invoke-virtual {v3, v7, v4}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v7, Lch/android/api/ui/ChTextView;

    invoke-direct {v7, p2}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    .line 100
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v1

    .line 101
    .local v1, "heroStatus":Lch/kingdoms/ndk/data/HeroStatus;
    iget-object v8, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    invoke-static {p1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$1(Lch/kingdoms/android/ui/PrivateWareHouseUi;)I

    move-result v7

    const/4 v9, 0x4

    if-ne v7, v9, :cond_0

    .line 102
    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 101
    :goto_0
    invoke-virtual {v8, v7}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v7, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 104
    iget-object v7, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    sget-object v8, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    iget-object v7, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 106
    iget-object v7, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    const v8, 0x7f02020a

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setBackgroundResource(I)V

    .line 107
    iget-object v8, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    invoke-static {p1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$1(Lch/kingdoms/android/ui/PrivateWareHouseUi;)I

    move-result v7

    const/4 v9, 0x4

    if-ne v7, v9, :cond_1

    const/16 v7, 0x4d2

    :goto_1
    invoke-virtual {v8, v7}, Lch/android/api/ui/ChTextView;->setId(I)V

    .line 108
    iget-object v7, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v7, p0}, Lch/android/api/ui/ChTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .end local v4    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 111
    .restart local v4    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, 0x1

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 112
    iget-object v7, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v3, v7, v4}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v5, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    invoke-virtual {p0, v3, v5}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v0, Lch/android/api/ui/ChBackAnimationButton;

    invoke-direct {v0, p2}, Lch/android/api/ui/ChBackAnimationButton;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, "backBtn":Lch/android/api/ui/ChBackAnimationButton;
    new-instance v7, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$1;

    invoke-direct {v7, p0}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$1;-><init>(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)V

    invoke-virtual {v0, v7}, Lch/android/api/ui/ChBackAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 138
    .restart local v5    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 139
    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 141
    invoke-virtual {p0, v0, v5}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    invoke-static {p1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$1(Lch/kingdoms/android/ui/PrivateWareHouseUi;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 145
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v7

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    .line 146
    .local v2, "items":[Lch/kingdoms/ndk/data/Inven$Item;
    iget-object v7, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->INVEN_INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetEquipItems()[S

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lch/android/api/ui/ChInvenAndInfoView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 152
    :goto_2
    return-void

    .line 102
    .end local v0    # "backBtn":Lch/android/api/ui/ChBackAnimationButton;
    .end local v2    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    .end local v5    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetWareHouseMoney()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 107
    :cond_1
    const/16 v7, 0x4d3

    goto :goto_1

    .line 148
    .restart local v0    # "backBtn":Lch/android/api/ui/ChBackAnimationButton;
    .restart local v5    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeWareHouseInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v7

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    .line 149
    .restart local v2    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    iget-object v7, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->INVEN_INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v2}, Lch/android/api/ui/ChInvenAndInfoView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_2
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;ZLch/kingdoms/ndk/data/Inven$Item;I)V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->popUpConfirm(ZLch/kingdoms/ndk/data/Inven$Item;I)V

    return-void
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/android/api/ui/ChTextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/android/api/ui/ChInvenAndInfoView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->INVEN_INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView;

    return-object v0
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/kingdoms/android/ui/PrivateWareHouseUi;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->this$0:Lch/kingdoms/android/ui/PrivateWareHouseUi;

    return-object v0
.end method

.method private popUpConfirm(ZLch/kingdoms/ndk/data/Inven$Item;I)V
    .locals 3
    .param p1, "isDeposit"    # Z
    .param p2, "item"    # Lch/kingdoms/ndk/data/Inven$Item;
    .param p3, "cnt"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->this$0:Lch/kingdoms/android/ui/PrivateWareHouseUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$5(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Landroid/app/Activity;

    move-result-object v1

    .line 347
    if-eqz p1, :cond_0

    const/16 v0, 0x66

    invoke-static {v0}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    :goto_0
    new-instance v2, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;

    invoke-direct {v2, p0, p1, p2, p3}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;-><init>(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;ZLch/kingdoms/ndk/data/Inven$Item;I)V

    .line 346
    invoke-static {v1, v0, v2}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 384
    return-void

    .line 347
    :cond_0
    const/16 v0, 0x6a

    invoke-static {v0}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private processMoneyBusiness(ZLch/kingdoms/ndk/data/Inven$Item;)V
    .locals 8
    .param p1, "_isDeposit"    # Z
    .param p2, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/4 v1, 0x1

    .line 275
    if-nez p1, :cond_0

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetWareHouseMoney()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->this$0:Lch/kingdoms/android/ui/PrivateWareHouseUi;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$6(Lch/kingdoms/android/ui/PrivateWareHouseUi;Z)V

    .line 279
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->this$0:Lch/kingdoms/android/ui/PrivateWareHouseUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$5(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->this$0:Lch/kingdoms/android/ui/PrivateWareHouseUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$0(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    .line 280
    if-eqz p1, :cond_1

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v2

    .line 281
    :goto_1
    const/16 v3, 0xe

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, p2

    .line 279
    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpWareHouseView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v7

    .line 282
    .local v7, "moneyPopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    new-instance v0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;

    invoke-direct {v0, p0, p1, v7, p2}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;-><init>(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;ZLch/android/api/ui/ChPopUpTradeItemView;Lch/kingdoms/ndk/data/Inven$Item;)V

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 280
    .end local v7    # "moneyPopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    :cond_1
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetWareHouseMoney()I

    move-result v2

    goto :goto_1
.end method

.method private processWareHouse(ZLch/kingdoms/ndk/data/Inven$Item;)Z
    .locals 9
    .param p1, "_isDeposit"    # Z
    .param p2, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/16 v2, 0x68

    const/4 v8, 0x1

    .line 196
    if-eqz p2, :cond_0

    .line 197
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->this$0:Lch/kingdoms/android/ui/PrivateWareHouseUi;

    invoke-static {v0, v8}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$6(Lch/kingdoms/android/ui/PrivateWareHouseUi;Z)V

    .line 198
    iget-boolean v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->equiped:Z

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->this$0:Lch/kingdoms/android/ui/PrivateWareHouseUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$5(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$2;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$2;-><init>(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    :cond_0
    :goto_0
    move v0, v8

    .line 271
    :goto_1
    return v0

    .line 212
    :cond_1
    if-eqz p1, :cond_4

    iget-boolean v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->equiped:Z

    if-nez v0, :cond_3

    iget-boolean v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    if-eqz v0, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 213
    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x11d

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x11e

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x11c

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x10c

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x105

    if-eq v0, v1, :cond_3

    .line 214
    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x104

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x115

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x114

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x107

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x106

    if-eq v0, v1, :cond_3

    .line 215
    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x10a

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x109

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x113

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x10b

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x108

    if-eq v0, v1, :cond_3

    .line 216
    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x111

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x112

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x110

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x10f

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_3

    .line 217
    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x10d

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_3

    .line 218
    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x127

    if-eq v0, v1, :cond_3

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0xf7

    if-lt v0, v1, :cond_2

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0xfa

    if-le v0, v1, :cond_3

    .line 220
    :cond_2
    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0xa1

    if-lt v0, v1, :cond_4

    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0xa4

    if-gt v0, v1, :cond_4

    .line 221
    :cond_3
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->this$0:Lch/kingdoms/android/ui/PrivateWareHouseUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$5(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$3;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$3;-><init>(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 233
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 236
    :cond_4
    iget v0, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v0, v8, :cond_5

    .line 237
    invoke-direct {p0, p1, p2, v8}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->popUpConfirm(ZLch/kingdoms/ndk/data/Inven$Item;I)V

    goto/16 :goto_0

    .line 239
    :cond_5
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->this$0:Lch/kingdoms/android/ui/PrivateWareHouseUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$5(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->this$0:Lch/kingdoms/android/ui/PrivateWareHouseUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$0(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    .line 240
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v2

    .line 241
    if-eqz p1, :cond_6

    const/16 v3, 0xc

    .line 243
    :goto_2
    if-eqz p1, :cond_7

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    .line 244
    :goto_3
    const/4 v6, 0x0

    move-object v4, p2

    .line 239
    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpWareHouseView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v7

    .line 246
    .local v7, "wareHousPopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    new-instance v0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$4;

    invoke-direct {v0, p0, p1, p2, v7}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$4;-><init>(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;ZLch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 241
    .end local v7    # "wareHousPopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    :cond_6
    const/16 v3, 0xd

    goto :goto_2

    .line 243
    :cond_7
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeWareHouseInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->this$0:Lch/kingdoms/android/ui/PrivateWareHouseUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$3(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 168
    .local v0, "id":I
    const/16 v2, 0x4d2

    if-ne v0, v2, :cond_1

    .line 169
    new-instance v2, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v2}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/Inven;->getNullItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    .line 170
    .local v1, "item":Lch/kingdoms/ndk/data/Inven$Item;
    invoke-direct {p0, v4, v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->processMoneyBusiness(ZLch/kingdoms/ndk/data/Inven$Item;)V

    .line 187
    .end local v0    # "id":I
    .end local v1    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    :cond_0
    :goto_0
    return-void

    .line 171
    .restart local v0    # "id":I
    :cond_1
    const/16 v2, 0x4d3

    if-ne v0, v2, :cond_2

    .line 172
    new-instance v2, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v2}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/Inven;->getNullItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    .line 173
    .restart local v1    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    invoke-direct {p0, v3, v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->processMoneyBusiness(ZLch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 175
    .end local v1    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    :cond_2
    iget-object v2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->this$0:Lch/kingdoms/android/ui/PrivateWareHouseUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$1(Lch/kingdoms/android/ui/PrivateWareHouseUi;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 177
    :pswitch_0
    iget-object v2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->INVEN_INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView;

    invoke-virtual {v2}, Lch/android/api/ui/ChInvenAndInfoView;->getSelectedItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    .line 178
    .restart local v1    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    invoke-direct {p0, v4, v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->processWareHouse(ZLch/kingdoms/ndk/data/Inven$Item;)Z

    goto :goto_0

    .line 181
    .end local v1    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    :pswitch_1
    iget-object v2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->INVEN_INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView;

    invoke-virtual {v2}, Lch/android/api/ui/ChInvenAndInfoView;->getSelectedItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    .line 182
    .restart local v1    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    invoke-direct {p0, v3, v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->processWareHouse(ZLch/kingdoms/ndk/data/Inven$Item;)Z

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v2, 0x7f0202bb

    .line 157
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChRelativeLayout;->onMeasure(II)V

    .line 158
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->this$0:Lch/kingdoms/android/ui/PrivateWareHouseUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$2(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    .line 159
    iget-object v1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->this$0:Lch/kingdoms/android/ui/PrivateWareHouseUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$2(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    .line 158
    invoke-virtual {p0, v0, v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->setMeasuredDimension(II)V

    .line 160
    return-void
.end method
