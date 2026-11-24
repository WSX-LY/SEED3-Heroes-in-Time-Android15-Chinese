.class Lcom/openfeint/internal/request/BaseRequest$1;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/request/BaseRequest;->exec(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/request/BaseRequest;

.field private final synthetic val$context:Lorg/apache/http/protocol/HttpContext;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/request/BaseRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/request/BaseRequest$1;->this$0:Lcom/openfeint/internal/request/BaseRequest;

    iput-object p2, p0, Lcom/openfeint/internal/request/BaseRequest$1;->val$context:Lorg/apache/http/protocol/HttpContext;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 10
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 222
    iget-object v5, p0, Lcom/openfeint/internal/request/BaseRequest$1;->val$context:Lorg/apache/http/protocol/HttpContext;

    .line 223
    const-string v6, "http.request"

    .line 222
    invoke-interface {v5, v6}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 224
    .local v3, "currentReq":Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v5, p0, Lcom/openfeint/internal/request/BaseRequest$1;->val$context:Lorg/apache/http/protocol/HttpContext;

    .line 225
    const-string v6, "http.target_host"

    .line 224
    invoke-interface {v5, v6}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpHost;

    .line 226
    .local v2, "currentHost":Lorg/apache/http/HttpHost;
    iget-object v5, p0, Lcom/openfeint/internal/request/BaseRequest$1;->this$0:Lcom/openfeint/internal/request/BaseRequest;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/request/BaseRequest;->access$0(Lcom/openfeint/internal/request/BaseRequest;Ljava/lang/String;)V

    .line 228
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 230
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    iget-object v5, p0, Lcom/openfeint/internal/request/BaseRequest$1;->this$0:Lcom/openfeint/internal/request/BaseRequest;

    new-array v6, v9, [B

    invoke-static {v5, v6}, Lcom/openfeint/internal/request/BaseRequest;->access$1(Lcom/openfeint/internal/request/BaseRequest;[B)V

    .line 231
    iget-object v5, p0, Lcom/openfeint/internal/request/BaseRequest$1;->this$0:Lcom/openfeint/internal/request/BaseRequest;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/request/BaseRequest;->access$2(Lcom/openfeint/internal/request/BaseRequest;I)V

    .line 233
    if-eqz v4, :cond_2

    .line 234
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 235
    .local v0, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 236
    iget-object v5, p0, Lcom/openfeint/internal/request/BaseRequest$1;->this$0:Lcom/openfeint/internal/request/BaseRequest;

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/request/BaseRequest;->access$3(Lcom/openfeint/internal/request/BaseRequest;Ljava/lang/String;)V

    .line 239
    :cond_0
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 240
    .local v1, "contentType":Lorg/apache/http/Header;
    if-eqz v1, :cond_1

    .line 241
    iget-object v5, p0, Lcom/openfeint/internal/request/BaseRequest$1;->this$0:Lcom/openfeint/internal/request/BaseRequest;

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/request/BaseRequest;->access$4(Lcom/openfeint/internal/request/BaseRequest;Ljava/lang/String;)V

    .line 244
    :cond_1
    iget-object v5, p0, Lcom/openfeint/internal/request/BaseRequest$1;->this$0:Lcom/openfeint/internal/request/BaseRequest;

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/request/BaseRequest;->access$1(Lcom/openfeint/internal/request/BaseRequest;[B)V

    .line 245
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    iget-object v7, p0, Lcom/openfeint/internal/request/BaseRequest$1;->this$0:Lcom/openfeint/internal/request/BaseRequest;

    invoke-static {v7}, Lcom/openfeint/internal/request/BaseRequest;->access$5(Lcom/openfeint/internal/request/BaseRequest;)[B

    move-result-object v7

    array-length v7, v7

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 247
    sget-object v5, Lcom/openfeint/internal/request/BaseRequest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Content-Length mismatch with content - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/openfeint/internal/request/BaseRequest$1;->this$0:Lcom/openfeint/internal/request/BaseRequest;

    invoke-static {v7}, Lcom/openfeint/internal/request/BaseRequest;->access$6(Lcom/openfeint/internal/request/BaseRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v5, p0, Lcom/openfeint/internal/request/BaseRequest$1;->this$0:Lcom/openfeint/internal/request/BaseRequest;

    invoke-static {v5, v9}, Lcom/openfeint/internal/request/BaseRequest;->access$2(Lcom/openfeint/internal/request/BaseRequest;I)V

    .line 251
    .end local v0    # "contentEncoding":Lorg/apache/http/Header;
    .end local v1    # "contentType":Lorg/apache/http/Header;
    :cond_2
    iget-object v5, p0, Lcom/openfeint/internal/request/BaseRequest$1;->this$0:Lcom/openfeint/internal/request/BaseRequest;

    invoke-static {v5, p1}, Lcom/openfeint/internal/request/BaseRequest;->access$7(Lcom/openfeint/internal/request/BaseRequest;Lorg/apache/http/HttpResponse;)V

    .line 252
    const/4 v5, 0x0

    return-object v5
.end method
