.class Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$2;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->updateMyInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 5
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 996
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1002
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getHeroScore()I

    move-result v1

    const-string v2, ""

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->access$2(Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v3

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$7(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->access$1(Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    :goto_0
    return-void

    .line 998
    :pswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getHeroScore()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->access$2(Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v3

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$7(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->access$1(Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 996
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
