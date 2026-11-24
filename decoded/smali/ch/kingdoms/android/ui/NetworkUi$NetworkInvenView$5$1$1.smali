.class Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1;

.field private final synthetic val$editPopUp:Lch/android/api/ui/ChPopUpEditTextView;

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1;Lch/android/api/ui/ChPopUpEditTextView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1$1;->this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1$1;->val$editPopUp:Lch/android/api/ui/ChPopUpEditTextView;

    iput-object p3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iput-object p4, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1;
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1$1;->this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1421
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1456
    :cond_0
    :goto_0
    return-void

    .line 1424
    :pswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1$1;->val$editPopUp:Lch/android/api/ui/ChPopUpEditTextView;

    invoke-virtual {v0}, Lch/android/api/ui/ChPopUpEditTextView;->getEditText()Ljava/lang/String;

    move-result-object v3

    .line 1425
    .local v3, "receiverId":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1426
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1427
    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1428
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1$1;->this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v0

    new-instance v1, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1$1$1;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1$1$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1$1;)V

    .line 1446
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1$1;->this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v4, v4, Lch/kingdoms/ndk/data/Inven$Item;->dbIndex:I

    iget-object v5, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v5}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v5

    .line 1428
    invoke-virtual/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory;->createGiveItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;II)Lch/kingdoms/android/network/ChPacketFactory$GiveItem;

    move-result-object v6

    .line 1447
    .local v6, "giftItem":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1$1;->this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v6, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    goto :goto_0

    .line 1451
    .end local v3    # "receiverId":Ljava/lang/String;
    .end local v6    # "giftItem":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1452
    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    goto :goto_0

    .line 1422
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
