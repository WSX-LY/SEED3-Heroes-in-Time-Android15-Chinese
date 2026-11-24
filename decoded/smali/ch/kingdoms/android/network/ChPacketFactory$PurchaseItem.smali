.class public Lch/kingdoms/android/network/ChPacketFactory$PurchaseItem;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PurchaseItem"
.end annotation


# instance fields
.field private final DB_INDEX:I

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "_dbIndex"    # I

    .prologue
    .line 1469
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$PurchaseItem;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 1470
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 1472
    iput p4, p0, Lch/kingdoms/android/network/ChPacketFactory$PurchaseItem;->DB_INDEX:I

    .line 1473
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
    .line 1497
    packed-switch p1, :pswitch_data_0

    .line 1519
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1520
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x272d

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1522
    .local v1, "resultPacket":Lch/android/api/network/ChResultPacket;
    :goto_0
    return-object v1

    .line 1499
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_0
    const-string v0, "Purchase Item Success"

    .line 1500
    .restart local v0    # "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x2710

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1501
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1503
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_1
    const-string v0, "Network Inven is Full"

    .line 1504
    .restart local v0    # "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x2724

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1505
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1507
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_2
    const-string v0, "Fence in Network is short"

    .line 1508
    .restart local v0    # "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x2727

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1509
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1511
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_3
    const-string v0, "Your Item"

    .line 1512
    .restart local v0    # "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x272f

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1513
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1515
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_4
    const-string v0, "sold out"

    .line 1516
    .restart local v0    # "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x2726

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1517
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1497
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
    .locals 6
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 1479
    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v2

    .line 1480
    .local v2, "phoneNumberBytes":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1481
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1482
    iget v3, p0, Lch/kingdoms/android/network/ChPacketFactory$PurchaseItem;->DB_INDEX:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1483
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1484
    const/16 v3, 0x3ed

    const/16 v4, 0x9d

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v3

    invoke-super {p0, p1, v3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1489
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "phoneNumberBytes":[B
    :goto_0
    return-void

    .line 1485
    :catch_0
    move-exception v1

    .line 1487
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
