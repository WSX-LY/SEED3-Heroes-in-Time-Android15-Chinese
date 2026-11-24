.class public Lch/kingdoms/android/network/ChPacketFactory$DrawItem;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawItem"
.end annotation


# instance fields
.field private final DB_INDEX:I

.field private final QAUNTITY:I

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;II)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "_dbIndex"    # I
    .param p5, "_qauntity"    # I

    .prologue
    .line 1013
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$DrawItem;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 1014
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 1016
    iput p4, p0, Lch/kingdoms/android/network/ChPacketFactory$DrawItem;->DB_INDEX:I

    .line 1017
    iput p5, p0, Lch/kingdoms/android/network/ChPacketFactory$DrawItem;->QAUNTITY:I

    .line 1018
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
    .line 1043
    packed-switch p1, :pswitch_data_0

    .line 1064
    const-string v1, "unknown"

    .line 1065
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x272d

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1069
    .local v2, "resultPacket":Lch/android/api/network/ChResultPacket;
    :goto_0
    return-object v2

    .line 1045
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_0
    const-string v1, "Draw Item Success"

    .line 1046
    .restart local v1    # "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2710

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1047
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1049
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_1
    const-string v1, "Draw Item Success. exist moved item to network"

    .line 1050
    .restart local v1    # "result":Ljava/lang/String;
    invoke-static {p2}, Lch/android/api/network/ChNetworkItemData;->newInstanceWithoutDbIndex(Lch/android/api/network/ChDataInput;)Lch/android/api/network/ChNetworkItemData;

    move-result-object v0

    .line 1051
    .local v0, "item":Lch/android/api/network/ChNetworkItemData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lch/android/api/network/ChNetworkItemData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1052
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x271e

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1053
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    invoke-virtual {v2, v0}, Lch/android/api/network/ChResultPacket;->addItem(Lch/android/api/network/ChNetworkItemData;)V

    goto :goto_0

    .line 1056
    .end local v0    # "item":Lch/android/api/network/ChNetworkItemData;
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_2
    const-string v1, "exceed quantity"

    .line 1057
    .restart local v1    # "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2721

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1058
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1060
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_3
    const-string v1, "no found such item"

    .line 1061
    .restart local v1    # "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2720

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1062
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1043
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 6
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 1024
    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v2

    .line 1025
    .local v2, "phoneNumberBytes":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1026
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1027
    iget v3, p0, Lch/kingdoms/android/network/ChPacketFactory$DrawItem;->DB_INDEX:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1028
    iget v3, p0, Lch/kingdoms/android/network/ChPacketFactory$DrawItem;->QAUNTITY:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1029
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1030
    const/16 v3, 0x3eb

    const/16 v4, 0x87

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v3

    invoke-super {p0, p1, v3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "phoneNumberBytes":[B
    :goto_0
    return-void

    .line 1031
    :catch_0
    move-exception v1

    .line 1033
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
