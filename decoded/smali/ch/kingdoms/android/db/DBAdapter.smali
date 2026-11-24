.class public final Lch/kingdoms/android/db/DBAdapter;
.super Ljava/lang/Object;
.source "DBAdapter.java"


# static fields
.field public static final BANNER_INFO:Ljava/lang/String; = "bannerinfo"

.field public static final BANNER_INFO_UPDATE_TIME:Ljava/lang/String; = "bannerinfoupdatetime"

.field private static final DATABASE_NAME:Ljava/lang/String; = "soundone.db"

.field public static final FALSE:I = 0x0

.field public static final IAP_CHAPTER:Ljava/lang/String; = "CHAPTER"

.field public static final IAP_COLOSSEUM:Ljava/lang/String; = "COLOSSEUM"

.field public static final IAP_NOT_INITIALIZED:I = -0x1

.field public static final IAP_NOT_PURCHASED:I = 0x0

.field public static final IAP_PURCHASED:I = 0x1

.field public static final IAP_WARPGATE:Ljava/lang/String; = "WARPGATE"

.field public static final INFO_CONFIRM:Ljava/lang/String; = "INFO_CONFIRM"

.field public static final MEMORY_HACK_APPS:Ljava/lang/String; = "memoryhackapps"

.field public static final MYSTERYDUNGEON_LAST_DAY:Ljava/lang/String; = "MYSTERYDUNGEON_LAST_DAY"

.field public static final POINTS:Ljava/lang/String; = "seedpoints"

.field public static final TRUE:I = 0x1

.field public static final TYPE_BLOB:Ljava/lang/String; = "blob"

.field public static final TYPE_CHAR:Ljava/lang/String; = "character"

.field public static final TYPE_INT:Ljava/lang/String; = "integer"

.field public static final TYPE_VCHAR:Ljava/lang/String; = "varchar"

.field private static asset:Landroid/content/res/AssetManager;

.field private static m_db:Landroid/database/sqlite/SQLiteDatabase;

.field private static m_dbAdapter:Lch/kingdoms/android/db/DBAdapter;


# instance fields
.field private final f_dataTable:Lch/kingdoms/android/db/DataTable;

.field private final f_iapTable:Lch/kingdoms/android/db/IapTable;

.field private final f_optionTable:Lch/kingdoms/android/db/OptionTable;

.field private final f_uuid:Ljava/lang/String;

.field private final f_uuidTable:Lch/kingdoms/android/db/UuidTable;

.field private saveDataHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    sput-object v0, Lch/kingdoms/android/db/DBAdapter;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 64
    sput-object v0, Lch/kingdoms/android/db/DBAdapter;->m_dbAdapter:Lch/kingdoms/android/db/DBAdapter;

    .line 22
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context_"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lch/kingdoms/android/db/DBAdapter;->saveDataHash:Ljava/util/HashMap;

    .line 88
    new-instance v0, Lch/kingdoms/android/db/DatabaseHelper;

    const-string v1, "soundone.db"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lch/kingdoms/android/db/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 89
    .local v0, "dbHelper":Lch/kingdoms/android/db/DatabaseHelper;
    invoke-virtual {v0}, Lch/kingdoms/android/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lch/kingdoms/android/db/DBAdapter;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 91
    new-instance v1, Lch/kingdoms/android/db/DataTable;

    sget-object v2, Lch/kingdoms/android/db/DBAdapter;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lch/kingdoms/android/db/DataTable;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lch/kingdoms/android/db/DBAdapter;->f_dataTable:Lch/kingdoms/android/db/DataTable;

    .line 92
    new-instance v1, Lch/kingdoms/android/db/UuidTable;

    sget-object v2, Lch/kingdoms/android/db/DBAdapter;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lch/kingdoms/android/db/UuidTable;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lch/kingdoms/android/db/DBAdapter;->f_uuidTable:Lch/kingdoms/android/db/UuidTable;

    .line 93
    new-instance v1, Lch/kingdoms/android/db/OptionTable;

    sget-object v2, Lch/kingdoms/android/db/DBAdapter;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2, p1}, Lch/kingdoms/android/db/OptionTable;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    iput-object v1, p0, Lch/kingdoms/android/db/DBAdapter;->f_optionTable:Lch/kingdoms/android/db/OptionTable;

    .line 94
    new-instance v1, Lch/kingdoms/android/db/IapTable;

    sget-object v2, Lch/kingdoms/android/db/DBAdapter;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lch/kingdoms/android/db/IapTable;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lch/kingdoms/android/db/DBAdapter;->f_iapTable:Lch/kingdoms/android/db/IapTable;

    .line 96
    iget-object v1, p0, Lch/kingdoms/android/db/DBAdapter;->f_uuidTable:Lch/kingdoms/android/db/UuidTable;

    invoke-virtual {v1}, Lch/kingdoms/android/db/UuidTable;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/kingdoms/android/db/DBAdapter;->f_uuid:Ljava/lang/String;

    .line 97
    return-void
.end method

.method private getDataOnDb(Ljava/lang/String;)[B
    .locals 5
    .param p1, "_name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 145
    iget-object v3, p0, Lch/kingdoms/android/db/DBAdapter;->f_dataTable:Lch/kingdoms/android/db/DataTable;

    invoke-virtual {v3, p1}, Lch/kingdoms/android/db/DataTable;->getValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 146
    .local v2, "encryptedData":[B
    if-nez v2, :cond_0

    .line 175
    :goto_0
    return-object v0

    .line 159
    :cond_0
    check-cast v0, [B

    .line 166
    .local v0, "decryptedData":[B
    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/db/DBAdapter;->f_uuid:Ljava/lang/String;

    invoke-static {v3, v2}, Lch/android/api/crypto/Crypter;->decrypt(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    const-string v3, "KD"

    const-string v4, "FATAL-ERROR : Data is not loaded!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lch/kingdoms/android/db/DBAdapter;
    .locals 3

    .prologue
    .line 80
    const-class v1, Lch/kingdoms/android/db/DBAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lch/kingdoms/android/db/DBAdapter;->m_dbAdapter:Lch/kingdoms/android/db/DBAdapter;

    if-nez v0, :cond_0

    .line 81
    const-string v0, "DB"

    const-string v2, "DBAdapter is not initalized!!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    sget-object v0, Lch/kingdoms/android/db/DBAdapter;->m_dbAdapter:Lch/kingdoms/android/db/DBAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lch/kingdoms/android/db/DBAdapter;
    .locals 2
    .param p0, "context_"    # Landroid/content/Context;

    .prologue
    .line 71
    const-class v1, Lch/kingdoms/android/db/DBAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lch/kingdoms/android/db/DBAdapter;->m_dbAdapter:Lch/kingdoms/android/db/DBAdapter;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lch/kingdoms/android/db/DBAdapter;

    invoke-direct {v0, p0}, Lch/kingdoms/android/db/DBAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lch/kingdoms/android/db/DBAdapter;->m_dbAdapter:Lch/kingdoms/android/db/DBAdapter;

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sput-object v0, Lch/kingdoms/android/db/DBAdapter;->asset:Landroid/content/res/AssetManager;

    .line 76
    :cond_0
    sget-object v0, Lch/kingdoms/android/db/DBAdapter;->m_dbAdapter:Lch/kingdoms/android/db/DBAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSaveDataFromAsset(Ljava/lang/String;)[B
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 180
    :try_start_0
    sget-object v4, Lch/kingdoms/android/db/DBAdapter;->asset:Landroid/content/res/AssetManager;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "saves/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 181
    .local v3, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 182
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v4

    new-array v0, v4, [B

    .line 183
    .local v0, "datas":[B
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0    # "datas":[B
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 185
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 189
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deleteData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "_name"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v0, p0, Lch/kingdoms/android/db/DBAdapter;->f_dataTable:Lch/kingdoms/android/db/DataTable;

    invoke-virtual {v0, p1}, Lch/kingdoms/android/db/DataTable;->delete(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lch/kingdoms/android/db/DBAdapter;->f_optionTable:Lch/kingdoms/android/db/OptionTable;

    invoke-virtual {v0}, Lch/kingdoms/android/db/OptionTable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getData(Ljava/lang/String;)[B
    .locals 2
    .param p1, "_name"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v1, p0, Lch/kingdoms/android/db/DBAdapter;->saveDataHash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 138
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0, p1}, Lch/kingdoms/android/db/DBAdapter;->getDataOnDb(Ljava/lang/String;)[B

    move-result-object v0

    .line 141
    .end local v0    # "data":[B
    :cond_0
    return-object v0
.end method

.method public getDirPosition()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lch/kingdoms/android/db/DBAdapter;->f_optionTable:Lch/kingdoms/android/db/OptionTable;

    invoke-virtual {v0}, Lch/kingdoms/android/db/OptionTable;->getDirPosition()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getFirePosition()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lch/kingdoms/android/db/DBAdapter;->f_optionTable:Lch/kingdoms/android/db/OptionTable;

    invoke-virtual {v0}, Lch/kingdoms/android/db/OptionTable;->getFirePosition()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getSlotPositions()[Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lch/kingdoms/android/db/DBAdapter;->f_optionTable:Lch/kingdoms/android/db/OptionTable;

    invoke-virtual {v0}, Lch/kingdoms/android/db/OptionTable;->getSlotPositions()[Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public isAutoRoutingOn(I)Z
    .locals 1
    .param p1, "slotNum"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lch/kingdoms/android/db/DBAdapter;->f_optionTable:Lch/kingdoms/android/db/OptionTable;

    invoke-virtual {v0, p1}, Lch/kingdoms/android/db/OptionTable;->isAutoRoutingOn(I)Z

    move-result v0

    return v0
.end method

.method public isPurchaseAutoRouting(I)Z
    .locals 1
    .param p1, "slotNum"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lch/kingdoms/android/db/DBAdapter;->f_optionTable:Lch/kingdoms/android/db/OptionTable;

    invoke-virtual {v0, p1}, Lch/kingdoms/android/db/OptionTable;->isPurchaseAutoRouting(I)Z

    move-result v0

    return v0
.end method

.method public isPurchased(Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 272
    :try_start_0
    iget-object v7, p0, Lch/kingdoms/android/db/DBAdapter;->f_uuid:Ljava/lang/String;

    invoke-static {v7, p1}, Lch/android/api/crypto/Crypter;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "encryptedKey":Ljava/lang/String;
    iget-object v7, p0, Lch/kingdoms/android/db/DBAdapter;->f_iapTable:Lch/kingdoms/android/db/IapTable;

    invoke-virtual {v7, v2}, Lch/kingdoms/android/db/IapTable;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "encryptedResult":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 291
    .end local v2    # "encryptedKey":Ljava/lang/String;
    .end local v3    # "encryptedResult":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 278
    .restart local v2    # "encryptedKey":Ljava/lang/String;
    .restart local v3    # "encryptedResult":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lch/kingdoms/android/db/DBAdapter;->f_uuid:Ljava/lang/String;

    invoke-static {v7, v3}, Lch/android/api/crypto/Crypter;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "decryptedResult":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 281
    .local v4, "result":I
    if-ne v4, v6, :cond_0

    move v5, v6

    .line 282
    goto :goto_0

    .line 286
    .end local v0    # "decryptedResult":Ljava/lang/String;
    .end local v2    # "encryptedKey":Ljava/lang/String;
    .end local v3    # "encryptedResult":Ljava/lang/String;
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isSoundOn()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lch/kingdoms/android/db/DBAdapter;->f_optionTable:Lch/kingdoms/android/db/OptionTable;

    invoke-virtual {v0}, Lch/kingdoms/android/db/OptionTable;->isSoundOn()Z

    move-result v0

    return v0
.end method

.method public purchaseAutoRouting(I)Z
    .locals 1
    .param p1, "slotNum"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lch/kingdoms/android/db/DBAdapter;->f_optionTable:Lch/kingdoms/android/db/OptionTable;

    invoke-virtual {v0, p1}, Lch/kingdoms/android/db/OptionTable;->purchaseAutoRouting(I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lch/kingdoms/android/db/DBAdapter;->f_optionTable:Lch/kingdoms/android/db/OptionTable;

    invoke-virtual {v0, p1}, Lch/kingdoms/android/db/OptionTable;->setAlpha(I)V

    .line 238
    return-void
.end method

.method public setAutoRouting(IZ)Z
    .locals 1
    .param p1, "slotNum"    # I
    .param p2, "isOn"    # Z

    .prologue
    .line 262
    iget-object v0, p0, Lch/kingdoms/android/db/DBAdapter;->f_optionTable:Lch/kingdoms/android/db/OptionTable;

    invoke-virtual {v0, p1, p2}, Lch/kingdoms/android/db/OptionTable;->setAutoRouting(IZ)Z

    move-result v0

    return v0
.end method

.method public setData(Ljava/lang/String;[B)Z
    .locals 4
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_data"    # [B

    .prologue
    .line 116
    const/4 v1, 0x0

    check-cast v1, [B

    .line 118
    .local v1, "encryptedData":[B
    :try_start_0
    iget-object v2, p0, Lch/kingdoms/android/db/DBAdapter;->f_uuid:Ljava/lang/String;

    invoke-static {v2, p2}, Lch/android/api/crypto/Crypter;->encrypt(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 133
    :goto_0
    iget-object v2, p0, Lch/kingdoms/android/db/DBAdapter;->f_dataTable:Lch/kingdoms/android/db/DataTable;

    invoke-virtual {v2, p1, v1}, Lch/kingdoms/android/db/DataTable;->setValue(Ljava/lang/String;[B)Z

    move-result v2

    return v2

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    const-string v2, "KD"

    const-string v3, "FATAL-ERROR : Data is not saved!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDirPosition(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 205
    iget-object v0, p0, Lch/kingdoms/android/db/DBAdapter;->f_optionTable:Lch/kingdoms/android/db/OptionTable;

    invoke-virtual {v0, p1}, Lch/kingdoms/android/db/OptionTable;->setDirPosition(Landroid/graphics/Point;)V

    .line 206
    return-void
.end method

.method public setFirePosition(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 209
    iget-object v0, p0, Lch/kingdoms/android/db/DBAdapter;->f_optionTable:Lch/kingdoms/android/db/OptionTable;

    invoke-virtual {v0, p1}, Lch/kingdoms/android/db/OptionTable;->setFirePosition(Landroid/graphics/Point;)V

    .line 210
    return-void
.end method

.method public setPurchase(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isPurchase"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 296
    :try_start_0
    iget-object v5, p0, Lch/kingdoms/android/db/DBAdapter;->f_uuid:Ljava/lang/String;

    invoke-static {v5, p1}, Lch/android/api/crypto/Crypter;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "encryptedKey":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 299
    iget-object v5, p0, Lch/kingdoms/android/db/DBAdapter;->f_uuid:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lch/android/api/crypto/Crypter;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "encryptedIsPurchase":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lch/kingdoms/android/db/DBAdapter;->f_iapTable:Lch/kingdoms/android/db/IapTable;

    invoke-virtual {v5, v2, v1}, Lch/kingdoms/android/db/IapTable;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 310
    .end local v1    # "encryptedIsPurchase":Ljava/lang/String;
    .end local v2    # "encryptedKey":Ljava/lang/String;
    :goto_1
    return v3

    .line 301
    .restart local v2    # "encryptedKey":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lch/kingdoms/android/db/DBAdapter;->f_uuid:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lch/android/api/crypto/Crypter;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "encryptedIsPurchase":Ljava/lang/String;
    goto :goto_0

    .line 306
    .end local v1    # "encryptedIsPurchase":Ljava/lang/String;
    .end local v2    # "encryptedKey":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 310
    goto :goto_1
.end method

.method public setSlotPosition([Landroid/graphics/Point;)V
    .locals 1
    .param p1, "points"    # [Landroid/graphics/Point;

    .prologue
    .line 213
    iget-object v0, p0, Lch/kingdoms/android/db/DBAdapter;->f_optionTable:Lch/kingdoms/android/db/OptionTable;

    invoke-virtual {v0, p1}, Lch/kingdoms/android/db/OptionTable;->setSlotPosition([Landroid/graphics/Point;)V

    .line 214
    return-void
.end method

.method public setSoundOn(Z)V
    .locals 1
    .param p1, "isOn"    # Z

    .prologue
    .line 197
    iget-object v0, p0, Lch/kingdoms/android/db/DBAdapter;->f_optionTable:Lch/kingdoms/android/db/OptionTable;

    invoke-virtual {v0, p1}, Lch/kingdoms/android/db/OptionTable;->setSoundOn(Z)V

    .line 198
    return-void
.end method

.method public updateSaveData()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 105
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "Save_0.dat"

    aput-object v3, v0, v2

    const/4 v3, 0x1

    const-string v4, "Save_1.dat"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "Save_2.dat"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "Save_3.dat"

    aput-object v4, v0, v3

    .line 106
    .local v0, "saveStrs":[Ljava/lang/String;
    array-length v3, v0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 113
    return-void

    .line 106
    :cond_0
    aget-object v1, v0, v2

    .line 108
    .local v1, "str":Ljava/lang/String;
    iget-object v4, p0, Lch/kingdoms/android/db/DBAdapter;->saveDataHash:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    iget-object v4, p0, Lch/kingdoms/android/db/DBAdapter;->saveDataHash:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_1
    iget-object v4, p0, Lch/kingdoms/android/db/DBAdapter;->saveDataHash:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lch/kingdoms/android/db/DBAdapter;->getDataOnDb(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
