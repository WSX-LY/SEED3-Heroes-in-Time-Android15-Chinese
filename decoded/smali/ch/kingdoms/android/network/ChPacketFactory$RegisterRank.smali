.class public Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RegisterRank"
.end annotation


# instance fields
.field private final CLASS:B

.field private final RANK_TYPE:B

.field private final SCORE:I

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBI)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "_rankType"    # B
    .param p5, "_class"    # B
    .param p6, "_score"    # I

    .prologue
    .line 553
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 554
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 556
    iput-byte p4, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;->RANK_TYPE:B

    .line 557
    iput-byte p5, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;->CLASS:B

    .line 558
    iput p6, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;->SCORE:I

    .line 559
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
    .line 589
    if-nez p1, :cond_0

    .line 590
    new-instance v0, Lch/android/api/network/ChResultPacket;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 593
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lch/android/api/network/ChResultPacket;

    const/16 v1, 0x272e

    invoke-direct {v0, v1}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    goto :goto_0
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 6
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 565
    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v2

    .line 567
    .local v2, "phoneNumber":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x14

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 568
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 569
    iget-byte v3, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;->RANK_TYPE:B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 570
    iget-byte v3, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;->CLASS:B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 571
    iget v3, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;->SCORE:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 572
    iget v3, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;->SCORE:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 573
    iget v3, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;->SCORE:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 574
    iget v3, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;->SCORE:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 575
    iget v3, p0, Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;->SCORE:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 576
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 578
    const/16 v3, 0x3e9

    const/16 v4, 0x6f

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v3

    invoke-super {p0, p1, v3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "phoneNumber":[B
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v1

    .line 581
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
