.class abstract Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;
.super Ljava/io/Reader;
.source "BaseReader.java"


# static fields
.field protected static final LAST_VALID_UNICODE_CHAR:I = 0x10ffff

.field protected static final NULL_BYTE:C

.field protected static final NULL_CHAR:C


# instance fields
.field protected mBuffer:[B

.field protected final mContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

.field protected mIn:Ljava/io/InputStream;

.field protected mLength:I

.field protected mPtr:I

.field mTmpBuf:[C


# direct methods
.method protected constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V
    .locals 1
    .param p1, "context"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "buf"    # [B
    .param p4, "ptr"    # I
    .param p5, "len"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->mTmpBuf:[C

    .line 51
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->mContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    .line 52
    iput-object p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->mIn:Ljava/io/InputStream;

    .line 53
    iput-object p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->mBuffer:[B

    .line 54
    iput p4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->mPtr:I

    .line 55
    iput p5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->mLength:I

    .line 56
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->mIn:Ljava/io/InputStream;

    .line 69
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->mIn:Ljava/io/InputStream;

    .line 71
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->freeBuffers()V

    .line 72
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 74
    :cond_0
    return-void
.end method

.method public final freeBuffers()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->mBuffer:[B

    .line 109
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->mBuffer:[B

    .line 111
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->mContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->releaseReadIOBuffer([B)V

    .line 113
    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->mTmpBuf:[C

    if-nez v0, :cond_0

    .line 87
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->mTmpBuf:[C

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->mTmpBuf:[C

    invoke-virtual {p0, v0, v2, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->read([CII)I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 90
    const/4 v0, -0x1

    .line 92
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/BaseReader;->mTmpBuf:[C

    aget-char v0, v0, v2

    goto :goto_0
.end method

.method protected reportBounds([CII)V
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "read(buf,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), cbuf["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected reportStrangeStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Strange I/O stream, returned 0 bytes on read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
