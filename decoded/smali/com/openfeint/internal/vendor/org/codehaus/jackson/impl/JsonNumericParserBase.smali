.class public abstract Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;
.super Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;
.source "JsonNumericParserBase.java"


# static fields
.field static final BD_MAX_INT:Ljava/math/BigDecimal;

.field static final BD_MAX_LONG:Ljava/math/BigDecimal;

.field static final BD_MIN_INT:Ljava/math/BigDecimal;

.field static final BD_MIN_LONG:Ljava/math/BigDecimal;

.field protected static final CHAR_NULL:C = '\u0000'

.field protected static final INT_0:I = 0x30

.field protected static final INT_1:I = 0x31

.field protected static final INT_2:I = 0x32

.field protected static final INT_3:I = 0x33

.field protected static final INT_4:I = 0x34

.field protected static final INT_5:I = 0x35

.field protected static final INT_6:I = 0x36

.field protected static final INT_7:I = 0x37

.field protected static final INT_8:I = 0x38

.field protected static final INT_9:I = 0x39

.field protected static final INT_DECIMAL_POINT:I = 0x2e

.field protected static final INT_E:I = 0x45

.field protected static final INT_MINUS:I = 0x2d

.field protected static final INT_PLUS:I = 0x2b

.field protected static final INT_e:I = 0x65

.field static final MAX_INT_D:D = 2.147483647E9

.field static final MAX_INT_L:J = 0x7fffffffL

.field static final MAX_LONG_D:D = 9.223372036854776E18

.field static final MIN_INT_D:D = -2.147483648E9

.field static final MIN_INT_L:J = -0x80000000L

.field static final MIN_LONG_D:D = -9.223372036854776E18

.field protected static final NR_BIGDECIMAL:I = 0x10

.field protected static final NR_BIGINT:I = 0x4

.field protected static final NR_DOUBLE:I = 0x8

.field protected static final NR_INT:I = 0x1

.field protected static final NR_LONG:I = 0x2

.field protected static final NR_UNKNOWN:I


# instance fields
.field protected _numTypesValid:I

.field protected _numberBigDecimal:Ljava/math/BigDecimal;

.field protected _numberBigInt:Ljava/math/BigInteger;

.field protected _numberDouble:D

.field protected _numberInt:I

.field protected _numberLong:J

.field protected _numberNegative:Z

.field protected mExpLength:I

.field protected mFractLength:I

.field protected mIntLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-wide v3, 0x7fffffffffffffffL

    const-wide/high16 v1, -0x8000000000000000L

    .line 50
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->BD_MIN_LONG:Ljava/math/BigDecimal;

    .line 51
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->BD_MAX_LONG:Ljava/math/BigDecimal;

    .line 53
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;

    .line 54
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;

    .line 27
    return-void
.end method

.method protected constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;I)V
    .locals 1
    .param p1, "ctxt"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonParserBase;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;I)V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    .line 153
    return-void
.end method


# virtual methods
.method protected convertNumberToBigDecimal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 545
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 550
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    .line 560
    :goto_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    .line 561
    return-void

    .line 551
    :cond_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 552
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 553
    :cond_1
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 554
    iget-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 555
    :cond_2
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 556
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 558
    :cond_3
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method protected convertNumberToBigInteger()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 497
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;

    .line 509
    :goto_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    .line 510
    return-void

    .line 500
    :cond_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 501
    iget-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 502
    :cond_1
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 503
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 504
    :cond_2
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 505
    iget-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 507
    :cond_3
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method protected convertNumberToDouble()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 521
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    .line 533
    :goto_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    .line 534
    return-void

    .line 523
    :cond_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    goto :goto_0

    .line 525
    :cond_1
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 526
    iget-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    goto :goto_0

    .line 527
    :cond_2
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 528
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    goto :goto_0

    .line 530
    :cond_3
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method protected convertNumberToInt()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 438
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 440
    iget-wide v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    long-to-int v0, v1

    .line 441
    .local v0, "result":I
    int-to-long v1, v0

    iget-wide v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric value ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V

    .line 444
    :cond_0
    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    .line 464
    .end local v0    # "result":I
    :goto_0
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    .line 465
    return-void

    .line 445
    :cond_1
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 447
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    goto :goto_0

    .line 448
    :cond_2
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 450
    iget-wide v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    const-wide/high16 v3, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_3

    iget-wide v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    const-wide v3, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4

    .line 451
    :cond_3
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->reportOverflowInt()V

    .line 453
    :cond_4
    iget-wide v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    double-to-int v1, v1

    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    goto :goto_0

    .line 454
    :cond_5
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    .line 455
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gtz v1, :cond_6

    .line 456
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gez v1, :cond_7

    .line 457
    :cond_6
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->reportOverflowInt()V

    .line 459
    :cond_7
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    goto :goto_0

    .line 461
    :cond_8
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method protected convertNumberToLong()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 470
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 471
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    .line 491
    :goto_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    .line 492
    return-void

    .line 472
    :cond_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    goto :goto_0

    .line 475
    :cond_1
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 477
    iget-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 478
    :cond_2
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->reportOverflowLong()V

    .line 480
    :cond_3
    iget-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    goto :goto_0

    .line 481
    :cond_4
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 482
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->BD_MIN_LONG:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_5

    .line 483
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->BD_MAX_LONG:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_6

    .line 484
    :cond_5
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->reportOverflowLong()V

    .line 486
    :cond_6
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    goto :goto_0

    .line 488
    :cond_7
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 276
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 277
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 278
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->parseNumericValue(I)V

    .line 280
    :cond_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->convertNumberToBigInteger()V

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 319
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 320
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 321
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->parseNumericValue(I)V

    .line 323
    :cond_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->convertNumberToBigDecimal()V

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 305
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 306
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 307
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->parseNumericValue(I)V

    .line 309
    :cond_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->convertNumberToDouble()V

    .line 313
    :cond_1
    iget-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    return-wide v0
.end method

.method public getFloatValue()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->getDoubleValue()D

    move-result-wide v0

    .line 299
    .local v0, "value":D
    double-to-float v2, v0

    return v2
.end method

.method public getIntValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 248
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 249
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->parseNumericValue(I)V

    .line 252
    :cond_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->convertNumberToInt()V

    .line 256
    :cond_1
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    return v0
.end method

.method public getLongValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 262
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 263
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->parseNumericValue(I)V

    .line 266
    :cond_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->convertNumberToLong()V

    .line 270
    :cond_1
    iget-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    return-wide v0
.end method

.method public getNumberType()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 220
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->parseNumericValue(I)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 224
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 225
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->INT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;

    .line 242
    :goto_0
    return-object v0

    .line 227
    :cond_1
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 228
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->LONG:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 230
    :cond_2
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 239
    :cond_3
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 240
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 242
    :cond_4
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 187
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->parseNumericValue(I)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    .line 192
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 193
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 195
    :cond_1
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 196
    iget-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_2
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 208
    :cond_4
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 209
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 211
    :cond_5
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_6

    .line 212
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_throwInternal()V

    .line 214
    :cond_6
    iget-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract parseNumberText(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method protected final parseNumericValue(I)V
    .locals 11
    .param p1, "expType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x10

    .line 350
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->isNumeric()Z

    move-result v8

    if-nez v8, :cond_1

    .line 351
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Current token ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V

    .line 355
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    sget-object v9, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v8, v9, :cond_a

    .line 356
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    .line 357
    .local v0, "buf":[C
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v7

    .line 358
    .local v7, "offset":I
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->mIntLength:I

    .line 359
    .local v4, "len":I
    iget-boolean v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberNegative:Z

    if-eqz v8, :cond_2

    .line 360
    add-int/lit8 v7, v7, 0x1

    .line 362
    :cond_2
    const/16 v8, 0x9

    if-gt v4, v8, :cond_4

    .line 363
    invoke-static {v0, v7, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result v1

    .line 364
    .local v1, "i":I
    iget-boolean v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberNegative:Z

    if-eqz v8, :cond_3

    neg-int v1, v1

    .end local v1    # "i":I
    :cond_3
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    .line 365
    const/4 v8, 0x1

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    .line 426
    .end local v0    # "buf":[C
    .end local v4    # "len":I
    .end local v7    # "offset":I
    :goto_0
    return-void

    .line 368
    .restart local v0    # "buf":[C
    .restart local v4    # "len":I
    .restart local v7    # "offset":I
    :cond_4
    const/16 v8, 0x12

    if-gt v4, v8, :cond_8

    .line 369
    invoke-static {v0, v7, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/NumberInput;->parseLong([CII)J

    move-result-wide v2

    .line 370
    .local v2, "l":J
    iget-boolean v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberNegative:Z

    if-eqz v8, :cond_5

    .line 371
    neg-long v2, v2

    .line 374
    :cond_5
    const/16 v8, 0xa

    if-ne v4, v8, :cond_7

    .line 375
    iget-boolean v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberNegative:Z

    if-eqz v8, :cond_6

    .line 376
    const-wide/32 v8, -0x80000000

    cmp-long v8, v2, v8

    if-ltz v8, :cond_7

    .line 377
    long-to-int v8, v2

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    .line 378
    const/4 v8, 0x1

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    .end local v0    # "buf":[C
    .end local v2    # "l":J
    .end local v4    # "len":I
    .end local v7    # "offset":I
    :catch_0
    move-exception v5

    .line 424
    .local v5, "nex":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Malformed numeric value \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 382
    .end local v5    # "nex":Ljava/lang/NumberFormatException;
    .restart local v0    # "buf":[C
    .restart local v2    # "l":J
    .restart local v4    # "len":I
    .restart local v7    # "offset":I
    :cond_6
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v2, v8

    if-gtz v8, :cond_7

    .line 383
    long-to-int v8, v2

    :try_start_1
    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    .line 384
    const/4 v8, 0x1

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    goto :goto_0

    .line 389
    :cond_7
    iput-wide v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    .line 390
    const/4 v8, 0x2

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    goto :goto_0

    .line 393
    .end local v2    # "l":J
    :cond_8
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v6

    .line 395
    .local v6, "numStr":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberNegative:Z

    invoke-static {v0, v7, v4, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/NumberInput;->inLongRange([CIIZ)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 397
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    .line 398
    const/4 v8, 0x2

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    goto :goto_0

    .line 402
    :cond_9
    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;

    .line 403
    const/4 v8, 0x4

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    goto :goto_0

    .line 414
    .end local v0    # "buf":[C
    .end local v4    # "len":I
    .end local v6    # "numStr":Ljava/lang/String;
    .end local v7    # "offset":I
    :cond_a
    if-ne p1, v10, :cond_b

    .line 415
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->contentsAsDecimal()Ljava/math/BigDecimal;

    move-result-object v8

    iput-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    .line 416
    const/16 v8, 0x10

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    goto/16 :goto_0

    .line 419
    :cond_b
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->contentsAsDouble()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    .line 420
    const/16 v8, 0x8

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected reportInvalidNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid numeric value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method protected reportOverflowInt()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of int ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method protected reportOverflowLong()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of long ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method protected reportUnexpectedNumberChar(ILjava/lang/String;)V
    .locals 3
    .param p1, "ch"    # I
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected character ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in numeric value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "msg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 574
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

    .line 576
    :cond_0
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method protected final reset(ZIII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .locals 2
    .param p1, "negative"    # Z
    .param p2, "intLen"    # I
    .param p3, "fractLen"    # I
    .param p4, "expLen"    # I

    .prologue
    const/4 v1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numberNegative:Z

    .line 158
    iput p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->mIntLength:I

    .line 159
    iput p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->mFractLength:I

    .line 160
    iput p4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->mExpLength:I

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    .line 162
    if-ge p3, v1, :cond_0

    if-ge p4, v1, :cond_0

    .line 163
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 166
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    goto :goto_0
.end method
