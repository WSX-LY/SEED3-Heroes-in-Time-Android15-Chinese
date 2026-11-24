.class public Lch/kingdoms/android/network/ChPacketFactory$CheckGiftCashPoint;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckGiftCashPoint"
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 2120
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$CheckGiftCashPoint;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 2121
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 2123
    return-void
.end method


# virtual methods
.method protected onResponse(ILch/android/api/network/ChDataInput;I)Lch/android/api/network/ChResultPacket;
    .locals 7
    .param p1, "_resultCode"    # I
    .param p2, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .param p3, "_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2145
    sparse-switch p1, :sswitch_data_0

    .line 2164
    new-instance v3, Lch/android/api/network/ChResultPacket;

    const/16 v6, 0x272d

    invoke-direct {v3, v6}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 2167
    .local v3, "resultPacket":Lch/android/api/network/ChResultPacket;
    :cond_0
    :goto_0
    return-object v3

    .line 2147
    .end local v3    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :sswitch_0
    new-instance v3, Lch/android/api/network/ChResultPacket;

    const/16 v6, 0x2710

    invoke-direct {v3, v6}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 2149
    .restart local v3    # "resultPacket":Lch/android/api/network/ChResultPacket;
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v4

    .line 2150
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 2151
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readChUTF16String()Ljava/lang/String;

    move-result-object v1

    .line 2152
    .local v1, "fromUserId":Ljava/lang/String;
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v0

    .line 2153
    .local v0, "fence":I
    new-instance v5, Lch/android/api/network/ChTime;

    invoke-direct {v5, p2}, Lch/android/api/network/ChTime;-><init>(Lch/android/api/network/ChDataInput;)V

    .line 2154
    .local v5, "time":Lch/android/api/network/ChTime;
    invoke-virtual {v3, v1}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 2155
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 2156
    invoke-virtual {v3, v5}, Lch/android/api/network/ChResultPacket;->addTime(Lch/android/api/network/ChTime;)V

    .line 2150
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2161
    .end local v0    # "fence":I
    .end local v1    # "fromUserId":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "resultPacket":Lch/android/api/network/ChResultPacket;
    .end local v4    # "size":I
    .end local v5    # "time":Lch/android/api/network/ChTime;
    :sswitch_1
    new-instance v3, Lch/android/api/network/ChResultPacket;

    const/16 v6, 0x2715

    invoke-direct {v3, v6}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 2162
    .restart local v3    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 2145
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 6
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 2129
    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v2

    .line 2130
    .local v2, "phoneNumberBytes":[B
    array-length v3, v2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2131
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2132
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2133
    const/16 v3, 0x3ef

    const/16 v4, 0xb5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v3

    invoke-super {p0, p1, v3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2138
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "phoneNumberBytes":[B
    :goto_0
    return-void

    .line 2134
    :catch_0
    move-exception v1

    .line 2136
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
