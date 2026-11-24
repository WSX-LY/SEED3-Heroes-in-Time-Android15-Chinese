.class public final Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;
.super Ljava/io/Writer;
.source "UTF8Writer.java"


# static fields
.field static final SURR1_FIRST:I = 0xd800

.field static final SURR1_LAST:I = 0xdbff

.field static final SURR2_FIRST:I = 0xdc00

.field static final SURR2_LAST:I = 0xdfff


# instance fields
.field protected final mContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

.field mOut:Ljava/io/OutputStream;

.field mOutBuffer:[B

.field final mOutBufferLast:I

.field mOutPtr:I

.field mSurrogate:I


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "ctxt"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 38
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    .line 42
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    .line 43
    iput-object p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    .line 45
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->allocWriteEncodingBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    .line 50
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBufferLast:I

    .line 51
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 52
    return-void
.end method

.method private convertSurrogate(I)I
    .locals 4
    .param p1, "secondPart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v3, 0xdc00

    .line 368
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    .line 369
    .local v0, "firstPart":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    .line 372
    if-lt p1, v3, :cond_0

    const v1, 0xdfff

    if-le p1, v1, :cond_1

    .line 373
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Broken surrogate pair: first char 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", second 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; illegal combination"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :cond_1
    const/high16 v1, 0x10000

    const v2, 0xd800

    sub-int v2, v0, v2

    shl-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    sub-int v2, p1, v3

    add-int/2addr v1, v2

    return v1
.end method

.method private throwIllegal(I)V
    .locals 3
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    const v0, 0x10ffff

    if-le p1, v0, :cond_0

    .line 382
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal character point (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_0
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    .line 385
    const v0, 0xdbff

    if-gt p1, v0, :cond_1

    .line 386
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unmatched first part of surrogate pair (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unmatched second part of surrogate pair (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal character point (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 0
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->write(I)V

    .line 59
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 66
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    if-eqz v3, :cond_2

    .line 67
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    if-lez v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 69
    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    .line 72
    .local v2, "out":Ljava/io/OutputStream;
    iput-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    .line 74
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    .line 75
    .local v0, "buf":[B
    if-eqz v0, :cond_1

    .line 76
    iput-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    .line 77
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v3, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->releaseWriteEncodingBuffer([B)V

    .line 80
    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 85
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    .line 86
    .local v1, "code":I
    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    .line 87
    if-lez v1, :cond_2

    .line 88
    invoke-direct {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 91
    .end local v0    # "buf":[B
    .end local v1    # "code":I
    .end local v2    # "out":Ljava/io/OutputStream;
    :cond_2
    return-void
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 97
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    if-lez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 99
    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 102
    return-void
.end method

.method public write(I)V
    .locals 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 212
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    if-lez v2, :cond_2

    .line 213
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I

    move-result p1

    .line 225
    :cond_0
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBufferLast:I

    if-lt v2, v3, :cond_1

    .line 226
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 227
    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 230
    :cond_1
    const/16 v2, 0x80

    if-ge p1, v2, :cond_4

    .line 231
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    .line 252
    :goto_0
    return-void

    .line 215
    :cond_2
    const v2, 0xd800

    if-lt p1, v2, :cond_0

    const v2, 0xdfff

    if-gt p1, v2, :cond_0

    .line 217
    const v2, 0xdbff

    if-le p1, v2, :cond_3

    .line 218
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 221
    :cond_3
    iput p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    goto :goto_0

    .line 233
    :cond_4
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 234
    .local v0, "ptr":I
    const/16 v2, 0x800

    if-ge p1, v2, :cond_5

    .line 235
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ptr":I
    .local v1, "ptr":I
    shr-int/lit8 v3, p1, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 236
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v0    # "ptr":I
    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 250
    :goto_1
    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    goto :goto_0

    .line 237
    :cond_5
    const v2, 0xffff

    if-gt p1, v2, :cond_6

    .line 238
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ptr":I
    .restart local v1    # "ptr":I
    shr-int/lit8 v3, p1, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 239
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v0    # "ptr":I
    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 240
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ptr":I
    .restart local v1    # "ptr":I
    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    move v0, v1

    .end local v1    # "ptr":I
    .restart local v0    # "ptr":I
    goto :goto_1

    .line 242
    :cond_6
    const v2, 0x10ffff

    if-le p1, v2, :cond_7

    .line 243
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 245
    :cond_7
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ptr":I
    .restart local v1    # "ptr":I
    shr-int/lit8 v3, p1, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 246
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v0    # "ptr":I
    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 247
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ptr":I
    .restart local v1    # "ptr":I
    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 248
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v0    # "ptr":I
    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    goto :goto_1
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->write(Ljava/lang/String;II)V

    .line 258
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 12
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x80

    .line 263
    const/4 v9, 0x2

    if-ge p3, v9, :cond_1

    .line 264
    const/4 v9, 0x1

    if-ne p3, v9, :cond_0

    .line 265
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p0, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->write(I)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    if-lez v9, :cond_2

    .line 272
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 273
    .local v8, "second":C
    add-int/lit8 p3, p3, -0x1

    .line 274
    invoke-direct {p0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->write(I)V

    move p2, v3

    .line 278
    .end local v3    # "off":I
    .end local v8    # "second":C
    .restart local p2    # "off":I
    :cond_2
    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 279
    .local v6, "outPtr":I
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    .line 280
    .local v4, "outBuf":[B
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBufferLast:I

    .line 283
    .local v5, "outBufLast":I
    add-int/2addr p3, p2

    move v3, p2

    .line 286
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_1
    if-lt v3, p3, :cond_3

    move p2, v3

    .line 353
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :goto_2
    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    goto :goto_0

    .line 290
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :cond_3
    if-lt v6, v5, :cond_4

    .line 291
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 292
    const/4 v6, 0x0

    .line 295
    :cond_4
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 297
    .local v0, "c":I
    if-ge v0, v11, :cond_e

    .line 298
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    int-to-byte v9, v0

    aput-byte v9, v4, v6

    .line 300
    sub-int v1, p3, p2

    .line 301
    .local v1, "maxInCount":I
    sub-int v2, v5, v7

    .line 303
    .local v2, "maxOutCount":I
    if-le v1, v2, :cond_5

    .line 304
    move v1, v2

    .line 306
    :cond_5
    add-int/2addr v1, p2

    move v3, p2

    .line 309
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_3
    if-lt v3, v1, :cond_6

    move v6, v7

    .line 310
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_1

    .line 312
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_6
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 313
    if-lt v0, v11, :cond_7

    move v3, p2

    .line 321
    .end local v1    # "maxInCount":I
    .end local v2    # "maxOutCount":I
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_4
    const/16 v9, 0x800

    if-ge v0, v9, :cond_8

    .line 322
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 323
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_1

    .line 316
    .end local v3    # "off":I
    .end local v6    # "outPtr":I
    .restart local v1    # "maxInCount":I
    .restart local v2    # "maxOutCount":I
    .restart local v7    # "outPtr":I
    .restart local p2    # "off":I
    :cond_7
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    int-to-byte v9, v0

    aput-byte v9, v4, v7

    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    move v3, p2

    .line 308
    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_3

    .line 326
    .end local v1    # "maxInCount":I
    .end local v2    # "maxOutCount":I
    :cond_8
    const v9, 0xd800

    if-lt v0, v9, :cond_9

    const v9, 0xdfff

    if-le v0, v9, :cond_a

    .line 327
    :cond_9
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 328
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 329
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    goto :goto_1

    .line 333
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_a
    const v9, 0xdbff

    if-le v0, v9, :cond_b

    .line 334
    iput v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 335
    invoke-direct {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 337
    :cond_b
    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    .line 339
    if-lt v3, p3, :cond_c

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    move p2, v3

    .line 340
    .end local v3    # "off":I
    .restart local p2    # "off":I
    goto/16 :goto_2

    .line 342
    .end local v6    # "outPtr":I
    .end local p2    # "off":I
    .restart local v3    # "off":I
    .restart local v7    # "outPtr":I
    :cond_c
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-direct {p0, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I

    move-result v0

    .line 343
    const v9, 0x10ffff

    if-le v0, v9, :cond_d

    .line 344
    iput v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 345
    invoke-direct {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 347
    :cond_d
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 348
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    shr-int/lit8 v9, v0, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 349
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 350
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto/16 :goto_1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_e
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto/16 :goto_4
.end method

.method public write([C)V
    .locals 2
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->write([CII)V

    .line 109
    return-void
.end method

.method public write([CII)V
    .locals 12
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x80

    .line 115
    const/4 v9, 0x2

    if-ge p3, v9, :cond_1

    .line 116
    const/4 v9, 0x1

    if-ne p3, v9, :cond_0

    .line 117
    aget-char v9, p1, p2

    invoke-virtual {p0, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->write(I)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    if-lez v9, :cond_2

    .line 124
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-char v8, p1, p2

    .line 125
    .local v8, "second":C
    add-int/lit8 p3, p3, -0x1

    .line 126
    invoke-direct {p0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->write(I)V

    move p2, v3

    .line 130
    .end local v3    # "off":I
    .end local v8    # "second":C
    .restart local p2    # "off":I
    :cond_2
    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 131
    .local v6, "outPtr":I
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    .line 132
    .local v4, "outBuf":[B
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutBufferLast:I

    .line 135
    .local v5, "outBufLast":I
    add-int/2addr p3, p2

    move v3, p2

    .line 138
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_1
    if-lt v3, p3, :cond_3

    move p2, v3

    .line 205
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :goto_2
    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    goto :goto_0

    .line 142
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :cond_3
    if-lt v6, v5, :cond_4

    .line 143
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 144
    const/4 v6, 0x0

    .line 147
    :cond_4
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-char v0, p1, v3

    .line 149
    .local v0, "c":I
    if-ge v0, v11, :cond_e

    .line 150
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    int-to-byte v9, v0

    aput-byte v9, v4, v6

    .line 152
    sub-int v1, p3, p2

    .line 153
    .local v1, "maxInCount":I
    sub-int v2, v5, v7

    .line 155
    .local v2, "maxOutCount":I
    if-le v1, v2, :cond_5

    .line 156
    move v1, v2

    .line 158
    :cond_5
    add-int/2addr v1, p2

    move v3, p2

    .line 161
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_3
    if-lt v3, v1, :cond_6

    move v6, v7

    .line 162
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_1

    .line 164
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_6
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-char v0, p1, v3

    .line 165
    if-lt v0, v11, :cond_7

    move v3, p2

    .line 173
    .end local v1    # "maxInCount":I
    .end local v2    # "maxOutCount":I
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :goto_4
    const/16 v9, 0x800

    if-ge v0, v9, :cond_8

    .line 174
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 175
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_1

    .line 168
    .end local v3    # "off":I
    .end local v6    # "outPtr":I
    .restart local v1    # "maxInCount":I
    .restart local v2    # "maxOutCount":I
    .restart local v7    # "outPtr":I
    .restart local p2    # "off":I
    :cond_7
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    int-to-byte v9, v0

    aput-byte v9, v4, v7

    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    move v3, p2

    .line 160
    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_3

    .line 178
    .end local v1    # "maxInCount":I
    .end local v2    # "maxOutCount":I
    :cond_8
    const v9, 0xd800

    if-lt v0, v9, :cond_9

    const v9, 0xdfff

    if-le v0, v9, :cond_a

    .line 179
    :cond_9
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 180
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 181
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    goto :goto_1

    .line 185
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_a
    const v9, 0xdbff

    if-le v0, v9, :cond_b

    .line 186
    iput v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 187
    invoke-direct {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 189
    :cond_b
    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    .line 191
    if-lt v3, p3, :cond_c

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    move p2, v3

    .line 192
    .end local v3    # "off":I
    .restart local p2    # "off":I
    goto/16 :goto_2

    .line 194
    .end local v6    # "outPtr":I
    .end local p2    # "off":I
    .restart local v3    # "off":I
    .restart local v7    # "outPtr":I
    :cond_c
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-char v9, p1, v3

    invoke-direct {p0, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I

    move-result v0

    .line 195
    const v9, 0x10ffff

    if-le v0, v9, :cond_d

    .line 196
    iput v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 197
    invoke-direct {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 199
    :cond_d
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 200
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    shr-int/lit8 v9, v0, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 201
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 202
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto/16 :goto_1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_e
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto/16 :goto_4
.end method
