.class Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$15;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi$15;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$15;

    .line 1173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;)Lch/kingdoms/android/ui/network/NewNetworkUi$15;
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$15;

    return-object v0
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 3
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 1177
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1199
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$15;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$15;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$15;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v1

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    .line 1202
    :goto_0
    return-void

    .line 1179
    :sswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$15;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$15;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$15;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xd7

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/network/NewNetworkUi$15$1$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$15$1$1;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;)V

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1189
    :sswitch_1
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$15;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$15;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$15;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$5(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/network/ChNetwork;->disconnect()V

    .line 1190
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$15;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$15;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$15;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$4(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v0

    invoke-interface {v0}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    .line 1191
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$15;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$15;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$15;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0500a3

    invoke-static {v0, v1}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;I)Landroid/view/View;

    goto :goto_0

    .line 1194
    :sswitch_2
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$15;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$15;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$15;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$5(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/network/ChNetwork;->disconnect()V

    .line 1195
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$15;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$15;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$15;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$4(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v0

    invoke-interface {v0}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    .line 1196
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$15;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$15;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$15;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0500a2

    invoke-static {v0, v1}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;I)Landroid/view/View;

    goto :goto_0

    .line 1177
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x2716 -> :sswitch_2
        0x2717 -> :sswitch_1
    .end sparse-switch
.end method
