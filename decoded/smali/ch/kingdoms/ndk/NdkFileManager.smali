.class public Lch/kingdoms/ndk/NdkFileManager;
.super Ljava/lang/Object;
.source "NdkFileManager.java"


# static fields
.field private static s_dba:Lch/kingdoms/android/db/DBAdapter;

.field private static s_fileHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeFile(I)I
    .locals 2
    .param p0, "_id"    # I

    .prologue
    .line 24
    sget-object v0, Lch/kingdoms/ndk/NdkFileManager;->s_fileHash:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)I
    .locals 1
    .param p0, "_name"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v0, Lch/kingdoms/ndk/NdkFileManager;->s_dba:Lch/kingdoms/android/db/DBAdapter;

    invoke-virtual {v0, p0}, Lch/kingdoms/android/db/DBAdapter;->deleteData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFileSize(Ljava/lang/String;)I
    .locals 2
    .param p0, "_name"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v1, Lch/kingdoms/ndk/NdkFileManager;->s_dba:Lch/kingdoms/android/db/DBAdapter;

    invoke-virtual {v1, p0}, Lch/kingdoms/android/db/DBAdapter;->getData(Ljava/lang/String;)[B

    move-result-object v0

    .line 58
    .local v0, "data":[B
    array-length v1, v0

    return v1
.end method

.method public static init(Lch/kingdoms/android/db/DBAdapter;)V
    .locals 1
    .param p0, "_dba"    # Lch/kingdoms/android/db/DBAdapter;

    .prologue
    .line 12
    sput-object p0, Lch/kingdoms/ndk/NdkFileManager;->s_dba:Lch/kingdoms/android/db/DBAdapter;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkFileManager;->s_fileHash:Ljava/util/HashMap;

    .line 14
    return-void
.end method

.method public static isExist(Ljava/lang/String;)I
    .locals 1
    .param p0, "_name"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-object v0, Lch/kingdoms/ndk/NdkFileManager;->s_dba:Lch/kingdoms/android/db/DBAdapter;

    invoke-virtual {v0, p0}, Lch/kingdoms/android/db/DBAdapter;->getData(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static openFile(Ljava/lang/String;)I
    .locals 3
    .param p0, "_name"    # Ljava/lang/String;

    .prologue
    .line 17
    sget-object v1, Lch/kingdoms/ndk/NdkFileManager;->s_fileHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 19
    .local v0, "id":I
    sget-object v1, Lch/kingdoms/ndk/NdkFileManager;->s_fileHash:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return v0
.end method

.method public static readFromFile(I)[B
    .locals 3
    .param p0, "_id"    # I

    .prologue
    .line 52
    sget-object v1, Lch/kingdoms/ndk/NdkFileManager;->s_fileHash:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lch/kingdoms/ndk/NdkFileManager;->s_dba:Lch/kingdoms/android/db/DBAdapter;

    invoke-virtual {v1, v0}, Lch/kingdoms/android/db/DBAdapter;->getData(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public static writeToFile(I[BI)I
    .locals 3
    .param p0, "_id"    # I
    .param p1, "_data"    # [B
    .param p2, "_len"    # I

    .prologue
    .line 42
    sget-object v1, Lch/kingdoms/ndk/NdkFileManager;->s_fileHash:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lch/kingdoms/ndk/NdkFileManager;->s_dba:Lch/kingdoms/android/db/DBAdapter;

    invoke-virtual {v1, v0, p1}, Lch/kingdoms/android/db/DBAdapter;->setData(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const/4 v1, 0x1

    .line 47
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
