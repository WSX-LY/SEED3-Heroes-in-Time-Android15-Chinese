.class public abstract Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;
.super Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;
.source "StreamBasedParserBase.java"


# instance fields
.field protected _bufferRecyclable:Z

.field protected _inputBuffer:[B

.field protected _inputStream:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V
    .locals 0
    .param p1, "ctxt"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "inputBuffer"    # [B
    .param p5, "start"    # I
    .param p6, "end"    # I
    .param p7, "bufferRecyclable"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;I)V

    .line 72
    iput-object p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    .line 73
    iput-object p4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    .line 74
    iput p5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputPtr:I

    .line 75
    iput p6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    .line 76
    iput-boolean p7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_bufferRecyclable:Z

    .line 77
    return-void
.end method


# virtual methods
.method protected _closeInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_ioContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 120
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    .line 122
    :cond_2
    return-void
.end method

.method protected _releaseBuffers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-super {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_releaseBuffers()V

    .line 134
    iget-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_bufferRecyclable:Z

    if-eqz v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    .line 136
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    .line 138
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_ioContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->releaseReadIOBuffer([B)V

    .line 141
    .end local v0    # "buf":[B
    :cond_0
    return-void
.end method

.method protected final loadMore()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-wide v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_currInputProcessed:J

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_currInputProcessed:J

    .line 90
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_currInputRowStart:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_currInputRowStart:I

    .line 92
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 94
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 95
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputPtr:I

    .line 96
    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    .line 97
    const/4 v1, 0x1

    .line 106
    .end local v0    # "count":I
    :cond_0
    return v1

    .line 100
    .restart local v0    # "count":I
    :cond_1
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_closeInput()V

    .line 102
    if-nez v0, :cond_0

    .line 103
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reader returned 0 characters when trying to read "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
