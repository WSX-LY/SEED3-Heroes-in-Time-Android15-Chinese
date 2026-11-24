.class Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;

.field private final synthetic val$money:I

.field private final synthetic val$moneyView:Lch/android/api/ui/ChTextView;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;Lch/android/api/ui/ChTextView;ILch/android/api/ui/ChPopUpTradeItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1$1;->this$4:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1$1;->val$moneyView:Lch/android/api/ui/ChTextView;

    iput p3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1$1;->val$money:I

    iput-object p4, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 1684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 3
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 1688
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1694
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1$1;->this$4:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$1(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 1697
    :goto_0
    return-void

    .line 1690
    :pswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1$1;->this$4:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1691
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1$1;->val$moneyView:Lch/android/api/ui/ChTextView;

    iget v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1$1;->val$money:I

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$10$1$1$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v2}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1688
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
