.class public abstract Lcom/openfeint/internal/db/SQLiteOpenHelperX;
.super Ljava/lang/Object;
.source "SQLiteOpenHelperX.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mName:Ljava/lang/String;

.field private mNewVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->TAG:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1
    .param p1, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    iput-object p1, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version must be >= 1, was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mName:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mNewVersion:I

    .line 22
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_1
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 131
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 110
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    iget-object v2, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    iget-object v2, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mName:Ljava/lang/String;

    if-nez v2, :cond_3

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 118
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_3
    :try_start_4
    sget-object v2, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t open "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for writing (will try read-only):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_5
    iget-object v2, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    iget v3, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mNewVersion:I

    if-eq v2, v3, :cond_5

    .line 125
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t upgrade read-only database from version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mNewVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 132
    :catchall_1
    move-exception v2

    .line 133
    if-eqz v0, :cond_4

    :try_start_6
    iget-object v3, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v3, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 134
    :cond_4
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 129
    :cond_5
    :try_start_7
    sget-object v2, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Opened "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in read-only mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-object v0, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 131
    iget-object v2, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 133
    if-eqz v0, :cond_0

    :try_start_8
    iget-object v3, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v3, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v3, :cond_1

    .line 54
    iget-object v3, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 80
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 56
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_2

    .line 57
    iget-object v0, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 60
    .local v1, "success":Z
    const/4 v0, 0x0

    .line 62
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    iget-object v3, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    .line 65
    .local v2, "version":I
    iget v3, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mNewVersion:I

    if-eq v2, v3, :cond_3

    .line 66
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 68
    if-nez v2, :cond_5

    .line 69
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    :goto_1
    iget v3, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mNewVersion:I

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 74
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 79
    :cond_3
    const/4 v1, 0x1

    .line 82
    if-eqz v1, :cond_8

    .line 83
    :try_start_5
    iget-object v3, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_4

    .line 84
    :try_start_6
    iget-object v3, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 86
    :cond_4
    :goto_2
    :try_start_7
    iput-object v0, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 53
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "success":Z
    .end local v2    # "version":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 71
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "success":Z
    .restart local v2    # "version":I
    :cond_5
    :try_start_8
    iget v3, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mNewVersion:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 75
    :catchall_1
    move-exception v3

    .line 76
    :try_start_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 77
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 81
    .end local v2    # "version":I
    :catchall_2
    move-exception v3

    .line 82
    if-eqz v1, :cond_9

    .line 83
    :try_start_a
    iget-object v4, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v4, :cond_6

    .line 84
    :try_start_b
    iget-object v4, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 86
    :cond_6
    :goto_3
    :try_start_c
    iput-object v0, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    :cond_7
    :goto_4
    throw v3

    .line 88
    .restart local v2    # "version":I
    :cond_8
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .end local v2    # "version":I
    :cond_9
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_4

    .line 84
    :catch_0
    move-exception v4

    goto :goto_3

    .restart local v2    # "version":I
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public setSQLiteOpenHelper(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0
    .param p1, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 37
    invoke-virtual {p0}, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->close()V

    .line 38
    return-void
.end method

.method public setSQLiteOpenHelper(Ljava/lang/String;I)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 29
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version must be >= 1, was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mName:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->mNewVersion:I

    .line 32
    invoke-virtual {p0}, Lcom/openfeint/internal/db/SQLiteOpenHelperX;->close()V

    .line 33
    return-void
.end method
