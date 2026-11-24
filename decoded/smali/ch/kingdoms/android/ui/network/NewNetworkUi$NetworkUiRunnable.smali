.class Lch/kingdoms/android/ui/network/NewNetworkUi$NetworkUiRunnable;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkUiRunnable"
.end annotation


# instance fields
.field private final resultPacket:Lch/android/api/network/ChResultPacket;

.field final synthetic this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

.field private final what:I


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi;ILch/android/api/network/ChResultPacket;)V
    .locals 0
    .param p2, "what"    # I
    .param p3, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 403
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$NetworkUiRunnable;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput p2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$NetworkUiRunnable;->what:I

    .line 405
    iput-object p3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$NetworkUiRunnable;->resultPacket:Lch/android/api/network/ChResultPacket;

    .line 406
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$NetworkUiRunnable;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    iget v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$NetworkUiRunnable;->what:I

    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$NetworkUiRunnable;->resultPacket:Lch/android/api/network/ChResultPacket;

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$9(Lch/kingdoms/android/ui/network/NewNetworkUi;ILch/android/api/network/ChResultPacket;)V

    .line 412
    return-void
.end method
