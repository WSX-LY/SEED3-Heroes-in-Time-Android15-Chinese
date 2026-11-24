.class Lcom/openfeint/internal/OpenFeintInternal$4;
.super Lcom/openfeint/internal/request/RawRequest;
.source "OpenFeintInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/OpenFeintInternal;->loginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/OpenFeintInternal;

.field private final synthetic val$finalToast:Z


# direct methods
.method constructor <init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/OrderedArgList;Z)V
    .locals 0
    .param p2, "$anonymous0"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    iput-boolean p3, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->val$finalToast:Z

    .line 493
    invoke-direct {p0, p2}, Lcom/openfeint/internal/request/RawRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    const-string v0, "POST"

    return-object v0
.end method

.method public onResponse(ILjava/lang/Object;)V
    .locals 4
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 497
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/openfeint/internal/OpenFeintInternal;->access$11(Lcom/openfeint/internal/OpenFeintInternal;Z)V

    .line 499
    const/16 v1, 0xc8

    if-gt v1, p1, :cond_2

    const/16 v1, 0x12c

    if-ge p1, v1, :cond_2

    .line 500
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    check-cast p2, Lcom/openfeint/api/resource/User;

    .end local p2    # "responseBody":Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/openfeint/internal/OpenFeintInternal;->access$1(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/api/resource/User;)V

    .line 503
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->access$12(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 504
    sget-object v1, Lcom/openfeint/internal/OpenFeintInternal$4;->TAG:Ljava/lang/String;

    const-string v2, "Launching post-login runnable now."

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    iget-object v1, v1, Lcom/openfeint/internal/OpenFeintInternal;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v2}, Lcom/openfeint/internal/OpenFeintInternal;->access$12(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 514
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->access$13(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->access$13(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 517
    :cond_1
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v1, v3}, Lcom/openfeint/internal/OpenFeintInternal;->access$6(Lcom/openfeint/internal/OpenFeintInternal;Ljava/lang/Runnable;)V

    .line 518
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v1, v3}, Lcom/openfeint/internal/OpenFeintInternal;->access$14(Lcom/openfeint/internal/OpenFeintInternal;Ljava/util/List;)V

    .line 519
    return-void

    .line 508
    .restart local p2    # "responseBody":Ljava/lang/Object;
    :cond_2
    iget-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->val$finalToast:Z

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v1, p1, p2}, Lcom/openfeint/internal/OpenFeintInternal;->access$7(Lcom/openfeint/internal/OpenFeintInternal;ILjava/lang/Object;)V

    goto :goto_0

    .line 514
    .end local p2    # "responseBody":Ljava/lang/Object;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 515
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    iget-object v2, v2, Lcom/openfeint/internal/OpenFeintInternal;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    const-string v0, "/xp/sessions.json"

    return-object v0
.end method
