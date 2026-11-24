.class public abstract Lcom/openfeint/internal/request/JSONContentRequest;
.super Lcom/openfeint/internal/request/BaseRequest;
.source "JSONContentRequest.java"


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field public static final DESIRED_RESPONSE_PREFIX:Ljava/lang/String; = "application/json;"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/openfeint/internal/request/BaseRequest;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/openfeint/internal/request/OrderedArgList;)V
    .locals 0
    .param p1, "args"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/openfeint/internal/request/BaseRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 35
    return-void
.end method

.method protected static notJSONError(I)Lcom/openfeint/internal/resource/ServerException;
    .locals 6
    .param p0, "responseCode"    # I

    .prologue
    .line 15
    new-instance v0, Lcom/openfeint/internal/resource/ServerException;

    const-string v1, "ServerError"

    const-string v2, "of_server_error_code_format"

    invoke-static {v2}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/openfeint/internal/resource/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected generateRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3

    .prologue
    .line 23
    invoke-super {p0}, Lcom/openfeint/internal/request/BaseRequest;->generateRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 24
    .local v0, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-object v0
.end method

.method protected isResponseJSON()Z
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/openfeint/internal/request/JSONContentRequest;->getResponseType()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "responseType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "application/json;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
