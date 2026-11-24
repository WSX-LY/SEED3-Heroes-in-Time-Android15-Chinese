.class Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->onMoneyClick(Lch/android/api/ui/ChTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

.field private final synthetic val$moneyView:Lch/android/api/ui/ChTextView;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$MyInvenView;Lch/android/api/ui/ChPopUpTradeItemView;Lch/android/api/ui/ChTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    iput-object p3, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;->val$moneyView:Lch/android/api/ui/ChTextView;

    .line 1176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;)Lch/kingdoms/android/ui/NetworkUi$MyInvenView;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1180
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1211
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1212
    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1183
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1184
    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1186
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v1

    .line 1187
    .local v1, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v2

    if-lez v2, :cond_0

    .line 1188
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    new-instance v3, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2$1;

    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    iget-object v5, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;->val$moneyView:Lch/android/api/ui/ChTextView;

    invoke-direct {v3, p0, v4, v5}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;Lch/android/api/ui/ChPopUpTradeItemView;Lch/android/api/ui/ChTextView;)V

    .line 1206
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v4

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v5}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v5

    .line 1188
    invoke-virtual {v2, v3, v4, v5}, Lch/kingdoms/android/network/ChPacketFactory;->createDepositFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$DepositFence;

    move-result-object v0

    .line 1207
    .local v0, "depositFencePacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v2

    invoke-virtual {v0, v2}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    goto :goto_0

    .line 1181
    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
    .end packed-switch
.end method
