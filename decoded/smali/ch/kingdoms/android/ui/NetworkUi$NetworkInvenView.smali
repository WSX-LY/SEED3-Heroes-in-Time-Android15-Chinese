.class Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;
.super Lch/android/api/ui/ChCustomIvenView;
.source "NetworkUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/NetworkUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkInvenView"
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/NetworkUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/NetworkUi;Ljava/lang/String;)V
    .locals 7
    .param p2, "money"    # Ljava/lang/String;

    .prologue
    .line 1239
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    .line 1240
    invoke-static {p1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    const/16 v0, 0xc

    invoke-static {v0}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    const v6, 0x7f0202bb

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChCustomIvenView;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1242
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->updateNetworkInven()V

    .line 1243
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1244
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 1334
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->popUpWithdraw(Lch/kingdoms/ndk/data/Inven$Item;)V

    return-void
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 1395
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->popUpGiftItem(Lch/kingdoms/ndk/data/Inven$Item;)V

    return-void
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 1481
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->popUpRegistAuction(Lch/kingdoms/ndk/data/Inven$Item;)V

    return-void
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)V
    .locals 0

    .prologue
    .line 1246
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->updateNetworkInven()V

    return-void
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 1278
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->popUpSelectMenu(Lch/kingdoms/ndk/data/Inven$Item;)V

    return-void
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/android/api/ui/ChTextView;I)V
    .locals 0

    .prologue
    .line 1605
    invoke-direct {p0, p1, p2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->popUpWithdrawMoney(Lch/android/api/ui/ChTextView;I)V

    return-void
.end method

.method static synthetic access$6(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/android/api/ui/ChTextView;I)V
    .locals 0

    .prologue
    .line 1650
    invoke-direct {p0, p1, p2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->popUpGiftMoney(Lch/android/api/ui/ChTextView;I)V

    return-void
.end method

.method static synthetic access$7(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/android/api/ui/ChTextView;I)V
    .locals 0

    .prologue
    .line 1556
    invoke-direct {p0, p1, p2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->popUpMoneyMenu(Lch/android/api/ui/ChTextView;I)V

    return-void
.end method

.method static synthetic access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    return-object v0
.end method

.method private popUpGiftItem(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 8
    .param p1, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 1396
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xd

    .line 1397
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, p1

    .line 1396
    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v7

    .line 1398
    .local v7, "tradePopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1399
    new-instance v0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;

    invoke-direct {v0, p0, p1, v7}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;-><init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1479
    return-void
.end method

.method private popUpGiftMoney(Lch/android/api/ui/ChTextView;I)V
    .locals 8
    .param p1, "moneyView"    # Lch/android/api/ui/ChTextView;
    .param p2, "money"    # I

    .prologue
    .line 1651
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    const/16 v3, 0xe

    .line 1652
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

    .line 1651
    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v7

    .line 1653
    .local v7, "tradePopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1654
    new-instance v0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;

    invoke-direct {v0, p0, p1, p2, v7}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;-><init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/android/api/ui/ChTextView;ILch/android/api/ui/ChPopUpTradeItemView;)V

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1731
    return-void
.end method

.method private popUpMoneyMenu(Lch/android/api/ui/ChTextView;I)V
    .locals 13
    .param p1, "moneyView"    # Lch/android/api/ui/ChTextView;
    .param p2, "money"    # I

    .prologue
    .line 1557
    const/16 v8, 0x64

    .line 1558
    .local v8, "ID_WITHDRAW":I
    const/16 v7, 0x65

    .line 1559
    .local v7, "ID_GIFT":I
    new-instance v12, Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual {p0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020205

    const v3, 0x7f020204

    .line 1560
    const/16 v4, 0x13

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v4

    .line 1559
    invoke-direct {v12, v1, v2, v3, v4}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1562
    .local v12, "withdrawBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v1, 0x64

    invoke-virtual {v12, v1}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1563
    new-instance v10, Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual {p0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020205

    const v3, 0x7f020204

    .line 1564
    const/16 v4, 0xf

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v4

    .line 1563
    invoke-direct {v10, v1, v2, v3, v4}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1565
    .local v10, "giftBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v1, 0x65

    invoke-virtual {v10, v1}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1566
    new-instance v9, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$7;

    invoke-direct {v9, p0, p1, p2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$7;-><init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/android/api/ui/ChTextView;I)V

    .line 1582
    .local v9, "btnOnClickListener":Landroid/view/View$OnClickListener;
    const/4 v1, 0x2

    new-array v5, v1, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object v12, v5, v1

    const/4 v1, 0x1

    aput-object v10, v5, v1

    .line 1583
    .local v5, "views":[Landroid/view/View;
    array-length v2, v5

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 1587
    new-instance v0, Lch/android/api/ui/ChPopUpMenuView;

    invoke-virtual {p0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f020248

    new-instance v6, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$8;

    invoke-direct {v6, p0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$8;-><init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)V

    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1601
    .local v0, "popUpMenu":Lch/android/api/ui/ChPopUpMenuView;
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 1602
    const/4 v1, 0x1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1603
    return-void

    .line 1583
    .end local v0    # "popUpMenu":Lch/android/api/ui/ChPopUpMenuView;
    :cond_0
    aget-object v11, v5, v1

    .line 1584
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private popUpRegistAuction(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 8
    .param p1, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 1482
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xb

    .line 1483
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, p1

    .line 1482
    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v7

    .line 1484
    .local v7, "quantityView":Lch/android/api/ui/ChPopUpTradeItemView;
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1485
    new-instance v0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;

    invoke-direct {v0, p0, p1, v7}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;-><init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1548
    return-void
.end method

.method private popUpSelectMenu(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 17
    .param p1, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 1279
    const/16 v11, 0x64

    .line 1280
    .local v11, "ID_WITHDRAW":I
    const/16 v9, 0x65

    .line 1281
    .local v9, "ID_GIFT":I
    const/16 v10, 0x66

    .line 1282
    .local v10, "ID_SELL_REGISTER":I
    new-instance v16, Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020205

    const v5, 0x7f020204

    .line 1283
    const/16 v6, 0x13

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    .line 1282
    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1284
    .local v16, "withdrawBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v3, 0x64

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1285
    new-instance v13, Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020205

    const v5, 0x7f020204

    .line 1286
    const/16 v6, 0xf

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    .line 1285
    invoke-direct {v13, v3, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1287
    .local v13, "giftBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v3, 0x65

    invoke-virtual {v13, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1288
    new-instance v14, Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020205

    const v5, 0x7f020204

    .line 1289
    const/16 v6, 0xe

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    .line 1288
    invoke-direct {v14, v3, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1290
    .local v14, "registerBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v3, 0x66

    invoke-virtual {v14, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1291
    new-instance v12, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$2;-><init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 1311
    .local v12, "btnOnClickListener":Landroid/view/View$OnClickListener;
    const/4 v3, 0x3

    new-array v7, v3, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v16, v7, v3

    const/4 v3, 0x1

    aput-object v13, v7, v3

    const/4 v3, 0x2

    aput-object v14, v7, v3

    .line 1312
    .local v7, "views":[Landroid/view/View;
    array-length v4, v7

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 1316
    new-instance v2, Lch/android/api/ui/ChPopUpMenuView;

    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f020244

    new-instance v8, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$3;-><init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)V

    invoke-direct/range {v2 .. v8}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1330
    .local v2, "popUpMenu":Lch/android/api/ui/ChPopUpMenuView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 1331
    const/4 v3, 0x1

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1332
    return-void

    .line 1312
    .end local v2    # "popUpMenu":Lch/android/api/ui/ChPopUpMenuView;
    :cond_0
    aget-object v15, v7, v3

    .line 1313
    .local v15, "view":Landroid/view/View;
    invoke-virtual {v15, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1312
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private popUpWithdraw(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 8
    .param p1, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/4 v5, 0x0

    .line 1335
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xc

    move-object v4, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v7

    .line 1337
    .local v7, "tradePopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1338
    new-instance v0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;

    invoke-direct {v0, p0, p1, v7}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;-><init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1393
    return-void
.end method

.method private popUpWithdrawMoney(Lch/android/api/ui/ChTextView;I)V
    .locals 8
    .param p1, "moneyView"    # Lch/android/api/ui/ChTextView;
    .param p2, "money"    # I

    .prologue
    .line 1606
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    const/16 v3, 0xe

    .line 1607
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

    .line 1606
    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v7

    .line 1608
    .local v7, "tradePopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1609
    new-instance v0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;

    invoke-direct {v0, p0, v7, p1, p2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;-><init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/android/api/ui/ChPopUpTradeItemView;Lch/android/api/ui/ChTextView;I)V

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1648
    return-void
.end method

.method private updateNetworkInven()V
    .locals 4

    .prologue
    .line 1247
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)V

    .line 1261
    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v3

    .line 1247
    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createNetworkInven(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$ShowNetworkInven;

    move-result-object v0

    .line 1262
    .local v0, "networkItemsPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 1263
    return-void
.end method


# virtual methods
.method protected getInvenLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1745
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1746
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1747
    return-object v0
.end method

.method protected onBackButtonClick()V
    .locals 1

    .prologue
    .line 1736
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1737
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1738
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$14(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 1740
    :cond_0
    return-void
.end method

.method protected onItemSelect(Landroid/view/View;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 1269
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1270
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1272
    :pswitch_0
    invoke-direct {p0, p2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->popUpSelectMenu(Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 1270
    :pswitch_data_0
    .packed-switch 0x2753
        :pswitch_0
    .end packed-switch
.end method

.method protected onMoneyClick(Lch/android/api/ui/ChTextView;)V
    .locals 1
    .param p1, "moneyView"    # Lch/android/api/ui/ChTextView;

    .prologue
    .line 1553
    invoke-virtual {p1}, Lch/android/api/ui/ChTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->popUpMoneyMenu(Lch/android/api/ui/ChTextView;I)V

    .line 1554
    return-void
.end method
