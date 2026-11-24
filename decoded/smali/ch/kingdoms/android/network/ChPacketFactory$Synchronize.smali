.class public Lch/kingdoms/android/network/ChPacketFactory$Synchronize;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Synchronize"
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 470
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$Synchronize;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 471
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 473
    return-void
.end method


# virtual methods
.method protected onResponse(ILch/android/api/network/ChDataInput;I)Lch/android/api/network/ChResultPacket;
    .locals 6
    .param p1, "_resultCode"    # I
    .param p2, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .param p3, "_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readChUTF16String()Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "userId":Ljava/lang/String;
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v2

    .line 489
    .local v2, "telecome":B
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readChMbcsString()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "deviceName":Ljava/lang/String;
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v4

    .line 491
    .local v4, "version":I
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v5, 0x2710

    invoke-direct {v1, v5}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 492
    .local v1, "resultPacket":Lch/android/api/network/ChResultPacket;
    invoke-virtual {v1, v3}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 493
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v1, v0}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 495
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 497
    return-object v1
.end method

.method public send(Lch/android/api/network/ChNetwork;)V
    .locals 4
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 477
    const/16 v1, 0x3e8

    const/16 v2, 0x67

    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v1

    invoke-super {p0, p1, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
