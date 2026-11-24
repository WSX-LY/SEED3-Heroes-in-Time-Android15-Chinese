.class Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->popUpWithdraw(Lch/kingdoms/ndk/data/Inven$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iput-object p3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 1338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1342
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1343
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1385
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1386
    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1387
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-static {v2, v3}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$4(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 1391
    :cond_0
    :goto_0
    return-void

    .line 1345
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1346
    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1347
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v2, v2, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v3}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v3

    invoke-static {v2, v3}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeWithdrawItem(II)I

    move-result v0

    .line 1348
    .local v0, "result":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1349
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x52

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1350
    :cond_1
    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    .line 1351
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x53

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1352
    :cond_2
    if-ltz v0, :cond_0

    .line 1353
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    new-instance v3, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4$1;

    invoke-direct {v3, p0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;)V

    .line 1378
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v4

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v5, v5, Lch/kingdoms/ndk/data/Inven$Item;->dbIndex:I

    iget-object v6, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v6}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v6

    .line 1353
    invoke-virtual {v2, v3, v4, v5, v6}, Lch/kingdoms/android/network/ChPacketFactory;->createDrawItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;II)Lch/kingdoms/android/network/ChPacketFactory$DrawItem;

    move-result-object v1

    .line 1379
    .local v1, "withdrawPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    goto :goto_0

    .line 1343
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
    .end packed-switch
.end method
