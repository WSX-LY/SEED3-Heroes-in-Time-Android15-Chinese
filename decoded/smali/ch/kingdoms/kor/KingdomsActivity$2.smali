.class Lch/kingdoms/kor/KingdomsActivity$2;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity;->updateHackApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/kor/KingdomsActivity;

.field private final synthetic val$memoryHackCheckingThread:Lch/android/api/pipelinethread/PipelineThread;


# direct methods
.method constructor <init>(Lch/kingdoms/kor/KingdomsActivity;Lch/android/api/pipelinethread/PipelineThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$2;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    iput-object p2, p0, Lch/kingdoms/kor/KingdomsActivity$2;->val$memoryHackCheckingThread:Lch/android/api/pipelinethread/PipelineThread;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$2;->val$memoryHackCheckingThread:Lch/android/api/pipelinethread/PipelineThread;

    invoke-virtual {v1}, Lch/android/api/pipelinethread/PipelineThread;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 257
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$2;->val$memoryHackCheckingThread:Lch/android/api/pipelinethread/PipelineThread;

    invoke-virtual {v1, v0}, Lch/android/api/pipelinethread/PipelineThread;->sendMessage(Landroid/os/Message;)V

    .line 258
    return-void
.end method
