.class public abstract Lcom/openfeint/internal/request/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# static fields
.field private static DEFAULT_RETRIES:I

.field private static DEFAULT_TIMEOUT:J

.field protected static TAG:Ljava/lang/String;

.field private static sBaseServerURL:Ljava/lang/String;


# instance fields
.field protected mArgs:Lcom/openfeint/internal/request/OrderedArgList;

.field private mCurrentURL:Ljava/lang/String;

.field private mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mHttpParams:Lorg/apache/http/params/HttpParams;

.field private mKey:Ljava/lang/String;

.field private mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field private mResponded:Z

.field private mResponseBody:[B

.field private mResponseCode:I

.field private mResponseEncoding:Ljava/lang/String;

.field private mResponseType:Ljava/lang/String;

.field private mRetriesLeft:I

.field private mSecondsSinceEpoch:J

.field private mSignature:Ljava/lang/String;

.field private response_:Lorg/apache/http/HttpResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x2

    sput v0, Lcom/openfeint/internal/request/BaseRequest;->DEFAULT_RETRIES:I

    .line 36
    const-wide/16 v0, 0x4e20

    sput-wide v0, Lcom/openfeint/internal/request/BaseRequest;->DEFAULT_TIMEOUT:J

    .line 38
    const-string v0, "Request"

    sput-object v0, Lcom/openfeint/internal/request/BaseRequest;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/openfeint/internal/request/BaseRequest;->sBaseServerURL:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponded:Z

    .line 43
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseEncoding:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseType:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mSignature:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mKey:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/openfeint/internal/request/BaseRequest;->mRetriesLeft:I

    .line 57
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mCurrentURL:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mFuture:Ljava/util/concurrent/Future;

    .line 62
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mHttpParams:Lorg/apache/http/params/HttpParams;

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/openfeint/internal/request/OrderedArgList;)V
    .locals 2
    .param p1, "args"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponded:Z

    .line 43
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseEncoding:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseType:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mSignature:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mKey:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/openfeint/internal/request/BaseRequest;->mRetriesLeft:I

    .line 57
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mCurrentURL:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mFuture:Ljava/util/concurrent/Future;

    .line 62
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mHttpParams:Lorg/apache/http/params/HttpParams;

    .line 102
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/request/BaseRequest;->setArgs(Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 103
    return-void
.end method

.method static synthetic access$0(Lcom/openfeint/internal/request/BaseRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/openfeint/internal/request/BaseRequest;->mCurrentURL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/openfeint/internal/request/BaseRequest;[B)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseBody:[B

    return-void
.end method

.method static synthetic access$2(Lcom/openfeint/internal/request/BaseRequest;I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseCode:I

    return-void
.end method

.method static synthetic access$3(Lcom/openfeint/internal/request/BaseRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseEncoding:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/openfeint/internal/request/BaseRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/openfeint/internal/request/BaseRequest;)[B
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseBody:[B

    return-object v0
.end method

.method static synthetic access$6(Lcom/openfeint/internal/request/BaseRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method static synthetic access$7(Lcom/openfeint/internal/request/BaseRequest;Lorg/apache/http/HttpResponse;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/openfeint/internal/request/BaseRequest;->response_:Lorg/apache/http/HttpResponse;

    return-void
.end method

.method private fakeServerException(Lcom/openfeint/internal/resource/ServerException;)V
    .locals 1
    .param p1, "se"    # Lcom/openfeint/internal/resource/ServerException;

    .prologue
    .line 288
    const/4 v0, 0x0

    iput v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseCode:I

    .line 289
    invoke-virtual {p1}, Lcom/openfeint/internal/resource/ServerException;->generate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseBody:[B

    .line 290
    const-string v0, "application/json;"

    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseType:Ljava/lang/String;

    .line 291
    return-void
.end method


# virtual methods
.method protected final addParams(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 1
    .param p1, "retval"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mHttpParams:Lorg/apache/http/params/HttpParams;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {p1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 185
    :cond_0
    return-void
.end method

.method protected baseServerURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/openfeint/internal/request/BaseRequest;->sBaseServerURL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/openfeint/internal/request/BaseRequest;->sBaseServerURL:Ljava/lang/String;

    .line 113
    :cond_0
    sget-object v0, Lcom/openfeint/internal/request/BaseRequest;->sBaseServerURL:Ljava/lang/String;

    return-object v0
.end method

.method protected currentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mCurrentURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mCurrentURL:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->url()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final exec(Z)V
    .locals 11
    .param p1, "forceFailure"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->generateRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v6

    iput-object v6, p0, Lcom/openfeint/internal/request/BaseRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 190
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->numRetries()I

    move-result v6

    iput v6, p0, Lcom/openfeint/internal/request/BaseRequest;->mRetriesLeft:I

    .line 192
    iput-object v9, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseBody:[B

    .line 193
    iput v10, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseCode:I

    .line 194
    iput-object v9, p0, Lcom/openfeint/internal/request/BaseRequest;->response_:Lorg/apache/http/HttpResponse;

    .line 197
    iget-object v6, p0, Lcom/openfeint/internal/request/BaseRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v6}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "path":Ljava/lang/String;
    const-string v6, "//"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 200
    new-instance v5, Lcom/openfeint/internal/resource/ServerException;

    invoke-direct {v5}, Lcom/openfeint/internal/resource/ServerException;-><init>()V

    .line 201
    .local v5, "se":Lcom/openfeint/internal/resource/ServerException;
    const-string v6, "RequestError"

    iput-object v6, v5, Lcom/openfeint/internal/resource/ServerException;->exceptionClass:Ljava/lang/String;

    .line 202
    const-string v6, "of_malformed_request_error"

    invoke-static {v6}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    .line 203
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/openfeint/internal/resource/ServerException;->needsDeveloperAttention:Z

    .line 204
    invoke-direct {p0, v5}, Lcom/openfeint/internal/request/BaseRequest;->fakeServerException(Lcom/openfeint/internal/resource/ServerException;)V

    .line 284
    .end local v5    # "se":Lcom/openfeint/internal/resource/ServerException;
    :goto_0
    iget v6, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseCode:I

    iget-object v7, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseBody:[B

    invoke-virtual {p0, v6, v7}, Lcom/openfeint/internal/request/BaseRequest;->onResponseOffMainThread(I[B)V

    .line 285
    return-void

    .line 209
    :cond_0
    if-eqz p1, :cond_2

    .line 210
    const/4 v6, 0x0

    :try_start_0
    iput v6, p0, Lcom/openfeint/internal/request/BaseRequest;->mRetriesLeft:I

    .line 211
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Forced failure"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :catch_0
    move-exception v2

    .line 261
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/openfeint/internal/request/BaseRequest;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error executing request \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->path()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 265
    iput-object v9, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseBody:[B

    .line 266
    iput v10, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseCode:I

    .line 267
    iput-object v9, p0, Lcom/openfeint/internal/request/BaseRequest;->response_:Lorg/apache/http/HttpResponse;

    .line 269
    iget v6, p0, Lcom/openfeint/internal/request/BaseRequest;->mRetriesLeft:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/openfeint/internal/request/BaseRequest;->mRetriesLeft:I

    if-gez v6, :cond_3

    .line 271
    new-instance v5, Lcom/openfeint/internal/resource/ServerException;

    invoke-direct {v5}, Lcom/openfeint/internal/resource/ServerException;-><init>()V

    .line 272
    .restart local v5    # "se":Lcom/openfeint/internal/resource/ServerException;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/openfeint/internal/resource/ServerException;->exceptionClass:Ljava/lang/String;

    .line 273
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    .line 274
    iget-object v6, v5, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 275
    const-string v6, "of_unknown_server_error"

    invoke-static {v6}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    .line 277
    :cond_1
    invoke-direct {p0, v5}, Lcom/openfeint/internal/request/BaseRequest;->fakeServerException(Lcom/openfeint/internal/resource/ServerException;)V

    goto :goto_0

    .line 214
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "se":Lcom/openfeint/internal/resource/ServerException;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/openfeint/internal/OpenFeintInternal;->getClient()Lorg/apache/http/impl/client/AbstractHttpClient;

    move-result-object v0

    .line 215
    .local v0, "client":Lorg/apache/http/impl/client/AbstractHttpClient;
    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 216
    .local v1, "context":Lorg/apache/http/protocol/HttpContext;
    new-instance v3, Lcom/openfeint/internal/request/BaseRequest$1;

    invoke-direct {v3, p0, v1}, Lcom/openfeint/internal/request/BaseRequest$1;-><init>(Lcom/openfeint/internal/request/BaseRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 256
    .local v3, "handler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/openfeint/internal/request/BaseRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v0, v6, v3, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    .line 258
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/openfeint/internal/request/BaseRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    .end local v0    # "client":Lorg/apache/http/impl/client/AbstractHttpClient;
    .end local v1    # "context":Lorg/apache/http/protocol/HttpContext;
    .end local v3    # "handler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/Object;>;"
    :cond_3
    iget-object v6, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseBody:[B

    if-eqz v6, :cond_0

    goto/16 :goto_0
.end method

.method protected genEntity()Lorg/apache/http/HttpEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 134
    const-string v0, "UTF-8"

    .line 135
    .local v0, "encoding":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v2, p0, Lcom/openfeint/internal/request/BaseRequest;->mArgs:Lcom/openfeint/internal/request/OrderedArgList;

    invoke-virtual {v2}, Lcom/openfeint/internal/request/OrderedArgList;->getArgs()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 136
    .local v1, "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "application/x-www-form-urlencoded; charset="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentType(Ljava/lang/String;)V

    .line 137
    return-object v1
.end method

.method protected generateRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 9

    .prologue
    .line 141
    const/4 v4, 0x0

    .line 142
    .local v4, "retval":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->method()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "meth":Ljava/lang/String;
    const-string v6, "GET"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "DELETE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->url()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "url":Ljava/lang/String;
    iget-object v6, p0, Lcom/openfeint/internal/request/BaseRequest;->mArgs:Lcom/openfeint/internal/request/OrderedArgList;

    invoke-virtual {v6}, Lcom/openfeint/internal/request/OrderedArgList;->getArgString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "argString":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    :cond_1
    const-string v6, "GET"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    .end local v4    # "retval":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 169
    .end local v0    # "argString":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    .restart local v4    # "retval":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->signed()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/openfeint/internal/request/BaseRequest;->mSignature:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/openfeint/internal/request/BaseRequest;->mKey:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 170
    const-string v6, "X-OF-Signature"

    iget-object v7, p0, Lcom/openfeint/internal/request/BaseRequest;->mSignature:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v6, "X-OF-Key"

    iget-object v7, p0, Lcom/openfeint/internal/request/BaseRequest;->mKey:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_3
    invoke-virtual {p0, v4}, Lcom/openfeint/internal/request/BaseRequest;->addParams(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 176
    return-object v4

    .line 151
    .restart local v0    # "argString":Ljava/lang/String;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_4
    const-string v6, "DELETE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v4, Lorg/apache/http/client/methods/HttpDelete;

    .end local v4    # "retval":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .restart local v4    # "retval":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 153
    .end local v0    # "argString":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    .line 155
    .local v3, "postReq":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    const-string v6, "POST"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    .end local v3    # "postReq":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->url()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 160
    .restart local v3    # "postReq":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->genEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_2
    move-object v4, v3

    goto :goto_0

    .line 156
    :cond_6
    const-string v6, "PUT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v3, Lorg/apache/http/client/methods/HttpPut;

    .end local v3    # "postReq":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->url()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .restart local v3    # "postReq":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    goto :goto_1

    .line 157
    :cond_7
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unsupported HTTP method: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lcom/openfeint/internal/request/BaseRequest;->TAG:Ljava/lang/String;

    const-string v7, "Unable to encode request."

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_2
.end method

.method public getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method protected getHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mHttpParams:Lorg/apache/http/params/HttpParams;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mHttpParams:Lorg/apache/http/params/HttpParams;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mHttpParams:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public getResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->response_:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method protected getResponseEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseEncoding:Ljava/lang/String;

    return-object v0
.end method

.method protected getResponseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseType:Ljava/lang/String;

    return-object v0
.end method

.method public launch()V
    .locals 0

    .prologue
    .line 319
    invoke-static {p0}, Lcom/openfeint/internal/OpenFeintInternal;->makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    .line 320
    return-void
.end method

.method public abstract method()Ljava/lang/String;
.end method

.method public needsDeviceSession()Z
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->signed()Z

    move-result v0

    return v0
.end method

.method public numRetries()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/openfeint/internal/request/BaseRequest;->DEFAULT_RETRIES:I

    return v0
.end method

.method public final onResponse()V
    .locals 3

    .prologue
    .line 303
    iget-boolean v1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponded:Z

    if-nez v1, :cond_1

    .line 304
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponded:Z

    .line 305
    iget-object v1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseBody:[B

    if-nez v1, :cond_0

    .line 307
    const/4 v1, 0x0

    iput v1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseCode:I

    .line 308
    new-instance v0, Lcom/openfeint/internal/resource/ServerException;

    invoke-direct {v0}, Lcom/openfeint/internal/resource/ServerException;-><init>()V

    .line 309
    .local v0, "se":Lcom/openfeint/internal/resource/ServerException;
    const-string v1, "Unknown"

    iput-object v1, v0, Lcom/openfeint/internal/resource/ServerException;->exceptionClass:Ljava/lang/String;

    .line 310
    const-string v1, "of_unknown_server_error"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    .line 311
    invoke-direct {p0, v0}, Lcom/openfeint/internal/request/BaseRequest;->fakeServerException(Lcom/openfeint/internal/resource/ServerException;)V

    .line 313
    .end local v0    # "se":Lcom/openfeint/internal/resource/ServerException;
    :cond_0
    iget v1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseCode:I

    iget-object v2, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseBody:[B

    invoke-virtual {p0, v1, v2}, Lcom/openfeint/internal/request/BaseRequest;->onResponse(I[B)V

    .line 314
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openfeint/internal/request/BaseRequest;->response_:Lorg/apache/http/HttpResponse;

    .line 316
    :cond_1
    return-void
.end method

.method public abstract onResponse(I[B)V
.end method

.method protected onResponseOffMainThread(I[B)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "body"    # [B

    .prologue
    .line 299
    return-void
.end method

.method public abstract path()Ljava/lang/String;
.end method

.method public postTimeoutCleanup()V
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 324
    .local v0, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/openfeint/internal/request/BaseRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 326
    if-eqz v0, :cond_0

    .line 329
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/openfeint/internal/request/BaseRequest$2;

    invoke-direct {v3, p0, v0}, Lcom/openfeint/internal/request/BaseRequest$2;-><init>(Lcom/openfeint/internal/request/BaseRequest;Lorg/apache/http/client/methods/HttpUriRequest;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 337
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 340
    :cond_0
    new-instance v1, Lcom/openfeint/internal/resource/ServerException;

    invoke-direct {v1}, Lcom/openfeint/internal/resource/ServerException;-><init>()V

    .line 341
    .local v1, "se":Lcom/openfeint/internal/resource/ServerException;
    const-string v2, "Timeout"

    iput-object v2, v1, Lcom/openfeint/internal/resource/ServerException;->exceptionClass:Ljava/lang/String;

    .line 342
    const-string v2, "of_timeout"

    invoke-static {v2}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    .line 343
    invoke-direct {p0, v1}, Lcom/openfeint/internal/request/BaseRequest;->fakeServerException(Lcom/openfeint/internal/resource/ServerException;)V

    .line 344
    return-void
.end method

.method public final setArgs(Lcom/openfeint/internal/request/OrderedArgList;)V
    .locals 0
    .param p1, "args"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/openfeint/internal/request/BaseRequest;->mArgs:Lcom/openfeint/internal/request/OrderedArgList;

    .line 131
    return-void
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iput-object p1, p0, Lcom/openfeint/internal/request/BaseRequest;->mFuture:Ljava/util/concurrent/Future;

    .line 66
    return-void
.end method

.method protected shouldRedirect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public final sign(Lcom/openfeint/internal/request/Signer;)V
    .locals 6
    .param p1, "authority"    # Lcom/openfeint/internal/request/Signer;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mArgs:Lcom/openfeint/internal/request/OrderedArgList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v0}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mArgs:Lcom/openfeint/internal/request/OrderedArgList;

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->signed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mSecondsSinceEpoch:J

    .line 124
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->method()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/openfeint/internal/request/BaseRequest;->mSecondsSinceEpoch:J

    iget-object v5, p0, Lcom/openfeint/internal/request/BaseRequest;->mArgs:Lcom/openfeint/internal/request/OrderedArgList;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/openfeint/internal/request/Signer;->sign(Ljava/lang/String;Ljava/lang/String;JLcom/openfeint/internal/request/OrderedArgList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mSignature:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/openfeint/internal/request/Signer;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mKey:Ljava/lang/String;

    .line 127
    :cond_1
    return-void
.end method

.method public signed()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public timeout()J
    .locals 2

    .prologue
    .line 55
    sget-wide v0, Lcom/openfeint/internal/request/BaseRequest;->DEFAULT_TIMEOUT:J

    return-wide v0
.end method

.method public url()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->baseServerURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wantsLogin()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method
