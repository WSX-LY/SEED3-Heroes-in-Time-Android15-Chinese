.class Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;
.super Ljava/lang/Object;
.source "NetworkInvenView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;

.field private final synthetic val$editPopUp:Lch/android/api/ui/ChPopUpEditTextView;

.field private final synthetic val$money:I

.field private final synthetic val$moneyView:Lch/android/api/ui/ChTextView;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;Lch/android/api/ui/ChPopUpEditTextView;Lch/android/api/ui/ChPopUpTradeItemView;Lch/android/api/ui/ChTextView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;->this$2:Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;

    iput-object p2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;->val$editPopUp:Lch/android/api/ui/ChPopUpEditTextView;

    iput-object p3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    iput-object p4, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;->val$moneyView:Lch/android/api/ui/ChTextView;

    iput p5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;->val$money:I

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 427
    :pswitch_0
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;->val$editPopUp:Lch/android/api/ui/ChPopUpEditTextView;

    invoke-virtual {v2}, Lch/android/api/ui/ChPopUpEditTextView;->getEditText()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "receiverId":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 429
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 430
    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 431
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;->this$2:Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;)Lch/kingdoms/android/ui/network/NetworkInvenView$9;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9;)Lch/kingdoms/android/ui/network/NetworkInvenView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$4(Lch/kingdoms/android/ui/network/NetworkInvenView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 432
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x4a51

    iput v2, v0, Landroid/os/Message;->what:I

    .line 433
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;->this$2:Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;)Lch/kingdoms/android/ui/network/NetworkInvenView$9;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9;)Lch/kingdoms/android/ui/network/NetworkInvenView;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v3}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v3

    invoke-static {v2, v3}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$14(Lch/kingdoms/android/ui/network/NetworkInvenView;I)V

    .line 434
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;->this$2:Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;)Lch/kingdoms/android/ui/network/NetworkInvenView$9;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9;)Lch/kingdoms/android/ui/network/NetworkInvenView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$5(Lch/kingdoms/android/ui/network/NetworkInvenView;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;->this$2:Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;

    invoke-static {v4}, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;)Lch/kingdoms/android/ui/network/NetworkInvenView$9;

    move-result-object v4

    invoke-static {v4}, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9;)Lch/kingdoms/android/ui/network/NetworkInvenView;

    move-result-object v4

    invoke-static {v4}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$6(Lch/kingdoms/android/ui/network/NetworkInvenView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;->this$2:Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;

    invoke-static {v5}, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;)Lch/kingdoms/android/ui/network/NetworkInvenView$9;

    move-result-object v5

    invoke-static {v5}, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9;)Lch/kingdoms/android/ui/network/NetworkInvenView;

    move-result-object v5

    invoke-static {v5}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$15(Lch/kingdoms/android/ui/network/NetworkInvenView;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v1, v5}, Lch/kingdoms/android/network/ChPacketFactory;->createGiveFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$GiveFence;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 435
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;->this$2:Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;)Lch/kingdoms/android/ui/network/NetworkInvenView$9;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9;)Lch/kingdoms/android/ui/network/NetworkInvenView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$4(Lch/kingdoms/android/ui/network/NetworkInvenView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 439
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "receiverId":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 440
    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 441
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;->this$2:Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;)Lch/kingdoms/android/ui/network/NetworkInvenView$9;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9;)Lch/kingdoms/android/ui/network/NetworkInvenView;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;->val$moneyView:Lch/android/api/ui/ChTextView;

    iget v4, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;->val$money:I

    invoke-static {v2, v3, v4}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$13(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/android/api/ui/ChTextView;I)V

    goto/16 :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
