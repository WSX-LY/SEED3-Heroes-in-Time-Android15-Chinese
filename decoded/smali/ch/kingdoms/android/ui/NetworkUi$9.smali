.class Lch/kingdoms/android/ui/NetworkUi$9;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->checkNotice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/NetworkUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$9;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$9;)Lch/kingdoms/android/ui/NetworkUi;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$9;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    return-object v0
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 6
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    const/4 v5, 0x0

    .line 456
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v2

    .line 457
    .local v2, "resultValue":I
    packed-switch v2, :pswitch_data_0

    .line 498
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$9;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v4, v2}, Lch/kingdoms/android/ui/NetworkUi;->access$1(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 501
    :goto_0
    return-void

    .line 459
    :pswitch_0
    invoke-virtual {p1, v5}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 460
    .local v3, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v1, "notices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lch/android/api/ui/ChNetworkNoticeView$NoticeData;>;"
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$9;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v4, v5, v3, p1}, Lch/kingdoms/android/ui/NetworkUi;->access$22(Lch/kingdoms/android/ui/NetworkUi;IILch/android/api/network/ChResultPacket;)Lch/android/api/ui/ChNetworkNoticeView$NoticeData;

    .line 464
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    const/4 v4, -0x1

    if-gt v0, v4, :cond_0

    .line 468
    if-lez v3, :cond_1

    .line 469
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$9;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    iget-object v4, v4, Lch/kingdoms/android/ui/NetworkUi;->handler:Landroid/os/Handler;

    new-instance v5, Lch/kingdoms/android/ui/NetworkUi$9$1;

    invoke-direct {v5, p0, v1}, Lch/kingdoms/android/ui/NetworkUi$9$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$9;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 466
    :cond_0
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$9;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v4, v0, v3, p1}, Lch/kingdoms/android/ui/NetworkUi;->access$22(Lch/kingdoms/android/ui/NetworkUi;IILch/android/api/network/ChResultPacket;)Lch/android/api/ui/ChNetworkNoticeView$NoticeData;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 488
    :cond_1
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$9;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    iget-object v4, v4, Lch/kingdoms/android/ui/NetworkUi;->handler:Landroid/os/Handler;

    new-instance v5, Lch/kingdoms/android/ui/NetworkUi$9$2;

    invoke-direct {v5, p0}, Lch/kingdoms/android/ui/NetworkUi$9$2;-><init>(Lch/kingdoms/android/ui/NetworkUi$9;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
