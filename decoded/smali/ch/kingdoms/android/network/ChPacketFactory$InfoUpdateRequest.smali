.class public Lch/kingdoms/android/network/ChPacketFactory$InfoUpdateRequest;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InfoUpdateRequest"
.end annotation


# instance fields
.field private final DEVICE_NAME:Ljava/lang/String;

.field private final VERSION:I

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "_device"    # Ljava/lang/String;
    .param p5, "_version"    # I

    .prologue
    .line 505
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$InfoUpdateRequest;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 506
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 508
    iput-object p4, p0, Lch/kingdoms/android/network/ChPacketFactory$InfoUpdateRequest;->DEVICE_NAME:Ljava/lang/String;

    .line 509
    iput p5, p0, Lch/kingdoms/android/network/ChPacketFactory$InfoUpdateRequest;->VERSION:I

    .line 510
    return-void
.end method


# virtual methods
.method protected onResponse(ILch/android/api/network/ChDataInput;I)Lch/android/api/network/ChResultPacket;
    .locals 2
    .param p1, "_resultCode"    # I
    .param p2, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .param p3, "_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Lch/android/api/network/ChResultPacket;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    return-object v0
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 9
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 516
    :try_start_0
    iget-object v6, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v6}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v3

    .line 517
    .local v3, "phoneNumber":[B
    const/4 v4, 0x4

    .line 520
    .local v4, "telecome":B
    iget-object v6, p0, Lch/kingdoms/android/network/ChPacketFactory$InfoUpdateRequest;->DEVICE_NAME:Ljava/lang/String;

    invoke-static {v6}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v1

    .line 522
    .local v1, "device":[B
    iget v6, p0, Lch/kingdoms/android/network/ChPacketFactory$InfoUpdateRequest;->VERSION:I

    invoke-static {v6}, Lch/android/api/network/ChByte;->valueOf(I)[B

    move-result-object v5

    .line 524
    .local v5, "version":[B
    array-length v6, v3

    add-int/lit8 v6, v6, 0x1

    .line 525
    array-length v7, v1

    .line 524
    add-int/2addr v6, v7

    .line 525
    array-length v7, v5

    .line 524
    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 526
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 527
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 528
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 529
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 530
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 533
    const/16 v6, 0x3e8

    const/16 v7, 0x69

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-static {v6, v7, v8}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v6

    .line 532
    invoke-super {p0, p1, v6}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "device":[B
    .end local v3    # "phoneNumber":[B
    .end local v4    # "telecome":B
    .end local v5    # "version":[B
    :goto_0
    return-void

    .line 534
    :catch_0
    move-exception v2

    .line 536
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
