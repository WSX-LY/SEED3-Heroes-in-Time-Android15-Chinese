.class public Lcom/openfeint/internal/request/Signer;
.super Ljava/lang/Object;
.source "Signer.java"


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mSecret:Ljava/lang/String;

.field private mSigningKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/openfeint/internal/request/Signer;->mKey:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/openfeint/internal/request/Signer;->mSecret:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/openfeint/internal/request/Signer;->mSecret:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/request/Signer;->mSigningKey:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/openfeint/internal/request/Signer;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/openfeint/internal/request/Signer;->mAccessToken:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/openfeint/internal/request/Signer;->mSecret:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/request/Signer;->mSigningKey:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public sign(Ljava/lang/String;Ljava/lang/String;JLcom/openfeint/internal/request/OrderedArgList;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "secondsSinceEpoch"    # J
    .param p5, "unsignedParams"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    const/16 v4, 0x2b

    .line 28
    iget-object v2, p0, Lcom/openfeint/internal/request/Signer;->mAccessToken:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "token"

    iget-object v3, p0, Lcom/openfeint/internal/request/Signer;->mAccessToken:Ljava/lang/String;

    invoke-virtual {p5, v2, v3}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .local v1, "sigbase":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    iget-object v2, p0, Lcom/openfeint/internal/request/Signer;->mSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p5}, Lcom/openfeint/internal/request/OrderedArgList;->getArgString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "argString":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v0, ""

    .end local v0    # "argString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v2, p0, Lcom/openfeint/internal/request/Signer;->mSigningKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/openfeint/internal/Util;->base64HMACSHA1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
