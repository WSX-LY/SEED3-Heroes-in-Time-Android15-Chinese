.class Lch/kingdoms/android/ui/network/NetworkInvenView$3;
.super Ljava/lang/Object;
.source "NetworkInvenView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NetworkInvenView;->popUpWithdraw(Lch/kingdoms/ndk/data/Inven$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$3;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    iput-object p2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$3;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iput-object p3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$3;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 155
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 156
    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 157
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$3;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$3;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-static {v2, v3}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$7(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 139
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 140
    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 141
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$3;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v2, v2, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$3;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v3}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v3

    invoke-static {v2, v3}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeWithdrawItem(II)I

    move-result v1

    .line 142
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 143
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$3;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$3(Lch/kingdoms/android/ui/network/NetworkInvenView;)Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x52

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_1
    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 145
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$3;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$3(Lch/kingdoms/android/ui/network/NetworkInvenView;)Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x53

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_2
    if-ltz v1, :cond_0

    .line 147
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$3;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$4(Lch/kingdoms/android/ui/network/NetworkInvenView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 148
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x4a4e

    iput v2, v0, Landroid/os/Message;->what:I

    .line 149
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$3;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$5(Lch/kingdoms/android/ui/network/NetworkInvenView;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$3;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    invoke-static {v4}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$6(Lch/kingdoms/android/ui/network/NetworkInvenView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$3;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v5, v5, Lch/kingdoms/ndk/data/Inven$Item;->dbIndex:I

    iget-object v6, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$3;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v6}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lch/kingdoms/android/network/ChPacketFactory;->createDrawItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;II)Lch/kingdoms/android/network/ChPacketFactory$DrawItem;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$3;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$4(Lch/kingdoms/android/ui/network/NetworkInvenView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
    .end packed-switch
.end method
