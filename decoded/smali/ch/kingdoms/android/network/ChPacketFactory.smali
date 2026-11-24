.class public Lch/kingdoms/android/network/ChPacketFactory;
.super Ljava/lang/Object;
.source "ChPacketFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByItemName;,
        Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;,
        Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByUserName;,
        Lch/kingdoms/android/network/ChPacketFactory$CancelSaleItem;,
        Lch/kingdoms/android/network/ChPacketFactory$ChPacket;,
        Lch/kingdoms/android/network/ChPacketFactory$CheckCashPoint;,
        Lch/kingdoms/android/network/ChPacketFactory$CheckGiftCashPoint;,
        Lch/kingdoms/android/network/ChPacketFactory$CheckReceivedFence;,
        Lch/kingdoms/android/network/ChPacketFactory$CheckReceivedItem;,
        Lch/kingdoms/android/network/ChPacketFactory$CheckSaleItems;,
        Lch/kingdoms/android/network/ChPacketFactory$Connect;,
        Lch/kingdoms/android/network/ChPacketFactory$DeleteData;,
        Lch/kingdoms/android/network/ChPacketFactory$DepositFence;,
        Lch/kingdoms/android/network/ChPacketFactory$DepositItem;,
        Lch/kingdoms/android/network/ChPacketFactory$Disconnect;,
        Lch/kingdoms/android/network/ChPacketFactory$DrawFence;,
        Lch/kingdoms/android/network/ChPacketFactory$DrawItem;,
        Lch/kingdoms/android/network/ChPacketFactory$ExtendSaleItem;,
        Lch/kingdoms/android/network/ChPacketFactory$GetDataSize;,
        Lch/kingdoms/android/network/ChPacketFactory$GiveFence;,
        Lch/kingdoms/android/network/ChPacketFactory$GiveItem;,
        Lch/kingdoms/android/network/ChPacketFactory$InfoUpdateRequest;,
        Lch/kingdoms/android/network/ChPacketFactory$InquireEvents;,
        Lch/kingdoms/android/network/ChPacketFactory$InquireRank;,
        Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;,
        Lch/kingdoms/android/network/ChPacketFactory$LoadData;,
        Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;,
        Lch/kingdoms/android/network/ChPacketFactory$PurchaseItem;,
        Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;,
        Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;,
        Lch/kingdoms/android/network/ChPacketFactory$RegisterSaleItem;,
        Lch/kingdoms/android/network/ChPacketFactory$SaveData;,
        Lch/kingdoms/android/network/ChPacketFactory$SearchResult;,
        Lch/kingdoms/android/network/ChPacketFactory$ShowFence;,
        Lch/kingdoms/android/network/ChPacketFactory$ShowNetworkInven;,
        Lch/kingdoms/android/network/ChPacketFactory$ShowNotice;,
        Lch/kingdoms/android/network/ChPacketFactory$ShowSaleItems;,
        Lch/kingdoms/android/network/ChPacketFactory$SmsAgreement;,
        Lch/kingdoms/android/network/ChPacketFactory$Synchronize;,
        Lch/kingdoms/android/network/ChPacketFactory$WithdrawCashPoint;
    }
.end annotation


# static fields
.field public static final AUCTION_ORDER_CHEAP:B = 0x5t

.field public static final AUCTION_ORDER_EXPENSIVE:B = 0x4t

.field public static final AUCTION_ORDER_LATEST:B = 0x3t

.field public static final CLASS_ARCHER:B = 0x5t

.field public static final CLASS_KNIGHT:B = 0x3t

.field public static final CLASS_MAGE:B = 0x6t

.field public static final CLASS_WARRIOR:B = 0x4t

.field public static final CURRENT_EVENT:B = 0x3t

.field public static final DELETE_ALL_DATA:B = -0x1t

.field public static final NOTICE_TYPE_ARENA:B = 0x4t

.field public static final NOTICE_TYPE_RANK:B = 0x3t

.field public static final NOTICE_TYPE_TOTAL:B = 0x2t

.field public static final ORDER_ASCENDING:B = 0x3t

.field public static final ORDER_DESCENDING:B = 0x4t

.field public static final PREVIOUS_EVENT:B = 0x4t

.field public static final RANK_TYPE_ARENA1:B = 0x4t

.field public static final RANK_TYPE_ARENA2:B = 0x5t

.field public static final RANK_TYPE_ARENA3:B = 0x6t

.field public static final RANK_TYPE_ARENA4:B = 0x7t

.field public static final RANK_TYPE_ARENA5:B = 0x8t

.field public static final RANK_TYPE_ARENA6:B = 0x9t

.field public static final RANK_TYPE_ARENA7:B = 0xat

.field public static final RANK_TYPE_ARENA8:B = 0xbt

.field public static final RANK_TYPE_TOTAL:B = 0x3t

.field public static final SEARCH_TYPE_CLASS:B = 0x4t

.field public static final SEARCH_TYPE_EVENT:B = 0x5t

.field public static final SEARCH_TYPE_PREVIOUS_EVENT:B = 0x6t

.field public static final SEARCH_TYPE_TELECOM:B = 0x3t

.field public static final SEARCH_TYPE_TOTAL:B = 0x2t

.field public static final SMS_AGREEMENT_NO:B = 0x1t

.field public static final SMS_AGREEMENT_YES:B


# instance fields
.field private final ANDROID_TELECOM:B


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x4

    iput-byte v0, p0, Lch/kingdoms/android/network/ChPacketFactory;->ANDROID_TELECOM:B

    .line 70
    return-void
.end method

.method public static create(II[B)[B
    .locals 4
    .param p0, "_mainType"    # I
    .param p1, "_subType"    # I
    .param p2, "_data"    # [B

    .prologue
    .line 235
    if-nez p2, :cond_1

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v2, v3, 0x8

    .line 237
    .local v2, "totalLength":I
    invoke-static {v2}, Lch/android/api/network/ChByte;->valueOf(I)[B

    move-result-object v1

    .line 238
    .local v1, "packetSize":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 245
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 247
    invoke-static {p0}, Lch/android/api/network/ChByte;->toShortBytes(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 248
    invoke-static {p1}, Lch/android/api/network/ChByte;->toShortBytes(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 249
    if-eqz p2, :cond_0

    .line 250
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 252
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3

    .line 235
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "packetSize":[B
    .end local v2    # "totalLength":I
    :cond_1
    array-length v3, p2

    goto :goto_0
.end method


# virtual methods
.method public createAuctionSearchByItemName(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;BB)Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByItemName;
    .locals 7
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_key"    # Ljava/lang/String;
    .param p4, "_optionNum"    # B
    .param p5, "_order"    # B

    .prologue
    .line 161
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByItemName;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByItemName;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;BB)V

    return-object v0
.end method

.method public createAuctionSearchByType(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBBBBBIB)Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;
    .locals 12
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_mainType"    # B
    .param p4, "_subType1"    # B
    .param p5, "_subType2"    # B
    .param p6, "_subType3"    # B
    .param p7, "_option"    # B
    .param p8, "_order"    # B
    .param p9, "_startPoint"    # I
    .param p10, "_listNum"    # B

    .prologue
    .line 166
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBBBBBIB)V

    return-object v0
.end method

.method public createAuctionSearchByUserName(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;BBIB)Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByUserName;
    .locals 9
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_userId"    # Ljava/lang/String;
    .param p4, "_option"    # B
    .param p5, "_order"    # B
    .param p6, "_startPoint"    # I
    .param p7, "_listNum"    # B

    .prologue
    .line 171
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByUserName;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByUserName;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;BBIB)V

    return-object v0
.end method

.method public createCancelSaleItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$CancelSaleItem;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_dbIndex"    # I

    .prologue
    .line 153
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$CancelSaleItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$CancelSaleItem;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)V

    return-object v0
.end method

.method public createCheckCashPoint(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$CheckCashPoint;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$CheckCashPoint;

    invoke-direct {v0, p0, p1, p2}, Lch/kingdoms/android/network/ChPacketFactory$CheckCashPoint;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public createCheckGiftCashPoint(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$CheckGiftCashPoint;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 223
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$CheckGiftCashPoint;

    invoke-direct {v0, p0, p1, p2}, Lch/kingdoms/android/network/ChPacketFactory$CheckGiftCashPoint;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public createCheckSaleItems(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$CheckSaleItems;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 199
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$CheckSaleItems;

    invoke-direct {v0, p0, p1, p2}, Lch/kingdoms/android/network/ChPacketFactory$CheckSaleItems;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public createConnect(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$Connect;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$Connect;

    invoke-direct {v0, p0, p1, p2}, Lch/kingdoms/android/network/ChPacketFactory$Connect;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public createDeleteData(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B)Lch/kingdoms/android/network/ChPacketFactory$DeleteData;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_dataNum"    # B

    .prologue
    .line 215
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$DeleteData;

    invoke-direct {v0, p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$DeleteData;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B)V

    return-object v0
.end method

.method public createDepositFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$DepositFence;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_money"    # I

    .prologue
    .line 125
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$DepositFence;

    invoke-direct {v0, p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$DepositFence;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)V

    return-object v0
.end method

.method public createDepositItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;Lch/android/api/network/ChNetworkItemData;)Lch/kingdoms/android/network/ChPacketFactory$DepositItem;
    .locals 6
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "_item"    # Lch/android/api/network/ChNetworkItemData;

    .prologue
    .line 137
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$DepositItem;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory$DepositItem;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;Lch/android/api/network/ChNetworkItemData;)V

    return-object v0
.end method

.method public createDisconnect(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$Disconnect;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$Disconnect;

    invoke-direct {v0, p0, p1, p2}, Lch/kingdoms/android/network/ChPacketFactory$Disconnect;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public createDrawFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$DrawFence;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_money"    # I

    .prologue
    .line 129
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$DrawFence;

    invoke-direct {v0, p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$DrawFence;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)V

    return-object v0
.end method

.method public createDrawItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;II)Lch/kingdoms/android/network/ChPacketFactory$DrawItem;
    .locals 6
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_dbIndex"    # I
    .param p4, "_qauntity"    # I

    .prologue
    .line 141
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$DrawItem;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory$DrawItem;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;II)V

    return-object v0
.end method

.method public createExtendSaleItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$ExtendSaleItem;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_dbIndex"    # I

    .prologue
    .line 157
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$ExtendSaleItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ExtendSaleItem;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)V

    return-object v0
.end method

.method public createGetDataSize(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B)Lch/kingdoms/android/network/ChPacketFactory$GetDataSize;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_dataNum"    # B

    .prologue
    .line 207
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$GetDataSize;

    invoke-direct {v0, p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$GetDataSize;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B)V

    return-object v0
.end method

.method public createGiveFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$GiveFence;
    .locals 6
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_userId"    # Ljava/lang/String;
    .param p4, "_fence"    # I

    .prologue
    .line 175
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$GiveFence;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory$GiveFence;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public createGiveItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;II)Lch/kingdoms/android/network/ChPacketFactory$GiveItem;
    .locals 7
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_userId"    # Ljava/lang/String;
    .param p4, "_dbIndex"    # I
    .param p5, "_numItems"    # I

    .prologue
    .line 183
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$GiveItem;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lch/kingdoms/android/network/ChPacketFactory$GiveItem;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public createInfoUpdateRequest(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$InfoUpdateRequest;
    .locals 6
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_device"    # Ljava/lang/String;
    .param p4, "_version"    # I

    .prologue
    .line 89
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$InfoUpdateRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory$InfoUpdateRequest;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public createInquireEventRank(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B)Lch/kingdoms/android/network/ChPacketFactory$InquireEvents;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_eventType"    # B

    .prologue
    .line 117
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$InquireEvents;

    invoke-direct {v0, p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$InquireEvents;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B)V

    return-object v0
.end method

.method public createInquireRank(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBB)Lch/kingdoms/android/network/ChPacketFactory$InquireRank;
    .locals 7
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_rankType"    # B
    .param p4, "_searchType"    # B
    .param p5, "_class"    # B

    .prologue
    .line 97
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$InquireRank;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lch/kingdoms/android/network/ChPacketFactory$InquireRank;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBB)V

    return-object v0
.end method

.method public createInquireRankList(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;IBBBBBB)Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;
    .locals 11
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_rank"    # I
    .param p4, "_highCount"    # B
    .param p5, "_lowCount"    # B
    .param p6, "_rankType"    # B
    .param p7, "_searchType"    # B
    .param p8, "_class"    # B
    .param p9, "_order"    # B

    .prologue
    .line 113
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;IBBBBBB)V

    return-object v0
.end method

.method public createLoadData(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B)Lch/kingdoms/android/network/ChPacketFactory$LoadData;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_dataNum"    # B

    .prologue
    .line 211
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$LoadData;

    invoke-direct {v0, p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$LoadData;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B)V

    return-object v0
.end method

.method public createMyRank(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBB)Lch/kingdoms/android/network/ChPacketFactory$InquireRank;
    .locals 7
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_rankType"    # B
    .param p4, "_searchType"    # B
    .param p5, "_class"    # B

    .prologue
    .line 108
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$InquireRank;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lch/kingdoms/android/network/ChPacketFactory$InquireRank;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBB)V

    return-object v0
.end method

.method public createNetworkInven(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$ShowNetworkInven;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$ShowNetworkInven;

    invoke-direct {v0, p0, p1, p2}, Lch/kingdoms/android/network/ChPacketFactory$ShowNetworkInven;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public createPurchaseItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$PurchaseItem;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_dbIndex"    # I

    .prologue
    .line 179
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$PurchaseItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$PurchaseItem;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)V

    return-object v0
.end method

.method public createReceivedFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$CheckReceivedFence;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 191
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$CheckReceivedFence;

    invoke-direct {v0, p0, p1, p2}, Lch/kingdoms/android/network/ChPacketFactory$CheckReceivedFence;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public createReceivedItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$CheckReceivedItem;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 195
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$CheckReceivedItem;

    invoke-direct {v0, p0, p1, p2}, Lch/kingdoms/android/network/ChPacketFactory$CheckReceivedItem;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public createRegisterMember(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;
    .locals 7
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_userId"    # Ljava/lang/String;
    .param p4, "_device"    # Ljava/lang/String;
    .param p5, "_version"    # I

    .prologue
    .line 81
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public createRegisterRank(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBI)Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;
    .locals 7
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_rankType"    # B
    .param p4, "_class"    # B
    .param p5, "_score"    # I

    .prologue
    .line 93
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBI)V

    return-object v0
.end method

.method public createRegisterSaleItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;III)Lch/kingdoms/android/network/ChPacketFactory$RegisterSaleItem;
    .locals 7
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_dbIndex"    # I
    .param p4, "_quantity"    # I
    .param p5, "_coast"    # I

    .prologue
    .line 145
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$RegisterSaleItem;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lch/kingdoms/android/network/ChPacketFactory$RegisterSaleItem;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;III)V

    return-object v0
.end method

.method public createSaveData(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B[B)Lch/kingdoms/android/network/ChPacketFactory$SaveData;
    .locals 6
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_dataNum"    # B
    .param p4, "_data"    # [B

    .prologue
    .line 203
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$SaveData;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory$SaveData;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B[B)V

    return-object v0
.end method

.method public createShowFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$ShowFence;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$ShowFence;

    invoke-direct {v0, p0, p1, p2}, Lch/kingdoms/android/network/ChPacketFactory$ShowFence;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public createShowNotice(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B)Lch/kingdoms/android/network/ChPacketFactory$ShowNotice;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_noticeType"    # B

    .prologue
    .line 187
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$ShowNotice;

    invoke-direct {v0, p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$ShowNotice;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B)V

    return-object v0
.end method

.method public createShowSaleItems(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$ShowSaleItems;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$ShowSaleItems;

    invoke-direct {v0, p0, p1, p2}, Lch/kingdoms/android/network/ChPacketFactory$ShowSaleItems;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public createSmsAgreement(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B)Lch/kingdoms/android/network/ChPacketFactory$SmsAgreement;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "_agreement"    # B

    .prologue
    .line 219
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$SmsAgreement;

    invoke-direct {v0, p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$SmsAgreement;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B)V

    return-object v0
.end method

.method public createSynchronize(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$Synchronize;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$Synchronize;

    invoke-direct {v0, p0, p1, p2}, Lch/kingdoms/android/network/ChPacketFactory$Synchronize;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public createWithdrawCashPoint(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$WithdrawCashPoint;
    .locals 1
    .param p1, "_orl"    # Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;
    .param p2, "_phoneNumber"    # Ljava/lang/String;
    .param p3, "point"    # I

    .prologue
    .line 231
    new-instance v0, Lch/kingdoms/android/network/ChPacketFactory$WithdrawCashPoint;

    invoke-direct {v0, p0, p1, p2, p3}, Lch/kingdoms/android/network/ChPacketFactory$WithdrawCashPoint;-><init>(Lch/kingdoms/android/network/ChPacketFactory;Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)V

    return-object v0
.end method
