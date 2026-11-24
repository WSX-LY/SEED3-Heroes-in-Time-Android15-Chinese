.class public abstract Lcom/openfeint/internal/request/JSONRequest;
.super Lcom/openfeint/internal/request/JSONContentRequest;
.source "JSONRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONContentRequest;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/openfeint/internal/request/OrderedArgList;)V
    .locals 0
    .param p1, "args"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/openfeint/internal/request/JSONContentRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Object;)V
    .locals 3
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 47
    const-string v2, "of_unknown_server_error"

    invoke-static {v2}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "exceptionMessage":Ljava/lang/String;
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/openfeint/internal/resource/ServerException;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 50
    check-cast v0, Lcom/openfeint/internal/resource/ServerException;

    .line 51
    .local v0, "e":Lcom/openfeint/internal/resource/ServerException;
    iget-object v1, v0, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    .line 53
    iget-boolean v2, v0, Lcom/openfeint/internal/resource/ServerException;->needsDeveloperAttention:Z

    if-eqz v2, :cond_0

    .line 54
    const-string v2, "ServerException"

    invoke-static {v2, v1}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/openfeint/internal/OpenFeintInternal;->displayErrorDialog(Ljava/lang/CharSequence;)V

    .line 59
    .end local v0    # "e":Lcom/openfeint/internal/resource/ServerException;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 13
    return-void
.end method

.method protected onResponse(ILjava/lang/Object;)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 39
    const/16 v0, 0xc8

    if-gt v0, p1, :cond_1

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_1

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/openfeint/internal/resource/ServerException;

    if-nez v0, :cond_1

    .line 40
    :cond_0
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/request/JSONRequest;->onSuccess(Ljava/lang/Object;)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onResponse(I[B)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "bodyStream"    # [B

    .prologue
    .line 25
    array-length v1, p2

    if-eqz v1, :cond_1

    array-length v1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-byte v1, p2, v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/openfeint/internal/request/JSONRequest;->isResponseJSON()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    :cond_1
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/request/JSONRequest;->parseJson([B)Ljava/lang/Object;

    move-result-object v0

    .line 27
    .local v0, "responseBody":Ljava/lang/Object;
    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/request/JSONRequest;->onResponse(ILjava/lang/Object;)V

    .line 32
    .end local v0    # "responseBody":Ljava/lang/Object;
    :goto_0
    return-void

    .line 30
    :cond_2
    invoke-static {p1}, Lcom/openfeint/internal/request/JSONRequest;->notJSONError(I)Lcom/openfeint/internal/resource/ServerException;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/openfeint/internal/request/JSONRequest;->onResponse(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 12
    return-void
.end method

.method protected parseJson([B)Ljava/lang/Object;
    .locals 1
    .param p1, "bodyStream"    # [B

    .prologue
    .line 35
    invoke-static {p1}, Lcom/openfeint/internal/Util;->getObjFromJson([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
