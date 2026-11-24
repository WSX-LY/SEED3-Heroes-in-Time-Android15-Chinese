.class Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iput-object p3, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 4
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 1126
    const/4 v0, 0x0

    .line 1127
    .local v0, "resultTxt":Ljava/lang/String;
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1143
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;)Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$13(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v1

    invoke-interface {v1}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    .line 1144
    const/4 v1, 0x1

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 1147
    :goto_0
    if-eqz v0, :cond_0

    .line 1148
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;)Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1150
    :cond_0
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;)Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

    move-result-object v1

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetEquipItems()[S

    move-result-object v2

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v3

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 1151
    return-void

    .line 1130
    :sswitch_0
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v2}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v2

    invoke-static {v1, v2}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeDeleteItem(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1131
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;)Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1133
    :cond_1
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    goto :goto_0

    .line 1137
    :sswitch_1
    const/16 v1, 0x1c

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 1138
    goto :goto_0

    .line 1140
    :sswitch_2
    const-string v0, "low game version"

    .line 1141
    goto :goto_0

    .line 1127
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x271b -> :sswitch_2
        0x2724 -> :sswitch_1
    .end sparse-switch
.end method
