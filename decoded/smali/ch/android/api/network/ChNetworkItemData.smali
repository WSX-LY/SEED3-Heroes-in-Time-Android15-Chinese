.class public Lch/android/api/network/ChNetworkItemData;
.super Ljava/lang/Object;
.source "ChNetworkItemData.java"


# instance fields
.field private final BLOCK_RATE:B

.field private final COUNT:I

.field private final DB_INDEX:I

.field private final DUMMY1:B

.field private final DUMMY2:B

.field private final EXIST_FIRST_SOCKET:B

.field private final EXIST_SECOND_SOCKET:B

.field private final FIRST_SOCKET_DATA_USHORT:I

.field private final FIRST_SOCKET_MAIN_TYPE:B

.field private final FIRST_SOCKET_SUB_TYPE:B

.field private final IS_IDENFIED:B

.field private final ITEM_NUM:I

.field private final MAIN_TYPE:B

.field private final MAX_COUNT:I

.field private final NUM_OPTION:B

.field private final OPTIONS:[S

.field private final OPTION_BOX_HEIGHT_USHORT:I

.field private final OPTION_BOX_WIDTH_USHORT:I

.field private final SECOND_SOCKET_DATA_USHORT:I

.field private final SECOND_SOCKET_MAIN_TYPE:B

.field private final SECOND_SOCKET_SUB_TYPE:B

.field private final SUB_TYPE1:B

.field private final SUB_TYPE2:B

.field private final SUB_TYPE3:B

.field private final UNDEFINED_OPTION_BOX_WIDTH_USHORT:I

.field private final UPGRADE_DATA_USHORT:I

.field private final UPGRADE_LEVEL:B


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v1, -0x1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->DB_INDEX:I

    .line 146
    iput v2, p0, Lch/android/api/network/ChNetworkItemData;->ITEM_NUM:I

    .line 147
    iput-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->IS_IDENFIED:B

    .line 148
    iput-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->MAIN_TYPE:B

    .line 149
    iput-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE1:B

    .line 150
    iput-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE2:B

    .line 151
    iput-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE3:B

    .line 152
    iput v2, p0, Lch/android/api/network/ChNetworkItemData;->COUNT:I

    .line 153
    iput v2, p0, Lch/android/api/network/ChNetworkItemData;->MAX_COUNT:I

    .line 154
    iput-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->UPGRADE_LEVEL:B

    .line 155
    iput v2, p0, Lch/android/api/network/ChNetworkItemData;->UPGRADE_DATA_USHORT:I

    .line 156
    iput-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->BLOCK_RATE:B

    .line 157
    iput v2, p0, Lch/android/api/network/ChNetworkItemData;->OPTION_BOX_WIDTH_USHORT:I

    .line 158
    iput v2, p0, Lch/android/api/network/ChNetworkItemData;->OPTION_BOX_HEIGHT_USHORT:I

    .line 159
    iput v2, p0, Lch/android/api/network/ChNetworkItemData;->UNDEFINED_OPTION_BOX_WIDTH_USHORT:I

    .line 160
    iput-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->NUM_OPTION:B

    .line 161
    new-array v1, v4, [S

    iput-object v1, p0, Lch/android/api/network/ChNetworkItemData;->OPTIONS:[S

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 165
    iput-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->EXIST_FIRST_SOCKET:B

    .line 166
    iput-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_MAIN_TYPE:B

    .line 167
    iput-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_SUB_TYPE:B

    .line 168
    iput v2, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_DATA_USHORT:I

    .line 169
    iput-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->EXIST_SECOND_SOCKET:B

    .line 170
    iput-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_MAIN_TYPE:B

    .line 171
    iput-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_SUB_TYPE:B

    .line 172
    iput v2, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_DATA_USHORT:I

    .line 173
    iput-byte v3, p0, Lch/android/api/network/ChNetworkItemData;->DUMMY1:B

    .line 174
    iput-byte v3, p0, Lch/android/api/network/ChNetworkItemData;->DUMMY2:B

    .line 175
    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lch/android/api/network/ChNetworkItemData;->OPTIONS:[S

    aput-short v2, v1, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(ILch/android/api/network/ChDataInput;)V
    .locals 4
    .param p1, "_dbIndex"    # I
    .param p2, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lch/android/api/network/ChNetworkItemData;->DB_INDEX:I

    .line 80
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->ITEM_NUM:I

    .line 81
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->IS_IDENFIED:B

    .line 82
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->MAIN_TYPE:B

    .line 83
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE1:B

    .line 84
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE2:B

    .line 85
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE3:B

    .line 86
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->COUNT:I

    .line 87
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->MAX_COUNT:I

    .line 88
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->UPGRADE_LEVEL:B

    .line 89
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->UPGRADE_DATA_USHORT:I

    .line 90
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->BLOCK_RATE:B

    .line 91
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->OPTION_BOX_WIDTH_USHORT:I

    .line 92
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->OPTION_BOX_HEIGHT_USHORT:I

    .line 93
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->UNDEFINED_OPTION_BOX_WIDTH_USHORT:I

    .line 94
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->NUM_OPTION:B

    .line 95
    new-array v1, v3, [S

    iput-object v1, p0, Lch/android/api/network/ChNetworkItemData;->OPTIONS:[S

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 99
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->EXIST_FIRST_SOCKET:B

    .line 100
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_MAIN_TYPE:B

    .line 101
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_SUB_TYPE:B

    .line 102
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_DATA_USHORT:I

    .line 103
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->EXIST_SECOND_SOCKET:B

    .line 104
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_MAIN_TYPE:B

    .line 105
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_SUB_TYPE:B

    .line 106
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_DATA_USHORT:I

    .line 107
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->DUMMY1:B

    .line 108
    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->DUMMY2:B

    .line 109
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lch/android/api/network/ChNetworkItemData;->OPTIONS:[S

    invoke-interface {p2}, Lch/android/api/network/ChDataInput;->readShort()S

    move-result v2

    aput-short v2, v1, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lch/android/api/network/ChDataInput;)V
    .locals 4
    .param p1, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->DB_INDEX:I

    .line 113
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->ITEM_NUM:I

    .line 114
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->IS_IDENFIED:B

    .line 115
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->MAIN_TYPE:B

    .line 116
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE1:B

    .line 117
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE2:B

    .line 118
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE3:B

    .line 119
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->COUNT:I

    .line 120
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readInt()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->MAX_COUNT:I

    .line 121
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->UPGRADE_LEVEL:B

    .line 122
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->UPGRADE_DATA_USHORT:I

    .line 123
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->BLOCK_RATE:B

    .line 124
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->OPTION_BOX_WIDTH_USHORT:I

    .line 125
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->OPTION_BOX_HEIGHT_USHORT:I

    .line 126
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->UNDEFINED_OPTION_BOX_WIDTH_USHORT:I

    .line 127
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->NUM_OPTION:B

    .line 128
    new-array v1, v3, [S

    iput-object v1, p0, Lch/android/api/network/ChNetworkItemData;->OPTIONS:[S

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 132
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->EXIST_FIRST_SOCKET:B

    .line 133
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_MAIN_TYPE:B

    .line 134
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_SUB_TYPE:B

    .line 135
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_DATA_USHORT:I

    .line 136
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->EXIST_SECOND_SOCKET:B

    .line 137
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_MAIN_TYPE:B

    .line 138
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_SUB_TYPE:B

    .line 139
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_DATA_USHORT:I

    .line 140
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->DUMMY1:B

    .line 141
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readByte()B

    move-result v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->DUMMY2:B

    .line 142
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lch/android/api/network/ChNetworkItemData;->OPTIONS:[S

    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readShort()S

    move-result v2

    aput-short v2, v1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lch/kingdoms/ndk/data/Inven$Item;I)V
    .locals 6
    .param p1, "item"    # Lch/kingdoms/ndk/data/Inven$Item;
    .param p2, "quantity"    # I

    .prologue
    const/16 v5, 0x20

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v1, -0x1

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->DB_INDEX:I

    .line 46
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->ITEM_NUM:I

    .line 47
    iget-boolean v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->IS_IDENFIED:B

    .line 48
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    int-to-byte v1, v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->MAIN_TYPE:B

    .line 49
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    int-to-byte v1, v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE1:B

    .line 50
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    int-to-byte v1, v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE2:B

    .line 51
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->thirdSubType:I

    int-to-byte v1, v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE3:B

    .line 52
    iput p2, p0, Lch/android/api/network/ChNetworkItemData;->COUNT:I

    .line 53
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->MAX_COUNT:I

    .line 54
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->upgradeLv:I

    int-to-byte v1, v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->UPGRADE_LEVEL:B

    .line 55
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->upLv:I

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->UPGRADE_DATA_USHORT:I

    .line 56
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->upBlockNum:I

    int-to-byte v1, v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->BLOCK_RATE:B

    .line 57
    iput v2, p0, Lch/android/api/network/ChNetworkItemData;->OPTION_BOX_WIDTH_USHORT:I

    .line 58
    iput v2, p0, Lch/android/api/network/ChNetworkItemData;->OPTION_BOX_HEIGHT_USHORT:I

    .line 59
    iput v2, p0, Lch/android/api/network/ChNetworkItemData;->UNDEFINED_OPTION_BOX_WIDTH_USHORT:I

    .line 60
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOptionCount:I

    int-to-byte v1, v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->NUM_OPTION:B

    .line 61
    new-array v1, v5, [S

    iput-object v1, p0, Lch/android/api/network/ChNetworkItemData;->OPTIONS:[S

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v5, :cond_2

    .line 66
    iget-boolean v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->firstExist:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->EXIST_FIRST_SOCKET:B

    .line 67
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketMainType:I

    int-to-byte v1, v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_MAIN_TYPE:B

    .line 68
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketSubType:I

    int-to-byte v1, v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_SUB_TYPE:B

    .line 69
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketData:I

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_DATA_USHORT:I

    .line 70
    iget-boolean v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondExist:Z

    if-eqz v1, :cond_4

    :goto_4
    iput-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->EXIST_SECOND_SOCKET:B

    .line 71
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketMainType:I

    int-to-byte v1, v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_MAIN_TYPE:B

    .line 72
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketSubType:I

    int-to-byte v1, v1

    iput-byte v1, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_SUB_TYPE:B

    .line 73
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketData:I

    iput v1, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_DATA_USHORT:I

    .line 74
    iput-byte v3, p0, Lch/android/api/network/ChNetworkItemData;->DUMMY1:B

    .line 75
    iput-byte v3, p0, Lch/android/api/network/ChNetworkItemData;->DUMMY2:B

    .line 76
    return-void

    .end local v0    # "i":I
    :cond_0
    move v1, v3

    .line 47
    goto :goto_0

    .line 53
    :cond_1
    const/16 v1, 0x63

    goto :goto_1

    .line 63
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lch/android/api/network/ChNetworkItemData;->OPTIONS:[S

    iget-object v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v4, v4, v0

    aput-short v4, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v1, v3

    .line 66
    goto :goto_3

    :cond_4
    move v2, v3

    .line 70
    goto :goto_4
.end method

.method public static newInstanceWithoutDbIndex(Lch/android/api/network/ChDataInput;)Lch/android/api/network/ChNetworkItemData;
    .locals 2
    .param p0, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lch/android/api/network/ChNetworkItemData;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lch/android/api/network/ChNetworkItemData;-><init>(ILch/android/api/network/ChDataInput;)V

    .line 41
    .local v0, "item":Lch/android/api/network/ChNetworkItemData;
    return-object v0
.end method


# virtual methods
.method public final getBLOCK_RATE()B
    .locals 1

    .prologue
    .line 285
    iget-byte v0, p0, Lch/android/api/network/ChNetworkItemData;->BLOCK_RATE:B

    return v0
.end method

.method public getBytes()[B
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 187
    const/16 v8, 0x68

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 188
    .local v0, "b":Ljava/nio/ByteBuffer;
    iget v8, p0, Lch/android/api/network/ChNetworkItemData;->ITEM_NUM:I

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 189
    iget-byte v8, p0, Lch/android/api/network/ChNetworkItemData;->IS_IDENFIED:B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 190
    iget-byte v8, p0, Lch/android/api/network/ChNetworkItemData;->MAIN_TYPE:B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 191
    iget-byte v8, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE1:B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 192
    iget-byte v8, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE2:B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 193
    iget-byte v8, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE3:B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 194
    iget v8, p0, Lch/android/api/network/ChNetworkItemData;->COUNT:I

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 195
    iget v8, p0, Lch/android/api/network/ChNetworkItemData;->MAX_COUNT:I

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 196
    iget-byte v8, p0, Lch/android/api/network/ChNetworkItemData;->UPGRADE_LEVEL:B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 197
    new-array v7, v9, [B

    .line 198
    .local v7, "upgradeDataBytes":[B
    iget v8, p0, Lch/android/api/network/ChNetworkItemData;->UPGRADE_DATA_USHORT:I

    invoke-static {v8}, Lch/android/api/network/ChByte;->toShortBytes(I)[B

    move-result-object v7

    .line 199
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 200
    iget-byte v8, p0, Lch/android/api/network/ChNetworkItemData;->BLOCK_RATE:B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 201
    new-array v4, v9, [B

    .line 202
    .local v4, "optionBoxWidthBytes":[B
    iget v8, p0, Lch/android/api/network/ChNetworkItemData;->OPTION_BOX_WIDTH_USHORT:I

    invoke-static {v8}, Lch/android/api/network/ChByte;->toShortBytes(I)[B

    move-result-object v4

    .line 203
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 204
    new-array v3, v9, [B

    .line 205
    .local v3, "optionBoxHeightBytes":[B
    iget v8, p0, Lch/android/api/network/ChNetworkItemData;->OPTION_BOX_HEIGHT_USHORT:I

    invoke-static {v8}, Lch/android/api/network/ChByte;->toShortBytes(I)[B

    move-result-object v3

    .line 206
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 207
    new-array v6, v9, [B

    .line 208
    .local v6, "undefinedOptionBoxWIDTHBytes":[B
    iget v8, p0, Lch/android/api/network/ChNetworkItemData;->UNDEFINED_OPTION_BOX_WIDTH_USHORT:I

    invoke-static {v8}, Lch/android/api/network/ChByte;->toShortBytes(I)[B

    move-result-object v6

    .line 209
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 210
    iget-byte v8, p0, Lch/android/api/network/ChNetworkItemData;->NUM_OPTION:B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 211
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v8, 0x20

    if-lt v2, v8, :cond_0

    .line 214
    iget-byte v8, p0, Lch/android/api/network/ChNetworkItemData;->EXIST_FIRST_SOCKET:B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 215
    iget-byte v8, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_MAIN_TYPE:B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 216
    iget-byte v8, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_SUB_TYPE:B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 217
    new-array v1, v9, [B

    .line 218
    .local v1, "firstSocketDataBytes":[B
    iget v8, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_DATA_USHORT:I

    invoke-static {v8}, Lch/android/api/network/ChByte;->toShortBytes(I)[B

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 220
    iget-byte v8, p0, Lch/android/api/network/ChNetworkItemData;->EXIST_SECOND_SOCKET:B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 221
    iget-byte v8, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_MAIN_TYPE:B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 222
    iget-byte v8, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_SUB_TYPE:B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 223
    new-array v5, v9, [B

    .line 224
    .local v5, "secondSocketDataBytes":[B
    iget v8, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_DATA_USHORT:I

    invoke-static {v8}, Lch/android/api/network/ChByte;->toShortBytes(I)[B

    move-result-object v5

    .line 225
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 226
    iget-byte v8, p0, Lch/android/api/network/ChNetworkItemData;->DUMMY1:B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 227
    iget-byte v8, p0, Lch/android/api/network/ChNetworkItemData;->DUMMY2:B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 229
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    return-object v8

    .line 212
    .end local v1    # "firstSocketDataBytes":[B
    .end local v5    # "secondSocketDataBytes":[B
    :cond_0
    iget-object v8, p0, Lch/android/api/network/ChNetworkItemData;->OPTIONS:[S

    aget-short v8, v8, v2

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getBytesWithDbIndex()[B
    .locals 3

    .prologue
    .line 178
    invoke-virtual {p0}, Lch/android/api/network/ChNetworkItemData;->getBytes()[B

    move-result-object v1

    .line 179
    .local v1, "bytes":[B
    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 180
    .local v0, "b":Ljava/nio/ByteBuffer;
    iget v2, p0, Lch/android/api/network/ChNetworkItemData;->DB_INDEX:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 181
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public final getCOUNT()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lch/android/api/network/ChNetworkItemData;->COUNT:I

    return v0
.end method

.method public final getDB_INDEX()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lch/android/api/network/ChNetworkItemData;->DB_INDEX:I

    return v0
.end method

.method public final getDUMMY1()B
    .locals 1

    .prologue
    .line 341
    iget-byte v0, p0, Lch/android/api/network/ChNetworkItemData;->DUMMY1:B

    return v0
.end method

.method public final getDUMMY2()B
    .locals 1

    .prologue
    .line 345
    iget-byte v0, p0, Lch/android/api/network/ChNetworkItemData;->DUMMY2:B

    return v0
.end method

.method public final getEXIST_FIRST_SOCKET()B
    .locals 1

    .prologue
    .line 309
    iget-byte v0, p0, Lch/android/api/network/ChNetworkItemData;->EXIST_FIRST_SOCKET:B

    return v0
.end method

.method public final getEXIST_SECOND_SOCKET()B
    .locals 1

    .prologue
    .line 325
    iget-byte v0, p0, Lch/android/api/network/ChNetworkItemData;->EXIST_SECOND_SOCKET:B

    return v0
.end method

.method public final getFIRST_SOCKET_DATA_USHORT()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_DATA_USHORT:I

    return v0
.end method

.method public final getFIRST_SOCKET_MAIN_TYPE()B
    .locals 1

    .prologue
    .line 313
    iget-byte v0, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_MAIN_TYPE:B

    return v0
.end method

.method public final getFIRST_SOCKET_SUB_TYPE()B
    .locals 1

    .prologue
    .line 317
    iget-byte v0, p0, Lch/android/api/network/ChNetworkItemData;->FIRST_SOCKET_SUB_TYPE:B

    return v0
.end method

.method public final getIS_IDENFIED()B
    .locals 1

    .prologue
    .line 249
    iget-byte v0, p0, Lch/android/api/network/ChNetworkItemData;->IS_IDENFIED:B

    return v0
.end method

.method public final getITEM_NUM()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lch/android/api/network/ChNetworkItemData;->ITEM_NUM:I

    return v0
.end method

.method public final getMAIN_TYPE()B
    .locals 1

    .prologue
    .line 253
    iget-byte v0, p0, Lch/android/api/network/ChNetworkItemData;->MAIN_TYPE:B

    return v0
.end method

.method public final getMAX_COUNT()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lch/android/api/network/ChNetworkItemData;->MAX_COUNT:I

    return v0
.end method

.method public final getNUM_OPTION()B
    .locals 1

    .prologue
    .line 301
    iget-byte v0, p0, Lch/android/api/network/ChNetworkItemData;->NUM_OPTION:B

    return v0
.end method

.method public final getOPTION(I)S
    .locals 1
    .param p1, "_index"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lch/android/api/network/ChNetworkItemData;->OPTIONS:[S

    aget-short v0, v0, p1

    return v0
.end method

.method public final getOPTION_BOX_HEIGHT_USHORT()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lch/android/api/network/ChNetworkItemData;->OPTION_BOX_HEIGHT_USHORT:I

    return v0
.end method

.method public final getOPTION_BOX_WIDTH_USHORT()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lch/android/api/network/ChNetworkItemData;->OPTION_BOX_WIDTH_USHORT:I

    return v0
.end method

.method public final getSECOND_SOCKET_DATA_USHORT()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_DATA_USHORT:I

    return v0
.end method

.method public final getSECOND_SOCKET_MAIN_TYPE()B
    .locals 1

    .prologue
    .line 329
    iget-byte v0, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_MAIN_TYPE:B

    return v0
.end method

.method public final getSECOND_SOCKET_SUB_TYPE()B
    .locals 1

    .prologue
    .line 333
    iget-byte v0, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_SUB_TYPE:B

    return v0
.end method

.method public final getSUB_TYPE1()B
    .locals 1

    .prologue
    .line 257
    iget-byte v0, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE1:B

    return v0
.end method

.method public final getSUB_TYPE2()B
    .locals 1

    .prologue
    .line 261
    iget-byte v0, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE2:B

    return v0
.end method

.method public final getSUB_TYPE3()B
    .locals 1

    .prologue
    .line 265
    iget-byte v0, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE3:B

    return v0
.end method

.method public final getUNDEFINED_OPTION_BOX_WIDTH_USHORT()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lch/android/api/network/ChNetworkItemData;->UNDEFINED_OPTION_BOX_WIDTH_USHORT:I

    return v0
.end method

.method public final getUPGRADE_DATA_USHORT()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lch/android/api/network/ChNetworkItemData;->UPGRADE_DATA_USHORT:I

    return v0
.end method

.method public final getUPGRADE_LEVEL()B
    .locals 1

    .prologue
    .line 277
    iget-byte v0, p0, Lch/android/api/network/ChNetworkItemData;->UPGRADE_LEVEL:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lch/android/api/network/ChNetworkItemData;->DB_INDEX:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lch/android/api/network/ChNetworkItemData;->ITEM_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->MAIN_TYPE:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE1:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE2:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->SUB_TYPE3:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lch/android/api/network/ChNetworkItemData;->COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 236
    iget v2, p0, Lch/android/api/network/ChNetworkItemData;->SECOND_SOCKET_DATA_USHORT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->DUMMY1:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lch/android/api/network/ChNetworkItemData;->DUMMY2:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "txt":Ljava/lang/String;
    return-object v0
.end method
