.class public Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;
.super Ljava/lang/Object;
.source "AnalyticsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/analytics/db/AnalyticsDBManager$DBOpenHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "analytics.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final KEY_ID:Ljava/lang/String; = "log_id"

.field public static final KEY_JSON:Ljava/lang/String; = "json"

.field public static final KEY_TIME:Ljava/lang/String; = "log_time"

.field private static final TABLE_NAME:Ljava/lang/String; = "eventLogs"

.field private static instance:Lcom/openfeint/internal/analytics/db/AnalyticsDBManager; = null

.field private static final tag:Ljava/lang/String; = "AnalyticsDBManager"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/openfeint/internal/analytics/db/AnalyticsDBManager$DBOpenHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->dbHelper:Lcom/openfeint/internal/analytics/db/AnalyticsDBManager$DBOpenHelper;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager$DBOpenHelper;

    const-string v3, "analytics.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager$DBOpenHelper;-><init>(Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->dbHelper:Lcom/openfeint/internal/analytics/db/AnalyticsDBManager$DBOpenHelper;

    .line 38
    :cond_0
    return-void
.end method

.method public static instance(Landroid/content/Context;)Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->instance:Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->instance:Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;

    .line 43
    :cond_0
    sget-object v0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->instance:Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;

    return-object v0
.end method


# virtual methods
.method public clearValue()Z
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "eventLogs"

    const-string v2, "log_id=*"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 74
    const-string v1, "AnalyticsDBManager"

    const-string v2, "close db..."

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnalyticsDBManager"

    const-string v2, "db close failed"

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAllItems()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->openToRead()V

    .line 192
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v13, "listKeyValues":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :try_start_0
    iget-object v0, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "eventLogs"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 196
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 198
    :cond_0
    new-instance v12, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {v12, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 199
    .local v12, "line":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "log_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 200
    .local v10, "id":Ljava/lang/Long;
    const-string v0, "log_id"

    invoke-interface {v12, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v0, "log_time"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 202
    .local v14, "time":Ljava/lang/Long;
    const-string v0, "log_time"

    invoke-interface {v12, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "json"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 204
    .local v11, "json":Ljava/lang/String;
    const-string v0, "json"

    invoke-interface {v12, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 197
    if-nez v0, :cond_0

    .line 214
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 223
    .end local v10    # "id":Ljava/lang/Long;
    .end local v11    # "json":Ljava/lang/String;
    .end local v12    # "line":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "time":Ljava/lang/Long;
    :goto_0
    invoke-virtual {p0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->close()V

    .line 225
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_1
    return-object v13

    .line 208
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 210
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "AnalyticsDBManager"

    const-string v1, "Exception in query."

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 217
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 219
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v0, "AnalyticsDBManager"

    const-string v1, "Exception creating query."

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 223
    invoke-virtual {p0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->close()V

    goto :goto_1

    .line 213
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 214
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 215
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 222
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    .line 223
    invoke-virtual {p0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->close()V

    .line 224
    throw v0
.end method

.method public insertLog(Ljava/lang/String;)J
    .locals 9
    .param p1, "log_json"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->openToWR()V

    .line 128
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v1, "newValues":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 130
    .local v2, "now":J
    const-string v6, "log_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    const-string v6, "json"

    invoke-virtual {v1, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-wide/16 v4, -0x1

    .line 134
    .local v4, "success":J
    :try_start_0
    iget-object v6, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "eventLogs"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 135
    const-string v6, "AnalyticsDBManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "insert "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-virtual {p0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->close()V

    .line 141
    :goto_0
    return-wide v4

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "AnalyticsDBManager"

    const-string v7, "insert failed"

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    invoke-virtual {p0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->close()V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 139
    invoke-virtual {p0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->close()V

    .line 140
    throw v6
.end method

.method public openToRead()V
    .locals 3

    .prologue
    .line 103
    const-string v1, "AnalyticsDBManager"

    const-string v2, "open db readonly.."

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->dbHelper:Lcom/openfeint/internal/analytics/db/AnalyticsDBManager$DBOpenHelper;

    invoke-virtual {v1}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    const-string v1, "AnalyticsDBManager"

    const-string v2, "db open failed"

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :try_start_1
    iget-object v1, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 111
    :catch_1
    move-exception v1

    goto :goto_0

    .line 116
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteException;
    :cond_1
    const-string v1, "AnalyticsDBManager"

    const-string v2, "db already open "

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openToWR()V
    .locals 3

    .prologue
    .line 85
    const-string v1, "AnalyticsDBManager"

    const-string v2, "open db to WR.."

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->dbHelper:Lcom/openfeint/internal/analytics/db/AnalyticsDBManager$DBOpenHelper;

    invoke-virtual {v1}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    const-string v1, "AnalyticsDBManager"

    const-string v2, "db open failed"

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :try_start_1
    iget-object v1, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 93
    :catch_1
    move-exception v1

    goto :goto_0

    .line 98
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteException;
    :cond_1
    const-string v1, "AnalyticsDBManager"

    const-string v2, "db already open "

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeLog(J)Z
    .locals 8
    .param p1, "_rowIndex"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->openToWR()V

    .line 147
    const/4 v1, 0x0

    .line 149
    .local v1, "success":Z
    :try_start_0
    iget-object v4, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "eventLogs"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "log_id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    move v1, v2

    .line 150
    :goto_0
    if-eqz v1, :cond_1

    .line 151
    const-string v2, "AnalyticsDBManager"

    const-string v3, "removeLog success"

    invoke-static {v2, v3}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :goto_1
    invoke-virtual {p0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->close()V

    .line 160
    :goto_2
    return v1

    :cond_0
    move v1, v3

    .line 149
    goto :goto_0

    .line 153
    :cond_1
    :try_start_1
    const-string v2, "AnalyticsDBManager"

    const-string v3, "removeLog failed"

    invoke-static {v2, v3}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "AnalyticsDBManager"

    const-string v3, "remove row %i failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    invoke-virtual {p0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->close()V

    goto :goto_2

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 157
    invoke-virtual {p0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->close()V

    .line 158
    throw v2
.end method

.method public removeLog(JJ)Z
    .locals 8
    .param p1, "start_id"    # J
    .param p3, "end_id"    # J

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->openToWR()V

    .line 165
    iget-object v3, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "eventLogs"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "log_id>="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "log_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    move v0, v1

    .line 166
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 167
    const-string v3, "AnalyticsDBManager"

    const-string v4, "batch removeLog  success from %d to %d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_1
    invoke-virtual {p0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->close()V

    .line 171
    return v0

    .end local v0    # "success":Z
    :cond_0
    move v0, v2

    .line 165
    goto :goto_0

    .line 169
    .restart local v0    # "success":Z
    :cond_1
    const-string v3, "AnalyticsDBManager"

    const-string v4, "batch removeLog failed from %d to %d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/openfeint/internal/logcat/OFLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateLog(JLjava/lang/String;)Z
    .locals 6
    .param p1, "_rowIndex"    # J
    .param p3, "log_json"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->openToWR()V

    .line 181
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 182
    .local v0, "newValues":Landroid/content/ContentValues;
    const-string v2, "log_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    const-string v2, "log_time"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "eventLogs"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "log_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 186
    .local v1, "success":Z
    :goto_0
    invoke-virtual {p0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->close()V

    .line 187
    return v1

    .line 185
    .end local v1    # "success":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
