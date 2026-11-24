.class Lch/kingdoms/android/network/ChPacketFactory$SearchResult;
.super Ljava/lang/Object;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResult"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lch/kingdoms/android/network/ChPacketFactory$SearchResult;)V
    .locals 0

    .prologue
    .line 1306
    invoke-direct {p0}, Lch/kingdoms/android/network/ChPacketFactory$SearchResult;-><init>()V

    return-void
.end method

.method public static read(Lch/android/api/network/ChDataInput;)Lch/android/api/network/ChResultPacket;
    .locals 12
    .param p0, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1308
    invoke-interface {p0}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v8

    .line 1309
    .local v8, "totalSize":I
    invoke-interface {p0}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v6

    .line 1310
    .local v6, "size":I
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "total : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1311
    .local v4, "result":Ljava/lang/String;
    new-instance v5, Lch/android/api/network/ChResultPacket;

    const/16 v10, 0x2710

    invoke-direct {v5, v10}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1312
    .local v5, "resultPacket":Lch/android/api/network/ChResultPacket;
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 1313
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 1314
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 1328
    return-object v5

    .line 1315
    :cond_0
    invoke-interface {p0}, Lch/android/api/network/ChDataInput;->readChUTF16String()Ljava/lang/String;

    move-result-object v9

    .line 1316
    .local v9, "userName":Ljava/lang/String;
    invoke-interface {p0}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v0

    .line 1317
    .local v0, "coast":I
    invoke-interface {p0}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v1

    .line 1318
    .local v1, "dbIndex":I
    invoke-static {p0}, Lch/android/api/network/ChNetworkItemData;->newInstanceWithoutDbIndex(Lch/android/api/network/ChDataInput;)Lch/android/api/network/ChNetworkItemData;

    move-result-object v3

    .line 1319
    .local v3, "item":Lch/android/api/network/ChNetworkItemData;
    new-instance v7, Lch/android/api/network/ChTime;

    invoke-direct {v7, p0}, Lch/android/api/network/ChTime;-><init>(Lch/android/api/network/ChDataInput;)V

    .line 1320
    .local v7, "time":Lch/android/api/network/ChTime;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lch/android/api/network/ChNetworkItemData;->getITEM_NUM()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lch/android/api/network/ChTime;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1321
    invoke-virtual {v5, v9}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 1322
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 1323
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {v5, v3}, Lch/android/api/network/ChResultPacket;->addItem(Lch/android/api/network/ChNetworkItemData;)V

    .line 1325
    invoke-virtual {v5, v7}, Lch/android/api/network/ChResultPacket;->addTime(Lch/android/api/network/ChTime;)V

    .line 1314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
