.class Lch/kingdoms/android/ui/network/NetworkInvenView$5$1;
.super Ljava/lang/Object;
.source "NetworkInvenView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NetworkInvenView$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/network/NetworkInvenView$5;

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;

.field private final synthetic val$priceView:Lch/android/api/ui/ChPopUpTradeItemView;

.field private final synthetic val$quantityView:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NetworkInvenView$5;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;Lch/android/api/ui/ChPopUpTradeItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5$1;->this$1:Lch/kingdoms/android/ui/network/NetworkInvenView$5;

    iput-object p2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iput-object p3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5$1;->val$quantityView:Lch/android/api/ui/ChPopUpTradeItemView;

    iput-object p4, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5$1;->val$priceView:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 254
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 257
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 258
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5$1;->this$1:Lch/kingdoms/android/ui/network/NetworkInvenView$5;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NetworkInvenView$5;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$5;)Lch/kingdoms/android/ui/network/NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$4(Lch/kingdoms/android/ui/network/NetworkInvenView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 259
    .local v6, "msg":Landroid/os/Message;
    const/16 v0, 0x4a52

    iput v0, v6, Landroid/os/Message;->what:I

    .line 260
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5$1;->this$1:Lch/kingdoms/android/ui/network/NetworkInvenView$5;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NetworkInvenView$5;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$5;)Lch/kingdoms/android/ui/network/NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$5(Lch/kingdoms/android/ui/network/NetworkInvenView;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5$1;->this$1:Lch/kingdoms/android/ui/network/NetworkInvenView$5;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView$5;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$5;)Lch/kingdoms/android/ui/network/NetworkInvenView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$6(Lch/kingdoms/android/ui/network/NetworkInvenView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->dbIndex:I

    .line 261
    iget-object v4, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5$1;->val$quantityView:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v4}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v4

    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5$1;->val$priceView:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v5}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v5

    .line 260
    invoke-virtual/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory;->createRegisterSaleItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;III)Lch/kingdoms/android/network/ChPacketFactory$RegisterSaleItem;

    move-result-object v0

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5$1;->this$1:Lch/kingdoms/android/ui/network/NetworkInvenView$5;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NetworkInvenView$5;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$5;)Lch/kingdoms/android/ui/network/NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$4(Lch/kingdoms/android/ui/network/NetworkInvenView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-virtual {v0, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    .line 285
    invoke-static {v7}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    goto :goto_0

    .line 288
    .end local v6    # "msg":Landroid/os/Message;
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 289
    invoke-static {v7}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 290
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5$1;->this$1:Lch/kingdoms/android/ui/network/NetworkInvenView$5;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NetworkInvenView$5;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$5;)Lch/kingdoms/android/ui/network/NetworkInvenView;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$7(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
