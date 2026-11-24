.class public Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByUserName;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuctionSearchByUserName"
.end annotation


# instance fields
.field private final LIST_NUM:B

.field private final OPTION:B

.field private final ORDER:B

.field private final START_POINT:I

.field private final USER_ID:Ljava/lang/String;

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;BBIB)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "_userId"    # Ljava/lang/String;
    .param p5, "_option"    # B
    .param p6, "_order"    # B
    .param p7, "_startPoint"    # I
    .param p8, "_listNum"    # B

    .prologue
    .line 1427
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByUserName;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 1428
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 1430
    iput-object p4, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByUserName;->USER_ID:Ljava/lang/String;

    .line 1431
    iput-byte p5, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByUserName;->OPTION:B

    .line 1432
    iput-byte p6, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByUserName;->ORDER:B

    .line 1433
    iput p7, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByUserName;->START_POINT:I

    .line 1434
    iput-byte p8, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByUserName;->LIST_NUM:B

    .line 1435
    return-void
.end method


# virtual methods
.method protected onResponse(ILch/android/api/network/ChDataInput;I)Lch/android/api/network/ChResultPacket;
    .locals 2
    .param p1, "_resultCode"    # I
    .param p2, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .param p3, "_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1461
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$SearchResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lch/kingdoms/android/network/ChPacketFactory$SearchResult;-><init>(Lch/kingdoms/android/network/ChPacketFactory$SearchResult;)V

    .line 1463
    .local v0, "searchResult":Lch/kingdoms/android/network/ChPacketFactory$SearchResult;
    invoke-static {p2}, Lch/kingdoms/android/network/ChPacketFactory$SearchResult;->read(Lch/android/api/network/ChDataInput;)Lch/android/api/network/ChResultPacket;

    move-result-object v1

    return-object v1
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 6
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 1441
    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByUserName;->USER_ID:Ljava/lang/String;

    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfUTF16(Ljava/lang/String;)[B

    move-result-object v2

    .line 1442
    .local v2, "userIdBytes":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1443
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1444
    iget-byte v3, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByUserName;->OPTION:B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1445
    iget-byte v3, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByUserName;->ORDER:B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1446
    iget v3, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByUserName;->START_POINT:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1447
    iget-byte v3, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByUserName;->LIST_NUM:B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1448
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1449
    const/16 v3, 0x3ed

    const/16 v4, 0x9b

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v3

    invoke-super {p0, p1, v3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "userIdBytes":[B
    :goto_0
    return-void

    .line 1450
    :catch_0
    move-exception v1

    .line 1452
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
