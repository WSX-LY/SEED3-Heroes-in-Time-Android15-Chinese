.class public Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RegisterMember"
.end annotation


# instance fields
.field private final DEVICE_NAME:Ljava/lang/String;

.field private final USER_ID:Ljava/lang/String;

.field private final VERSION:I

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumer"    # Ljava/lang/String;
    .param p4, "_userId"    # Ljava/lang/String;
    .param p5, "_device"    # Ljava/lang/String;
    .param p6, "_version"    # I

    .prologue
    .line 411
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 412
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 414
    iput-object p4, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;->USER_ID:Ljava/lang/String;

    .line 415
    iput-object p5, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;->DEVICE_NAME:Ljava/lang/String;

    .line 416
    iput p6, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;->VERSION:I

    .line 417
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 418
    const-string v0, "KD"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;->USER_ID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;->DEVICE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;->VERSION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    return-void
.end method


# virtual methods
.method protected onResponse(ILch/android/api/network/ChDataInput;I)Lch/android/api/network/ChResultPacket;
    .locals 2
    .param p1, "_resultCode"    # I
    .param p2, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .param p3, "_len"    # I

    .prologue
    .line 450
    packed-switch p1, :pswitch_data_0

    .line 461
    new-instance v0, Lch/android/api/network/ChResultPacket;

    const/16 v1, 0x272d

    invoke-direct {v0, v1}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 465
    .local v0, "resultPacket":Lch/android/api/network/ChResultPacket;
    :goto_0
    return-object v0

    .line 452
    .end local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_0
    new-instance v0, Lch/android/api/network/ChResultPacket;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 453
    .restart local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 455
    .end local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_1
    new-instance v0, Lch/android/api/network/ChResultPacket;

    const/16 v1, 0x2716

    invoke-direct {v0, v1}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 456
    .restart local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 458
    .end local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_2
    new-instance v0, Lch/android/api/network/ChResultPacket;

    const/16 v1, 0x2717

    invoke-direct {v0, v1}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 459
    .restart local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public send(Lch/android/api/network/ChNetwork;)V
    .locals 10
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 424
    :try_start_0
    iget-object v7, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v7}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v3

    .line 425
    .local v3, "phoneNumber":[B
    iget-object v7, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;->USER_ID:Ljava/lang/String;

    invoke-static {v7}, Lch/android/api/network/ChByte;->valueOfUTF16(Ljava/lang/String;)[B

    move-result-object v5

    .line 426
    .local v5, "userId":[B
    const/4 v4, 0x4

    .line 427
    .local v4, "telecome":B
    iget-object v7, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;->DEVICE_NAME:Ljava/lang/String;

    invoke-static {v7}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v1

    .line 428
    .local v1, "device":[B
    iget v7, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;->VERSION:I

    invoke-static {v7}, Lch/android/api/network/ChByte;->valueOf(I)[B

    move-result-object v6

    .line 430
    .local v6, "version":[B
    array-length v7, v3

    .line 431
    array-length v8, v5

    .line 430
    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    .line 431
    array-length v8, v1

    .line 430
    add-int/2addr v7, v8

    .line 431
    array-length v8, v6

    .line 430
    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 432
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 433
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 434
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 435
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 436
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 437
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 439
    const/16 v7, 0x3e8

    const/16 v8, 0x6b

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-static {v7, v8, v9}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v7

    invoke-super {p0, p1, v7}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "device":[B
    .end local v3    # "phoneNumber":[B
    .end local v4    # "telecome":B
    .end local v5    # "userId":[B
    .end local v6    # "version":[B
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v2

    .line 442
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
