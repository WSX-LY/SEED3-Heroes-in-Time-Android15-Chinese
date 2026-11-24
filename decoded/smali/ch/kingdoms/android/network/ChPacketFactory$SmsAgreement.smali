.class public Lch/kingdoms/android/network/ChPacketFactory$SmsAgreement;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmsAgreement"
.end annotation


# instance fields
.field private final AGREEMENT:B

.field private final GAME_NUMBER:I

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B)V
    .locals 1
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "_agreement"    # B

    .prologue
    .line 2069
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$SmsAgreement;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 2070
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 2066
    const v0, 0x132de98

    iput v0, p0, Lch/kingdoms/android/network/ChPacketFactory$SmsAgreement;->GAME_NUMBER:I

    .line 2072
    iput-byte p4, p0, Lch/kingdoms/android/network/ChPacketFactory$SmsAgreement;->AGREEMENT:B

    .line 2073
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
    .line 2098
    packed-switch p1, :pswitch_data_0

    .line 2110
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown..."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2111
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x272d

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 2114
    .local v2, "resultPacket":Lch/android/api/network/ChResultPacket;
    :goto_0
    return-object v2

    .line 2100
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_0
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v0

    .line 2101
    .local v0, "first":B
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "Success : "

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v3, "FIRST"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2102
    .restart local v1    # "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2710

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 2103
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 2101
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :cond_0
    const-string v3, "ALREADY YES"

    goto :goto_1

    .line 2106
    .end local v0    # "first":B
    :pswitch_1
    const-string v1, "ALREADY REGISTERED"

    .line 2107
    .restart local v1    # "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2732

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 2108
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 2098
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
    .line 2079
    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v2

    .line 2080
    .local v2, "phoneNumberBytes":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2081
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2082
    const v3, 0x132de98

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2083
    iget-byte v3, p0, Lch/kingdoms/android/network/ChPacketFactory$SmsAgreement;->AGREEMENT:B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2084
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2085
    const/16 v3, 0x3f0

    const/16 v4, 0xbb

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v3

    invoke-super {p0, p1, v3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2090
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "phoneNumberBytes":[B
    :goto_0
    return-void

    .line 2086
    :catch_0
    move-exception v1

    .line 2088
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
