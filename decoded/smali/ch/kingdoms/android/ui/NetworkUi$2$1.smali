.class Lch/kingdoms/android/ui/NetworkUi$2$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$2;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$2$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$2;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 1
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 214
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 217
    :pswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$2$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$2;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$2;->access$0(Lch/kingdoms/android/ui/NetworkUi$2;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$16(Lch/kingdoms/android/ui/NetworkUi;)V

    goto :goto_0

    .line 221
    :pswitch_1
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$2$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$2;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$2;->access$0(Lch/kingdoms/android/ui/NetworkUi$2;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$6(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 222
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$2$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$2;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$2;->access$0(Lch/kingdoms/android/ui/NetworkUi$2;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$17(Lch/kingdoms/android/ui/NetworkUi;)V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
