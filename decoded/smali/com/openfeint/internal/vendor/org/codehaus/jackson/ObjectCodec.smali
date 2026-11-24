.class public abstract Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;
.super Ljava/lang/Object;
.source "ObjectCodec.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createArrayNode()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;
.end method

.method public abstract createObjectNode()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;
.end method

.method public abstract readTree(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract readValue(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;",
            "Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract readValue(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;",
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
.end method

.method public abstract readValue(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;",
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
.end method

.method public abstract treeAsTokens(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
.end method

.method public abstract treeToValue(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;",
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
.end method

.method public abstract writeTree(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonNode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract writeValue(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method
