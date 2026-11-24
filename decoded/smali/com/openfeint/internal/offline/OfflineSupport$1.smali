.class Lcom/openfeint/internal/offline/OfflineSupport$1;
.super Lcom/openfeint/api/resource/Score$SubmitToCB;
.source "OfflineSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/offline/OfflineSupport;->uploadScoresWithBlobs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$os:Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/offline/OfflineSupport$1;->val$os:Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;

    .line 380
    invoke-direct {p0}, Lcom/openfeint/api/resource/Score$SubmitToCB;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "failureMessage"    # Ljava/lang/String;

    .prologue
    .line 387
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->access$2()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 388
    return-void
.end method

.method public onSuccess(Z)V
    .locals 1
    .param p1, "newHighScore"    # Z

    .prologue
    .line 383
    iget-object v0, p0, Lcom/openfeint/internal/offline/OfflineSupport$1;->val$os:Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;

    invoke-static {v0}, Lcom/openfeint/internal/offline/OfflineSupport;->removeAndUploadNext(Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;)V

    .line 384
    return-void
.end method
