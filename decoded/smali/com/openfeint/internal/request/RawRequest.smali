.class public abstract Lcom/openfeint/internal/request/RawRequest;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "RawRequest.java"


# instance fields
.field private mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONRequest;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/openfeint/internal/request/OrderedArgList;)V
    .locals 0
    .param p1, "args"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/openfeint/internal/request/JSONRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 14
    return-void
.end method


# virtual methods
.method public onResponse(I[B)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "body"    # [B

    .prologue
    .line 18
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/openfeint/internal/request/JSONRequest;->onResponse(I[B)V

    .line 19
    iget-object v2, p0, Lcom/openfeint/internal/request/RawRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/openfeint/internal/request/RawRequest;->isResponseJSON()Z

    move-result v2

    if-nez v2, :cond_1

    .line 23
    invoke-static {p1}, Lcom/openfeint/internal/request/RawRequest;->notJSONError(I)Lcom/openfeint/internal/resource/ServerException;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openfeint/internal/resource/ServerException;->generate()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "respText":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/openfeint/internal/request/RawRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    invoke-interface {v2, p1, v1}, Lcom/openfeint/internal/request/IRawRequestDelegate;->onResponse(ILjava/lang/String;)V

    .line 34
    .end local v1    # "respText":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 25
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "respText":Ljava/lang/String;
    goto :goto_0

    .line 30
    .end local v1    # "respText":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method public setDelegate(Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 0
    .param p1, "mDelegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/openfeint/internal/request/RawRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    .line 38
    return-void
.end method
