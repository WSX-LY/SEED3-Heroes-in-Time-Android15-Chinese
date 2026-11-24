.class public final Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;
.super Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;
.source "Utf8StreamParser.java"


# static fields
.field static final BYTE_LF:B = 0xat


# instance fields
.field protected _objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

.field protected _quadBuffer:[I

.field protected final _symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;ILjava/io/InputStream;Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;[BIIZ)V
    .locals 8
    .param p1, "ctxt"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "codec"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;
    .param p5, "sym"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .param p6, "inputBuffer"    # [B
    .param p7, "start"    # I
    .param p8, "end"    # I
    .param p9, "bufferRecyclable"    # Z

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p6

    move v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V

    .line 52
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 67
    iput-object p4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    .line 68
    iput-object p5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 70
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v0, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_throwInternal()V

    .line 74
    :cond_0
    return-void
.end method

.method private final _decodeUtf8_2(I)I
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1478
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 1479
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1481
    :cond_0
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1482
    .local v0, "d":I
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 1483
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1485
    :cond_1
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int/2addr v1, v2

    return v1
.end method

.method private final _decodeUtf8_3(I)I
    .locals 6
    .param p1, "c1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 1491
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1492
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1494
    :cond_0
    and-int/lit8 p1, p1, 0xf

    .line 1495
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1496
    .local v1, "d":I
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_1

    .line 1497
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1499
    :cond_1
    shl-int/lit8 v2, p1, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 1500
    .local v0, "c":I
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v2, v3, :cond_2

    .line 1501
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1503
    :cond_2
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1504
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_3

    .line 1505
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1507
    :cond_3
    shl-int/lit8 v2, v0, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 1508
    return v0
.end method

.method private final _decodeUtf8_3fast(I)I
    .locals 6
    .param p1, "c1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 1514
    and-int/lit8 p1, p1, 0xf

    .line 1515
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1516
    .local v1, "d":I
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_0

    .line 1517
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1519
    :cond_0
    shl-int/lit8 v2, p1, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 1520
    .local v0, "c":I
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1521
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_1

    .line 1522
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1524
    :cond_1
    shl-int/lit8 v2, v0, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 1525
    return v0
.end method

.method private final _decodeUtf8_4(I)I
    .locals 5
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 1535
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 1536
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1538
    :cond_0
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1539
    .local v0, "d":I
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_1

    .line 1540
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1542
    :cond_1
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int p1, v1, v2

    .line 1544
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    .line 1545
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1547
    :cond_2
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1548
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_3

    .line 1549
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1551
    :cond_3
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int p1, v1, v2

    .line 1552
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_4

    .line 1553
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1555
    :cond_4
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1556
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_5

    .line 1557
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1563
    :cond_5
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int/2addr v1, v2

    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    return v1
.end method

.method private final _nextAfterName()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .locals 4

    .prologue
    .line 239
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_nameCopied:Z

    .line 240
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 241
    .local v0, "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 243
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .line 248
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    return-object v0

    .line 245
    :cond_1
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0
.end method

.method private _reportInvalidToken(Ljava/lang/String;)V
    .locals 6
    .param p1, "matchedPart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1220
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1232
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unrecognized token \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': was expecting \'null\', \'true\' or \'false\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    .line 1233
    return-void

    .line 1223
    :cond_1
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v3, v4

    .line 1224
    .local v1, "i":I
    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeCharForError(I)I

    move-result v3

    int-to-char v0, v3

    .line 1225
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1228
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1229
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final _skipCComment()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1313
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getInputCodeComment()[I

    move-result-object v1

    .line 1316
    .local v1, "codes":[I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1339
    const-string v3, " in a comment"

    invoke-virtual {p0, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1340
    :goto_1
    return-void

    .line 1317
    :cond_1
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 v2, v3, 0xff

    .line 1318
    .local v2, "i":I
    aget v0, v1, v2

    .line 1319
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 1320
    sparse-switch v0, :sswitch_data_0

    .line 1335
    invoke-virtual {p0, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    goto :goto_0

    .line 1322
    :sswitch_0
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    .line 1323
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    goto :goto_1

    .line 1328
    :sswitch_1
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_0

    .line 1331
    :sswitch_2
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_0

    .line 1320
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
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

    .line 1292
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1293
    const-string v1, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v4, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1296
    :cond_0
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1297
    const-string v1, " in a comment"

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1299
    :cond_1
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 1300
    .local v0, "c":I
    if-ne v0, v4, :cond_2

    .line 1301
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCppComment()V

    .line 1307
    :goto_0
    return-void

    .line 1302
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 1303
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCComment()V

    goto :goto_0

    .line 1305
    :cond_3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private final _skipCppComment()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1346
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getInputCodeComment()[I

    move-result-object v1

    .line 1347
    .local v1, "codes":[I
    :cond_0
    :goto_0
    :sswitch_0
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1366
    :goto_1
    return-void

    .line 1348
    :cond_1
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 v2, v3, 0xff

    .line 1349
    .local v2, "i":I
    aget v0, v1, v2

    .line 1350
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 1351
    sparse-switch v0, :sswitch_data_0

    .line 1362
    invoke-virtual {p0, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    goto :goto_0

    .line 1353
    :sswitch_1
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_1

    .line 1356
    :sswitch_2
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_1

    .line 1351
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private final _skipUtf8_2(I)V
    .locals 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1569
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1570
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1572
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte p1, v0, v1

    .line 1573
    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    .line 1574
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1576
    :cond_1
    return-void
.end method

.method private final _skipUtf8_3(I)V
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x80

    .line 1584
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1585
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte p1, v0, v1

    .line 1589
    and-int/lit16 v0, p1, 0xc0

    if-eq v0, v3, :cond_1

    .line 1590
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1592
    :cond_1
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_2

    .line 1593
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1595
    :cond_2
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte p1, v0, v1

    .line 1596
    and-int/lit16 v0, p1, 0xc0

    if-eq v0, v3, :cond_3

    .line 1597
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1599
    :cond_3
    return-void
.end method

.method private final _skipUtf8_4(I)V
    .locals 5
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 1604
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 1605
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1607
    :cond_0
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1608
    .local v0, "d":I
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_1

    .line 1609
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1611
    :cond_1
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    .line 1612
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1614
    :cond_2
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_3

    .line 1615
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1617
    :cond_3
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_4

    .line 1618
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1620
    :cond_4
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1621
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_5

    .line 1622
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1624
    :cond_5
    return-void
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

    .line 1244
    :cond_0
    :goto_0
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1261
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end-of-input within/between "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_constructError(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    move-result-object v1

    throw v1

    .line 1245
    :cond_1
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 1246
    .local v0, "i":I
    if-le v0, v4, :cond_3

    .line 1247
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 1248
    return v0

    .line 1250
    :cond_2
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipComment()V

    goto :goto_0

    .line 1251
    :cond_3
    if-eq v0, v4, :cond_0

    .line 1252
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 1253
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_0

    .line 1254
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 1255
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_0

    .line 1256
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1257
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_throwInvalidSpace(I)V

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

    .line 1267
    :cond_0
    :goto_0
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1285
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_handleEOF()V

    .line 1286
    const/4 v0, -0x1

    :cond_1
    return v0

    .line 1268
    :cond_2
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 1269
    .local v0, "i":I
    if-le v0, v4, :cond_3

    .line 1270
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 1273
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipComment()V

    goto :goto_0

    .line 1274
    :cond_3
    if-eq v0, v4, :cond_0

    .line 1275
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 1276
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_0

    .line 1277
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 1278
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_0

    .line 1279
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1280
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final addName([III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 14
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I
    .param p3, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 811
    shl-int/lit8 v12, p2, 0x2

    add-int/lit8 v12, v12, -0x4

    add-int v3, v12, p3

    .line 820
    .local v3, "byteLen":I
    const/4 v12, 0x4

    move/from16 v0, p3

    if-ge v0, v12, :cond_1

    .line 821
    add-int/lit8 v12, p2, -0x1

    aget v10, p1, v12

    .line 823
    .local v10, "lastQuad":I
    add-int/lit8 v12, p2, -0x1

    rsub-int/lit8 v13, p3, 0x4

    shl-int/lit8 v13, v13, 0x3

    shl-int v13, v10, v13

    aput v13, p1, v12

    .line 829
    :goto_0
    iget-object v12, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v12}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 830
    .local v4, "cbuf":[C
    const/4 v7, 0x0

    .line 832
    .local v7, "cix":I
    const/4 v9, 0x0

    .local v9, "ix":I
    move v8, v7

    .end local v7    # "cix":I
    .local v8, "cix":I
    :goto_1
    if-lt v9, v3, :cond_2

    .line 907
    new-instance v1, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v1, v4, v12, v8}, Ljava/lang/String;-><init>([CII)V

    .line 909
    .local v1, "baseName":Ljava/lang/String;
    const/4 v12, 0x4

    move/from16 v0, p3

    if-ge v0, v12, :cond_0

    .line 910
    add-int/lit8 v12, p2, -0x1

    aput v10, p1, v12

    .line 912
    :cond_0
    iget-object v12, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move/from16 v0, p2

    invoke-virtual {v12, v1, p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;[II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v12

    return-object v12

    .line 825
    .end local v1    # "baseName":Ljava/lang/String;
    .end local v4    # "cbuf":[C
    .end local v8    # "cix":I
    .end local v9    # "ix":I
    .end local v10    # "lastQuad":I
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "lastQuad":I
    goto :goto_0

    .line 833
    .restart local v4    # "cbuf":[C
    .restart local v8    # "cix":I
    .restart local v9    # "ix":I
    :cond_2
    shr-int/lit8 v12, v9, 0x2

    aget v5, p1, v12

    .line 834
    .local v5, "ch":I
    and-int/lit8 v2, v9, 0x3

    .line 835
    .local v2, "byteIx":I
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int v12, v5, v12

    and-int/lit16 v5, v12, 0xff

    .line 836
    add-int/lit8 v9, v9, 0x1

    .line 838
    const/16 v12, 0x7f

    if-le v5, v12, :cond_d

    .line 840
    and-int/lit16 v12, v5, 0xe0

    const/16 v13, 0xc0

    if-ne v12, v13, :cond_a

    .line 841
    and-int/lit8 v5, v5, 0x1f

    .line 842
    const/4 v11, 0x1

    .line 853
    .local v11, "needed":I
    :goto_2
    add-int v12, v9, v11

    if-le v12, v3, :cond_3

    .line 854
    const-string v12, " in field name"

    invoke-virtual {p0, v12}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 858
    :cond_3
    shr-int/lit8 v12, v9, 0x2

    aget v6, p1, v12

    .line 859
    .local v6, "ch2":I
    and-int/lit8 v2, v9, 0x3

    .line 860
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v6, v12

    .line 861
    add-int/lit8 v9, v9, 0x1

    .line 863
    and-int/lit16 v12, v6, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_4

    .line 864
    invoke-virtual {p0, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 866
    :cond_4
    shl-int/lit8 v12, v5, 0x6

    and-int/lit8 v13, v6, 0x3f

    or-int v5, v12, v13

    .line 867
    const/4 v12, 0x1

    if-le v11, v12, :cond_7

    .line 868
    shr-int/lit8 v12, v9, 0x2

    aget v6, p1, v12

    .line 869
    and-int/lit8 v2, v9, 0x3

    .line 870
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v6, v12

    .line 871
    add-int/lit8 v9, v9, 0x1

    .line 873
    and-int/lit16 v12, v6, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_5

    .line 874
    invoke-virtual {p0, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 876
    :cond_5
    shl-int/lit8 v12, v5, 0x6

    and-int/lit8 v13, v6, 0x3f

    or-int v5, v12, v13

    .line 877
    const/4 v12, 0x2

    if-le v11, v12, :cond_7

    .line 878
    shr-int/lit8 v12, v9, 0x2

    aget v6, p1, v12

    .line 879
    and-int/lit8 v2, v9, 0x3

    .line 880
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v6, v12

    .line 881
    add-int/lit8 v9, v9, 0x1

    .line 882
    and-int/lit16 v12, v6, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_6

    .line 883
    and-int/lit16 v12, v6, 0xff

    invoke-virtual {p0, v12}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 885
    :cond_6
    shl-int/lit8 v12, v5, 0x6

    and-int/lit8 v13, v6, 0x3f

    or-int v5, v12, v13

    .line 888
    :cond_7
    const/4 v12, 0x2

    if-le v11, v12, :cond_d

    .line 889
    const/high16 v12, 0x10000

    sub-int/2addr v5, v12

    .line 890
    array-length v12, v4

    if-lt v8, v12, :cond_8

    .line 891
    iget-object v12, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v12}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v4

    .line 893
    :cond_8
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "cix":I
    .restart local v7    # "cix":I
    const v12, 0xd800

    shr-int/lit8 v13, v5, 0xa

    add-int/2addr v12, v13

    int-to-char v12, v12

    aput-char v12, v4, v8

    .line 894
    const v12, 0xdc00

    and-int/lit16 v13, v5, 0x3ff

    or-int v5, v12, v13

    .line 897
    .end local v6    # "ch2":I
    .end local v11    # "needed":I
    :goto_3
    array-length v12, v4

    if-lt v7, v12, :cond_9

    .line 898
    iget-object v12, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v12}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v4

    .line 900
    :cond_9
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "cix":I
    .restart local v8    # "cix":I
    int-to-char v12, v5

    aput-char v12, v4, v7

    goto/16 :goto_1

    .line 843
    :cond_a
    and-int/lit16 v12, v5, 0xf0

    const/16 v13, 0xe0

    if-ne v12, v13, :cond_b

    .line 844
    and-int/lit8 v5, v5, 0xf

    .line 845
    const/4 v11, 0x2

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .line 846
    .end local v11    # "needed":I
    :cond_b
    and-int/lit16 v12, v5, 0xf8

    const/16 v13, 0xf0

    if-ne v12, v13, :cond_c

    .line 847
    and-int/lit8 v5, v5, 0x7

    .line 848
    const/4 v11, 0x3

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .line 850
    .end local v11    # "needed":I
    :cond_c
    invoke-virtual {p0, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V

    .line 851
    const/4 v5, 0x1

    move v11, v5

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .end local v11    # "needed":I
    :cond_d
    move v7, v8

    .end local v8    # "cix":I
    .restart local v7    # "cix":I
    goto :goto_3
.end method

.method private final findName(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "q1"    # I
    .param p2, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 760
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v1, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 761
    .local v0, "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    if-eqz v0, :cond_0

    .line 766
    .end local v0    # "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    :goto_0
    return-object v0

    .line 765
    .restart local v0    # "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    :cond_0
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 766
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method private final findName(III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .param p3, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 773
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v1, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 774
    .local v0, "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    if-eqz v0, :cond_0

    .line 780
    .end local v0    # "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    :goto_0
    return-object v0

    .line 778
    .restart local v0    # "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    :cond_0
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 779
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 780
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method private final findName([IIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I
    .param p3, "lastQuad"    # I
    .param p4, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 786
    array-length v2, p1

    if-lt p2, v2, :cond_0

    .line 787
    array-length v2, p1

    invoke-static {p1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 789
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "qlen":I
    .local v1, "qlen":I
    aput p3, p1, p2

    .line 790
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v2, p1, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 791
    .local v0, "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    if-nez v0, :cond_1

    .line 792
    invoke-direct {p0, p1, v1, p4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 794
    .end local v0    # "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    :cond_1
    return-object v0
.end method

.method public static growArrayBy([II)[I
    .locals 4
    .param p0, "arr"    # [I
    .param p1, "more"    # I

    .prologue
    const/4 v3, 0x0

    .line 1699
    if-nez p0, :cond_0

    .line 1700
    new-array p0, p1, [I

    .line 1706
    .end local p0    # "arr":[I
    :goto_0
    return-object p0

    .line 1702
    .restart local p0    # "arr":[I
    :cond_0
    move-object v1, p0

    .line 1703
    .local v1, "old":[I
    array-length v0, p0

    .line 1704
    .local v0, "len":I
    add-int v2, v0, p1

    new-array p0, v2, [I

    .line 1705
    invoke-static {v1, v3, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private nextByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1656
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1657
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1659
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private final parseFieldName(III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 6
    .param p1, "q1"    # I
    .param p2, "ch"    # I
    .param p3, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 453
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    return-object v0
.end method

.method private final parseFieldName(IIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 6
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .param p3, "ch"    # I
    .param p4, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 460
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    return-object v0
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

    .line 1719
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_getByteArrayBuilder()Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;

    move-result-object v1

    .line 1732
    .local v1, "builder":Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;
    :cond_0
    :goto_0
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_1

    .line 1733
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1735
    :cond_1
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 1736
    .local v2, "ch":I
    const/16 v4, 0x20

    if-le v2, v4, :cond_0

    .line 1737
    invoke-virtual {p1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 1738
    .local v0, "bits":I
    if-gez v0, :cond_3

    .line 1739
    const/16 v4, 0x22

    if-ne v2, v4, :cond_2

    .line 1740
    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 1742
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 1744
    :cond_3
    move v3, v0

    .line 1748
    .local v3, "decodedData":I
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_4

    .line 1749
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1751
    :cond_4
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 1752
    invoke-virtual {p1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 1753
    if-gez v0, :cond_5

    .line 1754
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v2, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 1756
    :cond_5
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 1759
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_6

    .line 1760
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1762
    :cond_6
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 1763
    invoke-virtual {p1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 1766
    if-gez v0, :cond_a

    .line 1767
    if-eq v0, v7, :cond_7

    .line 1768
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v2, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 1771
    :cond_7
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_8

    .line 1772
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1774
    :cond_8
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 1775
    invoke-virtual {p1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->usesPaddingChar(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1776
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

    invoke-virtual {p0, p1, v2, v8, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 1779
    :cond_9
    shr-int/lit8 v3, v3, 0x4

    .line 1780
    invoke-virtual {v1, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_0

    .line 1784
    :cond_a
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 1786
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_b

    .line 1787
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1789
    :cond_b
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 1790
    invoke-virtual {p1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 1791
    if-gez v0, :cond_d

    .line 1792
    if-eq v0, v7, :cond_c

    .line 1793
    invoke-virtual {p0, p1, v2, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 1801
    :cond_c
    shr-int/lit8 v3, v3, 0x2

    .line 1802
    invoke-virtual {v1, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_0

    .line 1805
    :cond_d
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 1806
    invoke-virtual {v1, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_0
.end method

.method protected _decodeCharForError(I)I
    .locals 6
    .param p1, "firstByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 1425
    move v0, p1

    .line 1426
    .local v0, "c":I
    if-gez v0, :cond_3

    .line 1430
    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_4

    .line 1431
    and-int/lit8 v0, v0, 0x1f

    .line 1432
    const/4 v2, 0x1

    .line 1445
    .local v2, "needed":I
    :goto_0
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I

    move-result v1

    .line 1446
    .local v1, "d":I
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_0

    .line 1447
    and-int/lit16 v3, v1, 0xff

    invoke-virtual {p0, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 1449
    :cond_0
    shl-int/lit8 v3, v0, 0x6

    and-int/lit8 v4, v1, 0x3f

    or-int v0, v3, v4

    .line 1451
    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 1452
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I

    move-result v1

    .line 1453
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_1

    .line 1454
    and-int/lit16 v3, v1, 0xff

    invoke-virtual {p0, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 1456
    :cond_1
    shl-int/lit8 v3, v0, 0x6

    and-int/lit8 v4, v1, 0x3f

    or-int v0, v3, v4

    .line 1457
    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    .line 1458
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I

    move-result v1

    .line 1459
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_2

    .line 1460
    and-int/lit16 v3, v1, 0xff

    invoke-virtual {p0, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 1462
    :cond_2
    shl-int/lit8 v3, v0, 0x6

    and-int/lit8 v4, v1, 0x3f

    or-int v0, v3, v4

    .line 1466
    .end local v1    # "d":I
    .end local v2    # "needed":I
    :cond_3
    return v0

    .line 1433
    :cond_4
    and-int/lit16 v3, v0, 0xf0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_5

    .line 1434
    and-int/lit8 v0, v0, 0xf

    .line 1435
    const/4 v2, 0x2

    .restart local v2    # "needed":I
    goto :goto_0

    .line 1436
    .end local v2    # "needed":I
    :cond_5
    and-int/lit16 v3, v0, 0xf8

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_6

    .line 1438
    and-int/lit8 v0, v0, 0x7

    .line 1439
    const/4 v2, 0x3

    .restart local v2    # "needed":I
    goto :goto_0

    .line 1441
    .end local v2    # "needed":I
    :cond_6
    and-int/lit16 v3, v0, 0xff

    invoke-virtual {p0, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V

    .line 1442
    const/4 v2, 0x1

    .restart local v2    # "needed":I
    goto :goto_0
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
    .line 1371
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v5, v6, :cond_0

    .line 1372
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1373
    const-string v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1376
    :cond_0
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v5, v6

    .line 1378
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 1401
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unrecognized character escape (\\ followed by "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeCharForError(I)I

    move-result v6

    invoke-static {v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    .line 1405
    :sswitch_0
    const/4 v4, 0x0

    .line 1406
    .local v4, "value":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v5, 0x4

    if-lt v3, v5, :cond_1

    .line 1419
    int-to-char v5, v4

    .end local v3    # "i":I
    .end local v4    # "value":I
    :goto_1
    return v5

    .line 1381
    :sswitch_1
    const/16 v5, 0x8

    goto :goto_1

    .line 1383
    :sswitch_2
    const/16 v5, 0x9

    goto :goto_1

    .line 1385
    :sswitch_3
    const/16 v5, 0xa

    goto :goto_1

    .line 1387
    :sswitch_4
    const/16 v5, 0xc

    goto :goto_1

    .line 1389
    :sswitch_5
    const/16 v5, 0xd

    goto :goto_1

    .line 1395
    :sswitch_6
    int-to-char v5, v0

    goto :goto_1

    .line 1407
    .restart local v3    # "i":I
    .restart local v4    # "value":I
    :cond_1
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v5, v6, :cond_2

    .line 1408
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1409
    const-string v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1412
    :cond_2
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v5, v6

    .line 1413
    .local v1, "ch":I
    invoke-static {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->charToHex(I)I

    move-result v2

    .line 1414
    .local v2, "digit":I
    if-gez v2, :cond_3

    .line 1415
    const-string v5, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v1, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1417
    :cond_3
    shl-int/lit8 v5, v4, 0x4

    or-int v4, v5, v2

    .line 1406
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1378
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_6
        0x2f -> :sswitch_6
        0x5c -> :sswitch_6
        0x62 -> :sswitch_1
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method protected _finishString()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 925
    const/4 v6, 0x0

    .line 927
    .local v6, "outPtr":I
    iget-object v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 930
    .local v5, "outBuf":[C
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getInputCodeUtf8()[I

    move-result-object v1

    .line 931
    .local v1, "codes":[I
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 938
    .local v2, "inputBuffer":[B
    :goto_0
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 939
    .local v8, "ptr":I
    iget v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v8, v10, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 941
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 943
    :cond_0
    array-length v10, v5

    if-lt v6, v10, :cond_1

    .line 944
    iget-object v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 945
    const/4 v6, 0x0

    .line 947
    :cond_1
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    .line 949
    .local v3, "max":I
    array-length v10, v5

    sub-int/2addr v10, v6

    add-int v4, v8, v10

    .line 950
    .local v4, "max2":I
    if-ge v4, v3, :cond_4

    .line 951
    move v3, v4

    move v9, v8

    .end local v8    # "ptr":I
    .local v9, "ptr":I
    move v7, v6

    .line 954
    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    :goto_1
    if-lt v9, v3, :cond_2

    .line 962
    iput v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    move v6, v7

    .line 937
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_0

    .line 955
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_2
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ptr":I
    .restart local v8    # "ptr":I
    aget-byte v10, v2, v9

    and-int/lit16 v0, v10, 0xff

    .line 956
    .local v0, "c":I
    aget v10, v1, v0

    if-eqz v10, :cond_3

    .line 957
    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 965
    const/16 v10, 0x22

    if-ne v0, v10, :cond_5

    .line 1011
    iget-object v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1012
    return-void

    .line 960
    :cond_3
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    int-to-char v10, v0

    aput-char v10, v5, v7

    .end local v0    # "c":I
    :cond_4
    move v9, v8

    .end local v8    # "ptr":I
    .restart local v9    # "ptr":I
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto :goto_1

    .line 969
    .end local v9    # "ptr":I
    .restart local v0    # "c":I
    .restart local v8    # "ptr":I
    :cond_5
    aget v10, v1, v0

    packed-switch v10, :pswitch_data_0

    .line 995
    const/16 v10, 0x20

    if-ge v0, v10, :cond_9

    .line 997
    const-string v10, "string value"

    invoke-virtual {p0, v0, v10}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    move v6, v7

    .line 1004
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_2
    array-length v10, v5

    if-lt v6, v10, :cond_6

    .line 1005
    iget-object v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 1006
    const/4 v6, 0x0

    .line 1009
    :cond_6
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    int-to-char v10, v0

    aput-char v10, v5, v6

    move v6, v7

    .line 934
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_0

    .line 971
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result v0

    move v6, v7

    .line 972
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_2

    .line 974
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_2(I)I

    move-result v0

    move v6, v7

    .line 975
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_2

    .line 977
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :pswitch_2
    iget v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget v11, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int/2addr v10, v11

    const/4 v11, 0x2

    if-lt v10, v11, :cond_7

    .line 978
    invoke-direct {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3fast(I)I

    move-result v0

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_2

    .line 980
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_7
    invoke-direct {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3(I)I

    move-result v0

    move v6, v7

    .line 982
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_2

    .line 984
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_4(I)I

    move-result v0

    .line 986
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    const v10, 0xd800

    shr-int/lit8 v11, v0, 0xa

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v5, v7

    .line 987
    array-length v10, v5

    if-lt v6, v10, :cond_8

    .line 988
    iget-object v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 989
    const/4 v6, 0x0

    .line 991
    :cond_8
    const v10, 0xdc00

    and-int/lit16 v11, v0, 0x3ff

    or-int v0, v10, v11

    .line 993
    goto :goto_2

    .line 1000
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_9
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_2

    .line 969
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final _handleUnexpectedValue(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .locals 10
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x27

    .line 1090
    if-ne p1, v9, :cond_0

    sget-object v7, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1091
    :cond_0
    const-string v7, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1095
    :cond_1
    const/4 v5, 0x0

    .line 1096
    .local v5, "outPtr":I
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 1099
    .local v4, "outBuf":[C
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getInputCodeUtf8()[I

    move-result-object v0

    .line 1100
    .local v0, "codes":[I
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 1107
    .local v1, "inputBuffer":[B
    :cond_2
    :goto_0
    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v7, v8, :cond_3

    .line 1108
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1110
    :cond_3
    array-length v7, v4

    if-lt v5, v7, :cond_4

    .line 1111
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 1112
    const/4 v5, 0x0

    .line 1114
    :cond_4
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    .line 1116
    .local v2, "max":I
    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    array-length v8, v4

    sub-int/2addr v8, v5

    add-int v3, v7, v8

    .line 1117
    .local v3, "max2":I
    if-ge v3, v2, :cond_5

    .line 1118
    move v2, v3

    .line 1121
    :cond_5
    :goto_1
    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    if-ge v7, v2, :cond_2

    .line 1122
    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v7, v1, v7

    and-int/lit16 p1, v7, 0xff

    .line 1123
    if-eq p1, v9, :cond_6

    aget v7, v0, p1

    if-eqz v7, :cond_7

    .line 1131
    :cond_6
    if-ne p1, v9, :cond_8

    .line 1177
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1179
    sget-object v7, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    return-object v7

    .line 1126
    :cond_7
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outPtr":I
    .local v6, "outPtr":I
    int-to-char v7, p1

    aput-char v7, v4, v5

    move v5, v6

    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_1

    .line 1135
    :cond_8
    aget v7, v0, p1

    packed-switch v7, :pswitch_data_0

    .line 1163
    const/16 v7, 0x20

    if-ge p1, v7, :cond_9

    .line 1164
    const-string v7, "string value"

    invoke-virtual {p0, p1, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 1167
    :cond_9
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    .line 1170
    :cond_a
    :goto_2
    array-length v7, v4

    if-lt v5, v7, :cond_b

    .line 1171
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 1172
    const/4 v5, 0x0

    .line 1175
    :cond_b
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v6    # "outPtr":I
    int-to-char v7, p1

    aput-char v7, v4, v5

    move v5, v6

    .line 1103
    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_0

    .line 1137
    :pswitch_0
    const/16 v7, 0x22

    if-eq p1, v7, :cond_a

    .line 1138
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result p1

    .line 1140
    goto :goto_2

    .line 1142
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_2(I)I

    move-result p1

    .line 1143
    goto :goto_2

    .line 1145
    :pswitch_2
    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    if-lt v7, v8, :cond_c

    .line 1146
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3fast(I)I

    move-result p1

    goto :goto_2

    .line 1148
    :cond_c
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3(I)I

    move-result p1

    .line 1150
    goto :goto_2

    .line 1152
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_4(I)I

    move-result p1

    .line 1154
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v6    # "outPtr":I
    const v7, 0xd800

    shr-int/lit8 v8, p1, 0xa

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v4, v5

    .line 1155
    array-length v7, v4

    if-lt v6, v7, :cond_d

    .line 1156
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 1157
    const/4 v5, 0x0

    .line 1159
    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    :goto_3
    const v7, 0xdc00

    and-int/lit16 v8, p1, 0x3ff

    or-int p1, v7, v8

    .line 1161
    goto :goto_2

    .end local v5    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_d
    move v5, v6

    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_3

    .line 1135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final _handleUnusualFieldName(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 9
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 575
    const/16 v7, 0x27

    if-ne p1, v7, :cond_1

    sget-object v7, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parseApostropheFieldName()Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v3

    .line 636
    :cond_0
    :goto_0
    return-object v3

    .line 579
    :cond_1
    sget-object v7, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 580
    const-string v7, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 586
    :cond_2
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getInputCodeUtf8JsNames()[I

    move-result-object v0

    .line 588
    .local v0, "codes":[I
    aget v7, v0, p1

    if-eqz v7, :cond_3

    .line 589
    const-string v7, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 596
    :cond_3
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 597
    .local v6, "quads":[I
    const/4 v4, 0x0

    .line 598
    .local v4, "qlen":I
    const/4 v1, 0x0

    .line 599
    .local v1, "currQuad":I
    const/4 v2, 0x0

    .local v2, "currQuadBytes":I
    move v5, v4

    .line 603
    .end local v4    # "qlen":I
    .local v5, "qlen":I
    :goto_1
    const/4 v7, 0x4

    if-ge v2, v7, :cond_7

    .line 604
    add-int/lit8 v2, v2, 0x1

    .line 605
    shl-int/lit8 v7, v1, 0x8

    or-int v1, v7, p1

    move v4, v5

    .line 614
    .end local v5    # "qlen":I
    .restart local v4    # "qlen":I
    :goto_2
    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v7, v8, :cond_4

    .line 615
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v7

    if-nez v7, :cond_4

    .line 616
    const-string v7, " in field name"

    invoke-virtual {p0, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 619
    :cond_4
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v7, v7, v8

    and-int/lit16 p1, v7, 0xff

    .line 620
    aget v7, v0, p1

    if-eqz v7, :cond_9

    .line 626
    if-lez v2, :cond_6

    .line 627
    array-length v7, v6

    if-lt v4, v7, :cond_5

    .line 628
    array-length v7, v6

    invoke-static {v6, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v6

    iput-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 630
    :cond_5
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "qlen":I
    .restart local v5    # "qlen":I
    aput v1, v6, v4

    move v4, v5

    .line 632
    .end local v5    # "qlen":I
    .restart local v4    # "qlen":I
    :cond_6
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v7, v6, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v3

    .line 633
    .local v3, "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    if-nez v3, :cond_0

    .line 634
    invoke-direct {p0, v6, v4, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto :goto_0

    .line 607
    .end local v3    # "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .end local v4    # "qlen":I
    .restart local v5    # "qlen":I
    :cond_7
    array-length v7, v6

    if-lt v5, v7, :cond_8

    .line 608
    array-length v7, v6

    invoke-static {v6, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v6

    iput-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 610
    :cond_8
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "qlen":I
    .restart local v4    # "qlen":I
    aput v1, v6, v5

    .line 611
    move v1, p1

    .line 612
    const/4 v2, 0x1

    goto :goto_2

    .line 623
    :cond_9
    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    move v5, v4

    .line 601
    .end local v4    # "qlen":I
    .restart local v5    # "qlen":I
    goto :goto_1
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
    .line 1192
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->asByteArray()[B

    move-result-object v2

    .line 1193
    .local v2, "matchBytes":[B
    const/4 v0, 0x1

    .line 1195
    .local v0, "i":I
    array-length v1, v2

    .local v1, "len":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 1208
    return-void

    .line 1196
    :cond_0
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_1

    .line 1197
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1199
    :cond_1
    aget-byte v3, v2, v0

    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_2

    .line 1200
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 1202
    :cond_2
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final _parseApostropheFieldName()Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x27

    const/4 v11, 0x4

    .line 647
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v8, v9, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_0

    .line 649
    const-string v8, ": was expecting closing \'\'\' for name"

    invoke-virtual {p0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 652
    :cond_0
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 v0, v8, 0xff

    .line 653
    .local v0, "ch":I
    if-ne v0, v12, :cond_2

    .line 654
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v4

    .line 747
    :cond_1
    :goto_0
    return-object v4

    .line 656
    :cond_2
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 657
    .local v7, "quads":[I
    const/4 v5, 0x0

    .line 658
    .local v5, "qlen":I
    const/4 v2, 0x0

    .line 659
    .local v2, "currQuad":I
    const/4 v3, 0x0

    .line 663
    .local v3, "currQuadBytes":I
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v1

    .local v1, "codes":[I
    move v6, v5

    .line 666
    .end local v5    # "qlen":I
    .local v6, "qlen":I
    :goto_1
    if-ne v0, v12, :cond_4

    .line 737
    if-lez v3, :cond_e

    .line 738
    array-length v8, v7

    if-lt v6, v8, :cond_3

    .line 739
    array-length v8, v7

    invoke-static {v7, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 741
    :cond_3
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "qlen":I
    .restart local v5    # "qlen":I
    aput v2, v7, v6

    .line 743
    :goto_2
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v8, v7, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v4

    .line 744
    .local v4, "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    if-nez v4, :cond_1

    .line 745
    invoke-direct {p0, v7, v5, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v4

    goto :goto_0

    .line 670
    .end local v4    # "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .end local v5    # "qlen":I
    .restart local v6    # "qlen":I
    :cond_4
    const/16 v8, 0x22

    if-eq v0, v8, :cond_7

    aget v8, v1, v0

    if-eqz v8, :cond_7

    .line 671
    const/16 v8, 0x5c

    if-eq v0, v8, :cond_9

    .line 674
    const-string v8, "name"

    invoke-virtual {p0, v0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 684
    :goto_3
    const/16 v8, 0x7f

    if-le v0, v8, :cond_7

    .line 686
    if-lt v3, v11, :cond_6

    .line 687
    array-length v8, v7

    if-lt v6, v8, :cond_5

    .line 688
    array-length v8, v7

    invoke-static {v7, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 690
    :cond_5
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "qlen":I
    .restart local v5    # "qlen":I
    aput v2, v7, v6

    .line 691
    const/4 v2, 0x0

    .line 692
    const/4 v3, 0x0

    move v6, v5

    .line 694
    .end local v5    # "qlen":I
    .restart local v6    # "qlen":I
    :cond_6
    const/16 v8, 0x800

    if-ge v0, v8, :cond_a

    .line 695
    shl-int/lit8 v8, v2, 0x8

    shr-int/lit8 v9, v0, 0x6

    or-int/lit16 v9, v9, 0xc0

    or-int v2, v8, v9

    .line 696
    add-int/lit8 v3, v3, 0x1

    move v5, v6

    .line 714
    .end local v6    # "qlen":I
    .restart local v5    # "qlen":I
    :goto_4
    and-int/lit8 v8, v0, 0x3f

    or-int/lit16 v0, v8, 0x80

    move v6, v5

    .line 718
    .end local v5    # "qlen":I
    .restart local v6    # "qlen":I
    :cond_7
    if-ge v3, v11, :cond_c

    .line 719
    add-int/lit8 v3, v3, 0x1

    .line 720
    shl-int/lit8 v8, v2, 0x8

    or-int v2, v8, v0

    move v5, v6

    .line 729
    .end local v6    # "qlen":I
    .restart local v5    # "qlen":I
    :goto_5
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v8, v9, :cond_8

    .line 730
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_8

    .line 731
    const-string v8, " in field name"

    invoke-virtual {p0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 734
    :cond_8
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 v0, v8, 0xff

    move v6, v5

    .line 665
    .end local v5    # "qlen":I
    .restart local v6    # "qlen":I
    goto/16 :goto_1

    .line 677
    :cond_9
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result v0

    goto :goto_3

    .line 699
    :cond_a
    shl-int/lit8 v8, v2, 0x8

    shr-int/lit8 v9, v0, 0xc

    or-int/lit16 v9, v9, 0xe0

    or-int v2, v8, v9

    .line 700
    add-int/lit8 v3, v3, 0x1

    .line 702
    if-lt v3, v11, :cond_f

    .line 703
    array-length v8, v7

    if-lt v6, v8, :cond_b

    .line 704
    array-length v8, v7

    invoke-static {v7, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 706
    :cond_b
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "qlen":I
    .restart local v5    # "qlen":I
    aput v2, v7, v6

    .line 707
    const/4 v2, 0x0

    .line 708
    const/4 v3, 0x0

    .line 710
    :goto_6
    shl-int/lit8 v8, v2, 0x8

    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    or-int v2, v8, v9

    .line 711
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 722
    .end local v5    # "qlen":I
    .restart local v6    # "qlen":I
    :cond_c
    array-length v8, v7

    if-lt v6, v8, :cond_d

    .line 723
    array-length v8, v7

    invoke-static {v7, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 725
    :cond_d
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "qlen":I
    .restart local v5    # "qlen":I
    aput v2, v7, v6

    .line 726
    move v2, v0

    .line 727
    const/4 v3, 0x1

    goto :goto_5

    .end local v5    # "qlen":I
    .restart local v6    # "qlen":I
    :cond_e
    move v5, v6

    .end local v6    # "qlen":I
    .restart local v5    # "qlen":I
    goto/16 :goto_2

    .end local v5    # "qlen":I
    .restart local v6    # "qlen":I
    :cond_f
    move v5, v6

    .end local v6    # "qlen":I
    .restart local v5    # "qlen":I
    goto :goto_6
.end method

.method protected final _parseFieldName(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 10
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x22

    .line 268
    if-eq p1, v5, :cond_0

    .line 269
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_handleUnusualFieldName(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    .line 323
    :goto_0
    return-object v2

    .line 272
    :cond_0
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int/2addr v2, v3

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->slowParseFieldName()Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 282
    :cond_1
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    .line 284
    .local v0, "codes":[I
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 285
    .local v1, "q":I
    aget v2, v0, v1

    if-eqz v2, :cond_3

    .line 286
    if-ne v1, v5, :cond_2

    .line 287
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 289
    :cond_2
    invoke-direct {p0, v6, v1, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 292
    :cond_3
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 p1, v2, 0xff

    .line 293
    aget v2, v0, p1

    if-eqz v2, :cond_5

    .line 294
    if-ne p1, v5, :cond_4

    .line 295
    invoke-direct {p0, v1, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 297
    :cond_4
    invoke-direct {p0, v1, p1, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 299
    :cond_5
    shl-int/lit8 v2, v1, 0x8

    or-int v1, v2, p1

    .line 300
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 p1, v2, 0xff

    .line 301
    aget v2, v0, p1

    if-eqz v2, :cond_7

    .line 302
    if-ne p1, v5, :cond_6

    .line 303
    invoke-direct {p0, v1, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 305
    :cond_6
    invoke-direct {p0, v1, p1, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 307
    :cond_7
    shl-int/lit8 v2, v1, 0x8

    or-int v1, v2, p1

    .line 308
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 p1, v2, 0xff

    .line 309
    aget v2, v0, p1

    if-eqz v2, :cond_9

    .line 310
    if-ne p1, v5, :cond_8

    .line 311
    invoke-direct {p0, v1, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto/16 :goto_0

    .line 313
    :cond_8
    invoke-direct {p0, v1, p1, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto/16 :goto_0

    .line 315
    :cond_9
    shl-int/lit8 v2, v1, 0x8

    or-int v1, v2, p1

    .line 316
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 p1, v2, 0xff

    .line 317
    aget v2, v0, p1

    if-eqz v2, :cond_b

    .line 318
    if-ne p1, v5, :cond_a

    .line 319
    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto/16 :goto_0

    .line 321
    :cond_a
    const/4 v2, 0x4

    invoke-direct {p0, v1, p1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto/16 :goto_0

    .line 323
    :cond_b
    invoke-virtual {p0, v1, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseMediumFieldName(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected _reportInvalidChar(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1672
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 1673
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_throwInvalidSpace(I)V

    .line 1675
    :cond_0
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V

    .line 1676
    return-void
.end method

.method protected _reportInvalidInitial(I)V
    .locals 2
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1681
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    .line 1682
    return-void
.end method

.method protected _reportInvalidOther(I)V
    .locals 2
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1687
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    .line 1688
    return-void
.end method

.method protected _reportInvalidOther(II)V
    .locals 0
    .param p1, "mask"    # I
    .param p2, "ptr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1693
    iput p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1694
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 1695
    return-void
.end method

.method protected final _skipCR()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1638
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1639
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1640
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1643
    :cond_1
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    .line 1644
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I

    .line 1645
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
    .line 1649
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    .line 1650
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I

    .line 1651
    return-void
.end method

.method protected _skipString()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1022
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 1025
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getInputCodeUtf8()[I

    move-result-object v1

    .line 1026
    .local v1, "codes":[I
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 1034
    .local v2, "inputBuffer":[B
    :goto_0
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1035
    .local v4, "ptr":I
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    .line 1036
    .local v3, "max":I
    if-lt v4, v3, :cond_3

    .line 1037
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1038
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1039
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    move v5, v4

    .line 1041
    .end local v4    # "ptr":I
    .local v5, "ptr":I
    :goto_1
    if-lt v5, v3, :cond_0

    .line 1048
    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    goto :goto_0

    .line 1042
    :cond_0
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    aget-byte v6, v2, v5

    and-int/lit16 v0, v6, 0xff

    .line 1043
    .local v0, "c":I
    aget v6, v1, v0

    if-eqz v6, :cond_3

    .line 1044
    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1051
    const/16 v6, 0x22

    if-ne v0, v6, :cond_1

    .line 1078
    return-void

    .line 1055
    :cond_1
    aget v6, v1, v0

    packed-switch v6, :pswitch_data_0

    .line 1069
    const/16 v6, 0x20

    if-ge v0, v6, :cond_2

    .line 1071
    const-string v6, "string value"

    invoke-virtual {p0, v0, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_0

    .line 1057
    :pswitch_0
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    goto :goto_0

    .line 1060
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_2(I)V

    goto :goto_0

    .line 1063
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_3(I)V

    goto :goto_0

    .line 1066
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_4(I)V

    goto :goto_0

    .line 1074
    :cond_2
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    goto :goto_0

    .end local v0    # "c":I
    :cond_3
    move v5, v4

    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    goto :goto_1

    .line 1055
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-super {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8NumericParser;->close()V

    .line 256
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->release()V

    .line 257
    return-void
.end method

.method public getCodec()Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

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

    .line 102
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_nextAfterName()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 234
    :goto_0
    return-object v3

    .line 105
    :cond_0
    iget-boolean v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v4, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipString()V

    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWSOrEnd()I

    move-result v0

    .line 110
    .local v0, "i":I
    if-gez v0, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->close()V

    .line 115
    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 121
    :cond_2
    iget-wide v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputProcessed:J

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputTotal:J

    .line 122
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    .line 123
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    .line 126
    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_binaryValue:[B

    .line 129
    if-ne v0, v8, :cond_4

    .line 130
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->inArray()Z

    move-result v4

    if-nez v4, :cond_3

    .line 131
    invoke-virtual {p0, v0, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportMismatchedEndMarker(IC)V

    .line 133
    :cond_3
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .line 134
    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 136
    :cond_4
    if-ne v0, v9, :cond_6

    .line 137
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v4

    if-nez v4, :cond_5

    .line 138
    invoke-virtual {p0, v0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportMismatchedEndMarker(IC)V

    .line 140
    :cond_5
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .line 141
    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 145
    :cond_6
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->expectComma()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 146
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_7

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "was expecting comma to separate "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " entries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 149
    :cond_7
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v0

    .line 156
    :cond_8
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v1

    .line 157
    .local v1, "inObject":Z
    if-eqz v1, :cond_a

    .line 159
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parseFieldName(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    .line 160
    .local v2, "n":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 161
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    iput-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 162
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v0

    .line 163
    const/16 v4, 0x3a

    if-eq v0, v4, :cond_9

    .line 164
    const-string v4, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 166
    :cond_9
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v0

    .line 173
    .end local v2    # "n":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    :cond_a
    sparse-switch v0, :sswitch_data_0

    .line 226
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_handleUnexpectedValue(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 229
    .local v3, "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    :goto_1
    if-eqz v1, :cond_d

    .line 230
    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 231
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 175
    .end local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    :sswitch_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 176
    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 177
    .restart local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 179
    .end local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    :sswitch_1
    if-nez v1, :cond_b

    .line 180
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .line 182
    :cond_b
    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 183
    .restart local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 185
    .end local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    :sswitch_2
    if-nez v1, :cond_c

    .line 186
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .line 188
    :cond_c
    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 189
    .restart local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 194
    .end local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    :sswitch_3
    const-string v4, "expected a value"

    invoke-virtual {p0, v0, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 196
    :sswitch_4
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;)V

    .line 197
    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 198
    .restart local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 200
    .end local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    :sswitch_5
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;)V

    .line 201
    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 202
    .restart local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 204
    .end local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    :sswitch_6
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;)V

    .line 205
    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 206
    .restart local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 223
    .end local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    :sswitch_7
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseNumberText(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 224
    .restart local v3    # "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 233
    :cond_d
    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 173
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

.method protected parseEscapedFieldName([IIIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 7
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I
    .param p3, "currQuad"    # I
    .param p4, "ch"    # I
    .param p5, "currQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 479
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    .line 482
    .local v0, "codes":[I
    :goto_0
    aget v3, v0, p4

    if-eqz v3, :cond_d

    .line 483
    const/16 v3, 0x22

    if-ne p4, v3, :cond_3

    .line 552
    if-lez p5, :cond_1

    .line 553
    array-length v3, p1

    if-lt p2, v3, :cond_0

    .line 554
    array-length v3, p1

    invoke-static {p1, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 556
    :cond_0
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "qlen":I
    .local v2, "qlen":I
    aput p3, p1, p2

    move p2, v2

    .line 558
    .end local v2    # "qlen":I
    .restart local p2    # "qlen":I
    :cond_1
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v3, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v1

    .line 559
    .local v1, "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    if-nez v1, :cond_2

    .line 560
    invoke-direct {p0, p1, p2, p5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v1

    .line 562
    :cond_2
    return-object v1

    .line 487
    .end local v1    # "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    :cond_3
    const/16 v3, 0x5c

    if-eq p4, v3, :cond_6

    .line 489
    const-string v3, "name"

    invoke-virtual {p0, p4, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 499
    :goto_1
    const/16 v3, 0x7f

    if-le p4, v3, :cond_d

    .line 501
    if-lt p5, v6, :cond_c

    .line 502
    array-length v3, p1

    if-lt p2, v3, :cond_4

    .line 503
    array-length v3, p1

    invoke-static {p1, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 505
    :cond_4
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "qlen":I
    .restart local v2    # "qlen":I
    aput p3, p1, p2

    .line 506
    const/4 p3, 0x0

    .line 507
    const/4 p5, 0x0

    .line 509
    :goto_2
    const/16 v3, 0x800

    if-ge p4, v3, :cond_7

    .line 510
    shl-int/lit8 v3, p3, 0x8

    shr-int/lit8 v4, p4, 0x6

    or-int/lit16 v4, v4, 0xc0

    or-int p3, v3, v4

    .line 511
    add-int/lit8 p5, p5, 0x1

    move p2, v2

    .line 529
    .end local v2    # "qlen":I
    .restart local p2    # "qlen":I
    :goto_3
    and-int/lit8 v3, p4, 0x3f

    or-int/lit16 p4, v3, 0x80

    move v2, p2

    .line 533
    .end local p2    # "qlen":I
    .restart local v2    # "qlen":I
    :goto_4
    if-ge p5, v6, :cond_9

    .line 534
    add-int/lit8 p5, p5, 0x1

    .line 535
    shl-int/lit8 v3, p3, 0x8

    or-int p3, v3, p4

    move p2, v2

    .line 544
    .end local v2    # "qlen":I
    .restart local p2    # "qlen":I
    :goto_5
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_5

    .line 545
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-nez v3, :cond_5

    .line 546
    const-string v3, " in field name"

    invoke-virtual {p0, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 549
    :cond_5
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 p4, v3, 0xff

    .line 481
    goto :goto_0

    .line 492
    :cond_6
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result p4

    goto :goto_1

    .line 514
    .end local p2    # "qlen":I
    .restart local v2    # "qlen":I
    :cond_7
    shl-int/lit8 v3, p3, 0x8

    shr-int/lit8 v4, p4, 0xc

    or-int/lit16 v4, v4, 0xe0

    or-int p3, v3, v4

    .line 515
    add-int/lit8 p5, p5, 0x1

    .line 517
    if-lt p5, v6, :cond_b

    .line 518
    array-length v3, p1

    if-lt v2, v3, :cond_8

    .line 519
    array-length v3, p1

    invoke-static {p1, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 521
    :cond_8
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "qlen":I
    .restart local p2    # "qlen":I
    aput p3, p1, v2

    .line 522
    const/4 p3, 0x0

    .line 523
    const/4 p5, 0x0

    .line 525
    :goto_6
    shl-int/lit8 v3, p3, 0x8

    shr-int/lit8 v4, p4, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    or-int p3, v3, v4

    .line 526
    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    .line 537
    .end local p2    # "qlen":I
    .restart local v2    # "qlen":I
    :cond_9
    array-length v3, p1

    if-lt v2, v3, :cond_a

    .line 538
    array-length v3, p1

    invoke-static {p1, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 540
    :cond_a
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "qlen":I
    .restart local p2    # "qlen":I
    aput p3, p1, v2

    .line 541
    move p3, p4

    .line 542
    const/4 p5, 0x1

    goto :goto_5

    .end local p2    # "qlen":I
    .restart local v2    # "qlen":I
    :cond_b
    move p2, v2

    .end local v2    # "qlen":I
    .restart local p2    # "qlen":I
    goto :goto_6

    :cond_c
    move v2, p2

    .end local p2    # "qlen":I
    .restart local v2    # "qlen":I
    goto :goto_2

    .end local v2    # "qlen":I
    .restart local p2    # "qlen":I
    :cond_d
    move v2, p2

    .end local p2    # "qlen":I
    .restart local v2    # "qlen":I
    goto :goto_4
.end method

.method protected parseLongFieldName(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 12
    .param p1, "q"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x4

    const/16 v9, 0x22

    .line 373
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v6

    .line 374
    .local v6, "codes":[I
    const/4 v2, 0x2

    .line 381
    .local v2, "qlen":I
    :goto_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int/2addr v0, v1

    if-ge v0, v10, :cond_0

    .line 382
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v4, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 418
    :goto_1
    return-object v0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v1, 0x1

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 387
    .local v4, "i":I
    aget v0, v6, v4

    if-eqz v0, :cond_2

    .line 388
    if-ne v4, v9, :cond_1

    .line 389
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, p1, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 394
    :cond_2
    shl-int/lit8 v0, p1, 0x8

    or-int p1, v0, v4

    .line 395
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v1, 0x1

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 396
    aget v0, v6, v4

    if-eqz v0, :cond_4

    .line 397
    if-ne v4, v9, :cond_3

    .line 398
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, p1, v11}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 400
    :cond_3
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, p1

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 403
    :cond_4
    shl-int/lit8 v0, p1, 0x8

    or-int p1, v0, v4

    .line 404
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v1, 0x1

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 405
    aget v0, v6, v4

    if-eqz v0, :cond_6

    .line 406
    if-ne v4, v9, :cond_5

    .line 407
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 409
    :cond_5
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v5, 0x3

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 412
    :cond_6
    shl-int/lit8 v0, p1, 0x8

    or-int p1, v0, v4

    .line 413
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v1, 0x1

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 414
    aget v0, v6, v4

    if-eqz v0, :cond_8

    .line 415
    if-ne v4, v9, :cond_7

    .line 416
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, p1, v10}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_1

    .line 418
    :cond_7
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, p1

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_1

    .line 422
    :cond_8
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    array-length v0, v0

    if-lt v2, v0, :cond_9

    .line 423
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-static {v0, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 425
    :cond_9
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "qlen":I
    .local v7, "qlen":I
    aput p1, v0, v2

    .line 426
    move p1, v4

    move v2, v7

    .line 376
    .end local v7    # "qlen":I
    .restart local v2    # "qlen":I
    goto/16 :goto_0
.end method

.method protected parseMediumFieldName(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 10
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x22

    .line 330
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    .line 333
    .local v0, "codes":[I
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 334
    .local v1, "i":I
    aget v2, v0, v1

    if-eqz v2, :cond_1

    .line 335
    if-ne v1, v5, :cond_0

    .line 336
    invoke-direct {p0, p1, p2, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    .line 366
    :goto_0
    return-object v2

    .line 338
    :cond_0
    invoke-direct {p0, p1, p2, v1, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 340
    :cond_1
    shl-int/lit8 v2, p2, 0x8

    or-int p2, v2, v1

    .line 341
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 342
    aget v2, v0, v1

    if-eqz v2, :cond_3

    .line 343
    if-ne v1, v5, :cond_2

    .line 344
    invoke-direct {p0, p1, p2, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 346
    :cond_2
    invoke-direct {p0, p1, p2, v1, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 348
    :cond_3
    shl-int/lit8 v2, p2, 0x8

    or-int p2, v2, v1

    .line 349
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 350
    aget v2, v0, v1

    if-eqz v2, :cond_5

    .line 351
    if-ne v1, v5, :cond_4

    .line 352
    invoke-direct {p0, p1, p2, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 354
    :cond_4
    invoke-direct {p0, p1, p2, v1, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 356
    :cond_5
    shl-int/lit8 v2, p2, 0x8

    or-int p2, v2, v1

    .line 357
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 358
    aget v2, v0, v1

    if-eqz v2, :cond_7

    .line 359
    if-ne v1, v5, :cond_6

    .line 360
    invoke-direct {p0, p1, p2, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 362
    :cond_6
    invoke-direct {p0, p1, p2, v1, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 364
    :cond_7
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 365
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    aput p2, v2, v6

    .line 366
    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseLongFieldName(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0
.end method

.method protected reportInvalidChar(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;
    .locals 1
    .param p1, "b64variant"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;
    .param p2, "ch"    # I
    .param p3, "bindex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1814
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method protected reportInvalidChar(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "b64variant"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;
    .param p2, "ch"    # I
    .param p3, "bindex"    # I
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1825
    const/16 v1, 0x20

    if-gt p2, v1, :cond_1

    .line 1826
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

    .line 1835
    .local v0, "base":Ljava/lang/String;
    :goto_0
    if-eqz p4, :cond_0

    .line 1836
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

    .line 1838
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1827
    .end local v0    # "base":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->usesPaddingChar(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1828
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

    .line 1829
    .end local v0    # "base":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->isDefined(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1831
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

    .line 1833
    .end local v0    # "base":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    .line 81
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    .line 82
    return-void
.end method

.method protected slowParseFieldName()Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 438
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    const-string v0, ": was expecting closing \'\"\' for name"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 444
    .local v4, "i":I
    const/16 v0, 0x22

    if-ne v4, v0, :cond_1

    .line 445
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 447
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0
.end method
