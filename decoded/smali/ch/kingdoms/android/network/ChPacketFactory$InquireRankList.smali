.class public Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InquireRankList"
.end annotation


# instance fields
.field private final CLASS:B

.field private final HIGH_COUNT:B

.field private final LOW_COUNT:B

.field private final ORDER:B

.field private final RANK:I

.field private final RANK_TYPE:B

.field private final SEARCH_TYPE:B

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;IBBBBBB)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "_rank"    # I
    .param p5, "_highCount"    # B
    .param p6, "_lowCount"    # B
    .param p7, "_rankType"    # B
    .param p8, "_searchType"    # B
    .param p9, "_class"    # B
    .param p10, "_order"    # B

    .prologue
    .line 668
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 669
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 671
    iput p4, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;->RANK:I

    .line 672
    iput-byte p5, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;->HIGH_COUNT:B

    .line 673
    iput-byte p6, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;->LOW_COUNT:B

    .line 674
    iput-byte p7, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;->RANK_TYPE:B

    .line 675
    iput-byte p8, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;->SEARCH_TYPE:B

    .line 676
    iput-byte p9, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;->CLASS:B

    .line 677
    iput-byte p10, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;->ORDER:B

    .line 678
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
    .line 701
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v2

    .line 702
    .local v2, "size":B
    new-instance v1, Lch/android/api/network/ChResultPacket;

    const/16 v3, 0x2710

    invoke-direct {v1, v3}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 704
    .local v1, "resultPacket":Lch/android/api/network/ChResultPacket;
    if-nez v2, :cond_0

    .line 705
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-lt v0, v3, :cond_1

    .line 709
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-lt v0, v2, :cond_2

    .line 729
    return-object v1

    .line 706
    :cond_1
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    .line 705
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    :cond_2
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 721
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readChMbcsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 722
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readChUTF16String()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 723
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 724
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    .line 725
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    .line 726
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    .line 727
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 4
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 683
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 684
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget v1, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;->RANK:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 685
    iget-byte v1, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;->HIGH_COUNT:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 686
    iget-byte v1, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;->LOW_COUNT:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 687
    iget-byte v1, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;->RANK_TYPE:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 688
    iget-byte v1, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;->SEARCH_TYPE:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 689
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 690
    iget-byte v1, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;->CLASS:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 691
    iget-byte v1, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;->ORDER:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 692
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 694
    const/16 v1, 0x3e9

    const/16 v2, 0x73

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v1

    invoke-super {p0, p1, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V

    .line 695
    return-void
.end method
