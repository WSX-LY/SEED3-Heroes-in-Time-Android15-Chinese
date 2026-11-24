.class Lcom/openfeint/internal/analytics/db/AnalyticsDBManager$DBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AnalyticsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBOpenHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p5, "version"    # I

    .prologue
    .line 49
    iput-object p1, p0, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager$DBOpenHelper;->this$0:Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;

    .line 50
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 51
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager$DBOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 56
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "_oldVersion"    # I
    .param p3, "_newVersion"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 60
    if-nez p2, :cond_0

    if-ne p3, v5, :cond_0

    .line 61
    const-string v1, "AnalyticsDBManager"

    const-string v2, "Migrating DB form V0 to V1.."

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "create table eventLogs (log_id integer primary key autoincrement, log_time integer not null, json text not null );"

    .line 63
    .local v0, "V1_DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    add-int/lit8 p2, p2, 0x1

    .line 66
    .end local v0    # "V1_DATABASE_CREATE":Ljava/lang/String;
    :cond_0
    if-eq p2, p3, :cond_1

    .line 67
    const-string v1, "AnalyticsDBManager"

    const-string v2, "Unable to upgrade DB from %d to %d."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v1, "AnalyticsDBManager"

    const-string v2, "Success on upgrade DB from %d to %d."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
