.class Lcom/openfeint/api/resource/Score$2;
.super Lcom/openfeint/internal/request/CompressedBlobDownloadRequest;
.source "Score.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Score;->downloadBlob(Lcom/openfeint/api/resource/Score$DownloadBlobCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/api/resource/Score;

.field private final synthetic val$cb:Lcom/openfeint/api/resource/Score$DownloadBlobCB;


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/Score;Lcom/openfeint/api/resource/Score$DownloadBlobCB;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/api/resource/Score$2;->this$0:Lcom/openfeint/api/resource/Score;

    iput-object p2, p0, Lcom/openfeint/api/resource/Score$2;->val$cb:Lcom/openfeint/api/resource/Score$DownloadBlobCB;

    .line 272
    invoke-direct {p0}, Lcom/openfeint/internal/request/CompressedBlobDownloadRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/openfeint/internal/request/CompressedBlobDownloadRequest;->onFailure(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/openfeint/api/resource/Score$2;->val$cb:Lcom/openfeint/api/resource/Score$DownloadBlobCB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openfeint/api/resource/Score$2;->val$cb:Lcom/openfeint/api/resource/Score$DownloadBlobCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Score$DownloadBlobCB;->onFailure(Ljava/lang/String;)V

    .line 283
    :cond_0
    return-void
.end method

.method protected onSuccessDecompress([B)V
    .locals 1
    .param p1, "bodyData"    # [B

    .prologue
    .line 277
    iget-object v0, p0, Lcom/openfeint/api/resource/Score$2;->this$0:Lcom/openfeint/api/resource/Score;

    iput-object p1, v0, Lcom/openfeint/api/resource/Score;->blob:[B

    .line 278
    iget-object v0, p0, Lcom/openfeint/api/resource/Score$2;->val$cb:Lcom/openfeint/api/resource/Score$DownloadBlobCB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openfeint/api/resource/Score$2;->val$cb:Lcom/openfeint/api/resource/Score$DownloadBlobCB;

    invoke-virtual {v0}, Lcom/openfeint/api/resource/Score$DownloadBlobCB;->onSuccess()V

    .line 279
    :cond_0
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    const-string v0, ""

    return-object v0
.end method

.method public signed()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/openfeint/api/resource/Score$2;->this$0:Lcom/openfeint/api/resource/Score;

    invoke-static {v0}, Lcom/openfeint/api/resource/Score;->access$1(Lcom/openfeint/api/resource/Score;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
