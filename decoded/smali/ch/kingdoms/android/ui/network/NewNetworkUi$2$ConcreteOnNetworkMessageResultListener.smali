.class Lch/kingdoms/android/ui/network/NewNetworkUi$2$ConcreteOnNetworkMessageResultListener;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConcreteOnNetworkMessageResultListener"
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$2;

.field private final what:I


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi$2;I)V
    .locals 0
    .param p2, "what"    # I

    .prologue
    .line 387
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2$ConcreteOnNetworkMessageResultListener;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput p2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2$ConcreteOnNetworkMessageResultListener;->what:I

    .line 389
    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 4
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 394
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2$ConcreteOnNetworkMessageResultListener;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$2;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$2;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    iget-object v0, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/android/ui/network/NewNetworkUi$NetworkUiRunnable;

    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2$ConcreteOnNetworkMessageResultListener;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$2;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$2;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v2

    iget v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2$ConcreteOnNetworkMessageResultListener;->what:I

    invoke-direct {v1, v2, v3, p1}, Lch/kingdoms/android/ui/network/NewNetworkUi$NetworkUiRunnable;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;ILch/android/api/network/ChResultPacket;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    return-void
.end method
