.class public abstract Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;
.super Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;
.source "ReaderBasedNumericParser.java"


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V
    .locals 0
    .param p1, "pc"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I
    .param p3, "r"    # Ljava/io/Reader;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParserBase;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V

    .line 36
    return-void
.end method

.method private final parseNumberText2(Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .locals 14
    .param p1, "negative"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x2d

    const/16 v12, 0x39

    const/16 v11, 0x30

    .line 186
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 187
    .local v5, "outBuf":[C
    const/4 v6, 0x0

    .line 190
    .local v6, "outPtr":I
    if-eqz p1, :cond_0

    .line 191
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    aput-char v13, v5, v6

    move v6, v7

    .line 195
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_0
    const/4 v4, 0x0

    .line 196
    .local v4, "intLen":I
    const/4 v1, 0x0

    .line 201
    .local v1, "eof":Z
    :goto_0
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_b

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_b

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "c":C
    const/4 v1, 0x1

    .line 225
    :cond_1
    if-nez v4, :cond_2

    .line 226
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Missing integer part (next char "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 229
    :cond_2
    const/4 v3, 0x0

    .line 231
    .local v3, "fractLen":I
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_4

    .line 232
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    move v6, v7

    .line 236
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_1
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_e

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_e

    .line 237
    const/4 v1, 0x1

    .line 252
    :cond_3
    if-nez v3, :cond_4

    .line 253
    const-string v8, "Decimal point not followed by a digit"

    invoke-virtual {p0, v0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 257
    :cond_4
    const/4 v2, 0x0

    .line 258
    .local v2, "expLen":I
    const/16 v8, 0x65

    if-eq v0, v8, :cond_5

    const/16 v8, 0x45

    if-ne v0, v8, :cond_9

    .line 259
    :cond_5
    array-length v8, v5

    if-lt v6, v8, :cond_6

    .line 260
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 261
    const/4 v6, 0x0

    .line 263
    :cond_6
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    .line 265
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-ge v8, v9, :cond_10

    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 268
    :goto_2
    if-eq v0, v13, :cond_7

    const/16 v8, 0x2b

    if-ne v0, v8, :cond_16

    .line 269
    :cond_7
    array-length v8, v5

    if-lt v7, v8, :cond_15

    .line 270
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 271
    const/4 v6, 0x0

    .line 273
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_3
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    .line 275
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-ge v8, v9, :cond_11

    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    :goto_4
    move v6, v7

    .line 280
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_5
    if-gt v0, v12, :cond_8

    if-ge v0, v11, :cond_12

    .line 294
    :cond_8
    :goto_6
    if-nez v2, :cond_9

    .line 295
    const-string v8, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 300
    :cond_9
    if-nez v1, :cond_a

    .line 301
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 303
    :cond_a
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 306
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->reset(ZIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v8

    return-object v8

    .line 207
    .end local v0    # "c":C
    .end local v2    # "expLen":I
    .end local v3    # "fractLen":I
    :cond_b
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 208
    .restart local v0    # "c":C
    if-lt v0, v11, :cond_1

    if-gt v0, v12, :cond_1

    .line 211
    add-int/lit8 v4, v4, 0x1

    .line 213
    const/4 v8, 0x2

    if-ne v4, v8, :cond_c

    .line 214
    add-int/lit8 v8, v6, -0x1

    aget-char v8, v5, v8

    if-ne v8, v11, :cond_c

    .line 215
    const-string v8, "Leading zeroes not allowed"

    invoke-virtual {p0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 218
    :cond_c
    array-length v8, v5

    if-lt v6, v8, :cond_d

    .line 219
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 220
    const/4 v6, 0x0

    .line 222
    :cond_d
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    move v6, v7

    .line 200
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_0

    .line 240
    .restart local v3    # "fractLen":I
    :cond_e
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 241
    if-lt v0, v11, :cond_3

    if-gt v0, v12, :cond_3

    .line 244
    add-int/lit8 v3, v3, 0x1

    .line 245
    array-length v8, v5

    if-lt v6, v8, :cond_f

    .line 246
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 247
    const/4 v6, 0x0

    .line 249
    :cond_f
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    move v6, v7

    .line 235
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_1

    .line 266
    .end local v6    # "outPtr":I
    .restart local v2    # "expLen":I
    .restart local v7    # "outPtr":I
    :cond_10
    const-string v8, "expected a digit for number exponent"

    invoke-virtual {p0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto/16 :goto_2

    .line 276
    :cond_11
    const-string v8, "expected a digit for number exponent"

    invoke-virtual {p0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto :goto_4

    .line 281
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_12
    add-int/lit8 v2, v2, 0x1

    .line 282
    array-length v8, v5

    if-lt v6, v8, :cond_13

    .line 283
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 284
    const/4 v6, 0x0

    .line 286
    :cond_13
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    .line 287
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_14

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_14

    .line 288
    const/4 v1, 0x1

    move v6, v7

    .line 289
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_6

    .line 291
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_14
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_5

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_15
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_3

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_16
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_5
.end method


# virtual methods
.method protected final parseNumberText(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .locals 14
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x2d

    const/16 v12, 0x39

    const/16 v11, 0x30

    .line 68
    if-ne p1, v13, :cond_2

    const/4 v5, 0x1

    .line 69
    .local v5, "negative":Z
    :goto_0
    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 70
    .local v6, "ptr":I
    add-int/lit8 v8, v6, -0x1

    .line 71
    .local v8, "startPtr":I
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    .line 75
    .local v2, "inputLen":I
    if-eqz v5, :cond_6

    .line 76
    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v6, v9, :cond_3

    .line 172
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    add-int/lit8 v8, v8, 0x1

    .end local v8    # "startPtr":I
    :cond_1
    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 173
    invoke-direct {p0, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->parseNumberText2(Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v9

    :goto_2
    return-object v9

    .line 68
    .end local v2    # "inputLen":I
    .end local v5    # "negative":Z
    .end local v6    # "ptr":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 79
    .restart local v2    # "inputLen":I
    .restart local v5    # "negative":Z
    .restart local v6    # "ptr":I
    .restart local v8    # "startPtr":I
    :cond_3
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .local v7, "ptr":I
    aget-char p1, v9, v6

    .line 81
    if-gt p1, v12, :cond_4

    if-ge p1, v11, :cond_5

    .line 82
    :cond_4
    const-string v9, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_5
    move v6, v7

    .line 96
    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    :cond_6
    const/4 v3, 0x1

    .line 102
    .local v3, "intLen":I
    :goto_3
    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-ge v6, v9, :cond_0

    .line 105
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-char p1, v9, v6

    .line 106
    if-lt p1, v11, :cond_7

    if-le p1, v12, :cond_8

    .line 117
    :cond_7
    const/4 v1, 0x0

    .line 120
    .local v1, "fractLen":I
    const/16 v9, 0x2e

    if-ne p1, v9, :cond_c

    .line 123
    :goto_4
    if-lt v7, v2, :cond_9

    move v6, v7

    .line 124
    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    goto :goto_1

    .line 110
    .end local v1    # "fractLen":I
    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x2

    if-ne v3, v9, :cond_16

    .line 111
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v10, v7, -0x2

    aget-char v9, v9, v10

    if-ne v9, v11, :cond_16

    .line 112
    const-string v9, "Leading zeroes not allowed"

    invoke-virtual {p0, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->reportInvalidNumber(Ljava/lang/String;)V

    move v6, v7

    .line 101
    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    goto :goto_3

    .line 126
    .end local v6    # "ptr":I
    .restart local v1    # "fractLen":I
    .restart local v7    # "ptr":I
    :cond_9
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-char p1, v9, v7

    .line 127
    if-lt p1, v11, :cond_a

    if-le p1, v12, :cond_e

    .line 133
    :cond_a
    if-nez v1, :cond_b

    .line 134
    const-string v9, "Decimal point not followed by a digit"

    invoke-virtual {p0, p1, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_b
    move v7, v6

    .line 138
    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    :cond_c
    const/4 v0, 0x0

    .line 139
    .local v0, "expLen":I
    const/16 v9, 0x65

    if-eq p1, v9, :cond_d

    const/16 v9, 0x45

    if-ne p1, v9, :cond_12

    .line 140
    :cond_d
    if-lt v7, v2, :cond_f

    move v6, v7

    .line 141
    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    goto :goto_1

    .line 130
    .end local v0    # "expLen":I
    :cond_e
    add-int/lit8 v1, v1, 0x1

    move v7, v6

    .line 122
    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    goto :goto_4

    .line 144
    .restart local v0    # "expLen":I
    :cond_f
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-char p1, v9, v7

    .line 145
    if-eq p1, v13, :cond_10

    const/16 v9, 0x2b

    if-ne p1, v9, :cond_15

    .line 146
    :cond_10
    if-ge v6, v2, :cond_0

    .line 149
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-char p1, v9, v6

    .line 151
    :goto_5
    if-gt p1, v12, :cond_11

    if-ge p1, v11, :cond_13

    .line 159
    :cond_11
    if-nez v0, :cond_12

    .line 160
    const-string v9, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p1, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_12
    move v6, v7

    .line 165
    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    add-int/lit8 v6, v6, -0x1

    .line 166
    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 167
    sub-int v4, v6, v8

    .line 168
    .local v4, "len":I
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    iget-object v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    invoke-virtual {v9, v10, v8, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 169
    invoke-virtual {p0, v5, v3, v1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->reset(ZIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v9

    goto/16 :goto_2

    .line 152
    .end local v4    # "len":I
    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    .line 153
    if-lt v7, v2, :cond_14

    move v6, v7

    .line 154
    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    goto/16 :goto_1

    .line 156
    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    :cond_14
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-char p1, v9, v7

    move v7, v6

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    goto :goto_5

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    :cond_15
    move v7, v6

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    goto :goto_5

    .end local v0    # "expLen":I
    .end local v1    # "fractLen":I
    :cond_16
    move v6, v7

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    goto/16 :goto_3
.end method
