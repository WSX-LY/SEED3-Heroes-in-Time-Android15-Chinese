.class public abstract Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;
.super Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;
.source "Utf8NumericParser.java"


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V
    .locals 0
    .param p1, "pc"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "inputBuffer"    # [B
    .param p5, "start"    # I
    .param p6, "end"    # I
    .param p7, "bufferRecyclable"    # Z

    .prologue
    .line 39
    invoke-direct/range {p0 .. p7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/StreamBasedParserBase;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V

    .line 40
    return-void
.end method


# virtual methods
.method protected final parseNumberText(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .locals 14
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x39

    const/16 v12, 0x2d

    const/16 v11, 0x30

    .line 67
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 68
    .local v5, "outBuf":[C
    const/4 v6, 0x0

    .line 69
    .local v6, "outPtr":I
    if-ne p1, v12, :cond_d

    const/4 v4, 0x1

    .line 72
    .local v4, "negative":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 73
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    aput-char v12, v5, v6

    .line 75
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->loadMoreGuaranteed()V

    .line 78
    :cond_0
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    move v6, v7

    .line 81
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_1
    const/4 v3, 0x0

    .line 82
    .local v3, "intLen":I
    const/4 v0, 0x0

    .line 87
    .local v0, "eof":Z
    :goto_1
    if-lt p1, v11, :cond_1a

    if-le p1, v13, :cond_e

    move v7, v6

    .line 111
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :goto_2
    if-nez v3, :cond_2

    .line 112
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Missing integer part (next char "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 115
    :cond_2
    const/4 v2, 0x0

    .line 117
    .local v2, "fractLen":I
    const/16 v8, 0x2e

    if-ne p1, v8, :cond_19

    .line 118
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    int-to-char v8, p1

    aput-char v8, v5, v7

    .line 122
    :goto_3
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_12

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_12

    .line 123
    const/4 v0, 0x1

    .line 138
    :cond_3
    if-nez v2, :cond_4

    .line 139
    const-string v8, "Decimal point not followed by a digit"

    invoke-virtual {p0, p1, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 143
    :cond_4
    :goto_4
    const/4 v1, 0x0

    .line 144
    .local v1, "expLen":I
    const/16 v8, 0x65

    if-eq p1, v8, :cond_5

    const/16 v8, 0x45

    if-ne p1, v8, :cond_b

    .line 145
    :cond_5
    array-length v8, v5

    if-lt v6, v8, :cond_6

    .line 146
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 147
    const/4 v6, 0x0

    .line 149
    :cond_6
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    int-to-char v8, p1

    aput-char v8, v5, v6

    .line 151
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_7

    .line 152
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->loadMoreGuaranteed()V

    .line 154
    :cond_7
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    .line 156
    if-eq p1, v12, :cond_8

    const/16 v8, 0x2b

    if-ne p1, v8, :cond_18

    .line 157
    :cond_8
    array-length v8, v5

    if-lt v7, v8, :cond_17

    .line 158
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 159
    const/4 v6, 0x0

    .line 161
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_5
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    int-to-char v8, p1

    aput-char v8, v5, v6

    .line 163
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_9

    .line 164
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->loadMoreGuaranteed()V

    .line 166
    :cond_9
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    move v6, v7

    .line 170
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_6
    if-gt p1, v13, :cond_a

    if-ge p1, v11, :cond_14

    .line 184
    :cond_a
    :goto_7
    if-nez v1, :cond_b

    .line 185
    const-string v8, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p1, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 190
    :cond_b
    if-nez v0, :cond_c

    .line 191
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    .line 193
    :cond_c
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 196
    invoke-virtual {p0, v4, v3, v2, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->reset(ZIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v8

    return-object v8

    .line 69
    .end local v0    # "eof":Z
    .end local v1    # "expLen":I
    .end local v2    # "fractLen":I
    .end local v3    # "intLen":I
    .end local v4    # "negative":Z
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 90
    .restart local v0    # "eof":Z
    .restart local v3    # "intLen":I
    .restart local v4    # "negative":Z
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 92
    const/4 v8, 0x2

    if-ne v3, v8, :cond_f

    .line 93
    add-int/lit8 v8, v6, -0x1

    aget-char v8, v5, v8

    if-ne v8, v11, :cond_f

    .line 94
    const-string v8, "Leading zeroes not allowed"

    invoke-virtual {p0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 97
    :cond_f
    array-length v8, v5

    if-lt v6, v8, :cond_10

    .line 98
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 99
    const/4 v6, 0x0

    .line 101
    :cond_10
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    int-to-char v8, p1

    aput-char v8, v5, v6

    .line 102
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_11

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_11

    .line 104
    const/4 p1, 0x0

    .line 105
    const/4 v0, 0x1

    .line 106
    goto/16 :goto_2

    .line 108
    :cond_11
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    move v6, v7

    .line 86
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_1

    .line 126
    .restart local v2    # "fractLen":I
    :cond_12
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    .line 127
    if-lt p1, v11, :cond_3

    if-gt p1, v13, :cond_3

    .line 130
    add-int/lit8 v2, v2, 0x1

    .line 131
    array-length v8, v5

    if-lt v6, v8, :cond_13

    .line 132
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 133
    const/4 v6, 0x0

    .line 135
    :cond_13
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    int-to-char v8, p1

    aput-char v8, v5, v6

    move v6, v7

    .line 121
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_3

    .line 171
    .restart local v1    # "expLen":I
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 172
    array-length v8, v5

    if-lt v6, v8, :cond_15

    .line 173
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 174
    const/4 v6, 0x0

    .line 176
    :cond_15
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    int-to-char v8, p1

    aput-char v8, v5, v6

    .line 177
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_16

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_16

    .line 178
    const/4 v0, 0x1

    move v6, v7

    .line 179
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_7

    .line 181
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_16
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_17
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_5

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_18
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_6

    .end local v1    # "expLen":I
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_19
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_4

    .end local v2    # "fractLen":I
    :cond_1a
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto/16 :goto_2
.end method
