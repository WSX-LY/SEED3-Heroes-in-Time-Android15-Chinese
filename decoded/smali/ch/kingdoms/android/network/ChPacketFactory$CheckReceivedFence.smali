.class public Lch/kingdoms/android/network/ChPacketFactory$CheckReceivedFence;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckReceivedFence"
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1718
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$CheckReceivedFence;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 1719
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 1721
    return-void
.end method


# virtual methods
.method protected onResponse(ILch/android/api/network/ChDataInput;I)Lch/android/api/network/ChResultPacket;
    .locals 9
    .param p1, "_resultCode"    # I
    .param p2, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .param p3, "_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1742
    const-string v3, ""

    .line 1743
    .local v3, "result":Ljava/lang/String;
    new-instance v4, Lch/android/api/network/ChResultPacket;

    const/16 v7, 0x2710

    invoke-direct {v4, v7}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1744
    .local v4, "resultPacket":Lch/android/api/network/ChResultPacket;
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v5

    .line 1746
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 1755
    return-object v4

    .line 1747
    :cond_0
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readChUTF16String()Ljava/lang/String;

    move-result-object v1

    .line 1748
    .local v1, "fromUserId":Ljava/lang/String;
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v0

    .line 1749
    .local v0, "fence":I
    new-instance v6, Lch/android/api/network/ChTime;

    invoke-direct {v6, p2}, Lch/android/api/network/ChTime;-><init>(Lch/android/api/network/ChDataInput;)V

    .line 1750
    .local v6, "time":Lch/android/api/network/ChTime;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lch/android/api/network/ChTime;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1751
    invoke-virtual {v4, v1}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 1752
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {v4, v6}, Lch/android/api/network/ChResultPacket;->addTime(Lch/android/api/network/ChTime;)V

    .line 1746
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 6
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 1727
    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v2

    .line 1728
    .local v2, "phoneNumberBytes":[B
    array-length v3, v2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1729
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1730
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1731
    const/16 v3, 0x3ef

    const/16 v4, 0xaf

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v3

    invoke-super {p0, p1, v3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1736
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "phoneNumberBytes":[B
    :goto_0
    return-void

    .line 1732
    :catch_0
    move-exception v1

    .line 1734
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
