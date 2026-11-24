.class Lcom/openfeint/internal/ui/WebViewCache$7;
.super Lcom/openfeint/internal/request/BaseRequest;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/WebViewCache;->singleRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/WebViewCache;

.field private final synthetic val$finalPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$7;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iput-object p2, p0, Lcom/openfeint/internal/ui/WebViewCache$7;->val$finalPath:Ljava/lang/String;

    .line 1011
    invoke-direct {p0}, Lcom/openfeint/internal/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1013
    const-string v0, "GET"

    return-object v0
.end method

.method public onResponse(I[B)V
    .locals 6
    .param p1, "responseCode"    # I
    .param p2, "body"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1016
    const/16 v2, 0xc8

    if-eq p1, v2, :cond_0

    .line 1017
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache$7;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v2, v2, Lcom/openfeint/internal/ui/WebViewCache;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/openfeint/internal/ui/WebViewCache$7;->val$finalPath:Ljava/lang/String;

    invoke-static {v2, v5, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1018
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1032
    :goto_0
    return-void

    .line 1022
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->access$2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/openfeint/internal/ui/WebViewCache$7;->val$finalPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/openfeint/internal/Util;->saveFile([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache$7;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v2, v2, Lcom/openfeint/internal/ui/WebViewCache;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/openfeint/internal/ui/WebViewCache$7;->val$finalPath:Ljava/lang/String;

    invoke-static {v2, v5, v5, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1031
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1023
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1025
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache$7;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v2, v2, Lcom/openfeint/internal/ui/WebViewCache;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/openfeint/internal/ui/WebViewCache$7;->val$finalPath:Ljava/lang/String;

    invoke-static {v2, v5, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1026
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public path()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/webui/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$7;->val$finalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public signed()Z
    .locals 1

    .prologue
    .line 1012
    const/4 v0, 0x0

    return v0
.end method
