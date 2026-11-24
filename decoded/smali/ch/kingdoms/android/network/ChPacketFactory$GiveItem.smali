.class public Lch/kingdoms/android/network/ChPacketFactory$GiveItem;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GiveItem"
.end annotation


# instance fields
.field private final DB_INDEX:I

.field private final NUM_ITEMS:I

.field private final USER_ID:Ljava/lang/String;

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "_userId"    # Ljava/lang/String;
    .param p5, "_dbIndex"    # I
    .param p6, "_numItems"    # I

    .prologue
    .line 1596
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$GiveItem;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 1597
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 1599
    iput-object p4, p0, Lch/kingdoms/android/network/ChPacketFactory$GiveItem;->USER_ID:Ljava/lang/String;

    .line 1600
    iput p5, p0, Lch/kingdoms/android/network/ChPacketFactory$GiveItem;->DB_INDEX:I

    .line 1601
    iput p6, p0, Lch/kingdoms/android/network/ChPacketFactory$GiveItem;->NUM_ITEMS:I

    .line 1602
    return-void
.end method


# virtual methods
.method protected onResponse(ILch/android/api/network/ChDataInput;I)Lch/android/api/network/ChResultPacket;
    .locals 5
    .param p1, "_resultCode"    # I
    .param p2, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .param p3, "_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1629
    packed-switch p1, :pswitch_data_0

    .line 1661
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown..."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1662
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x272d

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1665
    .local v2, "resultPacket":Lch/android/api/network/ChResultPacket;
    :goto_0
    return-object v2

    .line 1631
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_0
    const-string v1, "Give Item Success"

    .line 1632
    .restart local v1    # "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2710

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1633
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1635
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_1
    const-string v1, "Give Item Success"

    .line 1636
    .restart local v1    # "result":Ljava/lang/String;
    invoke-static {p2}, Lch/android/api/network/ChNetworkItemData;->newInstanceWithoutDbIndex(Lch/android/api/network/ChDataInput;)Lch/android/api/network/ChNetworkItemData;

    move-result-object v0

    .line 1637
    .local v0, "item":Lch/android/api/network/ChNetworkItemData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lch/android/api/network/ChNetworkItemData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1638
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x271e

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1639
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    invoke-virtual {v2, v0}, Lch/android/api/network/ChResultPacket;->addItem(Lch/android/api/network/ChNetworkItemData;)V

    goto :goto_0

    .line 1642
    .end local v0    # "item":Lch/android/api/network/ChNetworkItemData;
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_2
    const-string v1, "Give Self!"

    .line 1643
    .restart local v1    # "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2729

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1644
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1646
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_3
    const-string v1, "Receiver\'s Inven is full"

    .line 1647
    .restart local v1    # "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x271f

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1648
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1650
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_4
    const-string v1, "Receiver\'s id is not exist"

    .line 1651
    .restart local v1    # "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x272a

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1652
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1654
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_5
    const-string v1, "your number of items is short for give"

    .line 1655
    .restart local v1    # "result":Ljava/lang/String;
    new-instance v3, Lch/android/api/network/ChResultPacket;

    const/16 v4, 0x2730

    invoke-direct {v3, v4}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1657
    .end local v1    # "result":Ljava/lang/String;
    :pswitch_6
    const-string v1, "your item is not exist"

    .line 1658
    .restart local v1    # "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2720

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1659
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1629
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 7
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 1608
    :try_start_0
    iget-object v4, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v4}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v2

    .line 1609
    .local v2, "phoneNumberBytes":[B
    iget-object v4, p0, Lch/kingdoms/android/network/ChPacketFactory$GiveItem;->USER_ID:Ljava/lang/String;

    invoke-static {v4}, Lch/android/api/network/ChByte;->valueOfUTF16(Ljava/lang/String;)[B

    move-result-object v3

    .line 1610
    .local v3, "userIdBytes":[B
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1611
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1612
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1613
    iget v4, p0, Lch/kingdoms/android/network/ChPacketFactory$GiveItem;->DB_INDEX:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1614
    iget v4, p0, Lch/kingdoms/android/network/ChPacketFactory$GiveItem;->NUM_ITEMS:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1615
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1616
    const/16 v4, 0x3ee

    const/16 v5, 0xa3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-static {v4, v5, v6}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v4

    invoke-super {p0, p1, v4}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1621
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "phoneNumberBytes":[B
    .end local v3    # "userIdBytes":[B
    :goto_0
    return-void

    .line 1617
    :catch_0
    move-exception v1

    .line 1619
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
