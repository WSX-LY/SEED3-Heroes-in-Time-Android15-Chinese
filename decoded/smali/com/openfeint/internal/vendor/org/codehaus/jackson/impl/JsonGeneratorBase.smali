.class public abstract Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;
.super Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
.source "JsonGeneratorBase.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonParser$NumberType:[I

.field private static synthetic $SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonToken:[I


# instance fields
.field protected _cfgNumbersAsStrings:Z

.field protected _closed:Z

.field protected _features:I

.field protected _objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

.field protected _writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;


# direct methods
.method static synthetic $SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonParser$NumberType()[I
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonParser$NumberType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->values()[Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->FLOAT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->INT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->LONG:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonParser$NumberType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonToken()[I
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonToken:[I

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
    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonToken:[I

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

.method protected constructor <init>(ILcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;)V
    .locals 1
    .param p1, "features"    # I
    .param p2, "codec"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;-><init>()V

    .line 83
    iput p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    .line 84
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->createRootContext()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    .line 85
    iput-object p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    .line 86
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    .line 87
    return-void
.end method


# virtual methods
.method protected _cantHappen()V
    .locals 2

    .prologue
    .line 446
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract _releaseBuffers()V
.end method

.method protected _reportError(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 441
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;

    invoke-direct {v0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract _verifyValueWrite(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method protected abstract _writeEndArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method protected abstract _writeEndObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method protected abstract _writeFieldName(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method protected _writeSimpleObject(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 463
    if-nez p1, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNull()V

    .line 515
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 467
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 468
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_b

    move-object v0, p1

    .line 472
    check-cast v0, Ljava/lang/Number;

    .line 473
    .local v0, "n":Ljava/lang/Number;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 474
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(I)V

    goto :goto_0

    .line 476
    :cond_2
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 477
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(J)V

    goto :goto_0

    .line 479
    :cond_3
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_4

    .line 480
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(D)V

    goto :goto_0

    .line 482
    :cond_4
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 483
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(F)V

    goto :goto_0

    .line 485
    :cond_5
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_6

    .line 486
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(I)V

    goto :goto_0

    .line 488
    :cond_6
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_7

    .line 489
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(I)V

    goto :goto_0

    .line 491
    :cond_7
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_8

    .line 492
    check-cast v0, Ljava/math/BigInteger;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 494
    .restart local v0    # "n":Ljava/lang/Number;
    :cond_8
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_9

    .line 495
    check-cast v0, Ljava/math/BigDecimal;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 500
    .restart local v0    # "n":Ljava/lang/Number;
    :cond_9
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_a

    .line 501
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(I)V

    goto :goto_0

    .line 503
    .restart local v0    # "n":Ljava/lang/Number;
    :cond_a
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v1, :cond_e

    .line 504
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(J)V

    goto/16 :goto_0

    .line 507
    :cond_b
    instance-of v1, p1, [B

    if-eqz v1, :cond_c

    .line 508
    check-cast p1, [B

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeBinary([B)V

    goto/16 :goto_0

    .line 510
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    .line 511
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 513
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_d
    instance-of v1, p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_e

    .line 514
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 517
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 517
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract _writeStartArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method protected abstract _writeStartObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_closed:Z

    .line 322
    return-void
.end method

.method public final copyCurrentEvent(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V
    .locals 3
    .param p1, "jp"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonToken()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 391
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_cantHappen()V

    .line 393
    :goto_0
    return-void

    .line 337
    :pswitch_0
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeStartObject()V

    goto :goto_0

    .line 340
    :pswitch_1
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeEndObject()V

    goto :goto_0

    .line 343
    :pswitch_2
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeStartArray()V

    goto :goto_0

    .line 346
    :pswitch_3
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeEndArray()V

    goto :goto_0

    .line 349
    :pswitch_4
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :pswitch_5
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getTextCharacters()[C

    move-result-object v0

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getTextOffset()I

    move-result v1

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getTextLength()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeString([CII)V

    goto :goto_0

    .line 355
    :pswitch_6
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonParser$NumberType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 363
    :pswitch_7
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(J)V

    goto :goto_0

    .line 357
    :pswitch_8
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(I)V

    goto :goto_0

    .line 360
    :pswitch_9
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 367
    :pswitch_a
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonParser$NumberType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 375
    :pswitch_b
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(D)V

    goto :goto_0

    .line 369
    :pswitch_c
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 372
    :pswitch_d
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNumber(F)V

    goto :goto_0

    .line 379
    :pswitch_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeBoolean(Z)V

    goto :goto_0

    .line 382
    :pswitch_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 385
    :pswitch_10
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNull()V

    goto/16 :goto_0

    .line 388
    :pswitch_11
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_11
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 355
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch

    .line 367
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_d
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public final copyCurrentStructure(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V
    .locals 3
    .param p1, "jp"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 401
    .local v0, "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 402
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeFieldName(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 407
    :cond_0
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->$SWITCH_TABLE$com$openfeint$internal$vendor$org$codehaus$jackson$JsonToken()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 423
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->copyCurrentEvent(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V

    .line 425
    :goto_0
    return-void

    .line 409
    :pswitch_1
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeStartArray()V

    .line 410
    :goto_1
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeEndArray()V

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->copyCurrentStructure(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V

    goto :goto_1

    .line 416
    :pswitch_2
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeStartObject()V

    .line 417
    :goto_2
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_2

    .line 420
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeEndObject()V

    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->copyCurrentStructure(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V

    goto :goto_2

    .line 407
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public disable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .locals 2
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 106
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    .line 107
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    if-ne p1, v0, :cond_0

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    .line 110
    :cond_0
    return-object p0
.end method

.method public enable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .locals 2
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 97
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    .line 98
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    if-ne p1, v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgNumbersAsStrings:Z

    .line 101
    :cond_0
    return-object p0
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getCodec()Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public bridge synthetic getOutputContext()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->getOutputContext()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputContext()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_closed:Z

    return v0
.end method

.method public final isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 2
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 117
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_features:I

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setCodec(Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .locals 0
    .param p1, "oc"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    .line 127
    return-object p0
.end method

.method public final useDefaultPrettyPrinter()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->setPrettyPrinter(Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public abstract writeBoolean(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public final writeEndArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an ARRAY but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;->writeEndArray(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;I)V

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->getParent()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    .line 177
    return-void

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeEndArray()V

    goto :goto_0
.end method

.method public final writeEndObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an object but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->getParent()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    .line 204
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;->writeEndObject(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;I)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeEndObject()V

    goto :goto_0
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 218
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v2, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, "status":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 220
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_reportError(Ljava/lang/String;)V

    .line 222
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeFieldName(Ljava/lang/String;Z)V

    .line 223
    return-void

    .line 222
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract writeNull()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/math/BigDecimal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 280
    if-nez p1, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNull()V

    .line 295
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    invoke-virtual {v0, p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;->writeValue(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeSimpleObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final writeStartArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 153
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->createChildArrayContext()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    .line 155
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;->writeStartArray(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeStartArray()V

    goto :goto_0
.end method

.method public final writeStartObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 185
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_verifyValueWrite(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->createChildObjectContext()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    .line 187
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;->writeStartObject(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_writeStartObject()V

    goto :goto_0
.end method

.method public writeTree(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;)V
    .locals 2
    .param p1, "rootNode"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->writeNull()V

    .line 309
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    if-nez v0, :cond_1

    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the generator, can not serialize JsonNode-based trees"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    invoke-virtual {v0, p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;->writeTree(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method
