.class public abstract Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;
.super Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
.source "JsonParserBase.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonToken:[I = null

.field static final INT_APOSTROPHE:I = 0x27

.field static final INT_ASTERISK:I = 0x2a

.field static final INT_BACKSLASH:I = 0x5c

.field static final INT_COLON:I = 0x3a

.field static final INT_COMMA:I = 0x2c

.field static final INT_CR:I = 0xd

.field static final INT_LBRACKET:I = 0x5b

.field static final INT_LCURLY:I = 0x7b

.field static final INT_LF:I = 0xa

.field static final INT_QUOTE:I = 0x22

.field static final INT_RBRACKET:I = 0x5d

.field static final INT_RCURLY:I = 0x7d

.field static final INT_SLASH:I = 0x2f

.field static final INT_SPACE:I = 0x20

.field static final INT_TAB:I = 0x9

.field static final INT_b:I = 0x62

.field static final INT_f:I = 0x66

.field static final INT_n:I = 0x6e

.field static final INT_r:I = 0x72

.field static final INT_t:I = 0x74

.field static final INT_u:I = 0x75


# instance fields
.field protected _binaryValue:[B

.field _byteArrayBuilder:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;

.field protected _closed:Z

.field protected _currInputProcessed:J

.field protected _currInputRow:I

.field protected _currInputRowStart:I

.field protected _inputEnd:I

.field protected _inputPtr:I

.field protected final _ioContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

.field protected _nameCopied:Z

.field protected _nameCopyBuffer:[C

.field protected _nextToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

.field protected _parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

.field protected final _textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

.field protected _tokenIncomplete:Z

.field protected _tokenInputCol:I

.field protected _tokenInputRow:I

.field protected _tokenInputTotal:J


# direct methods
.method static synthetic $SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonToken()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonToken:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->values()[Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_1
    :try_start_1
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_2
    :try_start_2
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_3
    :try_start_3
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->NOT_AVAILABLE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_4
    :try_start_4
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_5
    :try_start_5
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_6
    :try_start_6
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    :try_start_7
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_8
    :try_start_8
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_9
    :try_start_9
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_a
    :try_start_a
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_b
    :try_start_b
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_c
    :try_start_c
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_d
    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonToken:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_c

    :catch_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_9

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto/16 :goto_1
.end method

.method protected constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;I)V
    .locals 5
    .param p1, "ctxt"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;-><init>()V

    .line 88
    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 93
    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    .line 105
    iput-wide v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    .line 111
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    .line 119
    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    .line 135
    iput-wide v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputTotal:J

    .line 140
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    .line 146
    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    .line 172
    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    .line 192
    iput-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 199
    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 205
    iput-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;

    .line 223
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    .line 224
    iput p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_features:I

    .line 225
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->constructTextBuffer()Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    .line 226
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-static {v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->createRootContext(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .line 227
    return-void
.end method

.method protected static final _getCharDesc(I)Ljava/lang/String;
    .locals 3
    .param p0, "ch"    # I

    .prologue
    .line 634
    int-to-char v0, p0

    .line 635
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(CTRL-CHAR, code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 641
    :goto_0
    return-object v1

    .line 638
    :cond_0
    const/16 v1, 0xff

    if-le p0, v1, :cond_1

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 641
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected abstract _closeInput()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final _constructError(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 663
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->getCurrentLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected abstract _decodeBase64(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method protected abstract _finishString()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public _getByteArrayBuilder()Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;

    if-nez v0, :cond_0

    .line 675
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;

    invoke-direct {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;

    .line 679
    :goto_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;

    return-object v0

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/ByteArrayBuilder;->reset()V

    goto :goto_0
.end method

.method protected _handleEOF()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->inRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ": expected close marker for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 565
    :cond_0
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
    .line 546
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->releaseBuffers()V

    .line 547
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 548
    .local v0, "buf":[C
    if-eqz v0, :cond_0

    .line 549
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 550
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->releaseNameCopyBuffer([C)V

    .line 552
    :cond_0
    return-void
.end method

.method protected final _reportError(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 647
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_constructError(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method protected _reportInvalidEOF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method protected _reportInvalidEOF(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method protected _reportMismatchedEndMarker(IC)V
    .locals 4
    .param p1, "actCh"    # I
    .param p2, "expCh"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "startDesc":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected close marker \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method protected _reportUnexpectedChar(ILjava/lang/String;)V
    .locals 3
    .param p1, "ch"    # I
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected character ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "msg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    :cond_0
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method protected final _throwInternal()V
    .locals 2

    .prologue
    .line 658
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: this code path should never get executed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _throwInvalidSpace(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 598
    int-to-char v0, p1

    .line 599
    .local v0, "c":C
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal character ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): only regular white space (\\r, \\n, \\t) is allowed between tokens"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method protected _throwUnquotedSpace(ILjava/lang/String;)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "ctxtDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 612
    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    if-lt p1, v2, :cond_1

    .line 613
    :cond_0
    int-to-char v0, p1

    .line 614
    .local v0, "c":C
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal unquoted character ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): has to be escaped using backslash to be included in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 617
    .end local v0    # "c":C
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected final _wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 653
    invoke-virtual {p0, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_constructError(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    .line 316
    :try_start_0
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_closeInput()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    .line 322
    return-void

    .line 317
    :catchall_0
    move-exception v0

    .line 320
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    .line 321
    throw v0
.end method

.method public final getBinaryValue(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;)[B
    .locals 3
    .param p1, "b64variant"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 486
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current token ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not VALUE_STRING, can not access as binary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 492
    :cond_0
    iget-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 494
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_decodeBase64(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_binaryValue:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    .line 503
    :cond_1
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_binaryValue:[B

    return-object v1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_constructError(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;
    .locals 8

    .prologue
    .line 350
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    .line 351
    .local v5, "col":I
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    .line 352
    iget-wide v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    .line 353
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    .line 351
    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParsingContext()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->getParsingContext()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    return-object v0
.end method

.method public getParsingContext()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_1

    .line 372
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonToken()[I

    move-result-object v0

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 387
    :pswitch_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    .line 390
    :goto_0
    return-object v0

    .line 374
    :pswitch_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 377
    :pswitch_2
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    .line 379
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_finishString()V

    .line 384
    :cond_0
    :pswitch_3
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 390
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getTextCharacters()[C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 396
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eqz v2, :cond_4

    .line 397
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonToken()[I

    move-result-object v2

    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 424
    :pswitch_0
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v2

    .line 427
    :goto_0
    return-object v2

    .line 400
    :pswitch_1
    iget-boolean v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    if-nez v2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 403
    .local v1, "nameLen":I
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    if-nez v2, :cond_2

    .line 404
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 408
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    invoke-virtual {v0, v4, v1, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 409
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 411
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameLen":I
    :cond_1
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    goto :goto_0

    .line 405
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "nameLen":I
    :cond_2
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 406
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    goto :goto_1

    .line 414
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameLen":I
    :pswitch_2
    iget-boolean v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    if-eqz v2, :cond_3

    .line 415
    iput-boolean v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    .line 416
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_finishString()V

    .line 421
    :cond_3
    :pswitch_3
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v2

    goto :goto_0

    .line 427
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getTextLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 433
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    .line 434
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonToken()[I

    move-result-object v1

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 449
    :pswitch_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    .line 452
    :cond_0
    :goto_0
    return v0

    .line 437
    :pswitch_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 439
    :pswitch_2
    iget-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 440
    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    .line 441
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_finishString()V

    .line 446
    :cond_1
    :pswitch_3
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->size()I

    move-result v0

    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getTextOffset()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 459
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    .line 460
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonToken()[I

    move-result-object v1

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 474
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 464
    :pswitch_1
    iget-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 465
    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenIncomplete:Z

    .line 466
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_finishString()V

    .line 471
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v0

    goto :goto_0

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getTokenCharacterOffset()J
    .locals 2

    .prologue
    .line 515
    iget-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputTotal:J

    return-wide v0
.end method

.method public final getTokenColumnNr()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getTokenLineNr()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    return v0
.end method

.method public getTokenLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;
    .locals 6

    .prologue
    .line 338
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    .line 339
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->getTokenCharacterOffset()J

    move-result-wide v2

    .line 340
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->getTokenLineNr()I

    move-result v4

    .line 341
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->getTokenColumnNr()I

    move-result v5

    .line 338
    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    return v0
.end method

.method protected abstract loadMore()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final loadMoreGuaranteed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_reportInvalidEOF()V

    .line 533
    :cond_0
    return-void
.end method

.method public abstract nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public skipChildren()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    .line 265
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    .line 291
    :goto_0
    return-object p0

    .line 268
    :cond_0
    const/4 v0, 0x1

    .line 274
    .local v0, "open":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 275
    .local v1, "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    if-nez v1, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->_handleEOF()V

    goto :goto_0

    .line 283
    :cond_2
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonToken()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 286
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 287
    goto :goto_1

    .line 290
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
