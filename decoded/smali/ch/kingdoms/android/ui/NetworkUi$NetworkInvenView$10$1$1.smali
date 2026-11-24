.class Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;

.field private final synthetic val$editPopUp:Lch/android/api/ui/ChPopUpEditTextView;

.field private final synthetic val$money:I

.field private final synthetic val$moneyView:Lch/android/api/ui/ChTextView;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;Lch/android/api/ui/ChPopUpEditTextView;Lch/android/api/ui/ChPopUpTradeItemView;Lch/android/api/ui/ChTextView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->val$editPopUp:Lch/android/api/ui/ChPopUpEditTextView;

    iput-object p3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    iput-object p4, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->val$moneyView:Lch/android/api/ui/ChTextView;

    iput p5, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->val$money:I

    .line 1674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1678
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1708
    :cond_0
    :goto_0
    return-void

    .line 1680
    :pswitch_0
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->val$editPopUp:Lch/android/api/ui/ChPopUpEditTextView;

    invoke-virtual {v2}, Lch/android/api/ui/ChPopUpEditTextView;->getEditText()Ljava/lang/String;

    move-result-object v1

    .line 1681
    .local v1, "receiverId":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1682
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1683
    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1684
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    new-instance v3, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1$1;

    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->val$moneyView:Lch/android/api/ui/ChTextView;

    iget v5, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->val$money:I

    iget-object v6, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-direct {v3, p0, v4, v5, v6}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;Lch/android/api/ui/ChTextView;ILch/android/api/ui/ChPopUpTradeItemView;)V

    .line 1698
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;

    move-result-object v4

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v4

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v4

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v5}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v5

    .line 1684
    invoke-virtual {v2, v3, v4, v1, v5}, Lch/kingdoms/android/network/ChPacketFactory;->createGiveFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$GiveFence;

    move-result-object v0

    .line 1699
    .local v0, "giftMoney":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v2

    invoke-virtual {v0, v2}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    goto :goto_0

    .line 1703
    .end local v0    # "giftMoney":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    .end local v1    # "receiverId":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1704
    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1705
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->val$moneyView:Lch/android/api/ui/ChTextView;

    iget v4, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->val$money:I

    invoke-static {v2, v3, v4}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$7(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/android/api/ui/ChTextView;I)V

    goto :goto_0

    .line 1678
    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
