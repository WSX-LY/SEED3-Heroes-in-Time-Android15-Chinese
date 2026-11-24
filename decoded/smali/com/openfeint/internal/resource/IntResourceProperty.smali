.class public abstract Lcom/openfeint/internal/resource/IntResourceProperty;
.super Lcom/openfeint/internal/resource/PrimitiveResourceProperty;
.source "IntResourceProperty.java"


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
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/resource/IntResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/IntResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;I)V

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
    .line 30
    invoke-virtual {p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/resource/IntResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    .line 32
    return-void
.end method

.method public abstract get(Lcom/openfeint/internal/resource/Resource;)I
.end method

.method public parse(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V
    .locals 2
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "jp"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    :try_start_0
    invoke-virtual {p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getIntValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 26
    .local v1, "value":I
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/openfeint/internal/resource/IntResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;I)V

    .line 27
    return-void

    .line 23
    .end local v1    # "value":I
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1    # "value":I
    goto :goto_0
.end method

.method public abstract set(Lcom/openfeint/internal/resource/Resource;I)V
.end method
