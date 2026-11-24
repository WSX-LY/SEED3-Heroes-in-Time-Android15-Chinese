.class public Lcom/openfeint/internal/request/GenericRequest;
.super Lcom/openfeint/internal/request/JSONContentRequest;
.source "GenericRequest.java"


# instance fields
.field private mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

.field final mMethod:Ljava/lang/String;

.field final mPath:Ljava/lang/String;

.field private mRetries:I

.field private mTimeout:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p5, "delegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openfeint/internal/request/IRawRequestDelegate;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "httpParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONContentRequest;-><init>()V

    .line 13
    invoke-super {p0}, Lcom/openfeint/internal/request/JSONContentRequest;->timeout()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/openfeint/internal/request/GenericRequest;->mTimeout:J

    .line 14
    invoke-super {p0}, Lcom/openfeint/internal/request/JSONContentRequest;->numRetries()I

    move-result v5

    iput v5, p0, Lcom/openfeint/internal/request/GenericRequest;->mRetries:I

    .line 27
    if-eqz p4, :cond_1

    .line 28
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 48
    :cond_1
    new-instance v0, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v0, p3}, Lcom/openfeint/internal/request/OrderedArgList;-><init>(Ljava/util/Map;)V

    .line 49
    .local v0, "argList":Lcom/openfeint/internal/request/OrderedArgList;
    const-string v5, "format"

    const-string v6, "json"

    invoke-virtual {v0, v5, v6}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/request/GenericRequest;->setArgs(Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 52
    iput-object p2, p0, Lcom/openfeint/internal/request/GenericRequest;->mMethod:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/openfeint/internal/request/GenericRequest;->mPath:Ljava/lang/String;

    .line 55
    invoke-virtual {p0, p5}, Lcom/openfeint/internal/request/GenericRequest;->setDelegate(Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 56
    return-void

    .line 28
    .end local v0    # "argList":Lcom/openfeint/internal/request/OrderedArgList;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 30
    .local v3, "k":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, "v":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 32
    .local v2, "i":I
    const-string v6, "connectionTimeout"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 33
    invoke-virtual {p0}, Lcom/openfeint/internal/request/GenericRequest;->getHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    goto :goto_0

    .line 34
    :cond_3
    const-string v6, "socketTimeout"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 35
    invoke-virtual {p0}, Lcom/openfeint/internal/request/GenericRequest;->getHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    goto :goto_0

    .line 36
    :cond_4
    const-string v6, "lingerTimeout"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 37
    invoke-virtual {p0}, Lcom/openfeint/internal/request/GenericRequest;->getHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/apache/http/params/HttpConnectionParams;->setLinger(Lorg/apache/http/params/HttpParams;I)V

    goto :goto_0

    .line 38
    :cond_5
    const-string v6, "timeout"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 39
    int-to-long v6, v2

    iput-wide v6, p0, Lcom/openfeint/internal/request/GenericRequest;->mTimeout:J

    goto :goto_0

    .line 40
    :cond_6
    const-string v6, "retries"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 41
    iput v2, p0, Lcom/openfeint/internal/request/GenericRequest;->mRetries:I

    goto :goto_0
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/openfeint/internal/request/GenericRequest;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public numRetries()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/openfeint/internal/request/GenericRequest;->mRetries:I

    return v0
.end method

.method public onResponse(I[B)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "body"    # [B

    .prologue
    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/openfeint/internal/request/GenericRequest;->isResponseJSON()Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    invoke-static {p1}, Lcom/openfeint/internal/request/GenericRequest;->notJSONError(I)Lcom/openfeint/internal/resource/ServerException;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openfeint/internal/resource/ServerException;->generate()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "respText":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/openfeint/internal/request/GenericRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/openfeint/internal/request/GenericRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    invoke-interface {v2, p1, v1}, Lcom/openfeint/internal/request/IRawRequestDelegate;->onResponse(ILjava/lang/String;)V

    .line 79
    .end local v1    # "respText":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 68
    :cond_1
    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    .restart local v1    # "respText":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .end local v1    # "respText":Ljava/lang/String;
    :cond_2
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/openfeint/internal/request/GenericRequest;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public setDelegate(Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 0
    .param p1, "mDelegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/openfeint/internal/request/GenericRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    .line 83
    return-void
.end method

.method public timeout()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/openfeint/internal/request/GenericRequest;->mTimeout:J

    return-wide v0
.end method
