.class public final Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;
.super Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;
.source "UTF32Reader.java"


# instance fields
.field final mBigEndian:Z

.field mByteCount:I

.field mCharCount:I

.field mSurrogate:C


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BIIZ)V
    .locals 1
    .param p1, "ctxt"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "buf"    # [B
    .param p4, "ptr"    # I
    .param p5, "len"    # I
    .param p6, "isBigEndian"    # Z

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V

    .line 29
    iput-char v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mSurrogate:C

    .line 34
    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mCharCount:I

    .line 39
    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mByteCount:I

    .line 52
    iput-boolean p6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mBigEndian:Z

    .line 53
    return-void
.end method

.method private loadMore(I)Z
    .locals 9
    .param p1, "available"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mByteCount:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mLength:I

    sub-int/2addr v5, p1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mByteCount:I

    .line 179
    if-lez p1, :cond_2

    .line 180
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mPtr:I

    if-lez v4, :cond_0

    .line 181
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_1

    .line 184
    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mPtr:I

    .line 186
    .end local v1    # "i":I
    :cond_0
    iput p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mLength:I

    .line 208
    :goto_1
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mLength:I

    if-lt v2, v8, :cond_5

    move v2, v3

    .line 220
    :goto_2
    return v2

    .line 182
    .restart local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mBuffer:[B

    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mBuffer:[B

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mPtr:I

    add-int/2addr v6, v1

    aget-byte v5, v5, v6

    aput-byte v5, v4, v1

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "i":I
    :cond_2
    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mPtr:I

    .line 192
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mIn:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mBuffer:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 193
    .local v0, "count":I
    if-ge v0, v3, :cond_4

    .line 194
    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mLength:I

    .line 195
    if-gez v0, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->freeBuffers()V

    goto :goto_2

    .line 200
    :cond_3
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->reportStrangeStream()V

    .line 202
    :cond_4
    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mLength:I

    goto :goto_1

    .line 209
    .end local v0    # "count":I
    :cond_5
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mIn:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mBuffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mLength:I

    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mBuffer:[B

    array-length v6, v6

    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mLength:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 210
    .restart local v0    # "count":I
    if-ge v0, v3, :cond_7

    .line 211
    if-gez v0, :cond_6

    .line 212
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->freeBuffers()V

    .line 213
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mLength:I

    invoke-direct {p0, v2, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->reportUnexpectedEOF(II)V

    .line 216
    :cond_6
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->reportStrangeStream()V

    .line 218
    :cond_7
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mLength:I

    goto :goto_1
.end method

.method private reportInvalid(IILjava/lang/String;)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "offset"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mByteCount:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mPtr:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x1

    .line 160
    .local v0, "bytePos":I
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mCharCount:I

    add-int v1, v2, p2

    .line 162
    .local v1, "charPos":I
    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid UTF-32 character 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 164
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at char #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", byte #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-direct {v2, v3}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private reportUnexpectedEOF(II)V
    .locals 5
    .param p1, "gotBytes"    # I
    .param p2, "needed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mByteCount:I

    add-int v0, v2, p1

    .line 149
    .local v0, "bytePos":I
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mCharCount:I

    .line 151
    .local v1, "charPos":I
    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", needed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 153
    const-string v4, ", at char #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", byte #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-direct {v2, v3}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->close()V

    return-void
.end method

.method public bridge synthetic read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->read()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 9
    .param p1, "cbuf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v8, 0x10ffff

    const/4 v5, -0x1

    .line 66
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mBuffer:[B

    if-nez v6, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v5

    .line 69
    :cond_1
    const/4 v6, 0x1

    if-ge p3, v6, :cond_2

    move v5, p3

    .line 70
    goto :goto_0

    .line 73
    :cond_2
    if-ltz p2, :cond_3

    add-int v6, p2, p3

    array-length v7, p1

    if-le v6, v7, :cond_4

    .line 74
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->reportBounds([CII)V

    .line 77
    :cond_4
    add-int/2addr p3, p2

    .line 78
    move v2, p2

    .line 81
    .local v2, "outPtr":I
    iget-char v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mSurrogate:C

    if-eqz v6, :cond_6

    .line 82
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "outPtr":I
    .local v3, "outPtr":I
    iget-char v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mSurrogate:C

    aput-char v5, p1, v2

    .line 83
    const/4 v5, 0x0

    iput-char v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mSurrogate:C

    .line 98
    :cond_5
    :goto_1
    if-lt v3, p3, :cond_8

    move v2, v3

    .line 134
    .end local v3    # "outPtr":I
    .restart local v2    # "outPtr":I
    :goto_2
    sub-int p3, v2, p2

    .line 135
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mCharCount:I

    add-int/2addr v5, p3

    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mCharCount:I

    move v5, p3

    .line 136
    goto :goto_0

    .line 89
    :cond_6
    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mLength:I

    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mPtr:I

    sub-int v1, v6, v7

    .line 90
    .local v1, "left":I
    const/4 v6, 0x4

    if-ge v1, v6, :cond_7

    .line 91
    invoke-direct {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->loadMore(I)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_7
    move v3, v2

    .end local v2    # "outPtr":I
    .restart local v3    # "outPtr":I
    goto :goto_1

    .line 99
    .end local v1    # "left":I
    :cond_8
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mPtr:I

    .line 102
    .local v4, "ptr":I
    iget-boolean v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mBigEndian:Z

    if-eqz v5, :cond_a

    .line 103
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mBuffer:[B

    aget-byte v5, v5, v4

    shl-int/lit8 v5, v5, 0x18

    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mBuffer:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    .line 104
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mBuffer:[B

    add-int/lit8 v7, v4, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    .line 103
    or-int/2addr v5, v6

    .line 104
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mBuffer:[B

    add-int/lit8 v7, v4, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    .line 103
    or-int v0, v5, v6

    .line 109
    .local v0, "ch":I
    :goto_3
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mPtr:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mPtr:I

    .line 113
    const v5, 0xffff

    if-le v0, v5, :cond_b

    .line 114
    if-le v0, v8, :cond_9

    .line 115
    sub-int v5, v3, p2

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(above "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-direct {p0, v0, v5, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->reportInvalid(IILjava/lang/String;)V

    .line 118
    :cond_9
    const/high16 v5, 0x10000

    sub-int/2addr v0, v5

    .line 119
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "outPtr":I
    .restart local v2    # "outPtr":I
    const v5, 0xd800

    shr-int/lit8 v6, v0, 0xa

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, p1, v3

    .line 121
    const v5, 0xdc00

    and-int/lit16 v6, v0, 0x3ff

    or-int v0, v5, v6

    .line 123
    if-lt v2, p3, :cond_c

    .line 124
    int-to-char v5, v0

    iput-char v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mSurrogate:C

    goto/16 :goto_2

    .line 106
    .end local v0    # "ch":I
    .end local v2    # "outPtr":I
    .restart local v3    # "outPtr":I
    :cond_a
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mBuffer:[B

    aget-byte v5, v5, v4

    and-int/lit16 v5, v5, 0xff

    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mBuffer:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .line 107
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mBuffer:[B

    add-int/lit8 v7, v4, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    .line 106
    or-int/2addr v5, v6

    .line 107
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mBuffer:[B

    add-int/lit8 v7, v4, 0x3

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x18

    .line 106
    or-int v0, v5, v6

    .restart local v0    # "ch":I
    goto :goto_3

    :cond_b
    move v2, v3

    .line 128
    .end local v3    # "outPtr":I
    .restart local v2    # "outPtr":I
    :cond_c
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "outPtr":I
    .restart local v3    # "outPtr":I
    int-to-char v5, v0

    aput-char v5, p1, v2

    .line 129
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mPtr:I

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;->mLength:I

    if-lt v5, v6, :cond_5

    move v2, v3

    .line 130
    .end local v3    # "outPtr":I
    .restart local v2    # "outPtr":I
    goto/16 :goto_2
.end method
