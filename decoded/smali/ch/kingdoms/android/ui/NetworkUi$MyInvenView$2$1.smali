.class Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;

.field private final synthetic val$moneyView:Lch/android/api/ui/ChTextView;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;Lch/android/api/ui/ChPopUpTradeItemView;Lch/android/api/ui/ChTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    iput-object p3, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2$1;->val$moneyView:Lch/android/api/ui/ChTextView;

    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 4
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 1192
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1202
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;)Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v2

    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v3

    invoke-static {v2, v3}, Lch/kingdoms/android/ui/NetworkUi;->access$1(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 1205
    :goto_0
    return-void

    .line 1194
    :pswitch_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    .line 1195
    .local v0, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v2

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v3}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v3

    sub-int v1, v2, v3

    .line 1196
    .local v1, "money":I
    invoke-virtual {v0, v1}, Lch/kingdoms/ndk/data/HeroStatus;->setMoney(I)V

    .line 1197
    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 1198
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    .line 1199
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2$1;->val$moneyView:Lch/android/api/ui/ChTextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1192
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
