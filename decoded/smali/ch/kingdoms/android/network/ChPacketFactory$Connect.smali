.class public Lch/kingdoms/android/network/ChPacketFactory$Connect;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Connect"
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$Connect;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 338
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 340
    return-void
.end method


# virtual methods
.method protected onResponse(ILch/android/api/network/ChDataInput;I)Lch/android/api/network/ChResultPacket;
    .locals 2
    .param p1, "_resultCode"    # I
    .param p2, "_ChDataInput"    # Lch/android/api/network/ChDataInput;
    .param p3, "_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    packed-switch p1, :pswitch_data_0

    .line 369
    new-instance v0, Lch/android/api/network/ChResultPacket;

    const/16 v1, 0x272d

    invoke-direct {v0, v1}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 373
    .local v0, "resultPacket":Lch/android/api/network/ChResultPacket;
    :goto_0
    return-object v0

    .line 360
    .end local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_0
    new-instance v0, Lch/android/api/network/ChResultPacket;

    const/16 v1, 0x2711

    invoke-direct {v0, v1}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 361
    .restart local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 363
    .end local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_1
    new-instance v0, Lch/android/api/network/ChResultPacket;

    const/16 v1, 0x2712

    invoke-direct {v0, v1}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 364
    .restart local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 366
    .end local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_2
    new-instance v0, Lch/android/api/network/ChResultPacket;

    const/16 v1, 0x2713

    invoke-direct {v0, v1}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 367
    .restart local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public send(Lch/android/api/network/ChNetwork;)V
    .locals 5
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 344
    :try_start_0
    iget-object v2, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v2}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v1

    .line 345
    .local v1, "mbcsBytes":[B
    const-string v2, "KD"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "phonenumber:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/16 v2, 0x3e8

    const/16 v3, 0x65

    invoke-static {v2, v3, v1}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v2

    invoke-super {p0, p1, v2}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v1    # "mbcsBytes":[B
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
