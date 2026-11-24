.class public final Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;
.super Ljava/io/InputStream;
.source "MergedStream.java"


# instance fields
.field _buffer:[B

.field protected final _context:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

.field final _end:I

.field final _in:Ljava/io/InputStream;

.field _ptr:I


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V
    .locals 0
    .param p1, "context"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "buf"    # [B
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_context:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    .line 38
    iput-object p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    .line 39
    iput-object p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_buffer:[B

    .line 40
    iput p4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_ptr:I

    .line 41
    iput p5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_end:I

    .line 42
    return-void
.end method

.method private freeMergedBuffer()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_buffer:[B

    .line 144
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_buffer:[B

    .line 146
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_context:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->releaseReadIOBuffer([B)V

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-eqz v0, :cond_0

    .line 48
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_end:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_ptr:I

    sub-int/2addr v0, v1

    .line 50
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->freeMergedBuffer()V

    .line 57
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 58
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 65
    :cond_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_buffer:[B

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_ptr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_ptr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 78
    .local v0, "c":I
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_ptr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_end:I

    if-lt v1, v2, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->freeMergedBuffer()V

    .line 83
    .end local v0    # "c":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-eqz v1, :cond_2

    .line 96
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_end:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_ptr:I

    sub-int v0, v1, v2

    .line 97
    .local v0, "avail":I
    if-le p3, v0, :cond_0

    .line 98
    move p3, v0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_buffer:[B

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_ptr:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_ptr:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_ptr:I

    .line 102
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_ptr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_end:I

    if-lt v1, v2, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->freeMergedBuffer()V

    :cond_1
    move v1, p3

    .line 107
    .end local v0    # "avail":I
    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 116
    :cond_0
    return-void
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const-wide/16 v1, 0x0

    .line 123
    .local v1, "count":J
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-eqz v3, :cond_1

    .line 124
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_end:I

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_ptr:I

    sub-int v0, v3, v4

    .line 126
    .local v0, "amount":I
    int-to-long v3, v0

    cmp-long v3, v3, p1

    if-lez v3, :cond_0

    .line 127
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_ptr:I

    long-to-int v4, p1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_ptr:I

    move-wide v3, p1

    .line 138
    .end local v0    # "amount":I
    :goto_0
    return-wide v3

    .line 130
    .restart local v0    # "amount":I
    :cond_0
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->freeMergedBuffer()V

    .line 131
    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 132
    int-to-long v3, v0

    sub-long/2addr p1, v3

    .line 135
    .end local v0    # "amount":I
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_2

    .line 136
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_2
    move-wide v3, v1

    .line 138
    goto :goto_0
.end method
