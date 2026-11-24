.class Lch/kingdoms/android/ui/network/NewNetworkUi$5;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi;->processResultPacketOnUi(ILch/android/api/network/ChResultPacket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClick:Z

.field final synthetic this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi;Lch/android/api/ui/ChPopUpTradeItemView;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$5;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    iput-object p2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$5;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$5;->isClick:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 544
    iget-boolean v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$5;->isClick:Z

    if-nez v1, :cond_1

    .line 545
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$5;->isClick:Z

    .line 546
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0x2742

    if-ne v1, v2, :cond_0

    .line 548
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$5;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/pipelinethread/PipelineThread;

    move-result-object v1

    invoke-virtual {v1}, Lch/android/api/pipelinethread/PipelineThread;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 549
    .local v0, "sendMsg":Landroid/os/Message;
    const/16 v1, 0x4a55

    iput v1, v0, Landroid/os/Message;->what:I

    .line 550
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$5;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$5;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$5;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v4}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lch/kingdoms/android/network/ChPacketFactory;->createWithdrawCashPoint(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$WithdrawCashPoint;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 551
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$5;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {v1, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    .line 553
    .end local v0    # "sendMsg":Landroid/os/Message;
    :cond_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 555
    :cond_1
    return-void
.end method
