.class public final Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;
.super Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;
.source "ReaderBasedParser.java"


# instance fields
.field protected _objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

.field protected final _symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;)V
    .locals 0
    .param p1, "ioCtxt"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I
    .param p3, "r"    # Ljava/io/Reader;
    .param p4, "codec"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;
    .param p5, "st"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V

    .line 52
    iput-object p4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    .line 53
    iput-object p5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    .line 54
    return-void
.end method

.method private final _nextAfterName()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .locals 4

    .prologue
    .line 220
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_nameCopied:Z

    .line 221
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 222
    .local v0, "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 224
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .line 229
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    return-object v0

    .line 226
    :cond_1
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0
.end method

.method private _parseFieldName2(III)Ljava/lang/String;
    .locals 12
    .param p1, "startPtr"    # I
    .param p2, "hash"    # I
    .param p3, "endChar"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    iget-object v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v11, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    sub-int/2addr v11, p1

    invoke-virtual {v9, v10, p1, v11}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 291
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v4

    .line 292
    .local v4, "outBuf":[C
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v5

    .line 295
    .local v5, "outPtr":I
    :goto_0
    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v9, v10, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v9

    if-nez v9, :cond_0

    .line 297
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ": was expecting closing \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v10, p3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' for name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 300
    :cond_0
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v1, v9, v10

    .line 301
    .local v1, "c":C
    move v2, v1

    .line 302
    .local v2, "i":I
    const/16 v9, 0x5c

    if-gt v2, v9, :cond_1

    .line 303
    const/16 v9, 0x5c

    if-ne v2, v9, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v1

    .line 318
    :cond_1
    :goto_1
    mul-int/lit8 v9, p2, 0x1f

    add-int p2, v9, v2

    .line 320
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outPtr":I
    .local v6, "outPtr":I
    aput-char v1, v4, v5

    .line 323
    array-length v9, v4

    if-lt v6, v9, :cond_4

    .line 324
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 325
    const/4 v5, 0x0

    .line 294
    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_0

    .line 309
    :cond_2
    if-gt v2, p3, :cond_1

    .line 310
    if-ne v2, p3, :cond_3

    .line 328
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v9, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 330
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    .line 331
    .local v8, "tb":Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;
    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    .line 332
    .local v0, "buf":[C
    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v7

    .line 333
    .local v7, "start":I
    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->size()I

    move-result v3

    .line 335
    .local v3, "len":I
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v9, v0, v7, v3, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 313
    .end local v0    # "buf":[C
    .end local v3    # "len":I
    .end local v7    # "start":I
    .end local v8    # "tb":Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;
    :cond_3
    const/16 v9, 0x20

    if-ge v2, v9, :cond_1

    .line 314
    const-string v9, "name"

    invoke-virtual {p0, v2, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1

    .end local v5    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_4
    move v5, v6

    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_0
.end method

.method private _parseUnusualFieldName2(II[I)Ljava/lang/String;
    .locals 14
    .param p1, "startPtr"    # I
    .param p2, "hash"    # I
    .param p3, "codes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 498
    iget-object v11, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    iget-object v12, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v13, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    sub-int/2addr v13, p1

    invoke-virtual {v11, v12, p1, v13}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 499
    iget-object v11, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v11}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v6

    .line 500
    .local v6, "outBuf":[C
    iget-object v11, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v11}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v7

    .line 501
    .local v7, "outPtr":I
    move-object/from16 v0, p3

    array-length v5, v0

    .line 504
    .local v5, "maxCode":I
    :goto_0
    iget v11, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v12, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v11, v12, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v11

    if-nez v11, :cond_1

    .line 529
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v11, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 531
    iget-object v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    .line 532
    .local v10, "tb":Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;
    invoke-virtual {v10}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v1

    .line 533
    .local v1, "buf":[C
    invoke-virtual {v10}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v9

    .line 534
    .local v9, "start":I
    invoke-virtual {v10}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->size()I

    move-result v4

    .line 536
    .local v4, "len":I
    iget-object v11, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move/from16 v0, p2

    invoke-virtual {v11, v1, v9, v4, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 509
    .end local v1    # "buf":[C
    .end local v4    # "len":I
    .end local v9    # "start":I
    .end local v10    # "tb":Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;
    :cond_1
    iget-object v11, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v12, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v2, v11, v12

    .line 510
    .local v2, "c":C
    move v3, v2

    .line 511
    .local v3, "i":I
    if-gt v3, v5, :cond_3

    .line 512
    aget v11, p3, v3

    if-nez v11, :cond_0

    .line 518
    :cond_2
    iget v11, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 519
    mul-int/lit8 v11, p2, 0x1f

    add-int p2, v11, v3

    .line 521
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outPtr":I
    .local v8, "outPtr":I
    aput-char v2, v6, v7

    .line 524
    array-length v11, v6

    if-lt v8, v11, :cond_4

    .line 525
    iget-object v11, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v11}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v6

    .line 526
    const/4 v7, 0x0

    .line 503
    .end local v8    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto :goto_0

    .line 515
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    .end local v7    # "outPtr":I
    .restart local v8    # "outPtr":I
    :cond_4
    move v7, v8

    .end local v8    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto :goto_0
.end method

.method private _reportInvalidToken(Ljava/lang/String;)V
    .locals 4
    .param p1, "matchedPart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 706
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v2, v3, :cond_1

    .line 707
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_1

    .line 719
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized token \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': was expecting \'null\', \'true\' or \'false\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportError(Ljava/lang/String;)V

    .line 720
    return-void

    .line 711
    :cond_1
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 712
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 715
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 716
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final _skipCComment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2a

    .line 822
    :cond_0
    :goto_0
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_2

    .line 846
    :cond_1
    const-string v1, " in a comment"

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 847
    :goto_1
    return-void

    .line 823
    :cond_2
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 824
    .local v0, "i":I
    if-gt v0, v4, :cond_0

    .line 825
    if-ne v0, v4, :cond_4

    .line 826
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 829
    :cond_3
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v1, v1, v2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 830
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    goto :goto_1

    .line 835
    :cond_4
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 836
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 837
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    goto :goto_0

    .line 838
    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 839
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_0

    .line 840
    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 841
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _skipComment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2f

    .line 800
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 801
    const-string v1, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v4, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 804
    :cond_0
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 805
    const-string v1, " in a comment"

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 807
    :cond_1
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 808
    .local v0, "c":C
    if-ne v0, v4, :cond_2

    .line 809
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCppComment()V

    .line 815
    :goto_0
    return-void

    .line 810
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 811
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCComment()V

    goto :goto_0

    .line 813
    :cond_3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private final _skipCppComment()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 853
    :cond_0
    :goto_0
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 867
    :goto_1
    return-void

    .line 854
    :cond_1
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 855
    .local v0, "i":I
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 856
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 857
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    goto :goto_1

    .line 859
    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 860
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_1

    .line 862
    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 863
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _skipWS()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 752
    :cond_0
    :goto_0
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end-of-input within/between "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_constructError(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    move-result-object v1

    throw v1

    .line 753
    :cond_1
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 754
    .local v0, "i":I
    if-le v0, v4, :cond_3

    .line 755
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 756
    return v0

    .line 758
    :cond_2
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_skipComment()V

    goto :goto_0

    .line 759
    :cond_3
    if-eq v0, v4, :cond_0

    .line 760
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 761
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    goto :goto_0

    .line 762
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 763
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_0

    .line 764
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 765
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _skipWSOrEnd()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 775
    :cond_0
    :goto_0
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_2

    .line 793
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_handleEOF()V

    .line 794
    const/4 v0, -0x1

    :cond_1
    return v0

    .line 776
    :cond_2
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 777
    .local v0, "i":I
    if-le v0, v4, :cond_3

    .line 778
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 781
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_skipComment()V

    goto :goto_0

    .line 782
    :cond_3
    if-eq v0, v4, :cond_0

    .line 783
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 784
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    goto :goto_0

    .line 785
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 786
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_0

    .line 787
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 788
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method


# virtual methods
.method protected _decodeBase64(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;)[B
    .locals 9
    .param p1, "b64variant"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, -0x2

    .line 933
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_getByteArrayBuilder()Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;

    move-result-object v1

    .line 946
    .local v1, "builder":Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;
    :cond_0
    :goto_0
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v4, v5, :cond_1

    .line 947
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V

    .line 949
    :cond_1
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v2, v4, v5

    .line 950
    .local v2, "ch":C
    const/16 v4, 0x20

    if-le v2, v4, :cond_0

    .line 951
    invoke-virtual {p1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 952
    .local v0, "bits":I
    if-gez v0, :cond_3

    .line 953
    const/16 v4, 0x22

    if-ne v2, v4, :cond_2

    .line 954
    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 956
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidChar(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;CI)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 958
    :cond_3
    move v3, v0

    .line 962
    .local v3, "decodedData":I
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v4, v5, :cond_4

    .line 963
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V

    .line 965
    :cond_4
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v2, v4, v5

    .line 966
    invoke-virtual {p1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 967
    if-gez v0, :cond_5

    .line 968
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v2, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidChar(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;CI)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 970
    :cond_5
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 973
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v4, v5, :cond_6

    .line 974
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V

    .line 976
    :cond_6
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v2, v4, v5

    .line 977
    invoke-virtual {p1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 980
    if-gez v0, :cond_a

    .line 981
    if-eq v0, v7, :cond_7

    .line 982
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v2, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidChar(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;CI)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 985
    :cond_7
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v4, v5, :cond_8

    .line 986
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V

    .line 988
    :cond_8
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v2, v4, v5

    .line 989
    invoke-virtual {p1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->usesPaddingChar(C)Z

    move-result v4

    if-nez v4, :cond_9

    .line 990
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "expected padding character \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v2, v8, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidChar(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;CILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 993
    :cond_9
    shr-int/lit8 v3, v3, 0x4

    .line 994
    invoke-virtual {v1, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_0

    .line 998
    :cond_a
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 1000
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v4, v5, :cond_b

    .line 1001
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V

    .line 1003
    :cond_b
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v2, v4, v5

    .line 1004
    invoke-virtual {p1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1005
    if-gez v0, :cond_d

    .line 1006
    if-eq v0, v7, :cond_c

    .line 1007
    invoke-virtual {p0, p1, v2, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidChar(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;CI)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 1015
    :cond_c
    shr-int/lit8 v3, v3, 0x2

    .line 1016
    invoke-virtual {v1, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_0

    .line 1019
    :cond_d
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 1020
    invoke-virtual {v1, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_0
.end method

.method protected final _decodeEscaped()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 872
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v5, v6, :cond_0

    .line 873
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 874
    const-string v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 877
    :cond_0
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v5, v6

    .line 879
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 902
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unrecognized character escape "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportError(Ljava/lang/String;)V

    .line 906
    :sswitch_0
    const/4 v4, 0x0

    .line 907
    .local v4, "value":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v5, 0x4

    if-lt v3, v5, :cond_1

    .line 920
    int-to-char v0, v4

    .end local v0    # "c":C
    .end local v3    # "i":I
    .end local v4    # "value":I
    :goto_1
    :sswitch_1
    return v0

    .line 882
    .restart local v0    # "c":C
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_1

    .line 884
    :sswitch_3
    const/16 v0, 0x9

    goto :goto_1

    .line 886
    :sswitch_4
    const/16 v0, 0xa

    goto :goto_1

    .line 888
    :sswitch_5
    const/16 v0, 0xc

    goto :goto_1

    .line 890
    :sswitch_6
    const/16 v0, 0xd

    goto :goto_1

    .line 908
    .restart local v3    # "i":I
    .restart local v4    # "value":I
    :cond_1
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v5, v6, :cond_2

    .line 909
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_2

    .line 910
    const-string v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 913
    :cond_2
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v1, v5, v6

    .line 914
    .local v1, "ch":I
    invoke-static {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->charToHex(I)I

    move-result v2

    .line 915
    .local v2, "digit":I
    if-gez v2, :cond_3

    .line 916
    const-string v5, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v1, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 918
    :cond_3
    shl-int/lit8 v5, v4, 0x4

    or-int v4, v5, v2

    .line 907
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 879
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x2f -> :sswitch_1
        0x5c -> :sswitch_1
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_6
        0x74 -> :sswitch_3
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method protected _finishString()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 548
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 549
    .local v4, "ptr":I
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 551
    .local v2, "inputLen":I
    if-ge v4, v2, :cond_2

    .line 552
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v1

    .line 553
    .local v1, "codes":[I
    array-length v3, v1

    .line 556
    .local v3, "maxCode":I
    :cond_0
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v0, v5, v4

    .line 557
    .local v0, "ch":I
    if-ge v0, v3, :cond_1

    aget v5, v1, v0

    if-eqz v5, :cond_1

    .line 558
    const/16 v5, 0x22

    if-ne v0, v5, :cond_2

    .line 559
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    sub-int v8, v4, v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 560
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 576
    .end local v0    # "ch":I
    .end local v1    # "codes":[I
    .end local v3    # "maxCode":I
    :goto_0
    return-void

    .line 566
    .restart local v0    # "ch":I
    .restart local v1    # "codes":[I
    .restart local v3    # "maxCode":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 567
    if-lt v4, v2, :cond_0

    .line 573
    .end local v0    # "ch":I
    .end local v1    # "codes":[I
    .end local v3    # "maxCode":I
    :cond_2
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    sub-int v8, v4, v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->resetWithCopy([CII)V

    .line 574
    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 575
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_finishString2()V

    goto :goto_0
.end method

.method protected _finishString2()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x22

    .line 581
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v2

    .line 582
    .local v2, "outBuf":[C
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v3

    .line 585
    .local v3, "outPtr":I
    :goto_0
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v5, v6, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 587
    const-string v5, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 590
    :cond_0
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v5, v6

    .line 591
    .local v0, "c":C
    move v1, v0

    .line 592
    .local v1, "i":I
    if-gt v1, v9, :cond_1

    .line 593
    if-ne v1, v9, :cond_3

    .line 598
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v0

    .line 609
    :cond_1
    :goto_1
    array-length v5, v2

    if-lt v3, v5, :cond_2

    .line 610
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    .line 611
    const/4 v3, 0x0

    .line 614
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "outPtr":I
    .local v4, "outPtr":I
    aput-char v0, v2, v3

    move v3, v4

    .line 584
    .end local v4    # "outPtr":I
    .restart local v3    # "outPtr":I
    goto :goto_0

    .line 599
    :cond_3
    if-gt v1, v8, :cond_1

    .line 600
    if-ne v1, v8, :cond_4

    .line 616
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 617
    return-void

    .line 603
    :cond_4
    const/16 v5, 0x20

    if-ge v1, v5, :cond_1

    .line 604
    const-string v5, "string value"

    invoke-virtual {p0, v1, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1
.end method

.method protected final _handleUnexpectedValue(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .locals 9
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x27

    .line 442
    if-ne p1, v7, :cond_0

    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 443
    :cond_0
    const-string v4, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 453
    :cond_1
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 454
    .local v1, "outBuf":[C
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v2

    .line 457
    .local v2, "outPtr":I
    :goto_0
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v4, v5, :cond_2

    .line 458
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v4

    if-nez v4, :cond_2

    .line 459
    const-string v4, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 462
    :cond_2
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v4, v5

    .line 463
    .local v0, "c":C
    move p1, v0

    .line 464
    if-gt p1, v8, :cond_3

    .line 465
    if-ne p1, v8, :cond_5

    .line 470
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v0

    .line 481
    :cond_3
    :goto_1
    array-length v4, v1

    if-lt v2, v4, :cond_4

    .line 482
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 483
    const/4 v2, 0x0

    .line 486
    :cond_4
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "outPtr":I
    .local v3, "outPtr":I
    aput-char v0, v1, v2

    move v2, v3

    .line 456
    .end local v3    # "outPtr":I
    .restart local v2    # "outPtr":I
    goto :goto_0

    .line 471
    :cond_5
    if-gt p1, v7, :cond_3

    .line 472
    if-ne p1, v7, :cond_6

    .line 488
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 489
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    return-object v4

    .line 475
    :cond_6
    const/16 v4, 0x20

    if-ge p1, v4, :cond_3

    .line 476
    const-string v4, "string value"

    invoke-virtual {p0, p1, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1
.end method

.method protected final _handleUnusualFieldName(I)Ljava/lang/String;
    .locals 11
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 351
    const/16 v8, 0x27

    if-ne p1, v8, :cond_0

    sget-object v8, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parseApostropheFieldName()Ljava/lang/String;

    move-result-object v8

    .line 396
    :goto_0
    return-object v8

    .line 355
    :cond_0
    sget-object v8, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 356
    const-string v8, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 358
    :cond_1
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1JsNames()[I

    move-result-object v1

    .line 359
    .local v1, "codes":[I
    array-length v5, v1

    .line 364
    .local v5, "maxCode":I
    if-ge p1, v5, :cond_6

    .line 365
    aget v8, v1, p1

    if-nez v8, :cond_5

    const/16 v8, 0x30

    if-lt p1, v8, :cond_2

    const/16 v8, 0x39

    if-le p1, v8, :cond_5

    :cond_2
    const/4 v2, 0x1

    .line 369
    .local v2, "firstOk":Z
    :goto_1
    if-nez v2, :cond_3

    .line 370
    const-string v8, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 372
    :cond_3
    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 373
    .local v6, "ptr":I
    const/4 v3, 0x0

    .line 374
    .local v3, "hash":I
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 376
    .local v4, "inputLen":I
    if-ge v6, v4, :cond_9

    .line 378
    :cond_4
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v0, v8, v6

    .line 379
    .local v0, "ch":I
    if-ge v0, v5, :cond_7

    .line 380
    aget v8, v1, v0

    if-eqz v8, :cond_8

    .line 381
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v8, -0x1

    .line 382
    .local v7, "start":I
    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 383
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    sub-int v10, v6, v7

    invoke-virtual {v8, v9, v7, v10, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 365
    .end local v0    # "ch":I
    .end local v2    # "firstOk":Z
    .end local v3    # "hash":I
    .end local v4    # "inputLen":I
    .end local v6    # "ptr":I
    .end local v7    # "start":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 367
    :cond_6
    int-to-char v8, p1

    invoke-static {v8}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    .restart local v2    # "firstOk":Z
    goto :goto_1

    .line 385
    .restart local v0    # "ch":I
    .restart local v3    # "hash":I
    .restart local v4    # "inputLen":I
    .restart local v6    # "ptr":I
    :cond_7
    int-to-char v8, v0

    invoke-static {v8}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v8

    if-nez v8, :cond_8

    .line 386
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v8, -0x1

    .line 387
    .restart local v7    # "start":I
    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 388
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    sub-int v10, v6, v7

    invoke-virtual {v8, v9, v7, v10, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 390
    .end local v7    # "start":I
    :cond_8
    mul-int/lit8 v8, v3, 0x1f

    add-int v3, v8, v0

    .line 391
    add-int/lit8 v6, v6, 0x1

    .line 392
    if-lt v6, v4, :cond_4

    .line 394
    .end local v0    # "ch":I
    :cond_9
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v8, -0x1

    .line 395
    .restart local v7    # "start":I
    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 396
    invoke-direct {p0, v7, v3, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parseUnusualFieldName2(II[I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method protected _matchToken(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;)V
    .locals 6
    .param p1, "token"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 675
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v3

    .line 676
    .local v3, "matchStr":Ljava/lang/String;
    const/4 v1, 0x1

    .line 678
    .local v1, "i":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 694
    return-void

    .line 679
    :cond_0
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v4, v5, :cond_1

    .line 680
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v4

    if-nez v4, :cond_1

    .line 681
    const-string v4, " in a value"

    invoke-virtual {p0, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 684
    :cond_1
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v4, v5

    .line 685
    .local v0, "c":C
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v0, v4, :cond_2

    .line 686
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 688
    :cond_2
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 678
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected final _parseApostropheFieldName()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x27

    .line 403
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 404
    .local v5, "ptr":I
    const/4 v2, 0x0

    .line 405
    .local v2, "hash":I
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 407
    .local v3, "inputLen":I
    if-ge v5, v3, :cond_2

    .line 408
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v1

    .line 409
    .local v1, "codes":[I
    array-length v4, v1

    .line 412
    .local v4, "maxCode":I
    :cond_0
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v0, v7, v5

    .line 413
    .local v0, "ch":I
    if-ne v0, v8, :cond_1

    .line 414
    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 415
    .local v6, "start":I
    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 416
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    sub-int v9, v5, v6

    invoke-virtual {v7, v8, v6, v9, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v7

    .line 429
    .end local v0    # "ch":I
    .end local v1    # "codes":[I
    .end local v4    # "maxCode":I
    :goto_0
    return-object v7

    .line 418
    .end local v6    # "start":I
    .restart local v0    # "ch":I
    .restart local v1    # "codes":[I
    .restart local v4    # "maxCode":I
    :cond_1
    if-ge v0, v4, :cond_3

    aget v7, v1, v0

    if-eqz v7, :cond_3

    .line 426
    .end local v0    # "ch":I
    .end local v1    # "codes":[I
    .end local v4    # "maxCode":I
    :cond_2
    :goto_1
    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 427
    .restart local v6    # "start":I
    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 429
    invoke-direct {p0, v6, v2, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parseFieldName2(III)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 421
    .end local v6    # "start":I
    .restart local v0    # "ch":I
    .restart local v1    # "codes":[I
    .restart local v4    # "maxCode":I
    :cond_3
    mul-int/lit8 v7, v2, 0x1f

    add-int v2, v7, v0

    .line 422
    add-int/lit8 v5, v5, 0x1

    .line 423
    if-lt v5, v3, :cond_0

    goto :goto_1
.end method

.method protected final _parseFieldName(I)Ljava/lang/String;
    .locals 10
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x22

    .line 248
    if-eq p1, v8, :cond_0

    .line 249
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_handleUnusualFieldName(I)Ljava/lang/String;

    move-result-object v7

    .line 280
    :goto_0
    return-object v7

    .line 255
    :cond_0
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 256
    .local v5, "ptr":I
    const/4 v2, 0x0

    .line 257
    .local v2, "hash":I
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 259
    .local v3, "inputLen":I
    if-ge v5, v3, :cond_3

    .line 260
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v1

    .line 261
    .local v1, "codes":[I
    array-length v4, v1

    .line 264
    .local v4, "maxCode":I
    :cond_1
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v0, v7, v5

    .line 265
    .local v0, "ch":I
    if-ge v0, v4, :cond_2

    aget v7, v1, v0

    if-eqz v7, :cond_2

    .line 266
    if-ne v0, v8, :cond_3

    .line 267
    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 268
    .local v6, "start":I
    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 269
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    sub-int v9, v5, v6

    invoke-virtual {v7, v8, v6, v9, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 273
    .end local v6    # "start":I
    :cond_2
    mul-int/lit8 v7, v2, 0x1f

    add-int v2, v7, v0

    .line 274
    add-int/lit8 v5, v5, 0x1

    .line 275
    if-lt v5, v3, :cond_1

    .line 278
    .end local v0    # "ch":I
    .end local v1    # "codes":[I
    .end local v4    # "maxCode":I
    :cond_3
    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 279
    .restart local v6    # "start":I
    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 280
    invoke-direct {p0, v6, v2, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parseFieldName2(III)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method protected final _skipCR()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 736
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 739
    :cond_1
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    .line 740
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I

    .line 741
    return-void
.end method

.method protected final _skipLF()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    .line 746
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I

    .line 747
    return-void
.end method

.method protected _skipString()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x22

    .line 627
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 629
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 630
    .local v4, "inputPtr":I
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 631
    .local v3, "inputLen":I
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    .line 634
    .local v2, "inputBuffer":[C
    :goto_0
    if-lt v4, v3, :cond_1

    .line 635
    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 636
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v6

    if-nez v6, :cond_0

    .line 637
    const-string v6, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 639
    :cond_0
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 640
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 642
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inputPtr":I
    .local v5, "inputPtr":I
    aget-char v0, v2, v4

    .line 643
    .local v0, "c":C
    move v1, v0

    .line 644
    .local v1, "i":I
    if-gt v1, v8, :cond_4

    .line 645
    if-ne v1, v8, :cond_2

    .line 650
    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 651
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v0

    .line 652
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 653
    .end local v5    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    goto :goto_0

    .line 654
    .end local v4    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    :cond_2
    if-gt v1, v7, :cond_4

    .line 655
    if-ne v1, v7, :cond_3

    .line 656
    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 666
    return-void

    .line 659
    :cond_3
    const/16 v6, 0x20

    if-ge v1, v6, :cond_4

    .line 660
    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 661
    const-string v6, "string value"

    invoke-virtual {p0, v1, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    move v4, v5

    .line 633
    .end local v5    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto :goto_0

    .end local v4    # "inputPtr":I
    .restart local v5    # "inputPtr":I
    :cond_4
    move v4, v5

    .end local v5    # "inputPtr":I
    .restart local v4    # "inputPtr":I
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
    .line 235
    invoke-super {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedNumericParser;->close()V

    .line 236
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->release()V

    .line 237
    return-void
.end method

.method public getCodec()Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x7d

    const/16 v8, 0x5d

    .line 82
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_nextAfterName()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 215
    :goto_0
    return-object v3

    .line 85
    :cond_0
    iget-boolean v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v4, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_skipString()V

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_skipWSOrEnd()I

    move-result v0

    .line 90
    .local v0, "i":I
    if-gez v0, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->close()V

    .line 95
    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 101
    :cond_2
    iget-wide v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputProcessed:J

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputTotal:J

    .line 102
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    .line 103
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    .line 106
    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_binaryValue:[B

    .line 109
    if-ne v0, v8, :cond_4

    .line 110
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->inArray()Z

    move-result v4

    if-nez v4, :cond_3

    .line 111
    invoke-virtual {p0, v0, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportMismatchedEndMarker(IC)V

    .line 113
    :cond_3
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .line 114
    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 116
    :cond_4
    if-ne v0, v9, :cond_6

    .line 117
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v4

    if-nez v4, :cond_5

    .line 118
    invoke-virtual {p0, v0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportMismatchedEndMarker(IC)V

    .line 120
    :cond_5
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .line 121
    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 125
    :cond_6
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->expectComma()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 126
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_7

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "was expecting comma to separate "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " entries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 129
    :cond_7
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I

    move-result v0

    .line 136
    :cond_8
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v1

    .line 137
    .local v1, "inObject":Z
    if-eqz v1, :cond_a

    .line 139
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parseFieldName(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 141
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    iput-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 142
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I

    move-result v0

    .line 143
    const/16 v4, 0x3a

    if-eq v0, v4, :cond_9

    .line 144
    const-string v4, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 146
    :cond_9
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I

    move-result v0

    .line 153
    .end local v2    # "name":Ljava/lang/String;
    :cond_a
    sparse-switch v0, :sswitch_data_0

    .line 206
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_handleUnexpectedValue(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 210
    .local v3, "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    :goto_1
    if-eqz v1, :cond_d

    .line 211
    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 212
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 155
    .end local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    :sswitch_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 156
    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 157
    .restart local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 159
    .end local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    :sswitch_1
    if-nez v1, :cond_b

    .line 160
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .line 162
    :cond_b
    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 163
    .restart local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 165
    .end local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    :sswitch_2
    if-nez v1, :cond_c

    .line 166
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .line 168
    :cond_c
    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 169
    .restart local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 174
    .end local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    :sswitch_3
    const-string v4, "expected a value"

    invoke-virtual {p0, v0, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 176
    :sswitch_4
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;)V

    .line 177
    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 178
    .restart local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 180
    .end local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    :sswitch_5
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;)V

    .line 181
    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 182
    .restart local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 184
    .end local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    :sswitch_6
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;)V

    .line 185
    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 186
    .restart local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 203
    .end local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    :sswitch_7
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->parseNumberText(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 204
    .restart local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 214
    :cond_d
    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2d -> :sswitch_7
        0x30 -> :sswitch_7
        0x31 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x38 -> :sswitch_7
        0x39 -> :sswitch_7
        0x5b -> :sswitch_1
        0x5d -> :sswitch_3
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_4
        0x7b -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method protected reportInvalidChar(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;CI)Ljava/lang/IllegalArgumentException;
    .locals 1
    .param p1, "b64variant"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;
    .param p2, "ch"    # C
    .param p3, "bindex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1028
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidChar(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;CILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method protected reportInvalidChar(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;CILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "b64variant"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;
    .param p2, "ch"    # C
    .param p3, "bindex"    # I
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1039
    const/16 v1, 0x20

    if-gt p2, v1, :cond_1

    .line 1040
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal white space character (code 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") as character #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1049
    .local v0, "base":Ljava/lang/String;
    :goto_0
    if-eqz p4, :cond_0

    .line 1050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1052
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1041
    .end local v0    # "base":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->usesPaddingChar(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1042
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected padding character (\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\') as character #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto :goto_0

    .line 1043
    .end local v0    # "base":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->isDefined(C)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1045
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal character (code 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in base64 content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto :goto_0

    .line 1047
    .end local v0    # "base":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in base64 content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public setCodec(Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;)V
    .locals 0
    .param p1, "c"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    .line 62
    return-void
.end method
