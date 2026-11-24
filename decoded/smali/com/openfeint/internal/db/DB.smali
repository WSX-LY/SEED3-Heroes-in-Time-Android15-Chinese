.class public Lcom/openfeint/internal/db/DB;
.super Ljava/lang/Object;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/db/DB$DataStorageHelper;,
        Lcom/openfeint/internal/db/DB$DataStorageHelperX;
    }
.end annotation


# static fields
.field public static final DBNAME:Ljava/lang/String; = "manifest.db"

.field private static final DBPATH:Ljava/lang/String; = "/openfeint/webui/manifest.db"

.field private static final TAG:Ljava/lang/String; = "SQL"

.field private static final VERSION:I = 0x3

.field public static storeHelper:Lcom/openfeint/internal/db/DB$DataStorageHelperX;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 100
    invoke-static {p0}, Lcom/openfeint/internal/db/DB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$1(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 107
    invoke-static {p0, p1, p2}, Lcom/openfeint/internal/db/DB;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public static createDB(Landroid/content/Context;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {}, Lcom/openfeint/internal/Util;->noSdcardPermission()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    new-instance v2, Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    invoke-direct {v2, p0}, Lcom/openfeint/internal/db/DB$DataStorageHelperX;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/openfeint/internal/db/DB;->storeHelper:Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    .line 47
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 43
    .local v0, "sdcard":Ljava/io/File;
    new-instance v2, Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/openfeint/webui/manifest.db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/openfeint/internal/db/DB$DataStorageHelperX;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/openfeint/internal/db/DB;->storeHelper:Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    goto :goto_0

    .line 45
    .end local v0    # "sdcard":Ljava/io/File;
    :cond_1
    new-instance v2, Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    invoke-direct {v2, p0}, Lcom/openfeint/internal/db/DB$DataStorageHelperX;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/openfeint/internal/db/DB;->storeHelper:Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    goto :goto_0
.end method

.method private static onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/openfeint/internal/db/DB;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 102
    return-void
.end method

.method private static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 108
    if-nez p1, :cond_0

    .line 109
    const-string v0, "CREATE TABLE IF NOT EXISTS manifest (path TEXT PRIMARY KEY, hash TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    add-int/lit8 p1, p1, 0x1

    .line 112
    :cond_0
    if-ne p1, v5, :cond_1

    .line 113
    const-string v0, "CREATE TABLE IF NOT EXISTS store (ID TEXT PRIMARY KEY, VALUE TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    add-int/lit8 p1, p1, 0x1

    .line 116
    :cond_1
    if-ne p1, v2, :cond_2

    .line 117
    const-string v0, "CREATE TABLE IF NOT EXISTS server_manifest (path TEXT PRIMARY KEY NOT NULL, hash TEXT DEFAULT NULL, is_global INTEGER DEFAULT 0);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const-string v0, "CREATE TABLE IF NOT EXISTS dependencies (path TEXT NOT NULL, has_dependency TEXT NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    add-int/lit8 p1, p1, 0x1

    .line 121
    :cond_2
    if-eq p1, p2, :cond_3

    .line 122
    const-string v0, "SQL"

    const-string v1, "Unable to upgrade DB from %d to %d."

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_3
    return-void
.end method

.method public static recover(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 50
    sget-object v1, Lcom/openfeint/internal/db/DB;->storeHelper:Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Lcom/openfeint/internal/db/DB;->storeHelper:Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    invoke-virtual {v1}, Lcom/openfeint/internal/db/DB$DataStorageHelperX;->close()V

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/openfeint/internal/db/DB;->removeDB(Landroid/content/Context;)Z

    move-result v0

    .line 54
    .local v0, "success":Z
    if-eqz v0, :cond_1

    .line 55
    invoke-static {p0}, Lcom/openfeint/internal/db/DB;->createDB(Landroid/content/Context;)V

    .line 56
    sget-object v1, Lcom/openfeint/internal/db/DB;->storeHelper:Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 58
    :cond_1
    :goto_0
    return v0

    .line 56
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static removeDB(Landroid/content/Context;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-static {}, Lcom/openfeint/internal/Util;->noSdcardPermission()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    const-string v3, "manifest.db"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    .line 30
    :goto_0
    return v3

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "state":Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 27
    .local v1, "sdcard":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "/openfeint/webui/manifest.db"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .local v0, "db":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_0

    .line 30
    .end local v0    # "db":Ljava/io/File;
    .end local v1    # "sdcard":Ljava/io/File;
    :cond_1
    const-string v3, "manifest.db"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_0
.end method

.method public static setClientManifest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "clientHash"    # Ljava/lang/String;

    .prologue
    .line 86
    :try_start_0
    sget-object v2, Lcom/openfeint/internal/db/DB;->storeHelper:Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    invoke-virtual {v2}, Lcom/openfeint/internal/db/DB$DataStorageHelperX;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 87
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "INSERT OR REPLACE INTO manifest(path, hash) VALUES(?,?)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->diskError()V

    goto :goto_0

    .line 91
    .end local v1    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SQL"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setClientManifestBatch([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p0, "paths"    # [Ljava/lang/String;
    .param p1, "clientHashes"    # [Ljava/lang/String;

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    array-length v4, p0

    array-length v5, p1

    if-ne v4, v5, :cond_0

    .line 64
    :try_start_0
    sget-object v4, Lcom/openfeint/internal/db/DB;->storeHelper:Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    invoke-virtual {v4}, Lcom/openfeint/internal/db/DB$DataStorageHelperX;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 65
    const-string v4, "INSERT OR REPLACE INTO manifest(path, hash) VALUES(?,?)"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 66
    .local v3, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 67
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-lt v2, v4, :cond_1

    .line 72
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 73
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 82
    .end local v2    # "i":I
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    :goto_1
    return-void

    .line 68
    .restart local v2    # "i":I
    .restart local v3    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :cond_1
    const/4 v4, 0x1

    :try_start_2
    aget-object v5, p0, v2

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 69
    const/4 v4, 0x2

    aget-object v5, p1, v2

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 70
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v2    # "i":I
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_3
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->diskError()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    .line 77
    .end local v1    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_2
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "SQL"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 80
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_1

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 80
    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 81
    :goto_2
    throw v4

    .line 80
    :catch_4
    move-exception v5

    goto :goto_2

    .restart local v2    # "i":I
    .restart local v3    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catch_5
    move-exception v4

    goto :goto_1
.end method
