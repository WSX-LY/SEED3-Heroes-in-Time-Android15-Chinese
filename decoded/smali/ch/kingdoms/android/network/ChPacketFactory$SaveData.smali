.class public Lch/kingdoms/android/network/ChPacketFactory$SaveData;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveData"
.end annotation


# instance fields
.field private final DATA:[B

.field private final DATA_NUM:B

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B[B)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "_dataNum"    # B
    .param p5, "_data"    # [B

    .prologue
    .line 1858
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$SaveData;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 1859
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 1861
    iput-byte p4, p0, Lch/kingdoms/android/network/ChPacketFactory$SaveData;->DATA_NUM:B

    .line 1862
    iput-object p5, p0, Lch/kingdoms/android/network/ChPacketFactory$SaveData;->DATA:[B

    .line 1863
    return-void
.end method


# virtual methods
.method protected onResponse(ILch/android/api/network/ChDataInput;I)Lch/android/api/network/ChResultPacket;
    .locals 3
    .param p1, "_resultCode"    # I
    .param p2, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .param p3, "_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1889
    packed-switch p1, :pswitch_data_0

    .line 1899
    const-string v0, "unknown"

    .line 1900
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x272d

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1903
    .local v1, "resultPacket":Lch/android/api/network/ChResultPacket;
    :goto_0
    return-object v1

    .line 1891
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_0
    const-string v0, "Save New Data"

    .line 1892
    .restart local v0    # "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x2710

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1893
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1895
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_1
    const-string v0, "Save overlapping Data"

    .line 1896
    .restart local v0    # "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v2, 0x272b

    invoke-direct {v1, v2}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1897
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1889
    nop

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
    .line 1869
    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v2

    .line 1870
    .local v2, "phoneNumberBytes":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lch/kingdoms/android/network/ChPacketFactory$SaveData;->DATA:[B

    array-length v4, v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1871
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1872
    iget-byte v3, p0, Lch/kingdoms/android/network/ChPacketFactory$SaveData;->DATA_NUM:B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1873
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$SaveData;->DATA:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1874
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$SaveData;->DATA:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1875
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1876
    const/16 v3, 0x3f0

    const/16 v4, 0xb5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v3

    invoke-super {p0, p1, v3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1881
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "phoneNumberBytes":[B
    :goto_0
    return-void

    .line 1877
    :catch_0
    move-exception v1

    .line 1879
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
