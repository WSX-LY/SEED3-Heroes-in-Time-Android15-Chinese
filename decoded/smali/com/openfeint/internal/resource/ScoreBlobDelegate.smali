.class public final Lcom/openfeint/internal/resource/ScoreBlobDelegate;
.super Ljava/lang/Object;
.source "ScoreBlobDelegate.java"


# static fields
.field public static sBlobDownloadedDelegate:Lcom/openfeint/api/resource/Score$BlobDownloadedDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-object v0, Lcom/openfeint/internal/resource/ScoreBlobDelegate;->sBlobDownloadedDelegate:Lcom/openfeint/api/resource/Score$BlobDownloadedDelegate;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final notifyBlobDownloaded(Lcom/openfeint/api/resource/Score;)V
    .locals 1
    .param p0, "score"    # Lcom/openfeint/api/resource/Score;

    .prologue
    .line 8
    sget-object v0, Lcom/openfeint/internal/resource/ScoreBlobDelegate;->sBlobDownloadedDelegate:Lcom/openfeint/api/resource/Score$BlobDownloadedDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openfeint/api/resource/Score;->blob:[B

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/openfeint/internal/resource/ScoreBlobDelegate;->sBlobDownloadedDelegate:Lcom/openfeint/api/resource/Score$BlobDownloadedDelegate;

    invoke-virtual {v0, p0}, Lcom/openfeint/api/resource/Score$BlobDownloadedDelegate;->blobDownloadedForScore(Lcom/openfeint/api/resource/Score;)V

    .line 11
    :cond_0
    return-void
.end method
