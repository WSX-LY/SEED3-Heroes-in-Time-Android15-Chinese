.class public Lch/kingdoms/android/network/ChPacketFactory$RegisterSaleItem;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RegisterSaleItem"
.end annotation


# instance fields
.field private final COAST:I

.field private final DB_INDEX:I

.field private final QAUNTITY:I

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;III)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "_dbIndex"    # I
    .param p5, "_quantity"    # I
    .param p6, "_coast"    # I

    .prologue
    .line 1078
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterSaleItem;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 1079
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 1081
    iput p4, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterSaleItem;->DB_INDEX:I

    .line 1082
    iput p5, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterSaleItem;->QAUNTITY:I

    .line 1083
    iput p6, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterSaleItem;->COAST:I

    .line 1084
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
    .line 1112
    packed-switch p1, :pswitch_data_0

    .line 1141
    const-string v1, "no such item"

    .line 1142
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x272d

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1145
    .local v2, "resultPacket":Lch/android/api/network/ChResultPacket;
    :goto_0
    return-object v2

    .line 1114
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_0
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2710

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1115
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    const-string v1, "Register Success"

    .line 1116
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1118
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_1
    const-string v1, "Register Success. exist moved item to network"

    .line 1119
    .restart local v1    # "result":Ljava/lang/String;
    invoke-static {p2}, Lch/android/api/network/ChNetworkItemData;->newInstanceWithoutDbIndex(Lch/android/api/network/ChDataInput;)Lch/android/api/network/ChNetworkItemData;

    move-result-object v0

    .line 1120
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

    .line 1121
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x271e

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1122
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    invoke-virtual {v2, v0}, Lch/android/api/network/ChResultPacket;->addItem(Lch/android/api/network/ChNetworkItemData;)V

    goto :goto_0

    .line 1125
    .end local v0    # "item":Lch/android/api/network/ChNetworkItemData;
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_2
    const-string v1, "Exceed qauntity"

    .line 1126
    .restart local v1    # "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2721

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1127
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1129
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_3
    const-string v1, "Exceed max coast"

    .line 1130
    .restart local v1    # "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2722

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1131
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1133
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_4
    const-string v1, "Exceed max qauntity"

    .line 1134
    .restart local v1    # "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2723

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1135
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1137
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_5
    const-string v1, "no such item"

    .line 1138
    .restart local v1    # "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2720

    invoke-direct {v2, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1139
    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 6
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 1090
    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v2

    .line 1092
    .local v2, "phoneNumberBytes":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0xc

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1093
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1094
    iget v3, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterSaleItem;->DB_INDEX:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1095
    iget v3, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterSaleItem;->QAUNTITY:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1096
    iget v3, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterSaleItem;->COAST:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1097
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1099
    const/16 v3, 0x3eb

    const/16 v4, 0x89

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v3

    invoke-super {p0, p1, v3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "phoneNumberBytes":[B
    :goto_0
    return-void

    .line 1100
    :catch_0
    move-exception v1

    .line 1102
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
