.class Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;
.super Lch/android/api/ui/ChCustomIvenView;
.source "NetworkUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/NetworkUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAuctionView"
.end annotation


# instance fields
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
.method public constructor <init>(Lch/kingdoms/android/ui/NetworkUi;Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "di"    # Lch/android/api/util/DisplayInfo;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "moeny"    # Ljava/lang/String;
    .param p6, "_storeType"    # I
    .param p7, "bgResId"    # I

    .prologue
    .line 2242
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    .line 2243
    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChCustomIvenView;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2245
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->setMoneyViewVisibility(I)V

    .line 2246
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->updateInven()V

    .line 2247
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 2248
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 2238
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->items:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 2239
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->times:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 2238
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 2239
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->times:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 2383
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->requestExtend(Lch/kingdoms/ndk/data/Inven$Item;)V

    return-void
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 2428
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->requestCancel(Lch/kingdoms/ndk/data/Inven$Item;)V

    return-void
.end method

.method static synthetic access$6(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)V
    .locals 0

    .prologue
    .line 2250
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->updateInven()V

    return-void
.end method

.method static synthetic access$7(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)Lch/kingdoms/android/ui/NetworkUi;
    .locals 1

    .prologue
    .line 2237
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    return-object v0
.end method

.method private requestCancel(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 3
    .param p1, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 2429
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 2430
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x4a

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;

    invoke-direct {v2, p0, p1}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;-><init>(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 2469
    return-void
.end method

.method private requestExtend(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 3
    .param p1, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 2384
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 2385
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x4f

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;

    invoke-direct {v2, p0, p1}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;-><init>(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 2426
    return-void
.end method

.method private updateInven()V
    .locals 4

    .prologue
    .line 2251
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)V

    .line 2275
    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v3

    .line 2251
    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createShowSaleItems(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$ShowSaleItems;

    move-result-object v0

    .line 2276
    .local v0, "myAuctionPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 2277
    return-void
.end method


# virtual methods
.method protected getInvenLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 2489
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBackButtonClick()V
    .locals 1

    .prologue
    .line 2480
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2481
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 2482
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$14(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 2484
    :cond_0
    return-void
.end method

.method protected onItemSelect(Landroid/view/View;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/4 v4, 0x1

    .line 2282
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2283
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2381
    :cond_0
    :goto_0
    return-void

    .line 2312
    :pswitch_0
    new-instance v0, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;

    invoke-virtual {p0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    const v3, 0x7f020246

    .line 2313
    iget-object v5, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->times:Ljava/util/ArrayList;

    iget v6, p2, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch/android/api/network/ChTime;

    invoke-virtual {v5}, Lch/android/api/network/ChTime;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p2, Lch/kingdoms/ndk/data/Inven$Item;->auctionState:I

    .line 2312
    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZLjava/lang/String;I)V

    .line 2314
    .local v0, "myAuctionItemInfoView":Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;
    new-instance v1, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;

    invoke-direct {v1, p0, p2}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;-><init>(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2363
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 2364
    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    goto :goto_0

    .line 2283
    :pswitch_data_0
    .packed-switch 0x2753
        :pswitch_0
    .end packed-switch
.end method

.method protected onMoneyClick(Lch/android/api/ui/ChTextView;)V
    .locals 0
    .param p1, "moneyView"    # Lch/android/api/ui/ChTextView;

    .prologue
    .line 2475
    return-void
.end method
