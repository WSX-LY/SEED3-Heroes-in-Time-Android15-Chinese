.class public Lcom/openfeint/internal/request/CacheFileRequest;
.super Lcom/openfeint/internal/request/CacheRequest;
.source "CacheFileRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheFile"


# instance fields
.field protected path:Ljava/lang/String;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p3}, Lcom/openfeint/internal/request/CacheRequest;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/openfeint/internal/request/CacheFileRequest;->path:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/openfeint/internal/request/CacheFileRequest;->url:Ljava/lang/String;

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
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/openfeint/internal/request/CacheFileRequest;->path:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/openfeint/internal/Util;->saveFile([BLjava/lang/String;)V

    .line 21
    invoke-super {p0}, Lcom/openfeint/internal/request/CacheRequest;->on200Response()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CacheFile"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/openfeint/internal/request/CacheFileRequest;->url:Ljava/lang/String;

    return-object v0
.end method
