.class public Lch/kingdoms/android/network/ChPacketFactory$DepositItem;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DepositItem"
.end annotation


# instance fields
.field private final ITEM:Lch/android/api/network/ChNetworkItemData;

.field private final NAME:Ljava/lang/String;

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;Lch/android/api/network/ChNetworkItemData;)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "_item"    # Lch/android/api/network/ChNetworkItemData;

    .prologue
    .line 959
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$DepositItem;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 960
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 962
    iput-object p4, p0, Lch/kingdoms/android/network/ChPacketFactory$DepositItem;->NAME:Ljava/lang/String;

    .line 963
    iput-object p5, p0, Lch/kingdoms/android/network/ChPacketFactory$DepositItem;->ITEM:Lch/android/api/network/ChNetworkItemData;

    .line 964
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
    .line 991
    packed-switch p1, :pswitch_data_0

    .line 1002
    :pswitch_0
    new-instance v0, Lch/android/api/network/ChResultPacket;

    const/16 v1, 0x272d

    invoke-direct {v0, v1}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1005
    .local v0, "resultPacket":Lch/android/api/network/ChResultPacket;
    :goto_0
    return-object v0

    .line 993
    .end local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_1
    new-instance v0, Lch/android/api/network/ChResultPacket;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 994
    .restart local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 996
    .end local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_2
    new-instance v0, Lch/android/api/network/ChResultPacket;

    const/16 v1, 0x2724

    invoke-direct {v0, v1}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 997
    .restart local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 999
    .end local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_3
    new-instance v0, Lch/android/api/network/ChResultPacket;

    const/16 v1, 0x271b

    invoke-direct {v0, v1}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 1000
    .restart local v0    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 991
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 9
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 970
    :try_start_0
    iget-object v6, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v6}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v5

    .line 971
    .local v5, "phoneNumberBytes":[B
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$DepositItem;->NAME:Ljava/lang/String;

    .line 972
    .local v3, "itemName":Ljava/lang/String;
    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfUTF16(Ljava/lang/String;)[B

    move-result-object v4

    .line 973
    .local v4, "nameBytes":[B
    iget-object v6, p0, Lch/kingdoms/android/network/ChPacketFactory$DepositItem;->ITEM:Lch/android/api/network/ChNetworkItemData;

    invoke-virtual {v6}, Lch/android/api/network/ChNetworkItemData;->getBytes()[B

    move-result-object v2

    .line 974
    .local v2, "itemBytes":[B
    array-length v6, v5

    array-length v7, v4

    add-int/2addr v6, v7

    array-length v7, v2

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 975
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 976
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 977
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 978
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 979
    const/16 v6, 0x3eb

    const/16 v7, 0x85

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-static {v6, v7, v8}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v6

    invoke-super {p0, p1, v6}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "itemBytes":[B
    .end local v3    # "itemName":Ljava/lang/String;
    .end local v4    # "nameBytes":[B
    .end local v5    # "phoneNumberBytes":[B
    :goto_0
    return-void

    .line 980
    :catch_0
    move-exception v1

    .line 982
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
