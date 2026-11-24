.class public abstract Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;,
        Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;
    }
.end annotation


# static fields
.field private static final MAX_BYTE_I:I = 0x7f

.field private static final MAX_SHORT_I:I = 0x7fff

.field private static final MIN_BYTE_I:I = -0x80

.field private static final MIN_SHORT_I:I = -0x8000


# instance fields
.field protected _currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

.field protected _features:I

.field protected _lastClearedToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected _constructError(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 953
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCurrentLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    return-object v0
.end method

.method public clearCurrentToken()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->_lastClearedToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 508
    :cond_0
    return-void
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public configure(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .locals 0
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 341
    if-eqz p2, :cond_0

    .line 342
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->enableFeature(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)V

    .line 346
    :goto_0
    return-object p0

    .line 344
    :cond_0
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->disableFeature(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)V

    goto :goto_0
.end method

.method public disable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .locals 2
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 329
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->_features:I

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->_features:I

    .line 330
    return-object p0
.end method

.method public disableFeature(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->disable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    return-void
.end method

.method public enable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .locals 2
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 317
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->_features:I

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->_features:I

    .line 318
    return-object p0
.end method

.method public enableFeature(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->enable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    return-void
.end method

.method public abstract getBigIntegerValue()Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getBinaryValue()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 852
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getBinaryValue(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract getBinaryValue(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getBooleanValue()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 792
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 793
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 794
    :cond_1
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current token ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not of boolean type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCurrentLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v0
.end method

.method public getByteValue()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    .line 663
    .local v0, "value":I
    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_1

    .line 664
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric value ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of Java byte"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->_constructError(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    move-result-object v1

    throw v1

    .line 666
    :cond_1
    int-to-byte v1, v0

    return v1
.end method

.method public abstract getCodec()Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;
.end method

.method public abstract getCurrentLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;
.end method

.method public abstract getCurrentName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getCurrentToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public abstract getDecimalValue()Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getDoubleValue()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 812
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getFloatValue()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getIntValue()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getLastClearedToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->_lastClearedToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public abstract getLongValue()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getNumberType()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getNumberValue()Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getParsingContext()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonStreamContext;
.end method

.method public getShortValue()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    .line 686
    .local v0, "value":I
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_1

    .line 687
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric value ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of Java short"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->_constructError(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    move-result-object v1

    throw v1

    .line 689
    :cond_1
    int-to-short v1, v0

    return v1
.end method

.method public abstract getText()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getTextCharacters()[C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getTextLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getTextOffset()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getTokenLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;
.end method

.method public hasCurrentToken()Z
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->_currToken:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isClosed()Z
.end method

.method public isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z
    .locals 2
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 356
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->_features:I

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->getMask()I

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

.method public final isFeatureEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    return v0
.end method

.method public abstract nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public nextValue()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 421
    .local v0, "t":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 424
    :cond_0
    return-object v0
.end method

.method public readValueAs(Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/TypeReference",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 914
    .local p1, "valueTypeRef":Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/TypeReference;, "Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/TypeReference<*>;"
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCodec()Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    move-result-object v0

    .line 915
    .local v0, "codec":Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;
    if-nez v0, :cond_0

    .line 916
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 921
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;->readValue(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public readValueAs(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 885
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCodec()Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    move-result-object v0

    .line 886
    .local v0, "codec":Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;
    if-nez v0, :cond_0

    .line 887
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 889
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;->readValue(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public readValueAsTree()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCodec()Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    move-result-object v0

    .line 935
    .local v0, "codec":Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;
    if-nez v0, :cond_0

    .line 936
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ObjectCodec defined for the parser, can not deserialize JSON into JsonNode tree"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 938
    :cond_0
    invoke-virtual {v0, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;->readTree(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;

    move-result-object v1

    return-object v1
.end method

.method public abstract setCodec(Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;)V
.end method

.method public setFeature(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;Z)V
    .locals 0
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 361
    invoke-virtual {p0, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->configure(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    return-void
.end method

.method public abstract skipChildren()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method
