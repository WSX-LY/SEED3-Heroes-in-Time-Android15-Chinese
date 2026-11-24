.class Lch/kingdoms/android/ui/NetworkUi$8$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$8;->onResult(Lch/android/api/network/ChResultPacket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$8;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$8$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$8;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 2
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 425
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v0

    .line 426
    .local v0, "resultValue":I
    packed-switch v0, :pswitch_data_0

    .line 431
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$8$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$8;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$8;->access$0(Lch/kingdoms/android/ui/NetworkUi$8;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1, v0}, Lch/kingdoms/android/ui/NetworkUi;->access$1(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 434
    :goto_0
    return-void

    .line 428
    :pswitch_0
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$8$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$8;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$8;->access$0(Lch/kingdoms/android/ui/NetworkUi$8;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$21(Lch/kingdoms/android/ui/NetworkUi;)V

    goto :goto_0

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
