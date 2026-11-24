.class Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;

    .line 2436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 2
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    const/4 v1, 0x0

    .line 2440
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2441
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2449
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;)Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$6(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)V

    .line 2450
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 2451
    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 2452
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;)Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$7(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$1(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 2456
    :cond_0
    :goto_0
    return-void

    .line 2443
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 2444
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;)Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$6(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)V

    .line 2445
    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 2446
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$4;)Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$7(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x4d

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2441
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
