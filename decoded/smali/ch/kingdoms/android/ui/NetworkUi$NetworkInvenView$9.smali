.class Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->popUpWithdrawMoney(Lch/android/api/ui/ChTextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

.field private final synthetic val$money:I

.field private final synthetic val$moneyView:Lch/android/api/ui/ChTextView;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/android/api/ui/ChPopUpTradeItemView;Lch/android/api/ui/ChTextView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    iput-object p3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;->val$moneyView:Lch/android/api/ui/ChTextView;

    iput p4, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;->val$money:I

    .line 1609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;
    .locals 1

    .prologue
    .line 1609
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1613
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1614
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1640
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1641
    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1642
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;->val$moneyView:Lch/android/api/ui/ChTextView;

    iget v3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;->val$money:I

    invoke-static {v1, v2, v3}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$7(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/android/api/ui/ChTextView;I)V

    .line 1646
    :cond_0
    :goto_0
    return-void

    .line 1616
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1617
    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1618
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9$1;

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;->val$moneyView:Lch/android/api/ui/ChTextView;

    iget v5, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;->val$money:I

    invoke-direct {v2, p0, v3, v4, v5}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;Lch/android/api/ui/ChPopUpTradeItemView;Lch/android/api/ui/ChTextView;I)V

    .line 1636
    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v3

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v4}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v4

    .line 1618
    invoke-virtual {v1, v2, v3, v4}, Lch/kingdoms/android/network/ChPacketFactory;->createDrawFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$DrawFence;

    move-result-object v0

    .line 1637
    .local v0, "withdrawFencePacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    goto :goto_0

    .line 1614
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
    .end packed-switch
.end method
