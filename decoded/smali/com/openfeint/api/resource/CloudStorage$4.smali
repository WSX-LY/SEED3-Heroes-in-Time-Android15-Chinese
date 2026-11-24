.class Lcom/openfeint/api/resource/CloudStorage$4;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "CloudStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/CloudStorage;->delete(Ljava/lang/String;Lcom/openfeint/api/resource/CloudStorage$DeleteCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cb:Lcom/openfeint/api/resource/CloudStorage$DeleteCB;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/openfeint/api/resource/CloudStorage$DeleteCB;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/api/resource/CloudStorage$4;->val$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/openfeint/api/resource/CloudStorage$4;->val$cb:Lcom/openfeint/api/resource/CloudStorage$DeleteCB;

    .line 269
    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    const-string v0, "DELETE"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$4;->val$cb:Lcom/openfeint/api/resource/CloudStorage$DeleteCB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$4;->val$cb:Lcom/openfeint/api/resource/CloudStorage$DeleteCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/CloudStorage$DeleteCB;->onFailure(Ljava/lang/String;)V

    .line 278
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "body"    # Ljava/lang/Object;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$4;->val$cb:Lcom/openfeint/api/resource/CloudStorage$DeleteCB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$4;->val$cb:Lcom/openfeint/api/resource/CloudStorage$DeleteCB;

    invoke-virtual {v0}, Lcom/openfeint/api/resource/CloudStorage$DeleteCB;->onSuccess()V

    .line 275
    :cond_0
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$4;->val$path:Ljava/lang/String;

    return-object v0
.end method

.method public wantsLogin()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    return v0
.end method
