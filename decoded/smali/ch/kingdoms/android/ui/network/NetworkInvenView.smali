.class Lch/kingdoms/android/ui/network/NetworkInvenView;
.super Lch/android/api/ui/ChCustomIvenView;
.source "NetworkInvenView.java"

# interfaces
.implements Lch/kingdoms/android/ui/network/ProcessablaResultPacket;


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

.field private final PHONE_NUMBER:Ljava/lang/String;

.field private final UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

.field private gitfMoney:I

.field private withdrawMoney:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/network/NewNetworkUi;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V
    .locals 7
    .param p1, "money"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "di"    # Lch/android/api/util/DisplayInfo;
    .param p4, "ui"    # Lch/kingdoms/android/ui/network/NewNetworkUi;
    .param p5, "packetFac"    # Lch/kingdoms/android/network/ChPacketFactory;
    .param p6, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 41
    const/16 v0, 0xc

    invoke-static {v0}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    const v6, 0x7f0202bb

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChCustomIvenView;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Ljava/lang/String;II)V

    .line 43
    iput-object p2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->ACTIVITY:Landroid/app/Activity;

    .line 44
    iput-object p3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->DI:Lch/android/api/util/DisplayInfo;

    .line 45
    iput-object p4, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    .line 46
    iput-object p5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    .line 47
    iput-object p6, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->PHONE_NUMBER:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->updateNetworkInven()V

    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 51
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/network/NetworkInvenView;->popUpWithdraw(Lch/kingdoms/ndk/data/Inven$Item;)V

    return-void
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/network/NetworkInvenView;->popUpGiftItem(Lch/kingdoms/ndk/data/Inven$Item;)V

    return-void
.end method

.method static synthetic access$10(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/android/api/ui/ChTextView;I)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0, p1, p2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->popUpGiftMoney(Lch/android/api/ui/ChTextView;I)V

    return-void
.end method

.method static synthetic access$11(Lch/kingdoms/android/ui/network/NetworkInvenView;I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->withdrawMoney:I

    return-void
.end method

.method static synthetic access$12(Lch/kingdoms/android/ui/network/NetworkInvenView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->withdrawMoney:I

    return v0
.end method

.method static synthetic access$13(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/android/api/ui/ChTextView;I)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1, p2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->popUpMoneyMenu(Lch/android/api/ui/ChTextView;I)V

    return-void
.end method

.method static synthetic access$14(Lch/kingdoms/android/ui/network/NetworkInvenView;I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->gitfMoney:I

    return-void
.end method

.method static synthetic access$15(Lch/kingdoms/android/ui/network/NetworkInvenView;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->gitfMoney:I

    return v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/network/NetworkInvenView;->popUpRegistAuction(Lch/kingdoms/ndk/data/Inven$Item;)V

    return-void
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/network/NetworkInvenView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->ACTIVITY:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/network/NetworkInvenView;)Lch/kingdoms/android/ui/network/NewNetworkUi;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    return-object v0
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/network/NetworkInvenView;)Lch/kingdoms/android/network/ChPacketFactory;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    return-object v0
.end method

.method static synthetic access$6(Lch/kingdoms/android/ui/network/NetworkInvenView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->PHONE_NUMBER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/network/NetworkInvenView;->popUpSelectMenu(Lch/kingdoms/ndk/data/Inven$Item;)V

    return-void
.end method

.method static synthetic access$8(Lch/kingdoms/android/ui/network/NetworkInvenView;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$9(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/android/api/ui/ChTextView;I)V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->popUpWithdrawMoney(Lch/android/api/ui/ChTextView;I)V

    return-void
.end method

.method private popUpGiftItem(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 8
    .param p1, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 166
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->ACTIVITY:Landroid/app/Activity;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->DI:Lch/android/api/util/DisplayInfo;

    const/4 v2, 0x0

    const/16 v3, 0xd

    .line 167
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, p1

    .line 166
    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v7

    .line 168
    .local v7, "tradePopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 169
    new-instance v0, Lch/kingdoms/android/ui/network/NetworkInvenView$4;

    invoke-direct {v0, p0, p1, v7}, Lch/kingdoms/android/ui/network/NetworkInvenView$4;-><init>(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    return-void
.end method

.method private popUpGiftMoney(Lch/android/api/ui/ChTextView;I)V
    .locals 8
    .param p1, "moneyView"    # Lch/android/api/ui/ChTextView;
    .param p2, "money"    # I

    .prologue
    .line 398
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->ACTIVITY:Landroid/app/Activity;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->DI:Lch/android/api/util/DisplayInfo;

    const/16 v3, 0xe

    .line 399
    new-instance v2, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v2}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/Inven;->getNullItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v4

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    const/4 v6, 0x0

    move v2, p2

    .line 398
    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v7

    .line 400
    .local v7, "tradePopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 401
    new-instance v0, Lch/kingdoms/android/ui/network/NetworkInvenView$9;

    invoke-direct {v0, p0, p1, p2, v7}, Lch/kingdoms/android/ui/network/NetworkInvenView$9;-><init>(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/android/api/ui/ChTextView;ILch/android/api/ui/ChPopUpTradeItemView;)V

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    return-void
.end method

.method private popUpMoneyMenu(Lch/android/api/ui/ChTextView;I)V
    .locals 13
    .param p1, "moneyView"    # Lch/android/api/ui/ChTextView;
    .param p2, "money"    # I

    .prologue
    .line 319
    const/16 v8, 0x64

    .line 320
    .local v8, "ID_WITHDRAW":I
    const/16 v7, 0x65

    .line 321
    .local v7, "ID_GIFT":I
    new-instance v12, Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020205

    const v3, 0x7f020204

    .line 322
    const/16 v4, 0x13

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v4

    .line 321
    invoke-direct {v12, v1, v2, v3, v4}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 324
    .local v12, "withdrawBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v1, 0x64

    invoke-virtual {v12, v1}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 325
    new-instance v10, Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020205

    const v3, 0x7f020204

    .line 326
    const/16 v4, 0xf

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-direct {v10, v1, v2, v3, v4}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 327
    .local v10, "giftBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v1, 0x65

    invoke-virtual {v10, v1}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 328
    new-instance v9, Lch/kingdoms/android/ui/network/NetworkInvenView$6;

    invoke-direct {v9, p0, p1, p2}, Lch/kingdoms/android/ui/network/NetworkInvenView$6;-><init>(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/android/api/ui/ChTextView;I)V

    .line 344
    .local v9, "btnOnClickListener":Landroid/view/View$OnClickListener;
    const/4 v1, 0x2

    new-array v5, v1, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object v12, v5, v1

    const/4 v1, 0x1

    aput-object v10, v5, v1

    .line 345
    .local v5, "views":[Landroid/view/View;
    array-length v2, v5

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 349
    new-instance v0, Lch/android/api/ui/ChPopUpMenuView;

    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->DI:Lch/android/api/util/DisplayInfo;

    const/4 v3, 0x0

    const v4, 0x7f020248

    new-instance v6, Lch/kingdoms/android/ui/network/NetworkInvenView$7;

    invoke-direct {v6, p0}, Lch/kingdoms/android/ui/network/NetworkInvenView$7;-><init>(Lch/kingdoms/android/ui/network/NetworkInvenView;)V

    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 363
    .local v0, "popUpMenu":Lch/android/api/ui/ChPopUpMenuView;
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 364
    const/4 v1, 0x1

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 365
    return-void

    .line 345
    .end local v0    # "popUpMenu":Lch/android/api/ui/ChPopUpMenuView;
    :cond_0
    aget-object v11, v5, v1

    .line 346
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private popUpRegistAuction(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 8
    .param p1, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 236
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->ACTIVITY:Landroid/app/Activity;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->DI:Lch/android/api/util/DisplayInfo;

    const/4 v2, 0x0

    const/16 v3, 0xb

    .line 237
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, p1

    .line 236
    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v7

    .line 238
    .local v7, "quantityView":Lch/android/api/ui/ChPopUpTradeItemView;
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 239
    new-instance v0, Lch/kingdoms/android/ui/network/NetworkInvenView$5;

    invoke-direct {v0, p0, p1, v7}, Lch/kingdoms/android/ui/network/NetworkInvenView$5;-><init>(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    return-void
.end method

.method private popUpSelectMenu(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 17
    .param p1, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 73
    const/16 v11, 0x64

    .line 74
    .local v11, "ID_WITHDRAW":I
    const/16 v9, 0x65

    .line 75
    .local v9, "ID_GIFT":I
    const/16 v10, 0x66

    .line 76
    .local v10, "ID_SELL_REGISTER":I
    new-instance v16, Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020205

    const v5, 0x7f020204

    .line 77
    const/16 v6, 0x13

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    .line 76
    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 78
    .local v16, "withdrawBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v3, 0x64

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 79
    new-instance v13, Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020205

    const v5, 0x7f020204

    .line 80
    const/16 v6, 0xf

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    .line 79
    invoke-direct {v13, v3, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 81
    .local v13, "giftBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v3, 0x65

    invoke-virtual {v13, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 82
    new-instance v14, Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020205

    const v5, 0x7f020204

    .line 83
    const/16 v6, 0xe

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    .line 82
    invoke-direct {v14, v3, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 84
    .local v14, "registerBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v3, 0x66

    invoke-virtual {v14, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 85
    new-instance v12, Lch/kingdoms/android/ui/network/NetworkInvenView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lch/kingdoms/android/ui/network/NetworkInvenView$1;-><init>(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 105
    .local v12, "btnOnClickListener":Landroid/view/View$OnClickListener;
    const/4 v3, 0x3

    new-array v7, v3, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v16, v7, v3

    const/4 v3, 0x1

    aput-object v13, v7, v3

    const/4 v3, 0x2

    aput-object v14, v7, v3

    .line 106
    .local v7, "views":[Landroid/view/View;
    array-length v4, v7

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 110
    new-instance v2, Lch/android/api/ui/ChPopUpMenuView;

    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/network/NetworkInvenView;->DI:Lch/android/api/util/DisplayInfo;

    const/4 v5, 0x0

    const v6, 0x7f020244

    new-instance v8, Lch/kingdoms/android/ui/network/NetworkInvenView$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lch/kingdoms/android/ui/network/NetworkInvenView$2;-><init>(Lch/kingdoms/android/ui/network/NetworkInvenView;)V

    invoke-direct/range {v2 .. v8}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 124
    .local v2, "popUpMenu":Lch/android/api/ui/ChPopUpMenuView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/network/NetworkInvenView;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v3, v2}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 125
    const/4 v3, 0x1

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 126
    return-void

    .line 106
    .end local v2    # "popUpMenu":Lch/android/api/ui/ChPopUpMenuView;
    :cond_0
    aget-object v15, v7, v3

    .line 107
    .local v15, "view":Landroid/view/View;
    invoke-virtual {v15, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private popUpWithdraw(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 8
    .param p1, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/4 v5, 0x0

    .line 129
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->ACTIVITY:Landroid/app/Activity;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->DI:Lch/android/api/util/DisplayInfo;

    const/4 v2, 0x0

    const/16 v3, 0xc

    move-object v4, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v7

    .line 131
    .local v7, "tradePopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 132
    new-instance v0, Lch/kingdoms/android/ui/network/NetworkInvenView$3;

    invoke-direct {v0, p0, p1, v7}, Lch/kingdoms/android/ui/network/NetworkInvenView$3;-><init>(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method

.method private popUpWithdrawMoney(Lch/android/api/ui/ChTextView;I)V
    .locals 8
    .param p1, "moneyView"    # Lch/android/api/ui/ChTextView;
    .param p2, "money"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->ACTIVITY:Landroid/app/Activity;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->DI:Lch/android/api/util/DisplayInfo;

    const/16 v3, 0xe

    .line 369
    new-instance v2, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v2}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/Inven;->getNullItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v4

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    const/4 v6, 0x0

    move v2, p2

    .line 368
    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v7

    .line 370
    .local v7, "tradePopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 371
    new-instance v0, Lch/kingdoms/android/ui/network/NetworkInvenView$8;

    invoke-direct {v0, p0, v7, p1, p2}, Lch/kingdoms/android/ui/network/NetworkInvenView$8;-><init>(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/android/api/ui/ChPopUpTradeItemView;Lch/android/api/ui/ChTextView;I)V

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    return-void
.end method

.method private updateNetworkInven()V
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 55
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4a53

    iput v1, v0, Landroid/os/Message;->what:I

    .line 56
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {v1, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected getInvenLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 481
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 482
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 483
    return-object v0
.end method

.method protected onBackButtonClick()V
    .locals 1

    .prologue
    .line 472
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 474
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpItemManageMenu()V

    .line 476
    :cond_0
    return-void
.end method

.method protected onItemSelect(Landroid/view/View;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 63
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :pswitch_0
    invoke-direct {p0, p2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->popUpSelectMenu(Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x2753
        :pswitch_0
    .end packed-switch
.end method

.method protected onMoneyClick(Lch/android/api/ui/ChTextView;)V
    .locals 2
    .param p1, "moneyView"    # Lch/android/api/ui/ChTextView;

    .prologue
    .line 312
    invoke-virtual {p1}, Lch/android/api/ui/ChTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 313
    .local v0, "money":I
    if-lez v0, :cond_0

    .line 314
    invoke-direct {p0, p1, v0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->popUpMoneyMenu(Lch/android/api/ui/ChTextView;I)V

    .line 316
    :cond_0
    return-void
.end method

.method public processResultPacketOnUi(ILch/android/api/network/ChResultPacket;)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    const/16 v7, 0x5b

    const/16 v6, 0x14

    .line 489
    packed-switch p1, :pswitch_data_0

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 491
    :pswitch_0
    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getItemCount()I

    move-result v5

    new-array v3, v5, [Lch/kingdoms/ndk/data/Inven$Item;

    .line 492
    .local v3, "items":[Lch/kingdoms/ndk/data/Inven$Item;
    new-instance v2, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v2}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    .line 493
    .local v2, "inven":Lch/kingdoms/ndk/data/Inven;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v4, v3

    .local v4, "size":I
    :goto_1
    if-lt v1, v4, :cond_1

    .line 496
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3}, Lch/kingdoms/android/ui/network/NetworkInvenView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 497
    if-eqz v3, :cond_0

    array-length v5, v3

    if-lez v5, :cond_0

    .line 498
    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getAllItemdatas()[B

    move-result-object v5

    invoke-static {v5}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeNP_setGetNetItem([B)V

    goto :goto_0

    .line 494
    :cond_1
    invoke-virtual {p2, v1}, Lch/android/api/network/ChResultPacket;->getItemData(I)Lch/android/api/network/ChNetworkItemData;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Lch/kingdoms/ndk/data/Inven;->getItem(Lch/android/api/network/ChNetworkItemData;I)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    aput-object v5, v3, v1

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 502
    .end local v1    # "i":I
    .end local v2    # "inven":Lch/kingdoms/ndk/data/Inven;
    .end local v3    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    .end local v4    # "size":I
    :pswitch_1
    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 519
    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v6

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto :goto_0

    .line 504
    :sswitch_0
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->updateNetworkInven()V

    .line 505
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    goto :goto_0

    .line 508
    :sswitch_1
    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 509
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->updateNetworkInven()V

    .line 510
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    goto :goto_0

    .line 513
    :sswitch_2
    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->ACTIVITY:Landroid/app/Activity;

    const/16 v6, 0x53

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :sswitch_3
    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->ACTIVITY:Landroid/app/Activity;

    const-string v6, "RESULT_NO_EQUAL_ITEM"

    invoke-static {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 524
    :pswitch_2
    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 534
    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v6

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto :goto_0

    .line 526
    :pswitch_3
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    .line 527
    .local v0, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v5

    iget v6, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->withdrawMoney:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lch/kingdoms/ndk/data/HeroStatus;->setMoney(I)V

    .line 528
    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 530
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    .line 531
    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->getMoney()I

    move-result v5

    iget v6, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->withdrawMoney:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lch/kingdoms/android/ui/network/NetworkInvenView;->setMoney(I)V

    goto/16 :goto_0

    .line 539
    .end local v0    # "hero":Lch/kingdoms/ndk/data/HeroStatus;
    :pswitch_4
    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    .line 549
    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v6

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto/16 :goto_0

    .line 541
    :sswitch_4
    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 542
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->updateNetworkInven()V

    goto/16 :goto_0

    .line 545
    :sswitch_5
    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 546
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->updateNetworkInven()V

    goto/16 :goto_0

    .line 554
    :pswitch_5
    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    .line 560
    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v6

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto/16 :goto_0

    .line 556
    :pswitch_6
    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->getMoney()I

    move-result v5

    iget v6, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->gitfMoney:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lch/kingdoms/android/ui/network/NetworkInvenView;->setMoney(I)V

    goto/16 :goto_0

    .line 565
    :pswitch_7
    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v5

    sparse-switch v5, :sswitch_data_2

    .line 577
    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v6

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto/16 :goto_0

    .line 568
    :sswitch_6
    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->ACTIVITY:Landroid/app/Activity;

    const/16 v6, 0x3f

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 569
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->updateNetworkInven()V

    goto/16 :goto_0

    .line 572
    :sswitch_7
    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 573
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->updateNetworkInven()V

    goto/16 :goto_0

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x4a4e
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
    .end packed-switch

    .line 502
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x271e -> :sswitch_1
        0x2720 -> :sswitch_3
        0x2721 -> :sswitch_2
    .end sparse-switch

    .line 524
    :pswitch_data_1
    .packed-switch 0x2710
        :pswitch_3
    .end packed-switch

    .line 539
    :sswitch_data_1
    .sparse-switch
        0x2710 -> :sswitch_4
        0x271e -> :sswitch_5
    .end sparse-switch

    .line 554
    :pswitch_data_2
    .packed-switch 0x2710
        :pswitch_6
    .end packed-switch

    .line 565
    :sswitch_data_2
    .sparse-switch
        0x2710 -> :sswitch_6
        0x271e -> :sswitch_7
    .end sparse-switch
.end method
