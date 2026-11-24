.class Lch/kingdoms/android/db/IapTable;
.super Ljava/lang/Object;
.source "IapTable.java"


# static fields
.field private static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS iap_table(name varchar, value varchar)"

.field private static final DATABASE_TABLE_NAME:Ljava/lang/String; = "iap_table"

.field public static final KEY_DATA:Ljava/lang/String; = "value"

.field public static final KEY_NAME:Ljava/lang/String; = "name"


# instance fields
.field private final m_db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db_"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lch/kingdoms/android/db/IapTable;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    iget-object v0, p0, Lch/kingdoms/android/db/IapTable;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS iap_table(name varchar, value varchar)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lch/kingdoms/android/db/IapTable;->printTable()V

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Z
    .locals 4
    .param p1, "_name"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lch/kingdoms/android/db/IapTable;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "iap_table"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "name = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    .line 123
    :cond_0
    const-string v0, "DB"

    const-string v1, "DataTable.delete is failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "_name"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 61
    iget-object v0, p0, Lch/kingdoms/android/db/IapTable;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "iap_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v2, v10

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "name = \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 61
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 64
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 67
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "DB"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LOAD : SELECT : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", load is failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    const-string v9, "-1"

    .line 82
    :cond_1
    :goto_0
    return-object v9

    .line 74
    :cond_2
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 75
    .local v9, "reuslt":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 78
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "DB"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LOAD : SELECT : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public printTable()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lch/kingdoms/android/db/IapTable;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "iap_table"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 44
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .local v10, "size":I
    :goto_0
    if-lt v9, v10, :cond_0

    .line 52
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 53
    return-void

    .line 45
    :cond_0
    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 44
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 92
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 93
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "value"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lch/kingdoms/android/db/IapTable;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "iap_table"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "name = \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 96
    sget-boolean v2, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 97
    const-string v2, "DB"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SAVE : UPDATE : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lch/kingdoms/android/db/IapTable;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "iap_table"

    invoke-virtual {v2, v3, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 104
    sget-boolean v2, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "DB"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SAVE : INSERT : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_2
    const-string v1, "DB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save failed. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x0

    goto :goto_0
.end method
