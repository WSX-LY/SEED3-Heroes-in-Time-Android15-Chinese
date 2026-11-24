.class public Lch/kingdoms/android/network/ChPacketFactory$Disconnect;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Disconnect"
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 378
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$Disconnect;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 379
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 381
    return-void
.end method


# virtual methods
.method protected onResponse(ILch/android/api/network/ChDataInput;I)Lch/android/api/network/ChResultPacket;
    .locals 1
    .param p1, "_resultCode"    # I
    .param p2, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .param p3, "_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method public onResult(Lch/android/api/network/ChNetwork;)V
    .locals 0
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 396
    return-void
.end method

.method public final send(Lch/android/api/network/ChNetwork;)V
    .locals 4
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 385
    const/16 v1, 0x3e8

    const/16 v2, 0x64

    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$Disconnect;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v1

    invoke-super {p0, p1, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
