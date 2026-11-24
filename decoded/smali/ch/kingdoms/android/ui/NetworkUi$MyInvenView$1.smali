.class Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->onItemSelect(Landroid/view/View;Lch/kingdoms/ndk/data/Inven$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$MyInvenView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iput-object p3, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;)Lch/kingdoms/android/ui/NetworkUi$MyInvenView;
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1104
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1157
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1158
    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1107
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1108
    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1109
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget-boolean v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->equiped:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget-boolean v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 1110
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x11d

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x11e

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x11c

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x136

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x10c

    if-eq v1, v2, :cond_2

    .line 1111
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x135

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x105

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x134

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x104

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x133

    if-eq v1, v2, :cond_2

    .line 1112
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x115

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x114

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x107

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x106

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x10a

    if-eq v1, v2, :cond_2

    .line 1113
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x109

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x113

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x10b

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x132

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x108

    if-eq v1, v2, :cond_2

    .line 1114
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x111

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x112

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x110

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x10f

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_2

    .line 1115
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x10d

    if-eq v1, v2, :cond_2

    .line 1116
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0x127

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0xf7

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0xfa

    if-le v1, v2, :cond_2

    .line 1118
    :cond_1
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0xa1

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v2, 0xa4

    if-gt v1, v2, :cond_3

    .line 1119
    :cond_2
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1122
    :cond_3
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1$1;

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-direct {v2, p0, v3, v4}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V

    .line 1152
    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v3

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget-object v4, v4, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    new-instance v5, Lch/android/api/network/ChNetworkItemData;

    iget-object v6, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget-object v7, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v7}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lch/android/api/network/ChNetworkItemData;-><init>(Lch/kingdoms/ndk/data/Inven$Item;I)V

    .line 1122
    invoke-virtual {v1, v2, v3, v4, v5}, Lch/kingdoms/android/network/ChPacketFactory;->createDepositItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;Lch/android/api/network/ChNetworkItemData;)Lch/kingdoms/android/network/ChPacketFactory$DepositItem;

    move-result-object v0

    .line 1153
    .local v0, "depositPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    goto/16 :goto_0

    .line 1105
    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
    .end packed-switch
.end method
