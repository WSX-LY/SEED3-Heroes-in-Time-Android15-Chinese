.class public abstract Lcom/openfeint/internal/request/DownloadRequest;
.super Lcom/openfeint/internal/request/BaseRequest;
.source "DownloadRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/openfeint/internal/request/BaseRequest;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/openfeint/internal/request/OrderedArgList;)V
    .locals 0
    .param p1, "args"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/openfeint/internal/request/BaseRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 21
    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "GET"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string v0, "ServerException"

    invoke-static {v0, p1}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public onResponse(I[B)V
    .locals 9
    .param p1, "responseCode"    # I
    .param p2, "body"    # [B

    .prologue
    .line 31
    const-string v7, "of_unknown_server_error"

    invoke-static {v7}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "exceptionMessage":Ljava/lang/String;
    const/16 v7, 0xc8

    if-gt v7, p1, :cond_0

    const/16 v7, 0x12c

    if-ge p1, v7, :cond_0

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/request/DownloadRequest;->onSuccess([B)V

    .line 51
    :goto_0
    return-void

    .line 35
    :cond_0
    const/16 v7, 0x194

    if-ne v7, p1, :cond_2

    .line 36
    const-string v7, "of_file_not_found"

    invoke-static {v7}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    :cond_1
    :goto_1
    invoke-virtual {p0, v2}, Lcom/openfeint/internal/request/DownloadRequest;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_2
    :try_start_0
    new-instance v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    invoke-direct {v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;-><init>()V

    .line 40
    .local v5, "jsonFactory":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    invoke-virtual {v5, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->createJsonParser([B)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v3

    .line 41
    .local v3, "jp":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    new-instance v4, Lcom/openfeint/internal/JsonResourceParser;

    invoke-direct {v4, v3}, Lcom/openfeint/internal/JsonResourceParser;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V

    .line 42
    .local v4, "jrp":Lcom/openfeint/internal/JsonResourceParser;
    invoke-virtual {v4}, Lcom/openfeint/internal/JsonResourceParser;->parse()Ljava/lang/Object;

    move-result-object v6

    .line 43
    .local v6, "responseBody":Ljava/lang/Object;
    if-eqz v6, :cond_1

    instance-of v7, v6, Lcom/openfeint/internal/resource/ServerException;

    if-eqz v7, :cond_1

    .line 44
    move-object v0, v6

    check-cast v0, Lcom/openfeint/internal/resource/ServerException;

    move-object v1, v0

    .line 45
    .local v1, "e":Lcom/openfeint/internal/resource/ServerException;
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/openfeint/internal/resource/ServerException;->exceptionClass:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 47
    .end local v1    # "e":Lcom/openfeint/internal/resource/ServerException;
    .end local v3    # "jp":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .end local v4    # "jrp":Lcom/openfeint/internal/JsonResourceParser;
    .end local v5    # "jsonFactory":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    .end local v6    # "responseBody":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "of_error_parsing_error_message"

    invoke-static {v7}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected abstract onSuccess([B)V
.end method
