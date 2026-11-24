.class public Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;
.super Ljava/io/IOException;
.source "JsonProcessingException.java"


# static fields
.field static final serialVersionUID:J = 0x7bL


# instance fields
.field protected mLocation:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;
    .param p3, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    if-eqz p3, :cond_0

    .line 31
    invoke-virtual {p0, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 33
    :cond_0
    iput-object p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;->mLocation:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    .line 34
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0, v0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;->mLocation:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "msg":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 69
    const-string v1, "N/A"

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;->getLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v0

    .line 72
    .local v0, "loc":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;
    if-eqz v0, :cond_1

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
