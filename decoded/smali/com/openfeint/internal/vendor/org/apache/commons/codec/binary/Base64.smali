.class public Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;
.super Ljava/lang/Object;
.source "Base64.java"

# interfaces
.implements Lcom/openfeint/internal/vendor/org/apache/commons/codec/BinaryEncoder;
.implements Lcom/openfeint/internal/vendor/org/apache/commons/codec/BinaryDecoder;


# static fields
.field static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field private static final DECODE_TABLE:[B

.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final MASK_6BITS:I = 0x3f

.field private static final MASK_8BITS:I = 0xff

.field private static final PAD:B = 0x3dt

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private buffer:[B

.field private currentLinePos:I

.field private final decodeSize:I

.field private final encodeSize:I

.field private final encodeTable:[B

.field private eof:Z

.field private final lineLength:I

.field private final lineSeparator:[B

.field private modulus:I

.field private pos:I

.field private readPos:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x40

    const/16 v6, 0x3f

    const/16 v5, 0x3e

    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 86
    new-array v0, v4, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    .line 95
    new-array v0, v7, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    .line 108
    new-array v0, v7, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    .line 132
    const/16 v0, 0x7b

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 133
    aput-byte v3, v0, v1

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    aput-byte v3, v0, v4

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v3, v0, v1

    const/16 v1, 0xa

    aput-byte v3, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    .line 134
    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v3, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    .line 135
    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    aput-byte v5, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v5, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    aput-byte v6, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    .line 136
    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/16 v1, 0x42

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    aput-byte v4, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    .line 137
    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    .line 138
    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    aput-byte v6, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    .line 139
    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    .line 132
    sput-object v0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    .line 60
    return-void

    .line 86
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 95
    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 108
    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;-><init>(Z)V

    .line 233
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "lineLength"    # I

    .prologue
    .line 273
    sget-object v0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;-><init>(I[B)V

    .line 274
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    .line 300
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 4
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "urlSafe"    # Z

    .prologue
    const/4 v2, 0x0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    if-nez p2, :cond_0

    .line 329
    const/4 p1, 0x0

    .line 330
    sget-object p2, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    .line 332
    :cond_0
    if-lez p1, :cond_1

    div-int/lit8 v1, p1, 0x4

    mul-int/lit8 v1, v1, 0x4

    :goto_0
    iput v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->lineLength:I

    .line 333
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    .line 334
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    if-lez p1, :cond_2

    .line 336
    array-length v1, p2

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 340
    :goto_1
    iget v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->decodeSize:I

    .line 341
    invoke-static {p2}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->containsBase64Byte([B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 342
    invoke-static {p2}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "sep":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lineSeperator must not contain base64 characters: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "sep":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 332
    goto :goto_0

    .line 338
    :cond_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeSize:I

    goto :goto_1

    .line 345
    :cond_3
    if-eqz p3, :cond_4

    sget-object v1, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    :goto_2
    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    .line 346
    return-void

    .line 345
    :cond_4
    sget-object v1, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "urlSafe"    # Z

    .prologue
    .line 251
    const/16 v0, 0x4c

    sget-object v1, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1, p1}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    .line 252
    return-void
.end method

.method private static containsBase64Byte([B)Z
    .locals 2
    .param p0, "arrayOctet"    # [B

    .prologue
    .line 633
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 638
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 634
    :cond_0
    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->isBase64(B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 635
    const/4 v1, 0x1

    goto :goto_1

    .line 633
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1
    .param p0, "base64String"    # Ljava/lang/String;

    .prologue
    .line 837
    new-instance v0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .locals 1
    .param p0, "base64Data"    # [B

    .prologue
    .line 848
    new-instance v0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 3
    .param p0, "pArray"    # [B

    .prologue
    .line 999
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method static discardWhitespace([B)[B
    .locals 7
    .param p0, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 860
    array-length v5, p0

    new-array v2, v5, [B

    .line 861
    .local v2, "groomedData":[B
    const/4 v0, 0x0

    .line 862
    .local v0, "bytesCopied":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p0

    if-lt v3, v5, :cond_0

    .line 873
    new-array v4, v0, [B

    .line 874
    .local v4, "packedData":[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 875
    return-object v4

    .line 863
    .end local v4    # "packedData":[B
    :cond_0
    aget-byte v5, p0, v3

    sparse-switch v5, :sswitch_data_0

    .line 870
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bytesCopied":I
    .local v1, "bytesCopied":I
    aget-byte v5, p0, v3

    aput-byte v5, v2, v0

    move v0, v1

    .line 862
    .end local v1    # "bytesCopied":I
    .restart local v0    # "bytesCopied":I
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 863
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static encodeBase64([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 649
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 1
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    .prologue
    .line 774
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZ)[B
    .locals 1
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z
    .param p2, "urlSafe"    # Z

    .prologue
    .line 792
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZI)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZI)[B
    .locals 6
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z
    .param p2, "urlSafe"    # Z
    .param p3, "maxResultSize"    # I

    .prologue
    .line 812
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 825
    .end local p0    # "binaryData":[B
    :cond_0
    :goto_0
    return-object p0

    .line 816
    .restart local p0    # "binaryData":[B
    :cond_1
    const/16 v3, 0x4c

    sget-object v4, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-static {p0, v3, v4}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->getEncodeLength([BI[B)J

    move-result-wide v1

    .line 817
    .local v1, "len":J
    int-to-long v3, p3

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 818
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Input array too big, the output array would be bigger ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 820
    const-string v5, ") than the specified maxium size of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 821
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 818
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 824
    :cond_2
    if-eqz p1, :cond_3

    new-instance v0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0, p2}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;-><init>(Z)V

    .line 825
    .local v0, "b64":Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;
    :goto_1
    invoke-virtual {v0, p0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encode([B)[B

    move-result-object p0

    goto :goto_0

    .line 824
    .end local v0    # "b64":Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;
    :cond_3
    new-instance v0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;

    const/4 v3, 0x0

    sget-object v4, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {v0, v3, v4, p2}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    goto :goto_1
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 698
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 661
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 2
    .param p0, "binaryData"    # [B

    .prologue
    .line 674
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 2
    .param p0, "binaryData"    # [B

    .prologue
    .line 687
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 2
    .param p0, "bigInt"    # Ljava/math/BigInteger;

    .prologue
    .line 1013
    if-nez p0, :cond_0

    .line 1014
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodeInteger called with null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_0
    invoke-static {p0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method private static getEncodeLength([BI[B)J
    .locals 11
    .param p0, "pArray"    # [B
    .param p1, "chunkSize"    # I
    .param p2, "chunkSeparator"    # [B

    .prologue
    const-wide/16 v9, 0x4

    const-wide/16 v7, 0x0

    .line 972
    div-int/lit8 v5, p1, 0x4

    mul-int/lit8 p1, v5, 0x4

    .line 974
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x3

    int-to-long v0, v5

    .line 975
    .local v0, "len":J
    rem-long v3, v0, v9

    .line 976
    .local v3, "mod":J
    cmp-long v5, v3, v7

    if-eqz v5, :cond_0

    .line 977
    sub-long v5, v9, v3

    add-long/2addr v0, v5

    .line 979
    :cond_0
    if-lez p1, :cond_1

    .line 980
    int-to-long v5, p1

    rem-long v5, v0, v5

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    const/4 v2, 0x1

    .line 981
    .local v2, "lenChunksPerfectly":Z
    :goto_0
    int-to-long v5, p1

    div-long v5, v0, v5

    array-length v7, p2

    int-to-long v7, v7

    mul-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 982
    if-nez v2, :cond_1

    .line 983
    array-length v5, p2

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 986
    .end local v2    # "lenChunksPerfectly":Z
    :cond_1
    return-wide v0

    .line 980
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 2
    .param p0, "arrayOctet"    # [B

    .prologue
    .line 617
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 622
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 618
    :cond_0
    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->isBase64(B)Z

    move-result v1

    if-nez v1, :cond_1

    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->isWhiteSpace(B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 619
    const/4 v1, 0x0

    goto :goto_1

    .line 617
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isBase64(B)Z
    .locals 2
    .param p0, "octet"    # B

    .prologue
    .line 604
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    if-ltz p0, :cond_0

    sget-object v0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isWhiteSpace(B)Z
    .locals 1
    .param p0, "byteToCheck"    # B

    .prologue
    .line 886
    sparse-switch p0, :sswitch_data_0

    .line 893
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 891
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 886
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1054
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    .line 1055
    iput v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    .line 1056
    iput v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->readPos:I

    .line 1057
    iput v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    .line 1058
    iput v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->modulus:I

    .line 1059
    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->eof:Z

    .line 1060
    return-void
.end method

.method private resizeBuffer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    if-nez v1, :cond_0

    .line 379
    const/16 v1, 0x2000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    .line 380
    iput v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    .line 381
    iput v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->readPos:I

    .line 387
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 384
    .local v0, "b":[B
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    goto :goto_0
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 8
    .param p0, "bigInt"    # Ljava/math/BigInteger;

    .prologue
    .line 1027
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 1029
    .local v1, "bitlen":I
    add-int/lit8 v6, v1, 0x7

    shr-int/lit8 v6, v6, 0x3

    shl-int/lit8 v1, v6, 0x3

    .line 1030
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1032
    .local v0, "bigBytes":[B
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v7, v1, 0x8

    if-ne v6, v7, :cond_0

    .line 1047
    .end local v0    # "bigBytes":[B
    :goto_0
    return-object v0

    .line 1036
    .restart local v0    # "bigBytes":[B
    :cond_0
    const/4 v5, 0x0

    .line 1037
    .local v5, "startSrc":I
    array-length v2, v0

    .line 1040
    .local v2, "len":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1

    .line 1041
    const/4 v5, 0x1

    .line 1042
    add-int/lit8 v2, v2, -0x1

    .line 1044
    :cond_1
    div-int/lit8 v6, v1, 0x8

    sub-int v4, v6, v2

    .line 1045
    .local v4, "startDst":I
    div-int/lit8 v6, v1, 0x8

    new-array v3, v6, [B

    .line 1046
    .local v3, "resizedBytes":[B
    invoke-static {v0, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 1047
    goto :goto_0
.end method


# virtual methods
.method avail()I
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->readPos:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 712
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 713
    check-cast p1, [B

    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    .line 715
    :goto_0
    return-object v0

    .line 714
    .restart local p1    # "pObject":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 715
    check-cast p1, Ljava/lang/String;

    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 717
    .restart local p1    # "pObject":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/DecoderException;

    const-string v1, "Parameter supplied to Base64 decode is not a byte[] or a String"

    invoke-direct {v0, v1}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method decode([BII)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I

    .prologue
    const/4 v7, 0x1

    .line 546
    iget-boolean v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->eof:Z

    if-eqz v4, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    if-gez p3, :cond_2

    .line 550
    iput-boolean v7, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->eof:Z

    .line 552
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "inPos":I
    .local v2, "inPos":I
    :goto_1
    if-lt v1, p3, :cond_3

    move p2, v2

    .line 580
    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    :goto_2
    iget-boolean v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->eof:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->modulus:I

    if-eqz v4, :cond_0

    .line 581
    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    .line 582
    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->modulus:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 584
    :pswitch_0
    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    .line 585
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_0

    .line 553
    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    :cond_3
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    array-length v4, v4

    iget v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->decodeSize:I

    if-ge v4, v5, :cond_5

    .line 554
    :cond_4
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->resizeBuffer()V

    .line 556
    :cond_5
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v2

    .line 557
    .local v0, "b":B
    const/16 v4, 0x3d

    if-ne v0, v4, :cond_6

    .line 559
    iput-boolean v7, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->eof:Z

    goto :goto_2

    .line 562
    :cond_6
    if-ltz v0, :cond_7

    sget-object v4, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v4, v4

    if-ge v0, v4, :cond_7

    .line 563
    sget-object v4, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    aget-byte v3, v4, v0

    .line 564
    .local v3, "result":I
    if-ltz v3, :cond_7

    .line 565
    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->modulus:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->modulus:I

    rem-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->modulus:I

    .line 566
    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    iput v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    .line 567
    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->modulus:I

    if-nez v4, :cond_7

    .line 568
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 569
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 570
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 552
    .end local v3    # "result":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    goto/16 :goto_1

    .line 588
    .end local v0    # "b":B
    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    :pswitch_1
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 589
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto/16 :goto_0

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 1
    .param p1, "pArray"    # Ljava/lang/String;

    .prologue
    .line 730
    invoke-static {p1}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 6
    .param p1, "pArray"    # [B

    .prologue
    const/4 v5, 0x0

    .line 741
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->reset()V

    .line 742
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    :cond_0
    move-object v3, p1

    .line 759
    :goto_0
    return-object v3

    .line 745
    :cond_1
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    int-to-long v1, v4

    .line 746
    .local v1, "len":J
    long-to-int v4, v1

    new-array v0, v4, [B

    .line 747
    .local v0, "buf":[B
    array-length v4, v0

    invoke-virtual {p0, v0, v5, v4}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->setInitialBuffer([BII)V

    .line 748
    array-length v4, p1

    invoke-virtual {p0, p1, v5, v4}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->decode([BII)V

    .line 749
    const/4 v4, -0x1

    invoke-virtual {p0, p1, v5, v4}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->decode([BII)V

    .line 757
    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    new-array v3, v4, [B

    .line 758
    .local v3, "result":[B
    array-length v4, v3

    invoke-virtual {p0, v3, v5, v4}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->readResults([BII)I

    goto :goto_0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 910
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 911
    new-instance v0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Base64 encode is not a byte[]"

    invoke-direct {v0, v1}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_0
    check-cast p1, [B

    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method encode([BII)V
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I

    .prologue
    const/16 v8, 0x3d

    const/4 v7, 0x0

    .line 460
    iget-boolean v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->eof:Z

    if-eqz v3, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    if-gez p3, :cond_5

    .line 466
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->eof:Z

    .line 467
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    array-length v3, v3

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeSize:I

    if-ge v3, v4, :cond_3

    .line 468
    :cond_2
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->resizeBuffer()V

    .line 470
    :cond_3
    iget v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->modulus:I

    packed-switch v3, :pswitch_data_0

    .line 491
    :cond_4
    :goto_1
    iget v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->lineLength:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    if-lez v3, :cond_0

    .line 492
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    iget v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    goto :goto_0

    .line 472
    :pswitch_0
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 473
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 475
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v4, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v3, v4, :cond_4

    .line 476
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    aput-byte v8, v3, v4

    .line 477
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    aput-byte v8, v3, v4

    goto :goto_1

    .line 482
    :pswitch_1
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0xa

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 483
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 484
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 486
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v4, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v3, v4, :cond_4

    .line 487
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    aput-byte v8, v3, v4

    goto/16 :goto_1

    .line 496
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "inPos":I
    .local v2, "inPos":I
    :goto_2
    if-lt v1, p3, :cond_6

    move p2, v2

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_0

    .line 497
    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    :cond_6
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    array-length v3, v3

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeSize:I

    if-ge v3, v4, :cond_8

    .line 498
    :cond_7
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->resizeBuffer()V

    .line 500
    :cond_8
    iget v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->modulus:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->modulus:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->modulus:I

    .line 501
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v2

    .line 502
    .local v0, "b":I
    if-gez v0, :cond_9

    .line 503
    add-int/lit16 v0, v0, 0x100

    .line 505
    :cond_9
    iget v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    iput v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    .line 506
    iget v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->modulus:I

    if-nez v3, :cond_a

    .line 507
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 508
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 509
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 510
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->x:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 511
    iget v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    .line 512
    iget v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->lineLength:I

    if-lez v3, :cond_a

    iget v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->lineLength:I

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    if-gt v3, v4, :cond_a

    .line 513
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    iget v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    .line 515
    iput v7, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->currentLinePos:I

    .line 496
    :cond_a
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    goto/16 :goto_2

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public encode([B)[B
    .locals 7
    .param p1, "pArray"    # [B

    .prologue
    const/4 v6, 0x0

    .line 936
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->reset()V

    .line 937
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_2

    :cond_0
    move-object v0, p1

    .line 956
    :cond_1
    :goto_0
    return-object v0

    .line 940
    :cond_2
    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->lineLength:I

    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->lineSeparator:[B

    invoke-static {p1, v4, v5}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->getEncodeLength([BI[B)J

    move-result-wide v1

    .line 941
    .local v1, "len":J
    long-to-int v4, v1

    new-array v0, v4, [B

    .line 942
    .local v0, "buf":[B
    array-length v4, v0

    invoke-virtual {p0, v0, v6, v4}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->setInitialBuffer([BII)V

    .line 943
    array-length v4, p1

    invoke-virtual {p0, p1, v6, v4}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encode([BII)V

    .line 944
    const/4 v4, -0x1

    invoke-virtual {p0, p1, v6, v4}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encode([BII)V

    .line 946
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    if-eq v4, v0, :cond_3

    .line 947
    array-length v4, v0

    invoke-virtual {p0, v0, v6, v4}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->readResults([BII)I

    .line 951
    :cond_3
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->isUrlSafe()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 952
    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    new-array v3, v4, [B

    .line 953
    .local v3, "smallerBuf":[B
    iget v4, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    invoke-static {v0, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 954
    move-object v0, v3

    goto :goto_0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 1
    .param p1, "pArray"    # [B

    .prologue
    .line 925
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasData()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUrlSafe()Z
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v1, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readResults([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "bPos"    # I
    .param p3, "bAvail"    # I

    .prologue
    const/4 v3, 0x0

    .line 402
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    if-eqz v1, :cond_2

    .line 403
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->avail()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 404
    .local v0, "len":I
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    if-eq v1, p1, :cond_1

    .line 405
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    iget v2, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    iget v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->readPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->readPos:I

    .line 407
    iget v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->readPos:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    if-lt v1, v2, :cond_0

    .line 408
    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    .line 417
    .end local v0    # "len":I
    :cond_0
    :goto_0
    return v0

    .line 413
    .restart local v0    # "len":I
    :cond_1
    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    goto :goto_0

    .line 417
    .end local v0    # "len":I
    :cond_2
    iget-boolean v1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->eof:Z

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method setInitialBuffer([BII)V
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outPos"    # I
    .param p3, "outAvail"    # I

    .prologue
    .line 434
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, p3, :cond_0

    .line 435
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->buffer:[B

    .line 436
    iput p2, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->pos:I

    .line 437
    iput p2, p0, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->readPos:I

    .line 439
    :cond_0
    return-void
.end method
