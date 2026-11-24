.class Lch/kingdoms/android/ui/NetworkUi$14;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->checkAuction()V
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
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$14;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 4
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 664
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v0

    .line 665
    .local v0, "resultValue":I
    packed-switch v0, :pswitch_data_0

    .line 673
    :goto_0
    return-void

    .line 667
    :pswitch_0
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getItemCount()I

    move-result v1

    .line 668
    .local v1, "size":I
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$14;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, p1}, Lch/kingdoms/android/ui/NetworkUi;->access$28(Lch/kingdoms/android/ui/NetworkUi;IILch/android/api/network/ChResultPacket;)V

    goto :goto_0

    .line 665
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
