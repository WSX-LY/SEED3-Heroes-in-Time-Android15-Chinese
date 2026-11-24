.class Lch/kingdoms/android/ui/network/MyInvenView;
.super Lch/android/api/ui/ChCustomIvenView;
.source "MyInvenView.java"

# interfaces
.implements Lch/kingdoms/android/ui/network/ProcessablaResultPacket;


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

.field private final PHONE_NUMBER:Ljava/lang/String;

.field private final UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

.field private depositItem:Lch/kingdoms/ndk/data/Inven$Item;

.field private quantities:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/network/NewNetworkUi;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "ui"    # Lch/kingdoms/android/ui/network/NewNetworkUi;
    .param p4, "packetFac"    # Lch/kingdoms/android/network/ChPacketFactory;
    .param p5, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 37
    const/16 v0, 0x12

    invoke-static {v0}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 38
    const/4 v5, 0x4

    const v6, 0x7f0202bb

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChCustomIvenView;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Ljava/lang/String;II)V

    .line 40
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetEquipItems()[S

    move-result-object v0

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChCustomIvenView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 43
    iput-object p1, p0, Lch/kingdoms/android/ui/network/MyInvenView;->ACTIVITY:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lch/kingdoms/android/ui/network/MyInvenView;->DI:Lch/android/api/util/DisplayInfo;

    .line 45
    iput-object p3, p0, Lch/kingdoms/android/ui/network/MyInvenView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    .line 47
    iput-object p4, p0, Lch/kingdoms/android/ui/network/MyInvenView;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    .line 48
    iput-object p5, p0, Lch/kingdoms/android/ui/network/MyInvenView;->PHONE_NUMBER:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/MyInvenView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyInvenView;->ACTIVITY:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/network/MyInvenView;)Lch/kingdoms/android/ui/network/NewNetworkUi;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyInvenView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/network/MyInvenView;)Lch/kingdoms/android/network/ChPacketFactory;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyInvenView;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    return-object v0
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/network/MyInvenView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyInvenView;->PHONE_NUMBER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/network/MyInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lch/kingdoms/android/ui/network/MyInvenView;->depositItem:Lch/kingdoms/ndk/data/Inven$Item;

    return-void
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/network/MyInvenView;I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lch/kingdoms/android/ui/network/MyInvenView;->quantities:I

    return-void
.end method

.method static synthetic access$6(Lch/kingdoms/android/ui/network/MyInvenView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lch/kingdoms/android/ui/network/MyInvenView;->quantities:I

    return v0
.end method


# virtual methods
.method protected getInvenLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 151
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 152
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    return-object v0
.end method

.method protected onBackButtonClick()V
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 144
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyInvenView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpItemManageMenu()V

    .line 146
    :cond_0
    return-void
.end method

.method protected onItemSelect(Landroid/view/View;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 54
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyInvenView;->ACTIVITY:Landroid/app/Activity;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/MyInvenView;->DI:Lch/android/api/util/DisplayInfo;

    const/4 v2, 0x0

    const/16 v3, 0xc

    .line 58
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, p2

    .line 57
    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v7

    .line 59
    .local v7, "tradePopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 60
    new-instance v0, Lch/kingdoms/android/ui/network/MyInvenView$1;

    invoke-direct {v0, p0, p2, v7}, Lch/kingdoms/android/ui/network/MyInvenView$1;-><init>(Lch/kingdoms/android/ui/network/MyInvenView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x2753
        :pswitch_0
    .end packed-switch
.end method

.method protected onMoneyClick(Lch/android/api/ui/ChTextView;)V
    .locals 9
    .param p1, "moneyView"    # Lch/android/api/ui/ChTextView;

    .prologue
    .line 106
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v7

    .line 107
    .local v7, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyInvenView;->ACTIVITY:Landroid/app/Activity;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/MyInvenView;->DI:Lch/android/api/util/DisplayInfo;

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v2

    const/16 v3, 0xe

    .line 108
    new-instance v4, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v4}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/Inven;->getNullItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v4

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v5

    invoke-virtual {v5}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    const/4 v6, 0x0

    .line 107
    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v8

    .line 109
    .local v8, "tradePopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 110
    new-instance v0, Lch/kingdoms/android/ui/network/MyInvenView$2;

    invoke-direct {v0, p0, v8}, Lch/kingdoms/android/ui/network/MyInvenView$2;-><init>(Lch/kingdoms/android/ui/network/MyInvenView;Lch/android/api/ui/ChPopUpTradeItemView;)V

    invoke-virtual {v8, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method

.method public processResultPacketOnUi(ILch/android/api/network/ChResultPacket;)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 159
    packed-switch p1, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 161
    :pswitch_0
    const/4 v2, 0x0

    .line 162
    .local v2, "resultTxt":Ljava/lang/String;
    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 178
    iget-object v3, p0, Lch/kingdoms/android/ui/network/MyInvenView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->showViewInCenter()V

    .line 179
    const/4 v3, 0x1

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v2

    .line 182
    :goto_1
    if-eqz v2, :cond_0

    .line 183
    iget-object v3, p0, Lch/kingdoms/android/ui/network/MyInvenView;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v3, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 185
    :cond_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetEquipItems()[S

    move-result-object v3

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lch/kingdoms/android/ui/network/MyInvenView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 165
    :sswitch_0
    iget-object v3, p0, Lch/kingdoms/android/ui/network/MyInvenView;->depositItem:Lch/kingdoms/ndk/data/Inven$Item;

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    iget v4, p0, Lch/kingdoms/android/ui/network/MyInvenView;->quantities:I

    invoke-static {v3, v4}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeDeleteItem(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 166
    iget-object v3, p0, Lch/kingdoms/android/ui/network/MyInvenView;->ACTIVITY:Landroid/app/Activity;

    const/16 v4, 0x34

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :cond_1
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    goto :goto_1

    .line 172
    :sswitch_1
    const/16 v3, 0x1c

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    goto :goto_1

    .line 175
    :sswitch_2
    const-string v2, "low game version"

    .line 176
    goto :goto_1

    .line 188
    .end local v2    # "resultTxt":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 198
    iget-object v3, p0, Lch/kingdoms/android/ui/network/MyInvenView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v4

    invoke-virtual {v3, v4}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto :goto_0

    .line 190
    :pswitch_2
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    .line 191
    .local v0, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v3

    iget v4, p0, Lch/kingdoms/android/ui/network/MyInvenView;->quantities:I

    sub-int v1, v3, v4

    .line 192
    .local v1, "money":I
    invoke-virtual {v0, v1}, Lch/kingdoms/ndk/data/HeroStatus;->setMoney(I)V

    .line 193
    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 194
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    .line 195
    invoke-virtual {p0, v1}, Lch/kingdoms/android/ui/network/MyInvenView;->setMoney(I)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x4a4c
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 162
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x271b -> :sswitch_2
        0x2724 -> :sswitch_1
    .end sparse-switch

    .line 188
    :pswitch_data_1
    .packed-switch 0x2710
        :pswitch_2
    .end packed-switch
.end method
