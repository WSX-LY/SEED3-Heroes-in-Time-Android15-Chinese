.class public Lch/kingdoms/android/network/ChPacketFactory$GiveFence;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GiveFence"
.end annotation


# instance fields
.field private final FENCE:I

.field private final USER_ID:Ljava/lang/String;

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "_userId"    # Ljava/lang/String;
    .param p5, "_fence"    # I

    .prologue
    .line 1530
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$GiveFence;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 1531
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 1533
    iput-object p4, p0, Lch/kingdoms/android/network/ChPacketFactory$GiveFence;->USER_ID:Ljava/lang/String;

    .line 1534
    iput p5, p0, Lch/kingdoms/android/network/ChPacketFactory$GiveFence;->FENCE:I

    .line 1535
    return-void
.end method


# virtual methods
.method protected onResponse(ILch/android/api/network/ChDataInput;I)Lch/android/api/network/ChResultPacket;
    .locals 4
    .param p1, "_resultCode"    # I
    .param p2, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .param p3, "_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1561
    packed-switch p1, :pswitch_data_0

    .line 1583
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1584
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x272d

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1587
    .local v1, "resultPacket":Lch/android/api/network/ChResultPacket;
    :goto_0
    return-object v1

    .line 1563
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_0
    const-string v0, "Give Fence Success"

    .line 1564
    .restart local v0    # "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x2710

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1565
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1567
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_1
    const-string v0, "Receiver\'s Fence Exceed MAX"

    .line 1568
    .restart local v0    # "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x2728

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1569
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1571
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_2
    const-string v0, "Give Self!"

    .line 1572
    .restart local v0    # "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x2729

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1573
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1575
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_3
    const-string v0, "Receiver\'s ID is not exist"

    .line 1576
    .restart local v0    # "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x272a

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1577
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1579
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_4
    const-string v0, "your balance short"

    .line 1580
    .restart local v0    # "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x271c

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1581
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 7
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 1541
    :try_start_0
    iget-object v4, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v4}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v2

    .line 1542
    .local v2, "phoneNumberBytes":[B
    iget-object v4, p0, Lch/kingdoms/android/network/ChPacketFactory$GiveFence;->USER_ID:Ljava/lang/String;

    invoke-static {v4}, Lch/android/api/network/ChByte;->valueOfUTF16(Ljava/lang/String;)[B

    move-result-object v3

    .line 1543
    .local v3, "userIdBytes":[B
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1544
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1545
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1546
    iget v4, p0, Lch/kingdoms/android/network/ChPacketFactory$GiveFence;->FENCE:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1547
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1548
    const/16 v4, 0x3ee

    const/16 v5, 0xa1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-static {v4, v5, v6}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v4

    invoke-super {p0, p1, v4}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1553
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "phoneNumberBytes":[B
    .end local v3    # "userIdBytes":[B
    :goto_0
    return-void

    .line 1549
    :catch_0
    move-exception v1

    .line 1551
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
