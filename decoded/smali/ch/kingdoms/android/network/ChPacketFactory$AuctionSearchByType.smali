.class public Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuctionSearchByType"
.end annotation


# instance fields
.field private final LIST_NUM:B

.field private final MAIN_TYPE:B

.field private final OPTION:B

.field private final ORDER:B

.field private final START_POINT:I

.field private final SUB_TYPE1:B

.field private final SUB_TYPE2:B

.field private final SUB_TYPE3:B

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBBBBBIB)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "_mainType"    # B
    .param p5, "_subType1"    # B
    .param p6, "_subType2"    # B
    .param p7, "_subType3"    # B
    .param p8, "_option"    # B
    .param p9, "_order"    # B
    .param p10, "_startPoint"    # I
    .param p11, "_listNum"    # B

    .prologue
    .line 1383
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 1384
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 1386
    iput-byte p4, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;->MAIN_TYPE:B

    .line 1387
    iput-byte p5, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;->SUB_TYPE1:B

    .line 1388
    iput-byte p6, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;->SUB_TYPE2:B

    .line 1389
    iput-byte p7, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;->SUB_TYPE3:B

    .line 1390
    iput-byte p8, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;->OPTION:B

    .line 1391
    iput-byte p9, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;->ORDER:B

    .line 1392
    iput p10, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;->START_POINT:I

    .line 1393
    iput-byte p11, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;->LIST_NUM:B

    .line 1394
    return-void
.end method


# virtual methods
.method protected onResponse(ILch/android/api/network/ChDataInput;I)Lch/android/api/network/ChResultPacket;
    .locals 1
    .param p1, "_resultCode"    # I
    .param p2, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .param p3, "_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1416
    invoke-static {p2}, Lch/kingdoms/android/network/ChPacketFactory$SearchResult;->read(Lch/android/api/network/ChDataInput;)Lch/android/api/network/ChResultPacket;

    move-result-object v0

    return-object v0
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 4
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 1399
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1400
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-byte v1, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;->MAIN_TYPE:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1401
    iget-byte v1, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;->SUB_TYPE1:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1402
    iget-byte v1, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;->SUB_TYPE2:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1403
    iget-byte v1, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;->SUB_TYPE3:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1404
    iget-byte v1, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;->OPTION:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1405
    iget-byte v1, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;->ORDER:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1406
    iget v1, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;->START_POINT:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1407
    iget-byte v1, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;->LIST_NUM:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1408
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1409
    const/16 v1, 0x3ed

    const/16 v2, 0x97

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v1

    invoke-super {p0, p1, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V

    .line 1410
    return-void
.end method
