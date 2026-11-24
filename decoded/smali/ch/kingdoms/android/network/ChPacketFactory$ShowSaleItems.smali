.class public Lch/kingdoms/android/network/ChPacketFactory$ShowSaleItems;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSaleItems"
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1150
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$ShowSaleItems;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 1151
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 1154
    return-void
.end method


# virtual methods
.method protected onResponse(ILch/android/api/network/ChDataInput;I)Lch/android/api/network/ChResultPacket;
    .locals 8
    .param p1, "_resultCode"    # I
    .param p2, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .param p3, "_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1171
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v5

    .line 1172
    .local v5, "size":B
    new-instance v4, Lch/android/api/network/ChResultPacket;

    const/16 v7, 0x2710

    invoke-direct {v4, v7}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1173
    .local v4, "resultPacket":Lch/android/api/network/ChResultPacket;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 1187
    return-object v4

    .line 1174
    :cond_0
    new-instance v2, Lch/android/api/network/ChNetworkItemData;

    invoke-direct {v2, p2}, Lch/android/api/network/ChNetworkItemData;-><init>(Lch/android/api/network/ChDataInput;)V

    .line 1175
    .local v2, "item":Lch/android/api/network/ChNetworkItemData;
    new-instance v3, Lch/android/api/network/ChTime;

    invoke-direct {v3, p2}, Lch/android/api/network/ChTime;-><init>(Lch/android/api/network/ChDataInput;)V

    .line 1176
    .local v3, "registeredTime":Lch/android/api/network/ChTime;
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v0

    .line 1177
    .local v0, "coast":I
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v6

    .line 1179
    .local v6, "status":B
    invoke-virtual {v4, v2}, Lch/android/api/network/ChResultPacket;->addItem(Lch/android/api/network/ChNetworkItemData;)V

    .line 1180
    invoke-virtual {v4, v3}, Lch/android/api/network/ChResultPacket;->addTime(Lch/android/api/network/ChTime;)V

    .line 1181
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 1182
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 1173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 4
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 1160
    const/16 v1, 0x3ec

    const/16 v2, 0x8d

    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v1

    invoke-super {p0, p1, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    :goto_0
    return-void

    .line 1161
    :catch_0
    move-exception v0

    .line 1163
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
