.class public abstract Lcom/openfeint/internal/resource/FloatResourceProperty;
.super Lcom/openfeint/internal/resource/PrimitiveResourceProperty;
.source "FloatResourceProperty.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/resource/Resource;)V
    .locals 1
    .param p1, "lhs"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "rhs"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 15
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/resource/FloatResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/FloatResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;F)V

    .line 16
    return-void
.end method

.method public generate(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;Ljava/lang/String;)V
    .locals 1
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "generator"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/resource/FloatResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeNumber(F)V

    .line 30
    return-void
.end method

.method public abstract get(Lcom/openfeint/internal/resource/Resource;)F
.end method

.method public parse(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V
    .locals 1
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "jp"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    :try_start_0
    invoke-virtual {p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/FloatResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;F)V
    :try_end_0
    .catch Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract set(Lcom/openfeint/internal/resource/Resource;F)V
.end method
