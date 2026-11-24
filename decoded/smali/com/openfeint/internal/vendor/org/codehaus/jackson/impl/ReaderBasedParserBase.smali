.class public abstract Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;
.super Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;
.source "ReaderBasedParserBase.java"


# instance fields
.field protected _inputBuffer:[C

.field protected _reader:Ljava/io/Reader;


# direct methods
.method protected constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V
    .locals 1
    .param p1, "ctxt"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I
    .param p3, "r"    # Ljava/io/Reader;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;I)V

    .line 62
    iput-object p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    .line 63
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->allocTokenBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    .line 64
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
    .line 117
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_ioContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 121
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    .line 123
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
    .line 135
    invoke-super {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_releaseBuffers()V

    .line 136
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    .line 137
    .local v0, "buf":[C
    if-eqz v0, :cond_0

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    .line 139
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_ioContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->releaseTokenBuffer([C)V

    .line 141
    :cond_0
    return-void
.end method

.method protected getNextChar(Ljava/lang/String;)C
    .locals 3
    .param p1, "eofMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 99
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    aget-char v0, v0, v1

    return v0
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

    .line 76
    iget-wide v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_currInputProcessed:J

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_currInputProcessed:J

    .line 77
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_currInputRowStart:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_currInputRowStart:I

    .line 79
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 81
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 82
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    .line 83
    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    .line 84
    const/4 v1, 0x1

    .line 93
    .end local v0    # "count":I
    :cond_0
    return v1

    .line 87
    .restart local v0    # "count":I
    :cond_1
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_closeInput()V

    .line 89
    if-nez v0, :cond_0

    .line 90
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reader returned 0 characters when trying to read "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
