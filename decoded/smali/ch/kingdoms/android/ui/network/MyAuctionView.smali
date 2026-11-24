.class Lch/kingdoms/android/ui/network/MyAuctionView;
.super Lch/android/api/ui/ChCustomIvenView;
.source "MyAuctionView.java"

# interfaces
.implements Lch/kingdoms/android/ui/network/ProcessablaResultPacket;


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

.field private final PHONE_NUMBER:Ljava/lang/String;

.field private final UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

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
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/network/NewNetworkUi;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "ui"    # Lch/kingdoms/android/ui/network/NewNetworkUi;
    .param p4, "packetFac"    # Lch/kingdoms/android/network/ChPacketFactory;
    .param p5, "phoneNumber"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "moeny"    # Ljava/lang/String;
    .param p8, "_storeType"    # I
    .param p9, "bgResId"    # I

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p6

    move-object v4, p7

    move v5, p8

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChCustomIvenView;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Ljava/lang/String;II)V

    .line 39
    iput-object p1, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->ACTIVITY:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->DI:Lch/android/api/util/DisplayInfo;

    .line 41
    iput-object p3, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    .line 42
    iput-object p4, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    .line 43
    iput-object p5, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->PHONE_NUMBER:Ljava/lang/String;

    .line 45
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/network/MyAuctionView;->setMoneyViewVisibility(I)V

    .line 46
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/MyAuctionView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->ACTIVITY:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/network/MyAuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/network/MyAuctionView;->requestExtend(Lch/kingdoms/ndk/data/Inven$Item;)V

    return-void
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/network/MyAuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/network/MyAuctionView;->requestCancel(Lch/kingdoms/ndk/data/Inven$Item;)V

    return-void
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/network/MyAuctionView;)Lch/kingdoms/android/ui/network/NewNetworkUi;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    return-object v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/network/MyAuctionView;)Lch/kingdoms/android/network/ChPacketFactory;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    return-object v0
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/network/MyAuctionView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->PHONE_NUMBER:Ljava/lang/String;

    return-object v0
.end method

.method private requestCancel(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 3
    .param p1, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 240
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->ACTIVITY:Landroid/app/Activity;

    const/16 v1, 0x4a

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/network/MyAuctionView$3;

    invoke-direct {v2, p0, p1}, Lch/kingdoms/android/ui/network/MyAuctionView$3;-><init>(Lch/kingdoms/android/ui/network/MyAuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 283
    return-void
.end method

.method private requestExtend(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 3
    .param p1, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 190
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 191
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->ACTIVITY:Landroid/app/Activity;

    const/16 v1, 0x4f

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/network/MyAuctionView$2;

    invoke-direct {v2, p0, p1}, Lch/kingdoms/android/ui/network/MyAuctionView$2;-><init>(Lch/kingdoms/android/ui/network/MyAuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 236
    return-void
.end method

.method private updateInven()V
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 55
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4a56

    iput v1, v0, Landroid/os/Message;->what:I

    .line 56
    iget-object v1, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {v1, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected getInvenLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBackButtonClick()V
    .locals 1

    .prologue
    .line 294
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 296
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpItemManageMenu()V

    .line 298
    :cond_0
    return-void
.end method

.method protected onItemSelect(Landroid/view/View;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/4 v4, 0x1

    .line 88
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 118
    :pswitch_0
    new-instance v0, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;

    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/MyAuctionView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->DI:Lch/android/api/util/DisplayInfo;

    const v3, 0x7f020246

    .line 119
    iget-object v5, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->times:Ljava/util/ArrayList;

    iget v6, p2, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch/android/api/network/ChTime;

    invoke-virtual {v5}, Lch/android/api/network/ChTime;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p2, Lch/kingdoms/ndk/data/Inven$Item;->auctionState:I

    .line 118
    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZLjava/lang/String;I)V

    .line 120
    .local v0, "myAuctionItemInfoView":Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;
    new-instance v1, Lch/kingdoms/android/ui/network/MyAuctionView$1;

    invoke-direct {v1, p0, p2}, Lch/kingdoms/android/ui/network/MyAuctionView$1;-><init>(Lch/kingdoms/android/ui/network/MyAuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v1, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 170
    invoke-static {v4}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x2753
        :pswitch_0
    .end packed-switch
.end method

.method protected onMoneyClick(Lch/android/api/ui/ChTextView;)V
    .locals 0
    .param p1, "moneyView"    # Lch/android/api/ui/ChTextView;

    .prologue
    .line 289
    return-void
.end method

.method public processResultPacketOnUi(ILch/android/api/network/ChResultPacket;)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    const/4 v7, 0x0

    .line 309
    packed-switch p1, :pswitch_data_0

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 311
    :pswitch_0
    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 327
    iget-object v5, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v6

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto :goto_0

    .line 313
    :pswitch_1
    new-instance v1, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v1}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    .line 314
    .local v1, "inven":Lch/kingdoms/ndk/data/Inven;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->items:Ljava/util/ArrayList;

    .line 315
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->times:Ljava/util/ArrayList;

    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getItemCount()I

    move-result v3

    .local v3, "size":I
    :goto_1
    if-lt v0, v3, :cond_1

    .line 323
    const/4 v6, 0x0

    iget-object v5, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->items:Ljava/util/ArrayList;

    new-array v7, v7, [Lch/kingdoms/ndk/data/Inven$Item;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lch/kingdoms/ndk/data/Inven$Item;

    invoke-virtual {p0, v6, v5}, Lch/kingdoms/android/ui/network/MyAuctionView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {p2, v0}, Lch/android/api/network/ChResultPacket;->getItemData(I)Lch/android/api/network/ChNetworkItemData;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Lch/kingdoms/ndk/data/Inven;->getItem(Lch/android/api/network/ChNetworkItemData;I)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    .line 318
    .local v2, "item":Lch/kingdoms/ndk/data/Inven$Item;
    mul-int/lit8 v5, v0, 0x2

    invoke-virtual {p2, v5}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v2, Lch/kingdoms/ndk/data/Inven$Item;->buyPrice:I

    .line 319
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p2, v5}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v2, Lch/kingdoms/ndk/data/Inven$Item;->auctionState:I

    .line 320
    iget-object v5, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v5, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->times:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lch/android/api/network/ChResultPacket;->getTime(I)Lch/android/api/network/ChTime;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 332
    .end local v0    # "i":I
    .end local v1    # "inven":Lch/kingdoms/ndk/data/Inven;
    .end local v2    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    .end local v3    # "size":I
    :pswitch_2
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 333
    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    .line 343
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 344
    invoke-static {v7}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 345
    iget-object v5, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v6

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto/16 :goto_0

    .line 335
    :pswitch_3
    invoke-virtual {p2, v7}, Lch/android/api/network/ChResultPacket;->getTime(I)Lch/android/api/network/ChTime;

    move-result-object v4

    .line 336
    .local v4, "time":Lch/android/api/network/ChTime;
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 337
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/MyAuctionView;->updateInven()V

    .line 338
    invoke-static {v7}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 339
    iget-object v5, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->ACTIVITY:Landroid/app/Activity;

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x50

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 340
    const/16 v7, 0x45

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lch/android/api/network/ChTime;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 339
    invoke-static {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    .end local v4    # "time":Lch/android/api/network/ChTime;
    :pswitch_4
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 352
    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v5

    packed-switch v5, :pswitch_data_3

    .line 360
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/MyAuctionView;->updateInven()V

    .line 361
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 362
    invoke-static {v7}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 363
    iget-object v5, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v6

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto/16 :goto_0

    .line 354
    :pswitch_5
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 355
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/MyAuctionView;->updateInven()V

    .line 356
    invoke-static {v7}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 357
    iget-object v5, p0, Lch/kingdoms/android/ui/network/MyAuctionView;->ACTIVITY:Landroid/app/Activity;

    const/16 v6, 0x4d

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x4a56
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 311
    :pswitch_data_1
    .packed-switch 0x2710
        :pswitch_1
    .end packed-switch

    .line 333
    :pswitch_data_2
    .packed-switch 0x2710
        :pswitch_3
    .end packed-switch

    .line 352
    :pswitch_data_3
    .packed-switch 0x2710
        :pswitch_5
    .end packed-switch
.end method

.method public start()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/MyAuctionView;->updateInven()V

    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 51
    return-void
.end method
