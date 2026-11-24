.class Lch/kingdoms/android/ui/network/NewNetworkUi$12;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpMainTypeMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isClicked:Z

.field final synthetic this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

.field private final synthetic val$assv:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi;Lch/kingdoms/android/ui/network/AuctionSearchSettingView;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$12;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    iput-object p2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$12;->val$assv:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$12;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 853
    iget-boolean v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$12;->isClicked:Z

    if-nez v1, :cond_0

    .line 854
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 869
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 856
    :pswitch_1
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$12;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$12;->val$assv:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;

    invoke-virtual {v2}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->getMainType()I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$22(Lch/kingdoms/android/ui/network/NewNetworkUi;I)V

    .line 857
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$12;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$12;->val$assv:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;

    invoke-virtual {v2}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->getSubType()I

    move-result v2

    add-int/lit16 v2, v2, 0xc8

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$12;->val$assv:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;

    invoke-virtual {v3}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->getMainType()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$23(Lch/kingdoms/android/ui/network/NewNetworkUi;I)V

    .line 858
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$12;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$12;->val$assv:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;

    invoke-virtual {v2}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->getSortType()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$24(Lch/kingdoms/android/ui/network/NewNetworkUi;I)V

    .line 859
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$12;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 860
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4a62

    iput v1, v0, Landroid/os/Message;->what:I

    .line 861
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$12;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {v1, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 864
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_2
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 865
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$12;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpItemManageMenu()V

    goto :goto_0

    .line 854
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
