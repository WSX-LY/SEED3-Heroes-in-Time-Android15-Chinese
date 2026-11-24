.class public Lch/kingdoms/android/network/ChPacketFactory$ExtendSaleItem;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtendSaleItem"
.end annotation


# instance fields
.field private final DB_INDEX:I

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "_dbIndex"    # I

    .prologue
    .line 1253
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$ExtendSaleItem;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 1254
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 1256
    iput p4, p0, Lch/kingdoms/android/network/ChPacketFactory$ExtendSaleItem;->DB_INDEX:I

    .line 1257
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
    .line 1282
    packed-switch p1, :pswitch_data_0

    .line 1298
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown..."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1299
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x272d

    invoke-direct {v1, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1302
    .local v1, "resultPacket":Lch/android/api/network/ChResultPacket;
    :goto_0
    return-object v1

    .line 1284
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_0
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2710

    invoke-direct {v1, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1285
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    new-instance v2, Lch/android/api/network/ChTime;

    invoke-direct {v2, p2}, Lch/android/api/network/ChTime;-><init>(Lch/android/api/network/ChDataInput;)V

    .line 1286
    .local v2, "time":Lch/android/api/network/ChTime;
    invoke-virtual {v1, v2}, Lch/android/api/network/ChResultPacket;->addTime(Lch/android/api/network/ChTime;)V

    .line 1287
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cancel SaleItem Success. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lch/android/api/network/ChTime;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1288
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1290
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    .end local v2    # "time":Lch/android/api/network/ChTime;
    :pswitch_1
    const-string v0, "not sale item"

    .line 1291
    .restart local v0    # "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2725

    invoke-direct {v1, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1292
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1294
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_2
    const-string v0, "sold out"

    .line 1295
    .restart local v0    # "result":Ljava/lang/String;
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2726

    invoke-direct {v1, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1296
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 1282
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 6
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 1263
    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v2

    .line 1265
    .local v2, "phoneNumberBytes":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1266
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1267
    iget v3, p0, Lch/kingdoms/android/network/ChPacketFactory$ExtendSaleItem;->DB_INDEX:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1268
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1269
    const/16 v3, 0x3ec

    const/16 v4, 0x91

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v3

    invoke-super {p0, p1, v3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1274
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "phoneNumberBytes":[B
    :goto_0
    return-void

    .line 1270
    :catch_0
    move-exception v1

    .line 1272
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
