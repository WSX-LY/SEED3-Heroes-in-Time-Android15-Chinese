.class Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;

    .line 2391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 4
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    const/4 v2, 0x0

    .line 2395
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2396
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2406
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 2407
    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 2408
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;)Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$7(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v2

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/NetworkUi;->access$1(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 2412
    :cond_0
    :goto_0
    return-void

    .line 2398
    :pswitch_0
    invoke-virtual {p1, v2}, Lch/android/api/network/ChResultPacket;->getTime(I)Lch/android/api/network/ChTime;

    move-result-object v0

    .line 2399
    .local v0, "time":Lch/android/api/network/ChTime;
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 2400
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;)Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$6(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)V

    .line 2401
    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 2402
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;->access$0(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;)Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$7(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2403
    const/16 v3, 0x45

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lch/android/api/network/ChTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2402
    invoke-static {v1, v2}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2396
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
