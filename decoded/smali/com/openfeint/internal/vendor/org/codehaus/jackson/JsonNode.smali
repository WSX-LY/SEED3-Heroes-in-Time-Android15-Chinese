.class public abstract Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;
.super Ljava/lang/Object;
.source "JsonNode.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;",
        ">;"
    }
.end annotation


# static fields
.field static final NO_NODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end field

.field static final NO_STRINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;->NO_NODES:Ljava/util/List;

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;->NO_STRINGS:Ljava/util/List;

    .line 35
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract asToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public get(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getBinaryValue()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .prologue
    .line 230
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getElementValue(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;->get(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;->NO_NODES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getFieldNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;->NO_STRINGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final getFieldValue(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .prologue
    .line 229
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getNumberType()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$NumberType;
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPath(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;->path(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public final getPath(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;->path(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public getTextValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getValueAsText()Ljava/lang/String;
.end method

.method public isArray()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public isBigDecimal()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public isBigInteger()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public isBoolean()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public isContainerNode()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public isDouble()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public isFloatingPointNumber()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public isInt()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public isIntegralNumber()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public isLong()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public isMissingNode()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public isNumber()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public isObject()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public isPojo()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public isTextual()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public isValueNode()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;->getElements()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract path(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;
.end method

.method public abstract path(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;
.end method

.method public size()I
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract traverse()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
.end method

.method public abstract writeTo(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method
