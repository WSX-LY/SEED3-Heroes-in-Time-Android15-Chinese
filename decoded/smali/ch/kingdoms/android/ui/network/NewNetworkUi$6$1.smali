.class Lch/kingdoms/android/ui/network/NewNetworkUi$6$1;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$6;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$6;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 7
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 654
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 665
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$6;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$6;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$4(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v2

    invoke-interface {v2}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    .line 666
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$6;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$6;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 669
    :goto_0
    return-void

    .line 656
    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "money":Ljava/lang/String;
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 660
    new-instance v0, Lch/kingdoms/android/ui/network/NetworkInvenView;

    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$6;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$6;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$6;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$6;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v3

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$14(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget-object v4, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$6;

    invoke-static {v4}, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$6;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v4

    iget-object v5, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$6;

    invoke-static {v5}, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$6;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v5

    invoke-static {v5}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v5

    iget-object v6, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$6;

    invoke-static {v6}, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$6;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v6

    invoke-static {v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lch/kingdoms/android/ui/network/NetworkInvenView;-><init>(Ljava/lang/String;Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/network/NewNetworkUi;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V

    .line 661
    .local v0, "netInvenView":Lch/kingdoms/android/ui/network/NetworkInvenView;
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$6;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$6;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v2

    invoke-static {v2, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$16(Lch/kingdoms/android/ui/network/NewNetworkUi;Lch/kingdoms/android/ui/network/ProcessablaResultPacket;)V

    .line 662
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$6;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$6;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
