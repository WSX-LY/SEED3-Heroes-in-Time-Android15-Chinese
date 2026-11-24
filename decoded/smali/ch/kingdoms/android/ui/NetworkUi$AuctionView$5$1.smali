.class Lch/kingdoms/android/ui/NetworkUi$AuctionView$5$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$5$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;

    .line 2113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 3
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 2117
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2123
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$5$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;->access$0(Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;)Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$10(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$1(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 2126
    :goto_0
    return-void

    .line 2119
    :pswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$5$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;->access$0(Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;)Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$10(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x55

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2120
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$5$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;->access$0(Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;)Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$5$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;->access$0(Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;)Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$1(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)I

    move-result v1

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$5$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;->access$0(Lch/kingdoms/android/ui/NetworkUi$AuctionView$5;)Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$3(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$2(Lch/kingdoms/android/ui/NetworkUi$AuctionView;II)V

    goto :goto_0

    .line 2117
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
