.class public Lcom/openfeint/internal/db/DB$DataStorageHelperX;
.super Lcom/openfeint/internal/db/SQLiteOpenHelperX;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/db/DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataStorageHelperX"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    new-instance v0, Lcom/openfeint/internal/db/DB$DataStorageHelper;

    invoke-direct {v0, p1}, Lcom/openfeint/internal/db/DB$DataStorageHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/openfeint/internal/db/SQLiteOpenHelperX;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 128
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/openfeint/internal/db/SQLiteOpenHelperX;-><init>(Ljava/lang/String;I)V

    .line 131
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 135
    invoke-static {p1}, Lcom/openfeint/internal/db/DB;->access$0(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 136
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 140
    invoke-static {p1, p2, p3}, Lcom/openfeint/internal/db/DB;->access$1(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 141
    return-void
.end method
