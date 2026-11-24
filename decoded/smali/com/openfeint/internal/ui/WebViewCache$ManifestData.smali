.class Lcom/openfeint/internal/ui/WebViewCache$ManifestData;
.super Ljava/lang/Object;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/WebViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManifestData"
.end annotation


# instance fields
.field globals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field objects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iput-object v9, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    .line 230
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    .line 232
    const/4 v6, 0x0

    .line 234
    .local v6, "result":Landroid/database/Cursor;
    :try_start_0
    const-string v9, "SELECT path, hash, is_global FROM server_manifest"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_2

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 238
    :cond_0
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, "path":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "hash":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_3

    move v3, v7

    .line 242
    .local v3, "isGlobal":Z
    :goto_0
    iget-object v9, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    new-instance v10, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    invoke-direct {v10, v5, v2}, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    if-eqz v3, :cond_1

    iget-object v9, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    invoke-interface {v9, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    .line 237
    if-nez v9, :cond_0

    .line 246
    .end local v2    # "hash":Ljava/lang/String;
    .end local v3    # "isGlobal":Z
    .end local v5    # "path":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 248
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_4

    .line 268
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 270
    :goto_2
    return-void

    .restart local v2    # "hash":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_3
    move v3, v8

    .line 240
    goto :goto_0

    .line 248
    .end local v2    # "hash":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 250
    .restart local v5    # "path":Ljava/lang/String;
    const-string v8, "SELECT has_dependency FROM dependencies WHERE path = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 251
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_6

    .line 252
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    .line 253
    .local v4, "manifestItem":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    if-eqz v4, :cond_6

    .line 254
    iget-object v0, v4, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    .line 255
    .local v0, "deps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    :cond_5
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    .line 256
    if-nez v8, :cond_5

    .line 261
    .end local v0    # "deps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "manifestItem":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 263
    .end local v5    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_3
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->diskError()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    goto :goto_2

    .line 265
    .end local v1    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_2
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v7, "WebViewCache"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SQLite exception. "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 268
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v7

    goto :goto_2

    .line 267
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 268
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 269
    :goto_3
    throw v7

    .line 268
    :catch_4
    move-exception v8

    goto :goto_3

    :catch_5
    move-exception v7

    goto :goto_2
.end method

.method constructor <init>([B)V
    .locals 10
    .param p1, "stm"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    .line 230
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    .line 305
    const/4 v2, 0x0

    .line 307
    .local v2, "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    :try_start_0
    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 308
    .local v7, "reader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v8, 0x2000

    invoke-direct {v0, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "buffered":Ljava/io/BufferedReader;
    move-object v3, v2

    .line 309
    .end local v2    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .local v3, "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    :cond_0
    :goto_0
    :sswitch_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 346
    return-void

    .line 310
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 312
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 324
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, "pieces":[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x2

    if-lt v8, v9, :cond_4

    .line 327
    const/4 v8, 0x0

    aget-object v8, v6, v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x40

    if-ne v8, v9, :cond_3

    .line 328
    const/4 v8, 0x0

    aget-object v8, v6, v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 329
    .local v5, "path":Ljava/lang/String;
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 334
    :goto_1
    new-instance v2, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-direct {v2, v5, v8}, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 335
    .end local v3    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .restart local v2    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    :try_start_2
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v8, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v3, v2

    .end local v2    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .restart local v3    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    goto :goto_0

    .line 317
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "pieces":[Ljava/lang/String;
    :sswitch_1
    if-eqz v3, :cond_2

    .line 318
    :try_start_3
    iget-object v8, v3, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 343
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 344
    .end local v0    # "buffered":Ljava/io/BufferedReader;
    .end local v3    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    :goto_2
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 320
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .restart local v0    # "buffered":Ljava/io/BufferedReader;
    .restart local v3    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    :cond_2
    :try_start_4
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Manifest Syntax Error: Dependency without an item"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 332
    .restart local v6    # "pieces":[Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    aget-object v5, v6, v8

    .restart local v5    # "path":Ljava/lang/String;
    goto :goto_1

    .line 337
    .end local v5    # "path":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Manifest Syntax Error: Extra items in line"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 343
    .end local v0    # "buffered":Ljava/io/BufferedReader;
    .end local v3    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "pieces":[Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v2    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    :catch_1
    move-exception v1

    goto :goto_2

    .line 312
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x2d -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method saveTo(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v7, 0x1

    .line 274
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 275
    const-string v6, "DELETE FROM server_manifest;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 276
    const-string v6, "DELETE FROM dependencies;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 277
    const-string v6, "INSERT INTO server_manifest(path, hash, is_global) VALUES(?, ?, ?)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 278
    .local v3, "insertIntoManifest":Landroid/database/sqlite/SQLiteStatement;
    const-string v6, "INSERT INTO dependencies(path, has_dependency) VALUES(?, ?)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 279
    .local v2, "insertIntoDependencies":Landroid/database/sqlite/SQLiteStatement;
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 293
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 301
    .end local v2    # "insertIntoDependencies":Landroid/database/sqlite/SQLiteStatement;
    .end local v3    # "insertIntoManifest":Landroid/database/sqlite/SQLiteStatement;
    :goto_0
    return-void

    .line 279
    .restart local v2    # "insertIntoDependencies":Landroid/database/sqlite/SQLiteStatement;
    .restart local v3    # "insertIntoManifest":Landroid/database/sqlite/SQLiteStatement;
    :cond_1
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 280
    .local v5, "path":Ljava/lang/String;
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    .line 282
    .local v4, "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 283
    const/4 v6, 0x2

    iget-object v9, v4, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->hash:Ljava/lang/String;

    invoke-virtual {v3, v6, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 284
    const/4 v9, 0x3

    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_1
    int-to-long v10, v6

    invoke-virtual {v3, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 285
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 287
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 288
    iget-object v6, v4, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    .local v0, "dep":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v2, v9, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 290
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 294
    .end local v0    # "dep":Ljava/lang/String;
    .end local v2    # "insertIntoDependencies":Landroid/database/sqlite/SQLiteStatement;
    .end local v3    # "insertIntoManifest":Landroid/database/sqlite/SQLiteStatement;
    .end local v4    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .end local v5    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_3
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->diskError()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_0

    .line 284
    .end local v1    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    .restart local v2    # "insertIntoDependencies":Landroid/database/sqlite/SQLiteStatement;
    .restart local v3    # "insertIntoManifest":Landroid/database/sqlite/SQLiteStatement;
    .restart local v4    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 296
    .end local v2    # "insertIntoDependencies":Landroid/database/sqlite/SQLiteStatement;
    .end local v3    # "insertIntoManifest":Landroid/database/sqlite/SQLiteStatement;
    .end local v4    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .end local v5    # "path":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v6, "WebViewCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SQLite exception. "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 299
    :try_start_6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v6

    goto :goto_0

    .line 298
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 299
    :try_start_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 300
    :goto_3
    throw v6

    .line 299
    :catch_4
    move-exception v7

    goto :goto_3

    .restart local v2    # "insertIntoDependencies":Landroid/database/sqlite/SQLiteStatement;
    .restart local v3    # "insertIntoManifest":Landroid/database/sqlite/SQLiteStatement;
    :catch_5
    move-exception v6

    goto :goto_0
.end method
