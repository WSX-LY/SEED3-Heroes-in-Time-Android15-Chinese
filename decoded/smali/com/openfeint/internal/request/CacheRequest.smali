.class public abstract Lcom/openfeint/internal/request/CacheRequest;
.super Lcom/openfeint/internal/request/BaseRequest;
.source "CacheRequest.java"


# static fields
.field private static final IF_MODIFIED_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field private static final LastModified:Ljava/lang/String; = "Last-Modified"

.field private static final TAG:Ljava/lang/String; = "CacheRequest"


# instance fields
.field private key_:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/openfeint/internal/request/BaseRequest;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/openfeint/internal/request/CacheRequest;->key_:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private getLastModified()Ljava/lang/String;
    .locals 7

    .prologue
    .line 35
    const/4 v3, 0x0

    .line 36
    .local v3, "result":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 38
    .local v4, "value":Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/openfeint/internal/db/DB;->storeHelper:Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    invoke-virtual {v5}, Lcom/openfeint/internal/db/DB$DataStorageHelperX;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 39
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/openfeint/internal/request/CacheRequest;->key_:Ljava/lang/String;

    aput-object v6, v2, v5

    .line 40
    .local v2, "key":[Ljava/lang/String;
    const-string v5, "SELECT VALUE FROM store where id=?"

    invoke-virtual {v0, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 41
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 42
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 43
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 45
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "key":[Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_1
    return-object v4

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->diskError()V

    goto :goto_0

    .line 48
    .end local v1    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CacheRequest"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private storeLastModified(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/openfeint/internal/request/CacheRequest;->key_:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 60
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/openfeint/internal/db/DB;->storeHelper:Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    invoke-virtual {v3}, Lcom/openfeint/internal/db/DB$DataStorageHelperX;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 61
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "INSERT OR REPLACE INTO store VALUES(?, ?)"

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 63
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->diskError()V

    goto :goto_0

    .line 65
    .end local v1    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "CacheRequest"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected generateRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3

    .prologue
    .line 26
    invoke-super {p0}, Lcom/openfeint/internal/request/BaseRequest;->generateRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 27
    .local v1, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {p0}, Lcom/openfeint/internal/request/CacheRequest;->getLastModified()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "date":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 29
    const-string v2, "If-Modified-Since"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    return-object v1
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "GET"

    return-object v0
.end method

.method public on200Response()V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/openfeint/internal/request/CacheRequest;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/request/CacheRequest;->updateLastModifiedFromResponse(Lorg/apache/http/HttpResponse;)V

    .line 80
    return-void
.end method

.method protected updateLastModifiedFromResponse(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 72
    if-eqz p1, :cond_1

    const-string v1, "Last-Modified"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 73
    .local v0, "h":Lorg/apache/http/Header;
    :goto_0
    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/openfeint/internal/request/CacheRequest;->storeLastModified(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void

    .line 72
    .end local v0    # "h":Lorg/apache/http/Header;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
