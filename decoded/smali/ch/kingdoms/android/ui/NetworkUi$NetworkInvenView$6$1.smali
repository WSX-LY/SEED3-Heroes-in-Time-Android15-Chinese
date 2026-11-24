.class Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;

.field private final synthetic val$priceView:Lch/android/api/ui/ChPopUpTradeItemView;

.field private final synthetic val$quantityView:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;Lch/android/api/ui/ChPopUpTradeItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iput-object p3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->val$quantityView:Lch/android/api/ui/ChPopUpTradeItemView;

    iput-object p4, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->val$priceView:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 1496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;
    .locals 1

    .prologue
    .line 1496
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 1500
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1501
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1503
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1504
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v0

    new-instance v1, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1$1;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;)V

    .line 1524
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->dbIndex:I

    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->val$quantityView:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v4}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v4

    iget-object v5, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->val$priceView:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v5}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v5

    .line 1504
    invoke-virtual/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory;->createRegisterSaleItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;III)Lch/kingdoms/android/network/ChPacketFactory$RegisterSaleItem;

    move-result-object v6

    .line 1525
    .local v6, "registerPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v6, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 1526
    invoke-static {v7}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    goto :goto_0

    .line 1529
    .end local v6    # "registerPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1530
    invoke-static {v7}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1531
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$4(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 1501
    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
