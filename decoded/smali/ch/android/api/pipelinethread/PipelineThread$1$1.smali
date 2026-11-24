.class Lch/android/api/pipelinethread/PipelineThread$1$1;
.super Landroid/os/Handler;
.source "PipelineThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/pipelinethread/PipelineThread$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/android/api/pipelinethread/PipelineThread$1;

.field private final synthetic val$messageHandlable:Lch/android/api/pipelinethread/MessageHandlable;


# direct methods
.method constructor <init>(Lch/android/api/pipelinethread/PipelineThread$1;Lch/android/api/pipelinethread/MessageHandlable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/pipelinethread/PipelineThread$1$1;->this$1:Lch/android/api/pipelinethread/PipelineThread$1;

    iput-object p2, p0, Lch/android/api/pipelinethread/PipelineThread$1$1;->val$messageHandlable:Lch/android/api/pipelinethread/MessageHandlable;

    .line 20
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 25
    iget-object v0, p0, Lch/android/api/pipelinethread/PipelineThread$1$1;->this$1:Lch/android/api/pipelinethread/PipelineThread$1;

    invoke-static {v0}, Lch/android/api/pipelinethread/PipelineThread$1;->access$0(Lch/android/api/pipelinethread/PipelineThread$1;)Lch/android/api/pipelinethread/PipelineThread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lch/android/api/pipelinethread/PipelineThread;->access$0(Lch/android/api/pipelinethread/PipelineThread;Z)V

    .line 26
    iget-object v0, p0, Lch/android/api/pipelinethread/PipelineThread$1$1;->val$messageHandlable:Lch/android/api/pipelinethread/MessageHandlable;

    invoke-interface {v0, p1}, Lch/android/api/pipelinethread/MessageHandlable;->handle(Landroid/os/Message;)V

    .line 27
    iget-object v0, p0, Lch/android/api/pipelinethread/PipelineThread$1$1;->this$1:Lch/android/api/pipelinethread/PipelineThread$1;

    invoke-static {v0}, Lch/android/api/pipelinethread/PipelineThread$1;->access$0(Lch/android/api/pipelinethread/PipelineThread$1;)Lch/android/api/pipelinethread/PipelineThread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/android/api/pipelinethread/PipelineThread;->access$0(Lch/android/api/pipelinethread/PipelineThread;Z)V

    .line 28
    return-void
.end method
