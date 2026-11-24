.class Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;
.super Lcom/openfeint/internal/request/CacheRequest;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/WebViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManifestRequest"
.end annotation


# instance fields
.field private data:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

.field final synthetic this$0:Lcom/openfeint/internal/ui/WebViewCache;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    .line 478
    invoke-direct {p0, p2}, Lcom/openfeint/internal/request/CacheRequest;-><init>(Ljava/lang/String;)V

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->data:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    .line 479
    return-void
.end method

.method static synthetic access$0(Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;Lcom/openfeint/internal/ui/WebViewCache$ManifestData;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->data:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    return-void
.end method

.method static synthetic access$1(Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;)V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->finishManifest()V

    return-void
.end method

.method static synthetic access$2(Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;Lorg/apache/http/HttpResponse;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->updateLastModifiedFromResponse(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method static synthetic access$3(Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;)Lcom/openfeint/internal/ui/WebViewCache;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    return-object v0
.end method

.method private finishManifest()V
    .locals 5

    .prologue
    .line 534
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->data:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    if-eqz v2, :cond_0

    .line 536
    :try_start_0
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->data:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    sget-object v3, Lcom/openfeint/internal/db/DB;->storeHelper:Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    invoke-virtual {v3}, Lcom/openfeint/internal/db/DB$DataStorageHelperX;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->saveTo(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v2, v2, Lcom/openfeint/internal/ui/WebViewCache;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->data:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 541
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 545
    .end local v1    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WebViewCache"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 543
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-static {v2}, Lcom/openfeint/internal/ui/WebViewCache;->access$1(Lcom/openfeint/internal/ui/WebViewCache;)V

    goto :goto_1
.end method


# virtual methods
.method public onResponse(I[B)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "body"    # [B

    .prologue
    .line 487
    return-void
.end method

.method public onResponseOffMainThread(I[B)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "body"    # [B

    .prologue
    .line 490
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_1

    .line 492
    :try_start_0
    new-instance v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    invoke-direct {v1, p2}, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;-><init>([B)V

    iput-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->data:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_0
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->data:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->data:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v1, v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 508
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->data:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    .line 510
    new-instance v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest$1;

    invoke-direct {v1, p0}, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest$1;-><init>(Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;)V

    .line 526
    invoke-virtual {v1}, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest$1;->launch()V

    .line 531
    :goto_1
    return-void

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WebViewCache"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 499
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    sget-object v2, Lcom/openfeint/internal/db/DB;->storeHelper:Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    invoke-virtual {v2}, Lcom/openfeint/internal/db/DB$DataStorageHelperX;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->data:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 500
    :catch_1
    move-exception v0

    .line 501
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "WebViewCache"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 528
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->finishManifest()V

    .line 529
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->updateLastModifiedFromResponse(Lorg/apache/http/HttpResponse;)V

    goto :goto_1
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v0, v0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/openfeint/internal/ui/WebViewCache;->access$0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public signed()Z
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method
