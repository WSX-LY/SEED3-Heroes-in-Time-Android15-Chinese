.class public abstract Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
.super Ljava/lang/Object;
.source "JsonGenerator.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;
    }
.end annotation


# instance fields
.field protected _cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public configure(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .locals 0
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 191
    if-eqz p2, :cond_0

    .line 192
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->enable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;

    .line 196
    :goto_0
    return-object p0

    .line 194
    :cond_0
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->disable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;

    goto :goto_0
.end method

.method public abstract copyCurrentEvent(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract copyCurrentStructure(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract disable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
.end method

.method public disableFeature(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->disable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;

    return-void
.end method

.method public abstract enable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
.end method

.method public enableFeature(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->enable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;

    return-void
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCodec()Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;
.end method

.method public abstract getOutputContext()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonStreamContext;
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Z
.end method

.method public isFeatureEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    return v0
.end method

.method public abstract setCodec(Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
.end method

.method public setFeature(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;Z)V
    .locals 0
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->configure(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;

    return-void
.end method

.method public setPrettyPrinter(Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .locals 0
    .param p1, "pp"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    .line 261
    return-object p0
.end method

.method public abstract useDefaultPrettyPrinter()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
.end method

.method public final writeArrayFieldStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 742
    return-void
.end method

.method public abstract writeBinary(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public writeBinary([B)V
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeBinary(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;[BII)V

    .line 441
    return-void
.end method

.method public writeBinary([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeBinary(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;[BII)V

    .line 429
    return-void
.end method

.method public final writeBinaryField(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 720
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeBinary([B)V

    .line 722
    return-void
.end method

.method public abstract writeBoolean(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public final writeBooleanField(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    .line 615
    return-void
.end method

.method public abstract writeEndArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeEndObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeFieldName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeNull()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public final writeNullField(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 628
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 630
    return-void
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

.method public abstract writeNumber(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;,
            Ljava/lang/UnsupportedOperationException;
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

.method public abstract writeNumber(Ljava/math/BigInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public final writeNumberField(Ljava/lang/String;D)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0, p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    .line 675
    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;F)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 688
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeNumber(F)V

    .line 690
    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;I)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 643
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    .line 645
    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;J)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 658
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0, p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    .line 660
    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    .line 706
    return-void
.end method

.method public abstract writeObject(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public final writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "pojo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 776
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    .line 778
    return-void
.end method

.method public final writeObjectFieldStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 760
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 762
    return-void
.end method

.method public abstract writeRaw(C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRaw(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRaw(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRaw([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRawValue(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRawValue(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRawValue([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeStartArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeStartObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeString(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeString([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public final writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public abstract writeTree(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method
