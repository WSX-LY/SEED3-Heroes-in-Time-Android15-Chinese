.class public abstract Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.super Ljava/lang/Object;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ChPacket"
.end annotation


# instance fields
.field protected final PHONE_NUMBER:Ljava/lang/String;

.field private RESULT_LISTENER:Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->RESULT_LISTENER:Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;

    .line 261
    iput-object p3, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    .line 262
    return-void
.end method


# virtual methods
.method protected abstract onResponse(ILch/android/api/network/ChDataInput;I)Lch/android/api/network/ChResultPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onResult(Lch/android/api/network/ChNetwork;)V
    .locals 11
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    const v9, 0xffff

    .line 299
    if-nez p1, :cond_1

    .line 300
    new-instance v4, Lch/android/api/network/ChResultPacket;

    const/16 v8, 0x2733

    invoke-direct {v4, v8}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 301
    .local v4, "resultPacket":Lch/android/api/network/ChResultPacket;
    iget-object v8, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->RESULT_LISTENER:Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;

    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    .line 302
    iget-object v8, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->RESULT_LISTENER:Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;

    invoke-interface {v8, v4}, Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;->onResult(Lch/android/api/network/ChResultPacket;)V

    .line 333
    .end local v4    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lch/android/api/network/ChNetwork;->readInt()I

    move-result v7

    .line 308
    .local v7, "totalSize":I
    add-int/lit8 v5, v7, -0x4

    .line 309
    .local v5, "size":I
    invoke-virtual {p1}, Lch/android/api/network/ChNetwork;->readShort()S

    move-result v8

    and-int v1, v9, v8

    .line 310
    .local v1, "mainType":I
    invoke-virtual {p1}, Lch/android/api/network/ChNetwork;->readShort()S

    move-result v8

    and-int v6, v9, v8

    .line 311
    .local v6, "subType":I
    invoke-virtual {p1}, Lch/android/api/network/ChNetwork;->readInt()I

    move-result v2

    .line 312
    .local v2, "result":I
    const-string v8, "NETWORK"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ResultCode : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    sparse-switch v2, :sswitch_data_0

    .line 321
    add-int/lit8 v8, v5, -0x4

    invoke-virtual {p0, v2, p1, v8}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->onResponse(ILch/android/api/network/ChDataInput;I)Lch/android/api/network/ChResultPacket;

    move-result-object v3

    .line 322
    .local v3, "resultPAcket":Lch/android/api/network/ChResultPacket;
    iget-object v8, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->RESULT_LISTENER:Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;

    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    .line 323
    const-string v8, "NETWORK"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "read : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lch/android/api/network/ChResultPacket;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v8, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->RESULT_LISTENER:Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;

    invoke-interface {v8, v3}, Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;->onResult(Lch/android/api/network/ChResultPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    .end local v1    # "mainType":I
    .end local v2    # "result":I
    .end local v3    # "resultPAcket":Lch/android/api/network/ChResultPacket;
    .end local v5    # "size":I
    .end local v6    # "subType":I
    .end local v7    # "totalSize":I
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 331
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->onResult(Lch/android/api/network/ChNetwork;)V

    goto :goto_0

    .line 315
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "mainType":I
    .restart local v2    # "result":I
    .restart local v5    # "size":I
    .restart local v6    # "subType":I
    .restart local v7    # "totalSize":I
    :sswitch_0
    :try_start_1
    const-string v8, "NETWORK"

    const-string v9, "Failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :sswitch_1
    const-string v8, "NETWORK"

    const-string v9, "DB error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 313
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method protected abstract send(Lch/android/api/network/ChNetwork;)V
.end method

.method public final send(Lch/android/api/network/ChNetwork;[B)V
    .locals 4
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;
    .param p2, "_data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 276
    invoke-virtual {p1}, Lch/android/api/network/ChNetwork;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    const/4 v1, 0x1

    .line 279
    .local v1, "isSend":Z
    if-eqz p2, :cond_0

    .line 280
    :try_start_0
    invoke-virtual {p1, p2}, Lch/android/api/network/ChNetwork;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {p0, p1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->onResult(Lch/android/api/network/ChNetwork;)V

    .line 296
    .end local v1    # "isSend":Z
    :goto_1
    return-void

    .line 283
    .restart local v1    # "isSend":Z
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 286
    const/4 v1, 0x0

    goto :goto_0

    .line 291
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0, v3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->onResult(Lch/android/api/network/ChNetwork;)V

    goto :goto_1

    .line 294
    .end local v1    # "isSend":Z
    :cond_2
    invoke-virtual {p0, v3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->onResult(Lch/android/api/network/ChNetwork;)V

    goto :goto_1
.end method

.method public sendPacket(Lch/android/api/network/ChNetwork;)V
    .locals 0
    .param p1, "network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;)V

    .line 270
    return-void
.end method

.method public setOnResultListener(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;)V
    .locals 0
    .param p1, "orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;

    .prologue
    .line 265
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->RESULT_LISTENER:Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;

    .line 266
    return-void
.end method
