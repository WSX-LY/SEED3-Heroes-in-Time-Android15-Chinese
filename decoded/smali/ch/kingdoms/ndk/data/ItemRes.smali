.class public Lch/kingdoms/ndk/data/ItemRes;
.super Ljava/lang/Object;
.source "ItemRes.java"


# instance fields
.field public buyPrice:I

.field public cashBuyPrice:I

.field public cashSellPrice:I

.field public costumImgNum:S

.field public costumPltNum:B

.field public explain:Ljava/lang/String;

.field public iconImgNum:S

.field public iconPltNum:B

.field public limit:S

.field public mainType:B

.field public name:Ljava/lang/String;

.field public option:[I

.field public secondSubType:B

.field public sellPrice:I

.field public subType:B

.field public thirdSubType:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lch/kingdoms/ndk/data/ItemRes;->option:[I

    .line 29
    return-void
.end method


# virtual methods
.method public setImgNum(SBSB)V
    .locals 0
    .param p1, "iconImgNum"    # S
    .param p2, "iconPltNum"    # B
    .param p3, "costumImgNum"    # S
    .param p4, "costumPltNum"    # B

    .prologue
    .line 39
    iput-short p1, p0, Lch/kingdoms/ndk/data/ItemRes;->iconImgNum:S

    .line 40
    iput-byte p2, p0, Lch/kingdoms/ndk/data/ItemRes;->iconPltNum:B

    .line 41
    iput-short p3, p0, Lch/kingdoms/ndk/data/ItemRes;->costumImgNum:S

    .line 42
    iput-byte p4, p0, Lch/kingdoms/ndk/data/ItemRes;->costumPltNum:B

    .line 43
    return-void
.end method

.method public setName([S[S)V
    .locals 4
    .param p1, "nameShorts"    # [S
    .param p2, "explainShorts"    # [S

    .prologue
    .line 63
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v2

    const-string v3, "UTF-16"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lch/kingdoms/ndk/data/ItemRes;->name:Ljava/lang/String;

    .line 64
    new-instance v1, Ljava/lang/String;

    invoke-static {p2}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v2

    const-string v3, "UTF-16"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lch/kingdoms/ndk/data/ItemRes;->explain:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public setOption(IIIII)V
    .locals 2
    .param p1, "op1"    # I
    .param p2, "op2"    # I
    .param p3, "op3"    # I
    .param p4, "op4"    # I
    .param p5, "op5"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lch/kingdoms/ndk/data/ItemRes;->option:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 55
    iget-object v0, p0, Lch/kingdoms/ndk/data/ItemRes;->option:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 56
    iget-object v0, p0, Lch/kingdoms/ndk/data/ItemRes;->option:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 57
    iget-object v0, p0, Lch/kingdoms/ndk/data/ItemRes;->option:[I

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 58
    iget-object v0, p0, Lch/kingdoms/ndk/data/ItemRes;->option:[I

    const/4 v1, 0x4

    aput p5, v0, v1

    .line 59
    return-void
.end method

.method public setPrice(IIIIS)V
    .locals 0
    .param p1, "buyPrice"    # I
    .param p2, "sellPrice"    # I
    .param p3, "cashBuyPrice"    # I
    .param p4, "cashSellPrice"    # I
    .param p5, "limit"    # S

    .prologue
    .line 46
    iput p1, p0, Lch/kingdoms/ndk/data/ItemRes;->buyPrice:I

    .line 47
    iput p2, p0, Lch/kingdoms/ndk/data/ItemRes;->sellPrice:I

    .line 48
    iput p3, p0, Lch/kingdoms/ndk/data/ItemRes;->cashBuyPrice:I

    .line 49
    iput p4, p0, Lch/kingdoms/ndk/data/ItemRes;->cashSellPrice:I

    .line 50
    iput-short p5, p0, Lch/kingdoms/ndk/data/ItemRes;->limit:S

    .line 51
    return-void
.end method

.method public setType(BBBB)V
    .locals 0
    .param p1, "mainType"    # B
    .param p2, "subType"    # B
    .param p3, "secondSubType"    # B
    .param p4, "thirdSubType"    # B

    .prologue
    .line 32
    iput-byte p1, p0, Lch/kingdoms/ndk/data/ItemRes;->mainType:B

    .line 33
    iput-byte p2, p0, Lch/kingdoms/ndk/data/ItemRes;->subType:B

    .line 34
    iput-byte p3, p0, Lch/kingdoms/ndk/data/ItemRes;->secondSubType:B

    .line 35
    iput-byte p4, p0, Lch/kingdoms/ndk/data/ItemRes;->thirdSubType:B

    .line 36
    return-void
.end method
