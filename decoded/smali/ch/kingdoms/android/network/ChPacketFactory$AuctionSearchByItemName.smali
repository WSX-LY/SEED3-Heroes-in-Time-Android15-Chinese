.class public Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByItemName;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuctionSearchByItemName"
.end annotation


# instance fields
.field private final KEY:Ljava/lang/String;

.field private final OPTION_NUM:B

.field private final ORDER:B

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "_key"    # Ljava/lang/String;
    .param p5, "_optionNum"    # B
    .param p6, "_order"    # B

    .prologue
    .line 1337
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByItemName;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 1338
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 1340
    iput-object p4, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByItemName;->KEY:Ljava/lang/String;

    .line 1341
    iput-byte p5, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByItemName;->OPTION_NUM:B

    .line 1342
    iput-byte p6, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByItemName;->ORDER:B

    .line 1343
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
    .line 1368
    invoke-static {p2}, Lch/kingdoms/android/network/ChPacketFactory$SearchResult;->read(Lch/android/api/network/ChDataInput;)Lch/android/api/network/ChResultPacket;

    move-result-object v0

    return-object v0
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 6
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 1349
    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByItemName;->KEY:Ljava/lang/String;

    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfUTF16(Ljava/lang/String;)[B

    move-result-object v2

    .line 1350
    .local v2, "keyBytes":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1351
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1352
    iget-byte v3, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByItemName;->OPTION_NUM:B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1353
    iget-byte v3, p0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByItemName;->ORDER:B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1354
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1355
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1356
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1357
    const/16 v3, 0x3ed

    const/16 v4, 0x99

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v3

    invoke-super {p0, p1, v3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1362
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "keyBytes":[B
    :goto_0
    return-void

    .line 1358
    :catch_0
    move-exception v1

    .line 1360
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
