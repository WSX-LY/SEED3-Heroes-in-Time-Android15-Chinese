.class public Lch/kingdoms/ndk/data/Inven;
.super Ljava/lang/Object;
.source "Inven.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/ndk/data/Inven$Item;
    }
.end annotation


# instance fields
.field private final f_items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lch/kingdoms/ndk/data/Inven$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/kingdoms/ndk/data/Inven;->f_items:Ljava/util/ArrayList;

    .line 15
    return-void
.end method

.method public static getEmptySpace([Lch/kingdoms/ndk/data/Inven$Item;)I
    .locals 5
    .param p0, "items"    # [Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "count":I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 151
    return v0

    .line 146
    :cond_0
    aget-object v1, p0, v2

    .line 147
    .local v1, "item":Lch/kingdoms/ndk/data/Inven$Item;
    iget-boolean v4, v1, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    if-nez v4, :cond_1

    .line 148
    add-int/lit8 v0, v0, 0x1

    .line 146
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isEquipedItem([SI)Z
    .locals 2
    .param p1, "_quipedItems"    # [S
    .param p2, "_itemIndex"    # I

    .prologue
    .line 18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 24
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 19
    :cond_0
    aget-short v1, p1, v0

    if-ne p2, v1, :cond_1

    .line 20
    const/4 v1, 0x1

    goto :goto_1

    .line 18
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isFull([Lch/kingdoms/ndk/data/Inven$Item;)Z
    .locals 5
    .param p0, "items"    # [Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 134
    const/4 v0, 0x1

    .line 135
    .local v0, "isFull":Z
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 141
    :goto_1
    return v0

    .line 135
    :cond_0
    aget-object v1, p0, v2

    .line 136
    .local v1, "item":Lch/kingdoms/ndk/data/Inven$Item;
    iget-boolean v4, v1, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    if-nez v4, :cond_1

    .line 137
    const/4 v0, 0x0

    .line 138
    goto :goto_1

    .line 135
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addItem(ZZZIIISII[SBBBBIIIIS[IZBBSZBBS[SS)V
    .locals 6
    .param p1, "_exist"    # Z
    .param p2, "_identity"    # Z
    .param p3, "_equiped"    # Z
    .param p4, "_num"    # I
    .param p5, "_count"    # I
    .param p6, "_upgradeLv"    # I
    .param p7, "_upLv"    # S
    .param p8, "_upBlockNum"    # I
    .param p9, "_equipOptionCount"    # I
    .param p10, "_equipOption"    # [S
    .param p11, "_mainType"    # B
    .param p12, "_subType"    # B
    .param p13, "_secondSubType"    # B
    .param p14, "_thirdSubType"    # B
    .param p15, "_buyPrice"    # I
    .param p16, "_sellPrice"    # I
    .param p17, "_cashBuyPrice"    # I
    .param p18, "_cashSellPrice"    # I
    .param p19, "_limitLv"    # S
    .param p20, "_option"    # [I
    .param p21, "_firstExist"    # Z
    .param p22, "_firstSocketMainType"    # B
    .param p23, "_firstSocketSubType"    # B
    .param p24, "_firstSocketData"    # S
    .param p25, "_secondExist"    # Z
    .param p26, "_secondSocketMainType"    # B
    .param p27, "_secondSocketSubType"    # B
    .param p28, "_secondSocketData"    # S
    .param p29, "_name"    # [S
    .param p30, "_imgNum"    # S

    .prologue
    .line 43
    new-instance v2, Lch/kingdoms/ndk/data/Inven$Item;

    invoke-direct {v2, p0}, Lch/kingdoms/ndk/data/Inven$Item;-><init>(Lch/kingdoms/ndk/data/Inven;)V

    .line 44
    .local v2, "item":Lch/kingdoms/ndk/data/Inven$Item;
    iput-boolean p1, v2, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    .line 45
    iput-boolean p2, v2, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    .line 46
    iput-boolean p3, v2, Lch/kingdoms/ndk/data/Inven$Item;->equiped:Z

    .line 47
    iput p4, v2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    .line 48
    iput p5, v2, Lch/kingdoms/ndk/data/Inven$Item;->count:I

    .line 49
    iput p6, v2, Lch/kingdoms/ndk/data/Inven$Item;->upgradeLv:I

    .line 50
    iput p7, v2, Lch/kingdoms/ndk/data/Inven$Item;->upLv:I

    .line 51
    iput p8, v2, Lch/kingdoms/ndk/data/Inven$Item;->upBlockNum:I

    .line 52
    iput p9, v2, Lch/kingdoms/ndk/data/Inven$Item;->equipOptionCount:I

    .line 53
    move-object/from16 v0, p10

    iput-object v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    .line 54
    move/from16 v0, p11

    iput v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    .line 55
    move/from16 v0, p12

    iput v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    .line 56
    move/from16 v0, p13

    iput v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    .line 57
    move/from16 v0, p14

    iput v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->thirdSubType:I

    .line 58
    move/from16 v0, p15

    iput v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->buyPrice:I

    .line 59
    move/from16 v0, p16

    iput v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->sellPrice:I

    .line 60
    move/from16 v0, p19

    iput-short v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->limitLv:S

    .line 61
    move/from16 v0, p17

    iput v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->cashBuyPrice:I

    .line 62
    move/from16 v0, p18

    iput v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->cashSellPrice:I

    .line 63
    move-object/from16 v0, p20

    iput-object v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    .line 64
    move/from16 v0, p21

    iput-boolean v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->firstExist:Z

    .line 65
    move/from16 v0, p22

    iput v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketMainType:I

    .line 66
    move/from16 v0, p23

    iput v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketSubType:I

    .line 67
    move/from16 v0, p24

    iput v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketData:I

    .line 68
    move/from16 v0, p25

    iput-boolean v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->secondExist:Z

    .line 69
    move/from16 v0, p26

    iput v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketMainType:I

    .line 70
    move/from16 v0, p27

    iput v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketSubType:I

    .line 71
    move/from16 v0, p28

    iput v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketData:I

    .line 72
    move/from16 v0, p30

    iput-short v0, v2, Lch/kingdoms/ndk/data/Inven$Item;->imgNum:S

    .line 76
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-static/range {p29 .. p29}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v4

    const-string v5, "UTF-16"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, v2, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    iget-object v3, p0, Lch/kingdoms/ndk/data/Inven;->f_items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public getItem(Lch/android/api/network/ChNetworkItemData;I)Lch/kingdoms/ndk/data/Inven$Item;
    .locals 7
    .param p1, "networkItem"    # Lch/android/api/network/ChNetworkItemData;
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    new-instance v1, Lch/kingdoms/ndk/data/Inven$Item;

    invoke-direct {v1, p0}, Lch/kingdoms/ndk/data/Inven$Item;-><init>(Lch/kingdoms/ndk/data/Inven;)V

    .line 192
    .local v1, "item":Lch/kingdoms/ndk/data/Inven$Item;
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getDB_INDEX()I

    move-result v3

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->dbIndex:I

    .line 193
    iput p2, v1, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    .line 194
    iput-boolean v5, v1, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    .line 195
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getITEM_NUM()I

    move-result v3

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    .line 196
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getIS_IDENFIED()B

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    .line 197
    iput-boolean v4, v1, Lch/kingdoms/ndk/data/Inven$Item;->equiped:Z

    .line 198
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getCOUNT()I

    move-result v3

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->count:I

    .line 199
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getUPGRADE_LEVEL()B

    move-result v3

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->upgradeLv:I

    .line 200
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getUPGRADE_DATA_USHORT()I

    move-result v3

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->upLv:I

    .line 201
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getBLOCK_RATE()B

    move-result v3

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->upBlockNum:I

    .line 202
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getNUM_OPTION()B

    move-result v3

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->equipOptionCount:I

    .line 203
    const/16 v3, 0x20

    new-array v3, v3, [S

    iput-object v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    array-length v3, v3

    if-lt v0, v3, :cond_2

    .line 207
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getMAIN_TYPE()B

    move-result v3

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    .line 208
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getSUB_TYPE1()B

    move-result v3

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    .line 209
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getSUB_TYPE2()B

    move-result v3

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    .line 210
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getSUB_TYPE3()B

    move-result v3

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->thirdSubType:I

    .line 211
    iput v4, v1, Lch/kingdoms/ndk/data/Inven$Item;->buyPrice:I

    .line 212
    iput v4, v1, Lch/kingdoms/ndk/data/Inven$Item;->sellPrice:I

    .line 213
    iput-short v4, v1, Lch/kingdoms/ndk/data/Inven$Item;->limitLv:S

    .line 214
    iput v4, v1, Lch/kingdoms/ndk/data/Inven$Item;->cashBuyPrice:I

    .line 215
    iput v4, v1, Lch/kingdoms/ndk/data/Inven$Item;->cashSellPrice:I

    .line 216
    const/4 v3, 0x5

    new-array v3, v3, [I

    iput-object v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    .line 217
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getEXIST_FIRST_SOCKET()B

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_2
    iput-boolean v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->firstExist:Z

    .line 218
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getFIRST_SOCKET_MAIN_TYPE()B

    move-result v3

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketMainType:I

    .line 219
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getFIRST_SOCKET_SUB_TYPE()B

    move-result v3

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketSubType:I

    .line 220
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getFIRST_SOCKET_DATA_USHORT()I

    move-result v3

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketData:I

    .line 221
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getEXIST_SECOND_SOCKET()B

    move-result v3

    if-nez v3, :cond_0

    move v5, v4

    :cond_0
    iput-boolean v5, v1, Lch/kingdoms/ndk/data/Inven$Item;->secondExist:Z

    .line 222
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getSECOND_SOCKET_MAIN_TYPE()B

    move-result v3

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketMainType:I

    .line 223
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getSECOND_SOCKET_SUB_TYPE()B

    move-result v3

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketSubType:I

    .line 224
    invoke-virtual {p1}, Lch/android/api/network/ChNetworkItemData;->getSECOND_SOCKET_DATA_USHORT()I

    move-result v3

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketData:I

    .line 225
    const-string v3, ""

    iput-object v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    .line 226
    iput-short v4, v1, Lch/kingdoms/ndk/data/Inven$Item;->imgNum:S

    .line 228
    iget v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    invoke-static {v3}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetItemRes(I)Lch/kingdoms/ndk/data/ItemRes;

    move-result-object v2

    .line 230
    .local v2, "itemRes":Lch/kingdoms/ndk/data/ItemRes;
    iget-byte v3, v2, Lch/kingdoms/ndk/data/ItemRes;->mainType:B

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    .line 231
    iget-byte v3, v2, Lch/kingdoms/ndk/data/ItemRes;->subType:B

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    .line 232
    iget-byte v3, v2, Lch/kingdoms/ndk/data/ItemRes;->secondSubType:B

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    .line 233
    iget-byte v3, v2, Lch/kingdoms/ndk/data/ItemRes;->thirdSubType:B

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->thirdSubType:I

    .line 234
    iget-short v3, v2, Lch/kingdoms/ndk/data/ItemRes;->iconImgNum:S

    iput-short v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->imgNum:S

    .line 235
    iget v3, v2, Lch/kingdoms/ndk/data/ItemRes;->buyPrice:I

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->buyPrice:I

    .line 236
    iget v3, v2, Lch/kingdoms/ndk/data/ItemRes;->sellPrice:I

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->sellPrice:I

    .line 237
    iget v3, v2, Lch/kingdoms/ndk/data/ItemRes;->cashBuyPrice:I

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->cashBuyPrice:I

    .line 238
    iget v3, v2, Lch/kingdoms/ndk/data/ItemRes;->cashSellPrice:I

    iput v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->cashSellPrice:I

    .line 239
    iget-short v3, v2, Lch/kingdoms/ndk/data/ItemRes;->limit:S

    iput-short v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->limitLv:S

    .line 240
    const/4 v0, 0x0

    :goto_3
    iget-object v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    array-length v3, v3

    if-lt v0, v3, :cond_4

    .line 244
    iget-object v3, v2, Lch/kingdoms/ndk/data/ItemRes;->name:Ljava/lang/String;

    iput-object v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    .line 246
    return-object v1

    .end local v0    # "i":I
    .end local v2    # "itemRes":Lch/kingdoms/ndk/data/ItemRes;
    :cond_1
    move v3, v5

    .line 196
    goto/16 :goto_0

    .line 205
    .restart local v0    # "i":I
    :cond_2
    iget-object v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    invoke-virtual {p1, v0}, Lch/android/api/network/ChNetworkItemData;->getOPTION(I)S

    move-result v6

    aput-short v6, v3, v0

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_3
    move v3, v5

    .line 217
    goto :goto_2

    .line 241
    .restart local v2    # "itemRes":Lch/kingdoms/ndk/data/ItemRes;
    :cond_4
    iget-object v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    iget-object v4, v2, Lch/kingdoms/ndk/data/ItemRes;->option:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getItems()[Lch/kingdoms/ndk/data/Inven$Item;
    .locals 6

    .prologue
    .line 28
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetEquipItems()[S

    move-result-object v0

    .line 29
    .local v0, "EQUIP_ITEM_INDICES":[S
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lch/kingdoms/ndk/data/Inven;->f_items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 34
    iget-object v4, p0, Lch/kingdoms/ndk/data/Inven;->f_items:Ljava/util/ArrayList;

    const/4 v5, 0x0

    new-array v5, v5, [Lch/kingdoms/ndk/data/Inven$Item;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lch/kingdoms/ndk/data/Inven$Item;

    return-object v4

    .line 30
    :cond_0
    iget-object v4, p0, Lch/kingdoms/ndk/data/Inven;->f_items:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/kingdoms/ndk/data/Inven$Item;

    .line 31
    .local v2, "item":Lch/kingdoms/ndk/data/Inven$Item;
    invoke-direct {p0, v0, v1}, Lch/kingdoms/ndk/data/Inven;->isEquipedItem([SI)Z

    move-result v4

    iput-boolean v4, v2, Lch/kingdoms/ndk/data/Inven$Item;->isEquip:Z

    .line 32
    iput v1, v2, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getNullItem()Lch/kingdoms/ndk/data/Inven$Item;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    new-instance v0, Lch/kingdoms/ndk/data/Inven$Item;

    invoke-direct {v0, p0}, Lch/kingdoms/ndk/data/Inven$Item;-><init>(Lch/kingdoms/ndk/data/Inven;)V

    .line 156
    .local v0, "item":Lch/kingdoms/ndk/data/Inven$Item;
    iput-boolean v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    .line 157
    iput-boolean v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    .line 158
    iput-boolean v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->equiped:Z

    .line 159
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    .line 160
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->count:I

    .line 161
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->upgradeLv:I

    .line 162
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->upLv:I

    .line 163
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->upBlockNum:I

    .line 164
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->equipOptionCount:I

    .line 165
    const/16 v1, 0x20

    new-array v1, v1, [S

    iput-object v1, v0, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    .line 166
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    .line 167
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    .line 168
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    .line 169
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->thirdSubType:I

    .line 170
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->buyPrice:I

    .line 171
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->sellPrice:I

    .line 172
    iput-short v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->limitLv:S

    .line 173
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->cashBuyPrice:I

    .line 174
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->cashSellPrice:I

    .line 175
    const/4 v1, 0x5

    new-array v1, v1, [I

    iput-object v1, v0, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    .line 176
    iput-boolean v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->firstExist:Z

    .line 177
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketMainType:I

    .line 178
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketSubType:I

    .line 179
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketData:I

    .line 180
    iput-boolean v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->secondExist:Z

    .line 181
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketMainType:I

    .line 182
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketSubType:I

    .line 183
    iput v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketData:I

    .line 184
    const-string v1, ""

    iput-object v1, v0, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    .line 185
    iput-short v2, v0, Lch/kingdoms/ndk/data/Inven$Item;->imgNum:S

    .line 187
    return-object v0
.end method
