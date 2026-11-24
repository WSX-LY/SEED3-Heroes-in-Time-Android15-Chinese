.class public Lcom/openfeint/internal/request/BlobPostRequest;
.super Lcom/openfeint/internal/request/BaseRequest;
.source "BlobPostRequest.java"


# instance fields
.field mContentType:Ljava/lang/String;

.field private mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

.field mParams:Lcom/openfeint/internal/resource/BlobUploadParameters;

.field protected mPartSource:Lcom/openfeint/internal/request/multipart/PartSource;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/resource/BlobUploadParameters;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Lcom/openfeint/internal/resource/BlobUploadParameters;
    .param p2, "partSource"    # Lcom/openfeint/internal/request/multipart/PartSource;
    .param p3, "contentType"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/openfeint/internal/request/BaseRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 68
    iput-object p1, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mParams:Lcom/openfeint/internal/resource/BlobUploadParameters;

    .line 69
    iput-object p2, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mPartSource:Lcom/openfeint/internal/request/multipart/PartSource;

    .line 70
    iput-object p3, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mContentType:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method protected generateRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 39
    iget-object v6, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mPartSource:Lcom/openfeint/internal/request/multipart/PartSource;

    if-nez v6, :cond_0

    move-object v4, v5

    .line 60
    :goto_0
    return-object v4

    .line 44
    :cond_0
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/openfeint/internal/request/BlobPostRequest;->url()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 46
    .local v4, "retval":Lorg/apache/http/client/methods/HttpPost;
    const/4 v1, 0x0

    .line 47
    .local v1, "idx":I
    const/4 v6, 0x6

    new-array v3, v6, [Lcom/openfeint/internal/request/multipart/Part;

    .line 48
    .local v3, "parts":[Lcom/openfeint/internal/request/multipart/Part;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .local v2, "idx":I
    new-instance v6, Lcom/openfeint/internal/request/multipart/StringPart;

    const-string v7, "AWSAccessKeyId"

    iget-object v8, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mParams:Lcom/openfeint/internal/resource/BlobUploadParameters;

    iget-object v8, v8, Lcom/openfeint/internal/resource/BlobUploadParameters;->AWSAccessKeyId:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/openfeint/internal/request/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v1

    .line 49
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    new-instance v6, Lcom/openfeint/internal/request/multipart/StringPart;

    const-string v7, "acl"

    iget-object v8, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mParams:Lcom/openfeint/internal/resource/BlobUploadParameters;

    iget-object v8, v8, Lcom/openfeint/internal/resource/BlobUploadParameters;->acl:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/openfeint/internal/request/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v2

    .line 50
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    new-instance v6, Lcom/openfeint/internal/request/multipart/StringPart;

    const-string v7, "key"

    iget-object v8, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mParams:Lcom/openfeint/internal/resource/BlobUploadParameters;

    iget-object v8, v8, Lcom/openfeint/internal/resource/BlobUploadParameters;->key:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/openfeint/internal/request/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v1

    .line 51
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    new-instance v6, Lcom/openfeint/internal/request/multipart/StringPart;

    const-string v7, "policy"

    iget-object v8, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mParams:Lcom/openfeint/internal/resource/BlobUploadParameters;

    iget-object v8, v8, Lcom/openfeint/internal/resource/BlobUploadParameters;->policy:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/openfeint/internal/request/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v2

    .line 52
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    new-instance v6, Lcom/openfeint/internal/request/multipart/StringPart;

    const-string v7, "signature"

    iget-object v8, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mParams:Lcom/openfeint/internal/resource/BlobUploadParameters;

    iget-object v8, v8, Lcom/openfeint/internal/resource/BlobUploadParameters;->signature:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/openfeint/internal/request/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v1

    .line 53
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    new-instance v6, Lcom/openfeint/internal/request/multipart/FilePart;

    const-string v7, "file"

    iget-object v8, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mPartSource:Lcom/openfeint/internal/request/multipart/PartSource;

    iget-object v9, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mContentType:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/openfeint/internal/request/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v2

    .line 55
    new-instance v0, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;

    invoke-direct {v0, v3}, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;-><init>([Lcom/openfeint/internal/request/multipart/Part;)V

    .line 56
    .local v0, "e":Lorg/apache/http/HttpEntity;
    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 58
    invoke-virtual {p0, v4}, Lcom/openfeint/internal/request/BlobPostRequest;->addParams(Lorg/apache/http/client/methods/HttpUriRequest;)V

    goto :goto_0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "POST"

    return-object v0
.end method

.method public onResponse(I[B)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "body"    # [B

    .prologue
    .line 74
    iget-object v0, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, p1, v1}, Lcom/openfeint/internal/request/IRawRequestDelegate;->onResponse(ILjava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, ""

    return-object v0
.end method

.method public setDelegate(Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 0
    .param p1, "mDelegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    .line 81
    return-void
.end method

.method public sign()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public signed()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mParams:Lcom/openfeint/internal/resource/BlobUploadParameters;

    iget-object v0, v0, Lcom/openfeint/internal/resource/BlobUploadParameters;->action:Ljava/lang/String;

    return-object v0
.end method
