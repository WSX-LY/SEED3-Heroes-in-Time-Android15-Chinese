.class Lcom/openfeint/api/resource/Leaderboard$3;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "Leaderboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Leaderboard;->list(Lcom/openfeint/api/resource/Leaderboard$ListCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cb:Lcom/openfeint/api/resource/Leaderboard$ListCB;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/openfeint/api/resource/Leaderboard$ListCB;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/api/resource/Leaderboard$3;->val$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/openfeint/api/resource/Leaderboard$3;->val$cb:Lcom/openfeint/api/resource/Leaderboard$ListCB;

    .line 201
    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string v0, "GET"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/openfeint/api/resource/Leaderboard$3;->val$cb:Lcom/openfeint/api/resource/Leaderboard$ListCB;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/openfeint/api/resource/Leaderboard$3;->val$cb:Lcom/openfeint/api/resource/Leaderboard$ListCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Leaderboard$ListCB;->onFailure(Ljava/lang/String;)V

    .line 221
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 206
    iget-object v3, p0, Lcom/openfeint/api/resource/Leaderboard$3;->val$cb:Lcom/openfeint/api/resource/Leaderboard$ListCB;

    if-eqz v3, :cond_0

    .line 208
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 209
    .local v2, "leaderboards":Ljava/util/List;, "Ljava/util/List<Lcom/openfeint/api/resource/Leaderboard;>;"
    iget-object v3, p0, Lcom/openfeint/api/resource/Leaderboard$3;->val$cb:Lcom/openfeint/api/resource/Leaderboard$ListCB;

    invoke-virtual {v3, v2}, Lcom/openfeint/api/resource/Leaderboard$ListCB;->onSuccess(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v2    # "leaderboards":Ljava/util/List;, "Ljava/util/List<Lcom/openfeint/api/resource/Leaderboard;>;"
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "of_unexpected_response_format"

    invoke-static {v3}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/openfeint/api/resource/Leaderboard$3;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/openfeint/api/resource/Leaderboard$3;->val$path:Ljava/lang/String;

    return-object v0
.end method
