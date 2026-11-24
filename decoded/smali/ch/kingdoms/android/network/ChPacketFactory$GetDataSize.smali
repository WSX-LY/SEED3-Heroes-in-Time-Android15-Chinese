.class public Lch/kingdoms/android/network/ChPacketFactory$GetDataSize;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetDataSize"
.end annotation


# instance fields
.field private final DATA_NUM:B

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "_dataNum"    # B

    .prologue
    .line 1910
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$GetDataSize;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 1911
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 1913
    iput-byte p4, p0, Lch/kingdoms/android/network/ChPacketFactory$GetDataSize;->DATA_NUM:B

    .line 1914
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
    .line 1938
    packed-switch p1, :pswitch_data_0

    .line 1949
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1950
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x272d

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1953
    .end local v0    # "result":Ljava/lang/String;
    .local v1, "resultPacket":Lch/android/api/network/ChResultPacket;
    :goto_0
    return-object v1

    .line 1941
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_0
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x2710

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1942
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 1945
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no data["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lch/kingdoms/android/network/ChPacketFactory$GetDataSize;->DATA_NUM:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1946
    .restart local v0    # "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x272c

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1947
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1938
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 6
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 1920
    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v2

    .line 1921
    .local v2, "phoneNumberBytes":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1922
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1923
    iget-byte v3, p0, Lch/kingdoms/android/network/ChPacketFactory$GetDataSize;->DATA_NUM:B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1924
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1925
    const/16 v3, 0x3f0

    const/16 v4, 0xb7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v3

    invoke-super {p0, p1, v3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1930
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "phoneNumberBytes":[B
    :goto_0
    return-void

    .line 1926
    :catch_0
    move-exception v1

    .line 1928
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
