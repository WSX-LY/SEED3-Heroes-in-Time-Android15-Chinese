.class Lch/kingdoms/android/ui/NetworkUi$2;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->popUpNetworkView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/NetworkUi;

.field private final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$2;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$2;->val$pd:Landroid/app/ProgressDialog;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$2;)Lch/kingdoms/android/ui/NetworkUi;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$2;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 209
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$2;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v1

    invoke-virtual {v1}, Lch/android/api/network/ChNetwork;->connect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$2;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$2$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/NetworkUi$2$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$2;)V

    .line 229
    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$2;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createConnect(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$Connect;

    move-result-object v0

    .line 231
    .local v0, "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$2;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 232
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$2;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    iget-object v1, v1, Lch/kingdoms/android/ui/NetworkUi;->handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$2$2;

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$2;->val$pd:Landroid/app/ProgressDialog;

    invoke-direct {v2, p0, v3}, Lch/kingdoms/android/ui/NetworkUi$2$2;-><init>(Lch/kingdoms/android/ui/NetworkUi$2;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    .end local v0    # "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$2;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    iget-object v1, v1, Lch/kingdoms/android/ui/NetworkUi;->handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$2$3;

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$2;->val$pd:Landroid/app/ProgressDialog;

    invoke-direct {v2, p0, v3}, Lch/kingdoms/android/ui/NetworkUi$2$3;-><init>(Lch/kingdoms/android/ui/NetworkUi$2;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
