.class Lch/kingdoms/android/ui/network/AuctionView$3;
.super Ljava/lang/Object;
.source "AuctionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/AuctionView;->onItemSelect(Landroid/view/View;Lch/kingdoms/ndk/data/Inven$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/AuctionView;

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/AuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/AuctionView$3;->this$0:Lch/kingdoms/android/ui/network/AuctionView;

    iput-object p2, p0, Lch/kingdoms/android/ui/network/AuctionView$3;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 174
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 175
    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 176
    iget-object v1, p0, Lch/kingdoms/android/ui/network/AuctionView$3;->this$0:Lch/kingdoms/android/ui/network/AuctionView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/AuctionView;->access$3(Lch/kingdoms/android/ui/network/AuctionView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 177
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4a61

    iput v1, v0, Landroid/os/Message;->what:I

    .line 178
    iget-object v1, p0, Lch/kingdoms/android/ui/network/AuctionView$3;->this$0:Lch/kingdoms/android/ui/network/AuctionView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/AuctionView;->access$4(Lch/kingdoms/android/ui/network/AuctionView;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lch/kingdoms/android/ui/network/AuctionView$3;->this$0:Lch/kingdoms/android/ui/network/AuctionView;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/AuctionView;->access$5(Lch/kingdoms/android/ui/network/AuctionView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lch/kingdoms/android/ui/network/AuctionView$3;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v4, v4, Lch/kingdoms/ndk/data/Inven$Item;->dbIndex:I

    invoke-virtual {v1, v2, v3, v4}, Lch/kingdoms/android/network/ChPacketFactory;->createPurchaseItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$PurchaseItem;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lch/kingdoms/android/ui/network/AuctionView$3;->this$0:Lch/kingdoms/android/ui/network/AuctionView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/AuctionView;->access$3(Lch/kingdoms/android/ui/network/AuctionView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 182
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 183
    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
