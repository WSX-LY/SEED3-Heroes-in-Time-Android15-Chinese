.class public Lch/android/api/pipelinethread/PipelineThread;
.super Ljava/lang/Object;
.source "PipelineThread.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private isProcessing:Z

.field private final thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lch/android/api/pipelinethread/MessageHandlable;)V
    .locals 2
    .param p1, "messageHandlable"    # Lch/android/api/pipelinethread/MessageHandlable;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/android/api/pipelinethread/PipelineThread;->isProcessing:Z

    .line 15
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lch/android/api/pipelinethread/PipelineThread$1;

    invoke-direct {v1, p0, p1}, Lch/android/api/pipelinethread/PipelineThread$1;-><init>(Lch/android/api/pipelinethread/PipelineThread;Lch/android/api/pipelinethread/MessageHandlable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lch/android/api/pipelinethread/PipelineThread;->thread:Ljava/lang/Thread;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lch/android/api/pipelinethread/PipelineThread;Z)V
    .locals 0

    .prologue
    .line 11
    iput-boolean p1, p0, Lch/android/api/pipelinethread/PipelineThread;->isProcessing:Z

    return-void
.end method

.method static synthetic access$1(Lch/android/api/pipelinethread/PipelineThread;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lch/android/api/pipelinethread/PipelineThread;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lch/android/api/pipelinethread/PipelineThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 59
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lch/android/api/pipelinethread/PipelineThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isProcessing()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lch/android/api/pipelinethread/PipelineThread;->isProcessing:Z

    return v0
.end method

.method public obtainMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lch/android/api/pipelinethread/PipelineThread;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lch/android/api/pipelinethread/PipelineThread;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 36
    iget-object v0, p0, Lch/android/api/pipelinethread/PipelineThread;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lch/android/api/pipelinethread/PipelineThread;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lch/android/api/pipelinethread/PipelineThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lch/android/api/pipelinethread/PipelineThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    .line 55
    return-void
.end method
