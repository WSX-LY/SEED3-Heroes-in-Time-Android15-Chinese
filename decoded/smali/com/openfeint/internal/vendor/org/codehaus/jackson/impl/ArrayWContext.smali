.class final Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ArrayWContext;
.super Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;
.source "JsonWriteContext.java"


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;)V
    .locals 1
    .param p1, "parent"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;-><init>(ILcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;)V

    .line 155
    return-void
.end method


# virtual methods
.method protected appendDesc(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 173
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ArrayWContext;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    return-void
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeFieldName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v0, 0x4

    return v0
.end method

.method public writeValue()I
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ArrayWContext;->_index:I

    .line 167
    .local v0, "ix":I
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ArrayWContext;->_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ArrayWContext;->_index:I

    .line 168
    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
