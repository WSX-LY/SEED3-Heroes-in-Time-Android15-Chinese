.class Lcom/openfeint/api/resource/ServerTimestamp$1;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "ServerTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/ServerTimestamp;->get(Lcom/openfeint/api/resource/ServerTimestamp$GetCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cb:Lcom/openfeint/api/resource/ServerTimestamp$GetCB;


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/ServerTimestamp$GetCB;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/api/resource/ServerTimestamp$1;->val$cb:Lcom/openfeint/api/resource/ServerTimestamp$GetCB;

    .line 50
    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "GET"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/openfeint/api/resource/ServerTimestamp$1;->val$cb:Lcom/openfeint/api/resource/ServerTimestamp$GetCB;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/openfeint/api/resource/ServerTimestamp$1;->val$cb:Lcom/openfeint/api/resource/ServerTimestamp$GetCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/ServerTimestamp$GetCB;->onFailure(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/openfeint/api/resource/ServerTimestamp$1;->val$cb:Lcom/openfeint/api/resource/ServerTimestamp$GetCB;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/openfeint/api/resource/ServerTimestamp$1;->val$cb:Lcom/openfeint/api/resource/ServerTimestamp$GetCB;

    check-cast p1, Lcom/openfeint/api/resource/ServerTimestamp;

    .end local p1    # "responseBody":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/ServerTimestamp$GetCB;->onSuccess(Lcom/openfeint/api/resource/ServerTimestamp;)V

    .line 57
    :cond_0
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "/xp/server_timestamp"

    return-object v0
.end method
