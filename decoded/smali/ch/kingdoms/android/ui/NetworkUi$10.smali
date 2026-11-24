.class Lch/kingdoms/android/ui/NetworkUi$10;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->checkGift()V
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
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$10;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 4
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 535
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v0

    .line 536
    .local v0, "resultValue":I
    packed-switch v0, :pswitch_data_0

    .line 564
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$10;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v2, v0}, Lch/kingdoms/android/ui/NetworkUi;->access$1(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 567
    :goto_0
    return-void

    .line 539
    :pswitch_0
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getTimeCount()I

    move-result v1

    .line 540
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 558
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$10;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, p1}, Lch/kingdoms/android/ui/NetworkUi;->access$24(Lch/kingdoms/android/ui/NetworkUi;IILch/android/api/network/ChResultPacket;)V

    goto :goto_0

    .line 560
    :cond_0
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$10;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$25(Lch/kingdoms/android/ui/NetworkUi;)V

    goto :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
