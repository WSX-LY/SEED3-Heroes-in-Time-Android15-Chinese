.class public abstract Lcom/openfeint/internal/request/CompressedBlobDownloadRequest;
.super Lcom/openfeint/internal/request/DownloadRequest;
.source "CompressedBlobDownloadRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/openfeint/internal/request/DownloadRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onSuccess([B)V
    .locals 2
    .param p1, "body"    # [B

    .prologue
    .line 13
    :try_start_0
    invoke-static {p1}, Lcom/openfeint/internal/request/Compression;->decompress([B)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/request/CompressedBlobDownloadRequest;->onSuccessDecompress([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    return-void

    .line 14
    :catch_0
    move-exception v0

    .line 15
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "of_io_exception_on_download"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/request/CompressedBlobDownloadRequest;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract onSuccessDecompress([B)V
.end method
