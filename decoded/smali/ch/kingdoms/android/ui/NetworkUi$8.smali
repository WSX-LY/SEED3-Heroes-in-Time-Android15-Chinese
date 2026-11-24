.class Lch/kingdoms/android/ui/NetworkUi$8;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->checkSync()V
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
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$8;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$8;)Lch/kingdoms/android/ui/NetworkUi;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$8;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    return-object v0
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 9
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 415
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v3

    .line 416
    .local v3, "resultValue":I
    packed-switch v3, :pswitch_data_0

    .line 442
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$8;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v4, v3}, Lch/kingdoms/android/ui/NetworkUi;->access$1(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 445
    :goto_0
    return-void

    .line 418
    :pswitch_0
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "model":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 420
    .local v0, "gameVersion":I
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$8;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi;->access$20(Lch/kingdoms/android/ui/NetworkUi;)I

    move-result v4

    if-eq v0, v4, :cond_1

    .line 421
    :cond_0
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$8;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v4

    new-instance v5, Lch/kingdoms/android/ui/NetworkUi$8$1;

    invoke-direct {v5, p0}, Lch/kingdoms/android/ui/NetworkUi$8$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$8;)V

    .line 435
    iget-object v6, p0, Lch/kingdoms/android/ui/NetworkUi$8;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v6}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v8, p0, Lch/kingdoms/android/ui/NetworkUi$8;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v8}, Lch/kingdoms/android/ui/NetworkUi;->access$20(Lch/kingdoms/android/ui/NetworkUi;)I

    move-result v8

    .line 421
    invoke-virtual {v4, v5, v6, v7, v8}, Lch/kingdoms/android/network/ChPacketFactory;->createInfoUpdateRequest(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$InfoUpdateRequest;

    move-result-object v1

    .line 436
    .local v1, "infoUpdatePacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$8;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v4

    invoke-virtual {v1, v4}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    goto :goto_0

    .line 438
    .end local v1    # "infoUpdatePacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    :cond_1
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$8;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi;->access$21(Lch/kingdoms/android/ui/NetworkUi;)V

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
