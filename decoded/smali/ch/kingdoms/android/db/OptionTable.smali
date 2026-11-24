.class Lch/kingdoms/android/db/OptionTable;
.super Ljava/lang/Object;
.source "OptionTable.java"


# static fields
.field private static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS option_values(option_id integer, data blob)"

.field private static final DATABASE_TABLE_NAME:Ljava/lang/String; = "option_values"

.field private static final ID_1ST_AUTO_ROUTING:I = 0xb

.field private static final ID_1ST_AUTO_ROUTING_PURCHASE:I = 0xa

.field private static final ID_2ND_AUTO_ROUTING:I = 0xd

.field private static final ID_2ND_AUTO_ROUTING_PURCHASE:I = 0xc

.field private static final ID_3RD_AUTO_ROUTING:I = 0xf

.field private static final ID_3RD_AUTO_ROUTING_PURCHASE:I = 0xe

.field private static final ID_4TH_AUTO_ROUTING:I = 0x11

.field private static final ID_4TH_AUTO_ROUTING_PURCHASE:I = 0x10

.field private static final ID_ALPHA:I = 0x5

.field private static final ID_AUTO_ROUTING:I = 0x1

.field private static final ID_DIR_POSITION:I = 0x2

.field private static final ID_FIRE_POSITION:I = 0x3

.field private static final ID_SLOT_POSITIONS:I = 0x4

.field private static final ID_SOUND:I = 0x0

.field public static final KEY_OPTION_ID:Ljava/lang/String; = "option_id"

.field public static final KEY_VALUE:Ljava/lang/String; = "data"


# instance fields
.field private final DB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lch/kingdoms/android/db/OptionTable;->DB:Landroid/database/sqlite/SQLiteDatabase;

    .line 55
    iget-object v1, p0, Lch/kingdoms/android/db/OptionTable;->DB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "CREATE TABLE IF NOT EXISTS option_values(option_id integer, data blob)"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, v4}, Lch/kingdoms/android/db/OptionTable;->intToByte(I)[B

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lch/kingdoms/android/db/OptionTable;->initCol(I[B)Z

    .line 60
    invoke-direct {p0, v3}, Lch/kingdoms/android/db/OptionTable;->intToByte(I)[B

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lch/kingdoms/android/db/OptionTable;->initCol(I[B)Z

    .line 62
    new-instance v0, Lch/kingdoms/android/dpad/Dpad;

    invoke-static {}, Lch/android/api/util/DisplayInfo;->getInstance()Lch/android/api/util/DisplayInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lch/kingdoms/android/dpad/Dpad;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Lch/kingdoms/market/KeyTranslator;)V

    .line 63
    .local v0, "dpad":Lch/kingdoms/android/dpad/Dpad;
    const/4 v1, 0x2

    invoke-virtual {v0}, Lch/kingdoms/android/dpad/Dpad;->getOriginDirPosition()Landroid/graphics/Point;

    move-result-object v2

    invoke-direct {p0, v2}, Lch/kingdoms/android/db/OptionTable;->pointToByteArray(Landroid/graphics/Point;)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lch/kingdoms/android/db/OptionTable;->initCol(I[B)Z

    .line 64
    const/4 v1, 0x3

    invoke-virtual {v0}, Lch/kingdoms/android/dpad/Dpad;->getOriginFirePosition()Landroid/graphics/Point;

    move-result-object v2

    invoke-direct {p0, v2}, Lch/kingdoms/android/db/OptionTable;->pointToByteArray(Landroid/graphics/Point;)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lch/kingdoms/android/db/OptionTable;->initCol(I[B)Z

    .line 65
    const/4 v1, 0x4

    invoke-virtual {v0}, Lch/kingdoms/android/dpad/Dpad;->getOriginSlotPositions()[Landroid/graphics/Point;

    move-result-object v2

    invoke-direct {p0, v2}, Lch/kingdoms/android/db/OptionTable;->pointArrayToByteArray([Landroid/graphics/Point;)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lch/kingdoms/android/db/OptionTable;->initCol(I[B)Z

    .line 66
    const/4 v1, 0x5

    const/16 v2, 0xff

    invoke-direct {p0, v2}, Lch/kingdoms/android/db/OptionTable;->intToByte(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lch/kingdoms/android/db/OptionTable;->initCol(I[B)Z

    .line 68
    const/16 v1, 0xa

    invoke-direct {p0, v3}, Lch/kingdoms/android/db/OptionTable;->intToByte(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lch/kingdoms/android/db/OptionTable;->initCol(I[B)Z

    .line 69
    const/16 v1, 0xb

    invoke-direct {p0, v3}, Lch/kingdoms/android/db/OptionTable;->intToByte(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lch/kingdoms/android/db/OptionTable;->initCol(I[B)Z

    .line 71
    const/16 v1, 0xc

    invoke-direct {p0, v3}, Lch/kingdoms/android/db/OptionTable;->intToByte(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lch/kingdoms/android/db/OptionTable;->initCol(I[B)Z

    .line 72
    const/16 v1, 0xd

    invoke-direct {p0, v3}, Lch/kingdoms/android/db/OptionTable;->intToByte(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lch/kingdoms/android/db/OptionTable;->initCol(I[B)Z

    .line 74
    const/16 v1, 0xe

    invoke-direct {p0, v3}, Lch/kingdoms/android/db/OptionTable;->intToByte(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lch/kingdoms/android/db/OptionTable;->initCol(I[B)Z

    .line 75
    const/16 v1, 0xf

    invoke-direct {p0, v3}, Lch/kingdoms/android/db/OptionTable;->intToByte(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lch/kingdoms/android/db/OptionTable;->initCol(I[B)Z

    .line 77
    const/16 v1, 0x10

    invoke-direct {p0, v3}, Lch/kingdoms/android/db/OptionTable;->intToByte(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lch/kingdoms/android/db/OptionTable;->initCol(I[B)Z

    .line 78
    const/16 v1, 0x11

    invoke-direct {p0, v3}, Lch/kingdoms/android/db/OptionTable;->intToByte(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lch/kingdoms/android/db/OptionTable;->initCol(I[B)Z

    .line 79
    return-void
.end method

.method private getAutoRoutingOnId(I)I
    .locals 1
    .param p1, "slotNum"    # I

    .prologue
    .line 239
    packed-switch p1, :pswitch_data_0

    .line 249
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 241
    :pswitch_0
    const/16 v0, 0xb

    goto :goto_0

    .line 243
    :pswitch_1
    const/16 v0, 0xd

    goto :goto_0

    .line 245
    :pswitch_2
    const/16 v0, 0xf

    goto :goto_0

    .line 247
    :pswitch_3
    const/16 v0, 0x11

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getAutoRoutingPurchaseId(I)I
    .locals 1
    .param p1, "slotNum"    # I

    .prologue
    .line 224
    packed-switch p1, :pswitch_data_0

    .line 234
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 226
    :pswitch_0
    const/16 v0, 0xa

    goto :goto_0

    .line 228
    :pswitch_1
    const/16 v0, 0xc

    goto :goto_0

    .line 230
    :pswitch_2
    const/16 v0, 0xe

    goto :goto_0

    .line 232
    :pswitch_3
    const/16 v0, 0x10

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getValue(I)[B
    .locals 11
    .param p1, "optionId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 133
    iget-object v0, p0, Lch/kingdoms/android/db/OptionTable;->DB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "option_values"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data"

    aput-object v3, v2, v10

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "option_id = \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 133
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 136
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-object v4

    .line 140
    :cond_0
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 141
    .local v9, "reuslt":[B
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v4, v9

    .line 143
    goto :goto_0
.end method

.method private initCol(I[B)Z
    .locals 11
    .param p1, "optionId"    # I
    .param p2, "bytes"    # [B

    .prologue
    const/4 v2, 0x0

    .line 112
    const/4 v10, 0x1

    .line 113
    .local v10, "isAlreadyInitialized":Z
    iget-object v0, p0, Lch/kingdoms/android/db/OptionTable;->DB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "option_values"

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "option_id = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 113
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 115
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v9, "cv":Landroid/content/ContentValues;
    const-string v0, "option_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v0, "data"

    invoke-virtual {v9, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 119
    iget-object v0, p0, Lch/kingdoms/android/db/OptionTable;->DB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "option_values"

    invoke-virtual {v0, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 122
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 124
    const/4 v10, 0x0

    .line 127
    .end local v9    # "cv":Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 129
    return v10
.end method

.method private intToByte(I)[B
    .locals 2
    .param p1, "integer"    # I

    .prologue
    .line 106
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 107
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private pointArrayToByteArray([Landroid/graphics/Point;)[B
    .locals 5
    .param p1, "points"    # [Landroid/graphics/Point;

    .prologue
    .line 82
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 83
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2

    .line 83
    :cond_0
    aget-object v1, p1, v2

    .line 84
    .local v1, "point":Landroid/graphics/Point;
    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 85
    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private pointToByteArray(Landroid/graphics/Point;)[B
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 91
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 93
    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private setValue(I[B)Z
    .locals 5
    .param p1, "optionId"    # I
    .param p2, "bytes"    # [B

    .prologue
    .line 147
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 148
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 150
    iget-object v1, p0, Lch/kingdoms/android/db/OptionTable;->DB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "option_values"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "option_id = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 152
    const-string v1, "DB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SAVE : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x1

    .line 157
    :goto_0
    return v1

    .line 156
    :cond_0
    const-string v1, "DB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save failed. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAlpha()I
    .locals 2

    .prologue
    .line 219
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lch/kingdoms/android/db/OptionTable;->getValue(I)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 220
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    return v1
.end method

.method public getDirPosition()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 200
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lch/kingdoms/android/db/OptionTable;->getValue(I)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 201
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getFirePosition()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 205
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lch/kingdoms/android/db/OptionTable;->getValue(I)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 206
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getSlotPositions()[Landroid/graphics/Point;
    .locals 6

    .prologue
    .line 210
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lch/kingdoms/android/db/OptionTable;->getValue(I)[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 211
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    new-array v2, v3, [Landroid/graphics/Point;

    .line 212
    .local v2, "points":[Landroid/graphics/Point;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 215
    return-object v2

    .line 213
    :cond_0
    new-instance v3, Landroid/graphics/Point;

    mul-int/lit8 v4, v1, 0x8

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v2, v1

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isAutoRoutingOn()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 194
    invoke-direct {p0, v2}, Lch/kingdoms/android/db/OptionTable;->getValue(I)[B

    move-result-object v1

    .line 195
    .local v1, "bytes":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 196
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAutoRoutingOn(I)Z
    .locals 3
    .param p1, "slotNum"    # I

    .prologue
    const/4 v1, 0x1

    .line 266
    invoke-direct {p0, p1}, Lch/kingdoms/android/db/OptionTable;->getAutoRoutingOnId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lch/kingdoms/android/db/OptionTable;->getValue(I)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 267
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPurchaseAutoRouting(I)Z
    .locals 4
    .param p1, "slotNum"    # I

    .prologue
    const/4 v2, 0x1

    .line 254
    invoke-direct {p0, p1}, Lch/kingdoms/android/db/OptionTable;->getAutoRoutingPurchaseId(I)I

    move-result v3

    invoke-direct {p0, v3}, Lch/kingdoms/android/db/OptionTable;->getValue(I)[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 255
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 257
    .local v1, "result":I
    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSoundOn()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 188
    invoke-direct {p0, v3}, Lch/kingdoms/android/db/OptionTable;->getValue(I)[B

    move-result-object v1

    .line 189
    .local v1, "bytes":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 190
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public purchaseAutoRouting(I)Z
    .locals 2
    .param p1, "slotNum"    # I

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lch/kingdoms/android/db/OptionTable;->getAutoRoutingPurchaseId(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lch/kingdoms/android/db/OptionTable;->intToByte(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lch/kingdoms/android/db/OptionTable;->setValue(I[B)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 184
    const/4 v0, 0x5

    invoke-direct {p0, p1}, Lch/kingdoms/android/db/OptionTable;->intToByte(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lch/kingdoms/android/db/OptionTable;->setValue(I[B)Z

    .line 185
    return-void
.end method

.method public setAutoRouting(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .prologue
    const/4 v1, 0x1

    .line 165
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lch/kingdoms/android/db/OptionTable;->intToByte(I)[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lch/kingdoms/android/db/OptionTable;->setValue(I[B)Z

    .line 166
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoRouting(IZ)Z
    .locals 2
    .param p1, "slotNum"    # I
    .param p2, "isOn"    # Z

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lch/kingdoms/android/db/OptionTable;->getAutoRoutingOnId(I)I

    move-result v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lch/kingdoms/android/db/OptionTable;->intToByte(I)[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lch/kingdoms/android/db/OptionTable;->setValue(I[B)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDirPosition(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 169
    const/4 v0, 0x2

    invoke-direct {p0, p1}, Lch/kingdoms/android/db/OptionTable;->pointToByteArray(Landroid/graphics/Point;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lch/kingdoms/android/db/OptionTable;->setValue(I[B)Z

    .line 170
    return-void
.end method

.method public setFirePosition(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 173
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "KD"

    invoke-virtual {p1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, p1}, Lch/kingdoms/android/db/OptionTable;->pointToByteArray(Landroid/graphics/Point;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lch/kingdoms/android/db/OptionTable;->setValue(I[B)Z

    .line 177
    return-void
.end method

.method public setSlotPosition([Landroid/graphics/Point;)V
    .locals 2
    .param p1, "points"    # [Landroid/graphics/Point;

    .prologue
    .line 180
    const/4 v0, 0x4

    invoke-direct {p0, p1}, Lch/kingdoms/android/db/OptionTable;->pointArrayToByteArray([Landroid/graphics/Point;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lch/kingdoms/android/db/OptionTable;->setValue(I[B)Z

    .line 181
    return-void
.end method

.method public setSoundOn(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .prologue
    const/4 v1, 0x0

    .line 161
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lch/kingdoms/android/db/OptionTable;->intToByte(I)[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lch/kingdoms/android/db/OptionTable;->setValue(I[B)Z

    .line 162
    return-void

    :cond_0
    move v0, v1

    .line 161
    goto :goto_0
.end method
