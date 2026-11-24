.class Lcom/openfeint/internal/OpenFeintInternal$2;
.super Lcom/openfeint/internal/request/RawRequest;
.source "OpenFeintInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/OpenFeintInternal;->createDeviceSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/OpenFeintInternal;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/OrderedArgList;)V
    .locals 0
    .param p2, "$anonymous0"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    .line 411
    invoke-direct {p0, p2}, Lcom/openfeint/internal/request/RawRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    const-string v0, "POST"

    return-object v0
.end method

.method public needsDeviceSession()Z
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public onResponse(ILjava/lang/Object;)V
    .locals 7
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 416
    iget-object v4, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v4, v2}, Lcom/openfeint/internal/OpenFeintInternal;->access$2(Lcom/openfeint/internal/OpenFeintInternal;Z)V

    .line 418
    const/16 v4, 0xc8

    if-gt v4, p1, :cond_4

    const/16 v4, 0x12c

    if-ge p1, v4, :cond_4

    .line 420
    instance-of v4, p2, Lcom/openfeint/internal/resource/Device;

    if-eqz v4, :cond_1

    move-object v0, p2

    .line 421
    check-cast v0, Lcom/openfeint/internal/resource/Device;

    .line 422
    .local v0, "d":Lcom/openfeint/internal/resource/Device;
    iget-object v4, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    iget-object v5, v0, Lcom/openfeint/internal/resource/Device;->parental_control:Lcom/openfeint/internal/resource/ParentalControl;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/openfeint/internal/resource/Device;->parental_control:Lcom/openfeint/internal/resource/ParentalControl;

    iget-boolean v5, v5, Lcom/openfeint/internal/resource/ParentalControl;->enabled:Z

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v2}, Lcom/openfeint/internal/OpenFeintInternal;->access$3(Lcom/openfeint/internal/OpenFeintInternal;Z)V

    .line 425
    .end local v0    # "d":Lcom/openfeint/internal/resource/Device;
    :cond_1
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v2, v3}, Lcom/openfeint/internal/OpenFeintInternal;->access$4(Lcom/openfeint/internal/OpenFeintInternal;Z)V

    .line 426
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v2}, Lcom/openfeint/internal/OpenFeintInternal;->access$5(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 427
    sget-object v2, Lcom/openfeint/internal/OpenFeintInternal$2;->TAG:Ljava/lang/String;

    const-string v3, "Launching post-device-session runnable now."

    invoke-static {v2, v3}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    iget-object v2, v2, Lcom/openfeint/internal/OpenFeintInternal;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v3}, Lcom/openfeint/internal/OpenFeintInternal;->access$5(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 437
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v2}, Lcom/openfeint/internal/OpenFeintInternal;->access$8(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v2}, Lcom/openfeint/internal/OpenFeintInternal;->access$8(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 441
    :cond_3
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v2, v6}, Lcom/openfeint/internal/OpenFeintInternal;->access$9(Lcom/openfeint/internal/OpenFeintInternal;Ljava/lang/Runnable;)V

    .line 442
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v2, v6}, Lcom/openfeint/internal/OpenFeintInternal;->access$10(Lcom/openfeint/internal/OpenFeintInternal;Ljava/util/List;)V

    .line 443
    return-void

    .line 432
    :cond_4
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v2, v6}, Lcom/openfeint/internal/OpenFeintInternal;->access$6(Lcom/openfeint/internal/OpenFeintInternal;Ljava/lang/Runnable;)V

    .line 433
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v2, p1, p2}, Lcom/openfeint/internal/OpenFeintInternal;->access$7(Lcom/openfeint/internal/OpenFeintInternal;ILjava/lang/Object;)V

    goto :goto_0

    .line 437
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 438
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    iget-object v3, v3, Lcom/openfeint/internal/OpenFeintInternal;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    const-string v0, "/xp/devices"

    return-object v0
.end method
