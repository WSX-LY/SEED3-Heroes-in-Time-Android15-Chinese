.class Lcom/openfeint/api/resource/CloudStorage$3;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "CloudStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/CloudStorage;->save(Ljava/lang/String;[BLcom/openfeint/api/resource/CloudStorage$SaveCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cb:Lcom/openfeint/api/resource/CloudStorage$SaveCB;

.field private final synthetic val$data:[B

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[BLcom/openfeint/api/resource/CloudStorage$SaveCB;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/api/resource/CloudStorage$3;->val$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/openfeint/api/resource/CloudStorage$3;->val$data:[B

    iput-object p3, p0, Lcom/openfeint/api/resource/CloudStorage$3;->val$cb:Lcom/openfeint/api/resource/CloudStorage$SaveCB;

    .line 217
    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected generateRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3

    .prologue
    .line 222
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p0}, Lcom/openfeint/api/resource/CloudStorage$3;->url()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "retval":Lorg/apache/http/client/methods/HttpPut;
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v2, p0, Lcom/openfeint/api/resource/CloudStorage$3;->val$data:[B

    invoke-static {v2}, Lcom/openfeint/internal/request/Compression;->compress([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 224
    invoke-virtual {p0, v0}, Lcom/openfeint/api/resource/CloudStorage$3;->addParams(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 225
    return-object v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    const-string v0, "PUT"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$3;->val$cb:Lcom/openfeint/api/resource/CloudStorage$SaveCB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$3;->val$cb:Lcom/openfeint/api/resource/CloudStorage$SaveCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/CloudStorage$SaveCB;->onFailure(Ljava/lang/String;)V

    .line 232
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "body"    # Ljava/lang/Object;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$3;->val$cb:Lcom/openfeint/api/resource/CloudStorage$SaveCB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$3;->val$cb:Lcom/openfeint/api/resource/CloudStorage$SaveCB;

    invoke-virtual {v0}, Lcom/openfeint/api/resource/CloudStorage$SaveCB;->onSuccess()V

    .line 229
    :cond_0
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$3;->val$path:Ljava/lang/String;

    return-object v0
.end method

.method public wantsLogin()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method
