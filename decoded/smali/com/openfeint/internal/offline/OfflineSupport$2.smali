.class Lcom/openfeint/internal/offline/OfflineSupport$2;
.super Lcom/openfeint/internal/request/BaseRequest;
.source "OfflineSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/offline/OfflineSupport;->updateToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$clonedDB:Lcom/openfeint/internal/offline/OfflineSupport$DB;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/request/OrderedArgList;Ljava/lang/String;Lcom/openfeint/internal/offline/OfflineSupport$DB;)V
    .locals 0
    .param p1, "$anonymous0"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 1
    iput-object p2, p0, Lcom/openfeint/internal/offline/OfflineSupport$2;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/openfeint/internal/offline/OfflineSupport$2;->val$clonedDB:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    .line 444
    invoke-direct {p0, p1}, Lcom/openfeint/internal/request/BaseRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    const-string v0, "POST"

    return-object v0
.end method

.method public onResponse(I[B)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "body"    # [B

    .prologue
    .line 447
    return-void
.end method

.method public onResponseOffMainThread(I[B)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "body"    # [B

    .prologue
    .line 449
    const/16 v0, 0xc8

    if-gt v0, p1, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    .line 451
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->access$3()Lcom/openfeint/internal/offline/OfflineSupport$DB;

    move-result-object v0

    iget-object v1, p0, Lcom/openfeint/internal/offline/OfflineSupport$2;->val$clonedDB:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/offline/OfflineSupport$DB;->updateOnUpload(Lcom/openfeint/internal/offline/OfflineSupport$DB;)V

    .line 452
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->access$4()V

    .line 455
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->access$5()V

    .line 468
    :goto_0
    return-void

    .line 457
    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x1f4

    if-le v0, p1, :cond_1

    .line 461
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->access$3()Lcom/openfeint/internal/offline/OfflineSupport$DB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/offline/OfflineSupport$DB;->removeReferencedBlobs()V

    .line 462
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->access$3()Lcom/openfeint/internal/offline/OfflineSupport$DB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/offline/OfflineSupport$DB;->clear()V

    .line 463
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->access$4()V

    .line 466
    :cond_1
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->access$2()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/openfeint/internal/offline/OfflineSupport$2;->val$path:Ljava/lang/String;

    return-object v0
.end method
