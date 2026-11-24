.class public Lch/kingdoms/android/network/ChPacketFactory$ShowNetworkInven;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowNetworkInven"
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 920
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$ShowNetworkInven;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 921
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 923
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
    .line 939
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v4

    .line 940
    .local v4, "size":B
    new-instance v3, Lch/android/api/network/ChResultPacket;

    const/16 v6, 0x2710

    invoke-direct {v3, v6}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 941
    .local v3, "resultPacket":Lch/android/api/network/ChResultPacket;
    if-lez v4, :cond_0

    .line 942
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 943
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lch/android/api/network/ChNetworkItemData;>;"
    const-string v5, ""

    .line 944
    .local v5, "txt":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_1

    .line 951
    .end local v0    # "i":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lch/android/api/network/ChNetworkItemData;>;"
    .end local v5    # "txt":Ljava/lang/String;
    :cond_0
    return-object v3

    .line 945
    .restart local v0    # "i":I
    .restart local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lch/android/api/network/ChNetworkItemData;>;"
    .restart local v5    # "txt":Ljava/lang/String;
    :cond_1
    new-instance v1, Lch/android/api/network/ChNetworkItemData;

    invoke-direct {v1, p2}, Lch/android/api/network/ChNetworkItemData;-><init>(Lch/android/api/network/ChDataInput;)V

    .line 946
    .local v1, "item":Lch/android/api/network/ChNetworkItemData;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lch/android/api/network/ChNetworkItemData;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 948
    invoke-virtual {v3, v1}, Lch/android/api/network/ChResultPacket;->addItem(Lch/android/api/network/ChNetworkItemData;)V

    .line 944
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 4
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 929
    const/16 v1, 0x3eb

    const/16 v2, 0x83

    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v1

    invoke-super {p0, p1, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :goto_0
    return-void

    .line 930
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
