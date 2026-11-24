.class Lcom/openfeint/api/resource/CloudStorage$2;
.super Lcom/openfeint/internal/request/CompressedBlobDownloadRequest;
.source "CloudStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/CloudStorage;->load(Ljava/lang/String;Lcom/openfeint/api/resource/CloudStorage$LoadCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cb:Lcom/openfeint/api/resource/CloudStorage$LoadCB;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/openfeint/api/resource/CloudStorage$LoadCB;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/api/resource/CloudStorage$2;->val$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/openfeint/api/resource/CloudStorage$2;->val$cb:Lcom/openfeint/api/resource/CloudStorage$LoadCB;

    .line 154
    invoke-direct {p0}, Lcom/openfeint/internal/request/CompressedBlobDownloadRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$2;->val$cb:Lcom/openfeint/api/resource/CloudStorage$LoadCB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$2;->val$cb:Lcom/openfeint/api/resource/CloudStorage$LoadCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/CloudStorage$LoadCB;->onFailure(Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onSuccessDecompress([B)V
    .locals 1
    .param p1, "body"    # [B

    .prologue
    .line 158
    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$2;->val$cb:Lcom/openfeint/api/resource/CloudStorage$LoadCB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$2;->val$cb:Lcom/openfeint/api/resource/CloudStorage$LoadCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/CloudStorage$LoadCB;->onSuccess([B)V

    .line 159
    :cond_0
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$2;->val$path:Ljava/lang/String;

    return-object v0
.end method

.method public wantsLogin()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method
