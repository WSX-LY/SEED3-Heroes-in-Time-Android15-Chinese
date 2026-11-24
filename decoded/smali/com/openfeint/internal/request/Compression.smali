.class public Lcom/openfeint/internal/request/Compression;
.super Ljava/lang/Object;
.source "Compression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/request/Compression$CompressionMethod;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$openfeint$internal$request$Compression$CompressionMethod:[I

.field private static final MagicHeader:[B

.field private static TAG:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$openfeint$internal$request$Compression$CompressionMethod()[I
    .locals 3

    .prologue
    .line 15
    sget-object v0, Lcom/openfeint/internal/request/Compression;->$SWITCH_TABLE$com$openfeint$internal$request$Compression$CompressionMethod:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/openfeint/internal/request/Compression$CompressionMethod;->values()[Lcom/openfeint/internal/request/Compression$CompressionMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/openfeint/internal/request/Compression$CompressionMethod;->Default:Lcom/openfeint/internal/request/Compression$CompressionMethod;

    invoke-virtual {v1}, Lcom/openfeint/internal/request/Compression$CompressionMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/openfeint/internal/request/Compression$CompressionMethod;->LegacyHeaderless:Lcom/openfeint/internal/request/Compression$CompressionMethod;

    invoke-virtual {v1}, Lcom/openfeint/internal/request/Compression$CompressionMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/openfeint/internal/request/Compression$CompressionMethod;->Uncompressed:Lcom/openfeint/internal/request/Compression$CompressionMethod;

    invoke-virtual {v1}, Lcom/openfeint/internal/request/Compression$CompressionMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/openfeint/internal/request/Compression;->$SWITCH_TABLE$com$openfeint$internal$request$Compression$CompressionMethod:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "Compression"

    sput-object v0, Lcom/openfeint/internal/request/Compression;->TAG:Ljava/lang/String;

    .line 91
    const-string v0, "OFZLHDR0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/openfeint/internal/request/Compression;->MagicHeader:[B

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _compress([B)[B
    .locals 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 114
    .local v1, "dos":Ljava/util/zip/DeflaterOutputStream;
    invoke-virtual {v1, p0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 115
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 116
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static compress([B)[B
    .locals 12
    .param p0, "uncompressedData"    # [B

    .prologue
    const/high16 v11, 0x42c80000    # 100.0f

    .line 20
    move-object v4, p0

    .line 23
    .local v4, "uploadData":[B
    :try_start_0
    invoke-static {}, Lcom/openfeint/internal/request/Compression;->$SWITCH_TABLE$com$openfeint$internal$request$Compression$CompressionMethod()[I

    move-result-object v5

    invoke-static {}, Lcom/openfeint/internal/request/Compression;->compressionMethod()Lcom/openfeint/internal/request/Compression$CompressionMethod;

    move-result-object v6

    invoke-virtual {v6}, Lcom/openfeint/internal/request/Compression$CompressionMethod;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 46
    :pswitch_0
    sget-object v5, Lcom/openfeint/internal/request/Compression;->TAG:Ljava/lang/String;

    const-string v6, "Using Uncompressed strategy"

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v5, v4

    .line 53
    :goto_1
    return-object v5

    .line 26
    :pswitch_1
    invoke-static {p0}, Lcom/openfeint/internal/request/Compression;->_compress([B)[B

    move-result-object v2

    .line 27
    .local v2, "tenativeData":[B
    array-length v5, p0

    invoke-static {v5}, Lcom/openfeint/internal/request/Compression;->integerToLittleEndianByteArray(I)[B

    move-result-object v3

    .line 28
    .local v3, "uncompressedSize":[B
    array-length v5, v2

    sget-object v6, Lcom/openfeint/internal/request/Compression;->MagicHeader:[B

    array-length v6, v6

    add-int/2addr v5, v6

    array-length v6, v3

    add-int v0, v5, v6

    .line 29
    .local v0, "compressedLength":I
    array-length v5, p0

    if-ge v0, v5, :cond_0

    .line 30
    new-array v4, v0, [B

    .line 31
    sget-object v5, Lcom/openfeint/internal/request/Compression;->MagicHeader:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/openfeint/internal/request/Compression;->MagicHeader:[B

    array-length v8, v8

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    const/4 v5, 0x0

    sget-object v6, Lcom/openfeint/internal/request/Compression;->MagicHeader:[B

    array-length v6, v6

    array-length v7, v3

    invoke-static {v3, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    const/4 v5, 0x0

    sget-object v6, Lcom/openfeint/internal/request/Compression;->MagicHeader:[B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x4

    array-length v7, v2

    invoke-static {v2, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    sget-object v5, Lcom/openfeint/internal/request/Compression;->TAG:Ljava/lang/String;

    const-string v6, "Using Default strategy: orig %d bytes, compressed %d bytes (%.2f%% of original size)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    array-length v9, p0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    int-to-float v9, v0

    array-length v10, p0

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    .end local v0    # "compressedLength":I
    .end local v2    # "tenativeData":[B
    .end local v3    # "uncompressedSize":[B
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_1

    .line 36
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "compressedLength":I
    .restart local v2    # "tenativeData":[B
    .restart local v3    # "uncompressedSize":[B
    :cond_0
    sget-object v5, Lcom/openfeint/internal/request/Compression;->TAG:Ljava/lang/String;

    const-string v6, "Using Default strategy: compression declined"

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    .end local v0    # "compressedLength":I
    .end local v2    # "tenativeData":[B
    .end local v3    # "uncompressedSize":[B
    :pswitch_2
    invoke-static {p0}, Lcom/openfeint/internal/request/Compression;->_compress([B)[B

    move-result-object v4

    .line 42
    sget-object v5, Lcom/openfeint/internal/request/Compression;->TAG:Ljava/lang/String;

    const-string v6, "Using Default strategy: orig %d bytes, compressed %d bytes (%.2f%% of original size)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    array-length v9, p0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    array-length v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    array-length v9, v4

    int-to-float v9, v9

    array-length v10, p0

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static compressionMethod()Lcom/openfeint/internal/request/Compression$CompressionMethod;
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getSettings()Ljava/util/Map;

    move-result-object v1

    const-string v2, "SettingCloudStorageCompressionStrategy"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 102
    const-string v1, "CloudStorageCompressionStrategyLegacyHeaderlessCompression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    sget-object v1, Lcom/openfeint/internal/request/Compression$CompressionMethod;->LegacyHeaderless:Lcom/openfeint/internal/request/Compression$CompressionMethod;

    .line 107
    :goto_0
    return-object v1

    .line 104
    :cond_0
    const-string v1, "CloudStorageCompressionStrategyNoCompression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    sget-object v1, Lcom/openfeint/internal/request/Compression$CompressionMethod;->Uncompressed:Lcom/openfeint/internal/request/Compression$CompressionMethod;

    goto :goto_0

    .line 107
    :cond_1
    sget-object v1, Lcom/openfeint/internal/request/Compression$CompressionMethod;->Default:Lcom/openfeint/internal/request/Compression$CompressionMethod;

    goto :goto_0
.end method

.method public static decompress([B)[B
    .locals 6
    .param p0, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Lcom/openfeint/internal/request/Compression;->$SWITCH_TABLE$com$openfeint$internal$request$Compression$CompressionMethod()[I

    move-result-object v4

    invoke-static {}, Lcom/openfeint/internal/request/Compression;->compressionMethod()Lcom/openfeint/internal/request/Compression$CompressionMethod;

    move-result-object v5

    invoke-virtual {v5}, Lcom/openfeint/internal/request/Compression$CompressionMethod;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 88
    :cond_0
    :goto_0
    :pswitch_0
    return-object p0

    .line 60
    :pswitch_1
    const/4 v1, 0x0

    .line 61
    .local v1, "i":I
    sget-object v4, Lcom/openfeint/internal/request/Compression;->MagicHeader:[B

    array-length v4, v4

    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 62
    :goto_1
    sget-object v4, Lcom/openfeint/internal/request/Compression;->MagicHeader:[B

    array-length v4, v4

    if-lt v1, v4, :cond_2

    .line 68
    :cond_1
    sget-object v4, Lcom/openfeint/internal/request/Compression;->MagicHeader:[B

    array-length v4, v4

    if-ne v1, v4, :cond_0

    .line 70
    sget-object v4, Lcom/openfeint/internal/request/Compression;->MagicHeader:[B

    array-length v4, v4

    add-int/lit8 v3, v4, 0x4

    .line 71
    .local v3, "skip":I
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 73
    array-length v4, p0

    sub-int/2addr v4, v3

    .line 71
    invoke-direct {v2, p0, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 74
    .local v2, "postHeaderStream":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 75
    .local v0, "decompressedStream":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/openfeint/internal/Util;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 78
    goto :goto_0

    .line 63
    .end local v0    # "decompressedStream":Ljava/io/InputStream;
    .end local v2    # "postHeaderStream":Ljava/io/ByteArrayInputStream;
    .end local v3    # "skip":I
    :cond_2
    sget-object v4, Lcom/openfeint/internal/request/Compression;->MagicHeader:[B

    aget-byte v4, v4, v1

    aget-byte v5, p0, v1

    if-ne v4, v5, :cond_1

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    .end local v1    # "i":I
    :pswitch_2
    new-instance v4, Ljava/util/zip/InflaterInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v4}, Lcom/openfeint/internal/Util;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static integerToLittleEndianByteArray(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 121
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 122
    .local v0, "rv":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 123
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 124
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 125
    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 126
    return-object v0
.end method
