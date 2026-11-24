.class public Lch/kingdoms/ndk/NdkTextLoader;
.super Ljava/lang/Object;
.source "NdkTextLoader.java"


# static fields
.field private static final GAMEMENU_TXTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NETWORK_TXTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPTION_TXTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCRIPT_TXTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SKILL_TXTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STAT_EX_TXTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkTextLoader;->OPTION_TXTS:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkTextLoader;->SKILL_TXTS:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkTextLoader;->STAT_EX_TXTS:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkTextLoader;->GAMEMENU_TXTS:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkTextLoader;->NETWORK_TXTS:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkTextLoader;->SCRIPT_TXTS:Ljava/util/ArrayList;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addGameMenuTxt([S)V
    .locals 4
    .param p0, "_txts"    # [S

    .prologue
    .line 56
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v2

    const-string v3, "UTF-16"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 58
    .local v1, "txt":Ljava/lang/String;
    sget-object v2, Lch/kingdoms/ndk/NdkTextLoader;->GAMEMENU_TXTS:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "txt":Ljava/lang/String;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static addNetworkTxt([S)V
    .locals 5
    .param p0, "_txts"    # [S

    .prologue
    .line 44
    :try_start_0
    sget-object v1, Lch/kingdoms/ndk/NdkTextLoader;->NETWORK_TXTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v3

    const-string v4, "UTF-16"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static addOptionTxt([S)V
    .locals 5
    .param p0, "_txts"    # [S

    .prologue
    .line 71
    :try_start_0
    sget-object v1, Lch/kingdoms/ndk/NdkTextLoader;->OPTION_TXTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v3

    const-string v4, "UTF-16"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static addScriptTxt([S)V
    .locals 5
    .param p0, "_txts"    # [S

    .prologue
    .line 34
    :try_start_0
    sget-object v1, Lch/kingdoms/ndk/NdkTextLoader;->SCRIPT_TXTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v3

    const-string v4, "UTF-16"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static addSkillTxt([S)V
    .locals 5
    .param p0, "_txts"    # [S

    .prologue
    .line 80
    :try_start_0
    sget-object v1, Lch/kingdoms/ndk/NdkTextLoader;->SKILL_TXTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v3

    const-string v4, "UTF-16"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static addStatExTxt([S)V
    .locals 5
    .param p0, "_txts"    # [S

    .prologue
    .line 90
    :try_start_0
    sget-object v1, Lch/kingdoms/ndk/NdkTextLoader;->STAT_EX_TXTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v3

    const-string v4, "UTF-16"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static native callNativegetChangeTownPortalTxt()[S
.end method

.method public static getChangeTownPortalTxt()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lch/kingdoms/ndk/NdkTextLoader;->callNativegetChangeTownPortalTxt()[S

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v2

    const-string v3, "UTF-16"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object v1

    .line 148
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_0
    move-exception v0

    .line 150
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 152
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getGameMenuTxt(I)Ljava/lang/String;
    .locals 1
    .param p0, "_index"    # I

    .prologue
    .line 134
    sget-object v0, Lch/kingdoms/ndk/NdkTextLoader;->GAMEMENU_TXTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkTxt(I)Ljava/lang/String;
    .locals 1
    .param p0, "_index"    # I

    .prologue
    .line 138
    sget-object v0, Lch/kingdoms/ndk/NdkTextLoader;->NETWORK_TXTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getOptionTxt(I)Ljava/lang/String;
    .locals 1
    .param p0, "_index"    # I

    .prologue
    .line 118
    sget-object v0, Lch/kingdoms/ndk/NdkTextLoader;->OPTION_TXTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getScriptTxt(I)Ljava/lang/String;
    .locals 1
    .param p0, "_index"    # I

    .prologue
    .line 142
    sget-object v0, Lch/kingdoms/ndk/NdkTextLoader;->SCRIPT_TXTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getSkillTxt(I)Ljava/lang/String;
    .locals 1
    .param p0, "_index"    # I

    .prologue
    .line 122
    sget-object v0, Lch/kingdoms/ndk/NdkTextLoader;->SKILL_TXTS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p0, v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lch/kingdoms/ndk/NdkTextLoader;->SKILL_TXTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getStatExTxt(I)Ljava/lang/String;
    .locals 1
    .param p0, "_index"    # I

    .prologue
    .line 130
    sget-object v0, Lch/kingdoms/ndk/NdkTextLoader;->STAT_EX_TXTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 109
    invoke-static {}, Lch/kingdoms/ndk/NdkTextLoader;->initOptionTxts()V

    .line 110
    invoke-static {}, Lch/kingdoms/ndk/NdkTextLoader;->initSkillTxts()V

    .line 111
    invoke-static {}, Lch/kingdoms/ndk/NdkTextLoader;->initStatExTxts()V

    .line 112
    invoke-static {}, Lch/kingdoms/ndk/NdkTextLoader;->initGameMenuTxts()V

    .line 113
    invoke-static {}, Lch/kingdoms/ndk/NdkTextLoader;->initNetworkTxts()V

    .line 114
    invoke-static {}, Lch/kingdoms/ndk/NdkTextLoader;->initScriptTxt()V

    .line 115
    return-void
.end method

.method private static native initGameMenuTxts()V
.end method

.method private static native initNetworkTxts()V
.end method

.method private static native initOptionTxts()V
.end method

.method private static native initScriptTxt()V
.end method

.method private static native initSkillTxts()V
.end method

.method private static native initStatExTxts()V
.end method

.method public static shortArrayToByteArray([S)[B
    .locals 5
    .param p0, "_shorts"    # [S

    .prologue
    .line 98
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .line 99
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_0

    .line 105
    return-object v1

    .line 100
    :cond_0
    mul-int/lit8 v0, v2, 0x2

    .line 101
    .local v0, "byteIndex":I
    aget-short v3, p0, v2

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 102
    add-int/lit8 v3, v0, 0x1

    aget-short v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
