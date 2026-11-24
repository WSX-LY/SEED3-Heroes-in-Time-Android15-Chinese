.class Lch/kingdoms/android/ui/network/MyAuctionView$3;
.super Ljava/lang/Object;
.source "MyAuctionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/MyAuctionView;->requestCancel(Lch/kingdoms/ndk/data/Inven$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/MyAuctionView;

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/MyAuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/MyAuctionView$3;->this$0:Lch/kingdoms/android/ui/network/MyAuctionView;

    iput-object p2, p0, Lch/kingdoms/android/ui/network/MyAuctionView$3;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 246
    :pswitch_0
    iget-object v1, p0, Lch/kingdoms/android/ui/network/MyAuctionView$3;->this$0:Lch/kingdoms/android/ui/network/MyAuctionView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/MyAuctionView;->access$3(Lch/kingdoms/android/ui/network/MyAuctionView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 247
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4a58

    iput v1, v0, Landroid/os/Message;->what:I

    .line 248
    iget-object v1, p0, Lch/kingdoms/android/ui/network/MyAuctionView$3;->this$0:Lch/kingdoms/android/ui/network/MyAuctionView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/MyAuctionView;->access$4(Lch/kingdoms/android/ui/network/MyAuctionView;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lch/kingdoms/android/ui/network/MyAuctionView$3;->this$0:Lch/kingdoms/android/ui/network/MyAuctionView;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/MyAuctionView;->access$5(Lch/kingdoms/android/ui/network/MyAuctionView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lch/kingdoms/android/ui/network/MyAuctionView$3;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v4, v4, Lch/kingdoms/ndk/data/Inven$Item;->dbIndex:I

    invoke-virtual {v1, v2, v3, v4}, Lch/kingdoms/android/network/ChPacketFactory;->createCancelSaleItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$CancelSaleItem;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 249
    iget-object v1, p0, Lch/kingdoms/android/ui/network/MyAuctionView$3;->this$0:Lch/kingdoms/android/ui/network/MyAuctionView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/MyAuctionView;->access$3(Lch/kingdoms/android/ui/network/MyAuctionView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 275
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_1
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 277
    const/4 v1, 0x0

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
