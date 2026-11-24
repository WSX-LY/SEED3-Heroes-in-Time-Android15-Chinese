.class Lch/android/api/pipelinethread/PipelineThread$1;
.super Ljava/lang/Object;
.source "PipelineThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/pipelinethread/PipelineThread;-><init>(Lch/android/api/pipelinethread/MessageHandlable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/android/api/pipelinethread/PipelineThread;

.field private final synthetic val$messageHandlable:Lch/android/api/pipelinethread/MessageHandlable;


# direct methods
.method constructor <init>(Lch/android/api/pipelinethread/PipelineThread;Lch/android/api/pipelinethread/MessageHandlable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/pipelinethread/PipelineThread$1;->this$0:Lch/android/api/pipelinethread/PipelineThread;

    iput-object p2, p0, Lch/android/api/pipelinethread/PipelineThread$1;->val$messageHandlable:Lch/android/api/pipelinethread/MessageHandlable;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/android/api/pipelinethread/PipelineThread$1;)Lch/android/api/pipelinethread/PipelineThread;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lch/android/api/pipelinethread/PipelineThread$1;->this$0:Lch/android/api/pipelinethread/PipelineThread;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 19
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 20
    iget-object v0, p0, Lch/android/api/pipelinethread/PipelineThread$1;->this$0:Lch/android/api/pipelinethread/PipelineThread;

    new-instance v1, Lch/android/api/pipelinethread/PipelineThread$1$1;

    iget-object v2, p0, Lch/android/api/pipelinethread/PipelineThread$1;->val$messageHandlable:Lch/android/api/pipelinethread/MessageHandlable;

    invoke-direct {v1, p0, v2}, Lch/android/api/pipelinethread/PipelineThread$1$1;-><init>(Lch/android/api/pipelinethread/PipelineThread$1;Lch/android/api/pipelinethread/MessageHandlable;)V

    invoke-static {v0, v1}, Lch/android/api/pipelinethread/PipelineThread;->access$1(Lch/android/api/pipelinethread/PipelineThread;Landroid/os/Handler;)V

    .line 30
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 31
    return-void
.end method
