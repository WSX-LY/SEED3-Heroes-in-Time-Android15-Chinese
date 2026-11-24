.class Lch/kingdoms/android/ui/network/MyInvenView$2;
.super Ljava/lang/Object;
.source "MyInvenView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/MyInvenView;->onMoneyClick(Lch/android/api/ui/ChTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/MyInvenView;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/MyInvenView;Lch/android/api/ui/ChPopUpTradeItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/MyInvenView$2;->this$0:Lch/kingdoms/android/ui/network/MyInvenView;

    iput-object p2, p0, Lch/kingdoms/android/ui/network/MyInvenView$2;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 130
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 131
    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 117
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 118
    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 120
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    .line 121
    .local v0, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v2

    if-lez v2, :cond_0

    .line 122
    iget-object v2, p0, Lch/kingdoms/android/ui/network/MyInvenView$2;->this$0:Lch/kingdoms/android/ui/network/MyInvenView;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/MyInvenView;->access$1(Lch/kingdoms/android/ui/network/MyInvenView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 123
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4a4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 124
    iget-object v2, p0, Lch/kingdoms/android/ui/network/MyInvenView$2;->this$0:Lch/kingdoms/android/ui/network/MyInvenView;

    iget-object v3, p0, Lch/kingdoms/android/ui/network/MyInvenView$2;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v3}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v3

    invoke-static {v2, v3}, Lch/kingdoms/android/ui/network/MyInvenView;->access$5(Lch/kingdoms/android/ui/network/MyInvenView;I)V

    .line 125
    iget-object v2, p0, Lch/kingdoms/android/ui/network/MyInvenView$2;->this$0:Lch/kingdoms/android/ui/network/MyInvenView;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/MyInvenView;->access$2(Lch/kingdoms/android/ui/network/MyInvenView;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lch/kingdoms/android/ui/network/MyInvenView$2;->this$0:Lch/kingdoms/android/ui/network/MyInvenView;

    invoke-static {v4}, Lch/kingdoms/android/ui/network/MyInvenView;->access$3(Lch/kingdoms/android/ui/network/MyInvenView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lch/kingdoms/android/ui/network/MyInvenView$2;->this$0:Lch/kingdoms/android/ui/network/MyInvenView;

    invoke-static {v5}, Lch/kingdoms/android/ui/network/MyInvenView;->access$6(Lch/kingdoms/android/ui/network/MyInvenView;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lch/kingdoms/android/network/ChPacketFactory;->createDepositFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$DepositFence;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 126
    iget-object v2, p0, Lch/kingdoms/android/ui/network/MyInvenView$2;->this$0:Lch/kingdoms/android/ui/network/MyInvenView;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/MyInvenView;->access$1(Lch/kingdoms/android/ui/network/MyInvenView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
    .end packed-switch
.end method
