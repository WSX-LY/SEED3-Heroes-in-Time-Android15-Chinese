.class public abstract Lcom/openfeint/internal/resource/BooleanResourceProperty;
.super Lcom/openfeint/internal/resource/PrimitiveResourceProperty;
.source "BooleanResourceProperty.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/resource/Resource;)V
    .locals 1
    .param p1, "lhs"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "rhs"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 16
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/resource/BooleanResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/BooleanResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Z)V

    .line 17
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
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/resource/BooleanResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    .line 30
    return-void
.end method

.method public abstract get(Lcom/openfeint/internal/resource/Resource;)Z
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
    .line 21
    invoke-virtual {p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/BooleanResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Z)V

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/BooleanResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Z)V

    goto :goto_0
.end method

.method public abstract set(Lcom/openfeint/internal/resource/Resource;Z)V
.end method
