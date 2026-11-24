.class Lch/kingdoms/android/ui/network/NewNetworkUi$6;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpItemManageMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$6;)Lch/kingdoms/android/ui/network/NewNetworkUi;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 642
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 690
    :goto_0
    return-void

    .line 644
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 645
    new-instance v0, Lch/kingdoms/android/ui/network/MyInvenView;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$14(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    iget-object v4, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v4

    iget-object v5, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v5}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lch/kingdoms/android/ui/network/MyInvenView;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/network/NewNetworkUi;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V

    .line 646
    .local v0, "myInvenView":Lch/kingdoms/android/ui/network/MyInvenView;
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v1, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$15(Lch/kingdoms/android/ui/network/NewNetworkUi;Lch/kingdoms/android/ui/network/ProcessablaResultPacket;)V

    .line 647
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 650
    .end local v0    # "myInvenView":Lch/kingdoms/android/ui/network/MyInvenView;
    :pswitch_1
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/network/NewNetworkUi$6$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$6$1;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi$6;)V

    .line 670
    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v3

    .line 650
    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createShowFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$ShowFence;

    move-result-object v6

    .line 671
    .local v6, "fencePacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$5(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v1

    invoke-virtual {v6, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    goto :goto_0

    .line 674
    .end local v6    # "fencePacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    :pswitch_2
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 676
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$17(Lch/kingdoms/android/ui/network/NewNetworkUi;)V

    goto :goto_0

    .line 679
    :pswitch_3
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 681
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$18(Lch/kingdoms/android/ui/network/NewNetworkUi;)V

    goto :goto_0

    .line 685
    :pswitch_4
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/pipelinethread/PipelineThread;

    move-result-object v1

    invoke-virtual {v1}, Lch/android/api/pipelinethread/PipelineThread;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 686
    .local v7, "sendMsg":Landroid/os/Message;
    const/16 v1, 0x4a47

    iput v1, v7, Landroid/os/Message;->what:I

    .line 687
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$6;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {v1, v7}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 642
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
