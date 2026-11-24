.class public Lch/kingdoms/android/db/UuidTable;
.super Ljava/lang/Object;
.source "UuidTable.java"


# static fields
.field private static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS uuid_table(name integer, value varchar)"

.field private static final DATABASE_TABLE_NAME:Ljava/lang/String; = "uuid_table"

.field public static final KEY_DATA:Ljava/lang/String; = "value"

.field public static final KEY_NAME:Ljava/lang/String; = "name"


# instance fields
.field private final m_db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db_"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lch/kingdoms/android/db/UuidTable;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    iget-object v0, p0, Lch/kingdoms/android/db/UuidTable;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS uuid_table(name integer, value varchar)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lch/kingdoms/android/db/UuidTable;->printTable()V

    .line 39
    :cond_0
    return-void
.end method

.method private declared-synchronized setValue()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 97
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "uuid":Ljava/lang/String;
    const-string v3, "name"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v3, "value"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lch/kingdoms/android/db/UuidTable;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "uuid_table"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 104
    sget-boolean v2, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "DB"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SAVE : INSERT : UUID "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    const/4 v2, 0x1

    .line 110
    :cond_1
    monitor-exit p0

    return v2

    .line 97
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 62
    iget-object v0, p0, Lch/kingdoms/android/db/UuidTable;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uuid_table"

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v2, v10

    .line 63
    const-string v3, "name = \'0\'"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 62
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 65
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 68
    invoke-direct {p0}, Lch/kingdoms/android/db/UuidTable;->setValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const-string v0, "DB"

    const-string v1, "LOAD : SELECT : UUID load is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    :goto_0
    return-object v4

    .line 73
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/db/UuidTable;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uuid_table"

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v2, v10

    .line 74
    const-string v3, "name = \'0\'"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 73
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 78
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 80
    .local v9, "result":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 81
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 82
    const-string v0, "DB"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LOAD : SELECT : UUID : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v4, v9

    .line 84
    goto :goto_0
.end method

.method public printTable()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lch/kingdoms/android/db/UuidTable;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uuid_table"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 45
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .local v11, "size":I
    :goto_0
    if-lt v9, v11, :cond_0

    .line 53
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 54
    return-void

    .line 46
    :cond_0
    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 47
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 48
    .local v10, "id":I
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 45
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method
