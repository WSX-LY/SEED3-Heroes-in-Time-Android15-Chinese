.class public Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
.super Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
.source "JsonGenerationException.java"


# static fields
.field static final serialVersionUID:J = 0x7bL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method
