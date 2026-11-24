.class Lch/kingdoms/android/ui/NetworkUi$AuctionView$4;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$AuctionView;->requestItems(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    .line 2060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 8
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 2064
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2085
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$10(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v4

    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v5

    invoke-static {v4, v5}, Lch/kingdoms/android/ui/NetworkUi;->access$1(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 2088
    :goto_0
    return-void

    .line 2067
    :pswitch_0
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2069
    .local v3, "size":I
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$4(Lch/kingdoms/android/ui/NetworkUi$AuctionView;Ljava/util/ArrayList;)V

    .line 2070
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$5(Lch/kingdoms/android/ui/NetworkUi$AuctionView;Ljava/util/ArrayList;)V

    .line 2071
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$6(Lch/kingdoms/android/ui/NetworkUi$AuctionView;Ljava/util/ArrayList;)V

    .line 2072
    new-instance v1, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v1}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    .line 2073
    .local v1, "inven":Lch/kingdoms/ndk/data/Inven;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_0

    .line 2082
    iget-object v5, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    const/4 v6, 0x0

    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$8(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Lch/kingdoms/ndk/data/Inven$Item;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lch/kingdoms/ndk/data/Inven$Item;

    invoke-virtual {v5, v6, v4}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 2075
    :cond_0
    invoke-virtual {p1, v0}, Lch/android/api/network/ChResultPacket;->getItemData(I)Lch/android/api/network/ChNetworkItemData;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lch/kingdoms/ndk/data/Inven;->getItem(Lch/android/api/network/ChNetworkItemData;I)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    .line 2076
    .local v2, "item":Lch/kingdoms/ndk/data/Inven$Item;
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$7(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)Ljava/util/ArrayList;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v5}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2077
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p1, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lch/kingdoms/ndk/data/Inven$Item;->dbIndex:I

    .line 2078
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {p1, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lch/kingdoms/ndk/data/Inven$Item;->buyPrice:I

    .line 2079
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$8(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2080
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$9(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1, v0}, Lch/android/api/network/ChResultPacket;->getTime(I)Lch/android/api/network/ChTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2073
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2064
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
