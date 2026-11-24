.class public Lch/kingdoms/android/network/ChPacketFactory$InquireEvents;
.super Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/network/ChPacketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InquireEvents"
.end annotation


# instance fields
.field private final EVENT_TYPE:B

.field final synthetic this$0:Lch/kingdoms/android/network/ChPacketFactory;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B)V
    .locals 0
    .param p2, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p3, "_phoneNumber"    # Ljava/lang/String;
    .param p4, "_eventType"    # B

    .prologue
    .line 736
    iput-object p1, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireEvents;->this$0:Lch/kingdoms/android/network/ChPacketFactory;

    .line 737
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    .line 739
    iput-byte p4, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireEvents;->EVENT_TYPE:B

    .line 740
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
    .line 757
    if-nez p1, :cond_0

    .line 758
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readChUTF16String()Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v4, 0x2710

    invoke-direct {v2, v4}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .line 760
    .local v2, "resultPacket":Lch/android/api/network/ChResultPacket;
    invoke-virtual {v2, v1}, Lch/android/api/network/ChResultPacket;->add(Ljava/lang/String;)V

    .line 761
    new-instance v3, Lch/android/api/network/ChTime;

    invoke-direct {v3, p2}, Lch/android/api/network/ChTime;-><init>(Lch/android/api/network/ChDataInput;)V

    .line 762
    .local v3, "startTime":Lch/android/api/network/ChTime;
    new-instance v0, Lch/android/api/network/ChTime;

    invoke-direct {v0, p2}, Lch/android/api/network/ChTime;-><init>(Lch/android/api/network/ChDataInput;)V

    .line 763
    .local v0, "endTime":Lch/android/api/network/ChTime;
    invoke-virtual {v2, v3}, Lch/android/api/network/ChResultPacket;->addTime(Lch/android/api/network/ChTime;)V

    .line 764
    invoke-virtual {v2, v0}, Lch/android/api/network/ChResultPacket;->addTime(Lch/android/api/network/ChTime;)V

    .line 786
    .end local v0    # "endTime":Lch/android/api/network/ChTime;
    .end local v1    # "result":Ljava/lang/String;
    .end local v3    # "startTime":Lch/android/api/network/ChTime;
    :goto_0
    return-object v2

    .line 780
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 781
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v4, 0x2719

    invoke-direct {v2, v4}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0

    .line 784
    .end local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    :cond_1
    new-instance v2, Lch/android/api/network/ChResultPacket;

    const/16 v4, 0x272d

    invoke-direct {v2, v4}, Lch/android/api/network/ChResultPacket;-><init>(I)V

    .restart local v2    # "resultPacket":Lch/android/api/network/ChResultPacket;
    goto :goto_0
.end method

.method protected send(Lch/android/api/network/ChNetwork;)V
    .locals 4
    .param p1, "_network"    # Lch/android/api/network/ChNetwork;

    .prologue
    .line 745
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 746
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-byte v1, p0, Lch/kingdoms/android/network/ChPacketFactory$InquireEvents;->EVENT_TYPE:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 747
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 748
    const/16 v1, 0x3e9

    const/16 v2, 0x75

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;->create(II[B)[B

    move-result-object v1

    invoke-super {p0, p1, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->send(Lch/android/api/network/ChNetwork;[B)V

    .line 749
    return-void
.end method
