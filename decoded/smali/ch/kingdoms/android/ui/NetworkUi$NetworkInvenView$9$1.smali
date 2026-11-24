.class Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;

.field private final synthetic val$money:I

.field private final synthetic val$moneyView:Lch/android/api/ui/ChTextView;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;Lch/android/api/ui/ChPopUpTradeItemView;Lch/android/api/ui/ChTextView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    iput-object p3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9$1;->val$moneyView:Lch/android/api/ui/ChTextView;

    iput p4, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9$1;->val$money:I

    .line 1618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 4
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 1622
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1632
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v2

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/NetworkUi;->access$1(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 1635
    :goto_0
    return-void

    .line 1624
    :pswitch_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    .line 1625
    .local v0, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v1

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v2}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lch/kingdoms/ndk/data/HeroStatus;->setMoney(I)V

    .line 1626
    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 1628
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    .line 1629
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9$1;->val$moneyView:Lch/android/api/ui/ChTextView;

    iget v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9$1;->val$money:I

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$9$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v3}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1622
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
