.class Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1$1;->this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;

    .line 1504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 2
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 1508
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1520
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1$1;->this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$1(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 1523
    :goto_0
    return-void

    .line 1511
    :sswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1$1;->this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1512
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1$1;->this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$3(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)V

    goto :goto_0

    .line 1515
    :sswitch_1
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1$1;->this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1516
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1$1;->this$3:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$3(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)V

    goto :goto_0

    .line 1508
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x271e -> :sswitch_1
    .end sparse-switch
.end method
