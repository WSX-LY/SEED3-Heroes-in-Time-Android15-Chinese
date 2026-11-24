.class public Lch/kingdoms/android/network/ChPacketFactory$InquireRank;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InquireRank"
.end annotation


# instance fields
.field private final CLASS:B

.field private final RANK_TYPE:B

.field private final SEARCH_TYPE:B

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBB)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "_rankType"    # B
    .param p5, "_searchType"    # B
    .param p6, "_class"    # B

    .prologue
    .line 603
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRank;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 604
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 606
    iput-byte p4, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRank;->RANK_TYPE:B

    .line 607
    iput-byte p5, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRank;->SEARCH_TYPE:B

    .line 608
    iput-byte p6, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRank;->CLASS:B

    .line 609
    return-void
.end method


# virtual methods
.method protected onResponse(ILch/android/api/network/ChDataInput;I)Lch/android/api/network/ChResultPacket;
    .locals 4
    .param p1, "_resultCode"    # I
    .param p2, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .param p3, "_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    packed-switch p1, :pswitch_data_0

    .line 651
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x272d

    invoke-direct {v1, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 654
    .local v1, "resultPacket":Lch/android/api/network/ChResultPacket;
    :goto_0
    return-object v1

    .line 637
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :pswitch_0
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v0

    .line 638
    .local v0, "rank":I
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v2

    .line 639
    .local v2, "value":I
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    .line 640
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    .line 641
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    .line 642
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    .line 643
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2710

    invoke-direct {v1, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 644
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 645
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 648
    .end local v0    # "rank":I
    .end local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    .end local v2    # "value":I
    :pswitch_1
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2718

    invoke-direct {v1, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 649
    .restart local v1    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 6
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 615
    :try_start_0
    iget-object v3, p0, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v3}, Lch/android/api/network/ChByte;->valueOfMBCS(Ljava/lang/String;)[B

    move-result-object v2

    .line 616
    .local v2, "phoneNumber":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 617
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 618
    iget-byte v3, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRank;->RANK_TYPE:B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 619
    iget-byte v3, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRank;->SEARCH_TYPE:B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 620
    iget-byte v3, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRank;->CLASS:B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 621
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 623
    const/16 v3, 0x3e9

    const/16 v4, 0x71

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v3

    invoke-super {p0, p1, v3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "phoneNumber":[B
    :goto_0
    return-void

    .line 624
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
