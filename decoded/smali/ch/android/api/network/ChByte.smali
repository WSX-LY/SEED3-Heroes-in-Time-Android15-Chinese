.class public Lch/android/api/network/ChByte;
.super Ljava/lang/Object;
.source "ChByte.java"


# static fields
.field public static final MBCS:Ljava/lang/String; = "EUC-KR"

.field public static final UTF_16:Ljava/lang/String; = "UTF-16"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toInt([BI)I
    .locals 4
    .param p0, "_bytes"    # [B
    .param p1, "_offset"    # I

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-lt v0, v3, :cond_0

    .line 66
    return v2

    .line 63
    :cond_0
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    .line 64
    .local v1, "shift":I
    add-int v3, v0, p1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toMbcsString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "_bytes"    # [B
    .param p1, "_offset"    # I
    .param p2, "_len"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "EUC-KR"

    invoke-direct {v1, p0, p1, p2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v0    # "data":Ljava/lang/String;
    .local v1, "data":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 78
    const-string v0, "ChByte.toMbcsString : FAILED"

    .line 82
    .end local v1    # "data":Ljava/lang/String;
    .restart local v0    # "data":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    if-nez v0, :cond_0

    .line 78
    const-string v0, "ChByte.toMbcsString : FAILED"

    goto :goto_0

    .line 76
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v3

    .line 77
    if-nez v0, :cond_1

    .line 78
    const-string v0, "ChByte.toMbcsString : FAILED"

    .line 80
    :cond_1
    throw v3

    .end local v0    # "data":Ljava/lang/String;
    .restart local v1    # "data":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    .end local v1    # "data":Ljava/lang/String;
    .restart local v0    # "data":Ljava/lang/String;
    goto :goto_0
.end method

.method public static toShort([BI)I
    .locals 3
    .param p0, "_bytes"    # [B
    .param p1, "_offset"    # I

    .prologue
    .line 55
    add-int/lit8 v1, p1, 0x1

    aget-byte v0, p0, v1

    .line 56
    .local v0, "data":S
    shl-int/lit8 v1, v0, 0x8

    aget-byte v2, p0, p1

    or-int/2addr v1, v2

    int-to-short v0, v1

    .line 57
    const v1, 0xffff

    and-int/2addr v1, v0

    return v1
.end method

.method public static toShortBytes(I)[B
    .locals 4
    .param p0, "_data"    # I

    .prologue
    .line 19
    const v3, 0xffff

    and-int/2addr v3, p0

    int-to-short v2, v3

    .line 20
    .local v2, "shortData":S
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 21
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 25
    .local v1, "bytes":[B
    return-object v1
.end method

.method public static toUnicodeString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "_bytes"    # [B
    .param p1, "_offset"    # I
    .param p2, "_len"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-16LE"

    invoke-direct {v1, p0, p1, p2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local v0    # "data":Ljava/lang/String;
    .local v1, "data":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 94
    const-string v0, "ChByte.toUnicodeString : FAILED"

    .line 98
    .end local v1    # "data":Ljava/lang/String;
    .restart local v0    # "data":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    if-nez v0, :cond_0

    .line 94
    const-string v0, "ChByte.toUnicodeString : FAILED"

    goto :goto_0

    .line 92
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v3

    .line 93
    if-nez v0, :cond_1

    .line 94
    const-string v0, "ChByte.toUnicodeString : FAILED"

    .line 96
    :cond_1
    throw v3

    .end local v0    # "data":Ljava/lang/String;
    .restart local v1    # "data":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    .end local v1    # "data":Ljava/lang/String;
    .restart local v0    # "data":Ljava/lang/String;
    goto :goto_0
.end method

.method public static valueOf(I)[B
    .locals 3
    .param p0, "_data"    # I

    .prologue
    .line 29
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 30
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 34
    .local v1, "bytes":[B
    return-object v1
.end method

.method public static valueOfMBCS(Ljava/lang/String;)[B
    .locals 3
    .param p0, "_data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 38
    const-string v2, "EUC-KR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 39
    .local v1, "mbcsBytes":[B
    array-length v2, v1

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    array-length v2, v1

    invoke-static {v2}, Lch/android/api/network/ChByte;->toShortBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public static valueOfUTF16(Ljava/lang/String;)[B
    .locals 4
    .param p0, "_data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 46
    const-string v2, "UTF-16"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 47
    .local v1, "utf16Bytes":[B
    array-length v2, v1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 48
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lch/android/api/network/ChByte;->toShortBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 49
    const/4 v2, 0x2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method
