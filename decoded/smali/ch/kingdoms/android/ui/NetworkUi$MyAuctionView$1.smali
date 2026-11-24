.class Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->updateInven()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    .line 2251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 8
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 2255
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2271
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$7(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v4

    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v5

    invoke-static {v4, v5}, Lch/kingdoms/android/ui/NetworkUi;->access$1(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 2274
    :goto_0
    return-void

    .line 2257
    :pswitch_0
    new-instance v1, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v1}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    .line 2258
    .local v1, "inven":Lch/kingdoms/ndk/data/Inven;
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;Ljava/util/ArrayList;)V

    .line 2259
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$1(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;Ljava/util/ArrayList;)V

    .line 2260
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getItemCount()I

    move-result v3

    .local v3, "size":I
    :goto_1
    if-lt v0, v3, :cond_0

    .line 2267
    iget-object v5, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    const/4 v6, 0x0

    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$2(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Lch/kingdoms/ndk/data/Inven$Item;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lch/kingdoms/ndk/data/Inven$Item;

    invoke-virtual {v5, v6, v4}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 2261
    :cond_0
    invoke-virtual {p1, v0}, Lch/android/api/network/ChResultPacket;->getItemData(I)Lch/android/api/network/ChNetworkItemData;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lch/kingdoms/ndk/data/Inven;->getItem(Lch/android/api/network/ChNetworkItemData;I)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    .line 2262
    .local v2, "item":Lch/kingdoms/ndk/data/Inven$Item;
    mul-int/lit8 v4, v0, 0x2

    invoke-virtual {p1, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lch/kingdoms/ndk/data/Inven$Item;->buyPrice:I

    .line 2263
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lch/kingdoms/ndk/data/Inven$Item;->auctionState:I

    .line 2264
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$2(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2265
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$3(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1, v0}, Lch/android/api/network/ChResultPacket;->getTime(I)Lch/android/api/network/ChTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2260
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2255
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
