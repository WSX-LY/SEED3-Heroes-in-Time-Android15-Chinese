.class public final Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;
.super Ljava/lang/Object;
.source "ByteSourceBootstrapper.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonEncoding:[I


# instance fields
.field _bigEndian:Z

.field private final _bufferRecyclable:Z

.field _bytesPerChar:I

.field final _context:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

.field final _in:Ljava/io/InputStream;

.field final _inputBuffer:[B

.field private _inputEnd:I

.field protected _inputProcessed:I

.field private _inputPtr:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonEncoding()[I
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonEncoding:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->values()[Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->UTF16_BE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->UTF16_LE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->UTF32_BE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->UTF32_LE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonEncoding:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "ctxt"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 86
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 96
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    .line 97
    iput-object p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    .line 98
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->allocReadIOBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    .line 99
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    .line 100
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputProcessed:I

    .line 101
    iput-boolean v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;[BII)V
    .locals 2
    .param p1, "ctxt"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .param p2, "inputBuffer"    # [B
    .param p3, "inputStart"    # I
    .param p4, "inputLen"    # I

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 86
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 106
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    .line 108
    iput-object p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    .line 109
    iput p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 110
    add-int v0, p3, p4

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    .line 112
    neg-int v0, p3

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputProcessed:I

    .line 113
    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    .line 114
    return-void
.end method

.method private checkUTF16(I)Z
    .locals 3
    .param p1, "i16"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 313
    const v2, 0xff00

    and-int/2addr v2, p1

    if-nez v2, :cond_1

    .line 314
    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 322
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    move v0, v1

    .line 323
    :cond_0
    return v0

    .line 315
    :cond_1
    and-int/lit16 v2, p1, 0xff

    if-nez v2, :cond_0

    .line 316
    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_0
.end method

.method private checkUTF32(I)Z
    .locals 3
    .param p1, "quad"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 293
    shr-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_1

    .line 294
    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 307
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    move v0, v1

    .line 308
    :cond_0
    return v0

    .line 295
    :cond_1
    const v2, 0xffffff

    and-int/2addr v2, p1

    if-nez v2, :cond_2

    .line 296
    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_0

    .line 297
    :cond_2
    const v2, -0xff0001

    and-int/2addr v2, p1

    if-nez v2, :cond_3

    .line 298
    const-string v0, "3412"

    invoke-direct {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_3
    const v2, -0xff01

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    .line 300
    const-string v0, "2143"

    invoke-direct {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleBOM(I)Z
    .locals 6
    .param p1, "quad"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 247
    sparse-switch p1, :sswitch_data_0

    .line 264
    :goto_0
    ushr-int/lit8 v0, p1, 0x10

    .line 265
    .local v0, "msw":I
    const v3, 0xfeff

    if-ne v0, v3, :cond_0

    .line 266
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 267
    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 268
    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 284
    .end local v0    # "msw":I
    :goto_1
    return v1

    .line 249
    :sswitch_0
    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    .line 250
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 251
    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    goto :goto_1

    .line 254
    :sswitch_1
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 255
    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 256
    iput-boolean v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_1

    .line 259
    :sswitch_2
    const-string v3, "2143"

    invoke-direct {p0, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    .line 261
    :sswitch_3
    const-string v3, "3412"

    invoke-direct {p0, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    .restart local v0    # "msw":I
    :cond_0
    const v3, 0xfffe

    if-ne v0, v3, :cond_1

    .line 272
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 273
    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 274
    iput-boolean v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_1

    .line 278
    :cond_1
    ushr-int/lit8 v3, p1, 0x8

    const v4, 0xefbbbf

    if-ne v3, v4, :cond_2

    .line 279
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    .line 280
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    .line 281
    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_1

    :cond_2
    move v1, v2

    .line 284
    goto :goto_1

    .line 247
    :sswitch_data_0
    .sparse-switch
        -0x1010000 -> :sswitch_3
        -0x20000 -> :sswitch_1
        0xfeff -> :sswitch_0
        0xfffe -> :sswitch_2
    .end sparse-switch
.end method

.method private reportWeirdUCS4(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Ljava/io/CharConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported UCS-4 endianness ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") detected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public constructParser(ILcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .locals 16
    .param p1, "features"    # I
    .param p2, "codec"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;
    .param p3, "rootByteSymbols"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .param p4, "rootCharSymbols"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->detectEncoding()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    move-result-object v14

    .line 217
    .local v14, "enc":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v13

    .line 218
    .local v13, "canonicalize":Z
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v15

    .line 219
    .local v15, "intern":Z
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    if-ne v14, v1, :cond_0

    .line 223
    if-eqz v13, :cond_0

    .line 224
    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v15}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->makeChild(ZZ)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move-result-object v6

    .line 225
    .local v6, "can":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
    new-instance v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    move-object/from16 v0, p0

    iget v8, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    move/from16 v3, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v10}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Utf8StreamParser;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;ILjava/io/InputStream;Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;[BIIZ)V

    .line 228
    .end local v6    # "can":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
    :goto_0
    return-object v1

    :cond_0
    new-instance v7, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual/range {p0 .. p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->constructReader()Ljava/io/Reader;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v15}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->makeChild(ZZ)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v12

    move/from16 v9, p1

    move-object/from16 v11, p2

    invoke-direct/range {v7 .. v12}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    move-object v1, v7

    goto :goto_0
.end method

.method public constructReader()Ljava/io/Reader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->getEncoding()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    move-result-object v7

    .line 182
    .local v7, "enc":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonEncoding()[I

    move-result-object v1

    invoke-virtual {v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 208
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Internal error"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :pswitch_0
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    .line 186
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->getEncoding()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    move-result-object v6

    invoke-virtual {v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->isBigEndian()Z

    move-result v6

    .line 185
    invoke-direct/range {v0 .. v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF32Reader;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BIIZ)V

    .line 205
    :goto_0
    return-object v0

    .line 193
    :pswitch_1
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    .line 195
    .local v2, "in":Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 196
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    invoke-direct {v0, v1, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 205
    .end local v2    # "in":Ljava/io/InputStream;
    .local v0, "in":Ljava/io/InputStream;
    :goto_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 201
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_0
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    if-ge v1, v3, :cond_1

    .line 202
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/MergedStream;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    goto :goto_1

    .end local v0    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_1
    move-object v0, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    goto :goto_1

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public detectEncoding()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 124
    const/4 v1, 0x0

    .line 133
    .local v1, "foundEncoding":Z
    invoke-virtual {p0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->ensureLoaded(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 134
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x18

    .line 135
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 134
    or-int/2addr v4, v5

    .line 136
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 134
    or-int/2addr v4, v5

    .line 137
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    .line 134
    or-int v3, v4, v5

    .line 139
    .local v3, "quad":I
    invoke-direct {p0, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->handleBOM(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    const/4 v1, 0x1

    .line 165
    .end local v3    # "quad":I
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 166
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    .line 174
    .local v0, "enc":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;
    :goto_1
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v4, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->setEncoding(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;)V

    .line 175
    return-object v0

    .line 148
    .end local v0    # "enc":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;
    .restart local v3    # "quad":I
    :cond_1
    invoke-direct {p0, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF32(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    const/4 v1, 0x1

    goto :goto_0

    .line 150
    :cond_2
    ushr-int/lit8 v4, v3, 0x10

    invoke-direct {p0, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF16(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    const/4 v1, 0x1

    goto :goto_0

    .line 154
    .end local v3    # "quad":I
    :cond_3
    invoke-virtual {p0, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->ensureLoaded(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    .line 156
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    .line 155
    or-int v2, v4, v5

    .line 157
    .local v2, "i16":I
    invoke-direct {p0, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF16(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    const/4 v1, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "i16":I
    :cond_4
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    if-ne v4, v7, :cond_6

    .line 168
    iget-boolean v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    if-eqz v4, :cond_5

    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->UTF16_BE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    .restart local v0    # "enc":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;
    :goto_2
    goto :goto_1

    .end local v0    # "enc":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;
    :cond_5
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->UTF16_LE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    goto :goto_2

    .line 169
    :cond_6
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    if-ne v4, v8, :cond_8

    .line 170
    iget-boolean v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    if-eqz v4, :cond_7

    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->UTF32_BE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    .restart local v0    # "enc":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;
    :goto_3
    goto :goto_1

    .end local v0    # "enc":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;
    :cond_7
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->UTF32_LE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    goto :goto_3

    .line 172
    :cond_8
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Internal error"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected ensureLoaded(I)Z
    .locals 8
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 350
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    sub-int v1, v3, v4

    .line 351
    .local v1, "gotten":I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 365
    :goto_1
    return v2

    .line 354
    :cond_0
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    if-nez v3, :cond_1

    .line 355
    const/4 v0, -0x1

    .line 359
    .local v0, "count":I
    :goto_2
    if-ge v0, v2, :cond_2

    .line 360
    const/4 v2, 0x0

    goto :goto_1

    .line 357
    .end local v0    # "count":I
    :cond_1
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    array-length v6, v6

    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_2

    .line 362
    :cond_2
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    .line 363
    add-int/2addr v1, v0

    goto :goto_0
.end method
