.class public Lch/android/api/network/ChResultPacket;
.super Ljava/lang/Object;
.source "ChResultPacket.java"


# static fields
.field public static final RESULT_ALREADY_AGREE:I = 0x2732

.field public static final RESULT_BANNED_MEMBER:I = 0x2713

.field public static final RESULT_BANNED_TEXT:I = 0x2717

.field public static final RESULT_DB_ERROR:I = 0x2715

.field public static final RESULT_DUPLICATE_ID:I = 0x2716

.field public static final RESULT_EXCEED_MAX_DEPOSIT:I = 0x271a

.field public static final RESULT_EXCEED_MAX_SELL_ITEM:I = 0x2723

.field public static final RESULT_EXCEED_MAX_SELL_PRICE:I = 0x2722

.field public static final RESULT_EXCEED_NUM_ITEMS:I = 0x2721

.field public static final RESULT_EXCEED_RECEIVER_FENCE:I = 0x2728

.field public static final RESULT_FAIL:I = 0x2714

.field public static final RESULT_GIFT_SELF:I = 0x2729

.field public static final RESULT_INVEN_FULL:I = 0x271d

.field public static final RESULT_INVEN_SUCCESS:I = 0x271e

.field public static final RESULT_LACK_FENCE:I = 0x271c

.field public static final RESULT_LACK_NETWORK_FENCE:I = 0x2727

.field public static final RESULT_LACK_POINT:I = 0x2734

.field public static final RESULT_LACK_YOUR_ITEMS:I = 0x2730

.field public static final RESULT_LOW_GAME_VERSION:I = 0x271b

.field public static final RESULT_LOW_SCORE:I = 0x272e

.field public static final RESULT_MEMBER:I = 0x2711

.field public static final RESULT_NETWORK_DISCONNECTED:I = 0x2733

.field public static final RESULT_NETWORK_INVEN_FULL:I = 0x2724

.field public static final RESULT_NEW_MEMBNER:I = 0x2712

.field public static final RESULT_NOT_EXIST_RECEIVER:I = 0x272a

.field public static final RESULT_NOT_REGISTERED:I = 0x2718

.field public static final RESULT_NOT_SELLING:I = 0x2725

.field public static final RESULT_NO_DATA:I = 0x272c

.field public static final RESULT_NO_EQUAL_ITEM:I = 0x2720

.field public static final RESULT_NO_EVENT:I = 0x2719

.field public static final RESULT_OVERWRITE:I = 0x272b

.field public static final RESULT_RECEIVER_INVEN_FULL:I = 0x271f

.field public static final RESULT_RETURN_TO_INVEN:I = 0x2731

.field public static final RESULT_SOLD_OUT:I = 0x2726

.field public static final RESULT_SUCCESS:I = 0x2710

.field public static final RESULT_UNKNOWN:I = 0x272d

.field public static final RESULT_YOUR_ITEM:I = 0x272f


# instance fields
.field private final RESULT:I

.field private final datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lch/android/api/network/ChNetworkItemData;",
            ">;"
        }
    .end annotation
.end field

.field private saveData:[B

.field private final times:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lch/android/api/network/ChTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lch/android/api/network/ChResultPacket;->RESULT:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/android/api/network/ChResultPacket;->datas:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/android/api/network/ChResultPacket;->times:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/android/api/network/ChResultPacket;->items:Ljava/util/ArrayList;

    .line 58
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lch/android/api/network/ChResultPacket;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public addItem(Lch/android/api/network/ChNetworkItemData;)V
    .locals 1
    .param p1, "itemData"    # Lch/android/api/network/ChNetworkItemData;

    .prologue
    .line 97
    iget-object v0, p0, Lch/android/api/network/ChResultPacket;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public addTime(Lch/android/api/network/ChTime;)V
    .locals 1
    .param p1, "time"    # Lch/android/api/network/ChTime;

    .prologue
    .line 85
    iget-object v0, p0, Lch/android/api/network/ChResultPacket;->times:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public get(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Lch/android/api/network/ChResultPacket;->getDataSize()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 74
    const-string v0, "null"

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lch/android/api/network/ChResultPacket;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getAllItemdatas()[B
    .locals 5

    .prologue
    .line 105
    iget-object v3, p0, Lch/android/api/network/ChResultPacket;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v2, v3

    .line 106
    .local v2, "size":B
    if-lez v2, :cond_1

    .line 107
    iget-object v3, p0, Lch/android/api/network/ChResultPacket;->items:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/android/api/network/ChNetworkItemData;

    invoke-virtual {v3}, Lch/android/api/network/ChNetworkItemData;->getBytesWithDbIndex()[B

    move-result-object v3

    array-length v3, v3

    mul-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 108
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 109
    iget-object v3, p0, Lch/android/api/network/ChResultPacket;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 114
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    :goto_1
    return-object v3

    .line 109
    .restart local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/android/api/network/ChNetworkItemData;

    .line 110
    .local v1, "item":Lch/android/api/network/ChNetworkItemData;
    invoke-virtual {v1}, Lch/android/api/network/ChNetworkItemData;->getBytesWithDbIndex()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 114
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "item":Lch/android/api/network/ChNetworkItemData;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lch/android/api/network/ChResultPacket;->saveData:[B

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lch/android/api/network/ChResultPacket;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lch/android/api/network/ChResultPacket;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemData(I)Lch/android/api/network/ChNetworkItemData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lch/android/api/network/ChResultPacket;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/android/api/network/ChNetworkItemData;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lch/android/api/network/ChResultPacket;->RESULT:I

    return v0
.end method

.method public getTime(I)Lch/android/api/network/ChTime;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lch/android/api/network/ChResultPacket;->times:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/android/api/network/ChTime;

    return-object v0
.end method

.method public getTimeCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lch/android/api/network/ChResultPacket;->times:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setData([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 118
    iput-object p1, p0, Lch/android/api/network/ChResultPacket;->saveData:[B

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    .local v1, "strBuffer":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lch/android/api/network/ChResultPacket;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 129
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
