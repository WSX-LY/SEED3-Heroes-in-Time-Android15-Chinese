.class Lch/kingdoms/android/ui/network/NewNetworkUi$1;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$1;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$1;)Lch/kingdoms/android/ui/network/NewNetworkUi;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$1;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$1;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/pipelinethread/PipelineThread;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/pipelinethread/PipelineThread;->isProcessing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$1;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/pipelinethread/PipelineThread;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/pipelinethread/PipelineThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$1;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/pipelinethread/PipelineThread;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/pipelinethread/PipelineThread;->interrupt()V

    .line 236
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$1;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$1(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$1;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$1(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$1;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$1(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 238
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$1;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$2(Lch/kingdoms/android/ui/network/NewNetworkUi;Landroid/app/ProgressDialog;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$1;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/network/NewNetworkUi$1$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$1$1;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi$1;)V

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 251
    :cond_2
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$1;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$1(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$1;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$1(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$1;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$1(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 253
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$1;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$2(Lch/kingdoms/android/ui/network/NewNetworkUi;Landroid/app/ProgressDialog;)V

    goto :goto_0
.end method
