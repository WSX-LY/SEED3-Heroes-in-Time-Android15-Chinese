.class Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$2;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->onRegisterRankButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$2;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;

    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 2
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 1006
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1015
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$2;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v1

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    .line 1018
    :goto_0
    return-void

    .line 1008
    :sswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$2;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->access$1(Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;)V

    .line 1009
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$2;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1012
    :sswitch_1
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$2;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1006
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x272e -> :sswitch_1
    .end sparse-switch
.end method
