.class Lch/kingdoms/android/ui/network/NetworkInvenView$8;
.super Ljava/lang/Object;
.source "NetworkInvenView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NetworkInvenView;->popUpWithdrawMoney(Lch/android/api/ui/ChTextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

.field private final synthetic val$money:I

.field private final synthetic val$moneyView:Lch/android/api/ui/ChTextView;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/android/api/ui/ChPopUpTradeItemView;Lch/android/api/ui/ChTextView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$8;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    iput-object p2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$8;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    iput-object p3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$8;->val$moneyView:Lch/android/api/ui/ChTextView;

    iput p4, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$8;->val$money:I

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 375
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 387
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 388
    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 389
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$8;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$8;->val$moneyView:Lch/android/api/ui/ChTextView;

    iget v3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$8;->val$money:I

    invoke-static {v1, v2, v3}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$13(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/android/api/ui/ChTextView;I)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 378
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 379
    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 380
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$8;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$4(Lch/kingdoms/android/ui/network/NetworkInvenView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 381
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4a4f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 382
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$8;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$8;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v2}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v2

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$11(Lch/kingdoms/android/ui/network/NetworkInvenView;I)V

    .line 383
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$8;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$5(Lch/kingdoms/android/ui/network/NetworkInvenView;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$8;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$6(Lch/kingdoms/android/ui/network/NetworkInvenView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$8;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    invoke-static {v4}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$12(Lch/kingdoms/android/ui/network/NetworkInvenView;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lch/kingdoms/android/network/ChPacketFactory;->createDrawFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$DrawFence;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 384
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$8;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$4(Lch/kingdoms/android/ui/network/NetworkInvenView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
    .end packed-switch
.end method
