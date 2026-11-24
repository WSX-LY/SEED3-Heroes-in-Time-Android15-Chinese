.class final Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ObjectWContext;
.super Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;
.source "JsonWriteContext.java"


# instance fields
.field protected _currentName:Ljava/lang/String;

.field protected _expectValue:Z


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;)V
    .locals 1
    .param p1, "parent"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    .prologue
    .line 195
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;-><init>(ILcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;)V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ObjectWContext;->_expectValue:Z

    .line 198
    return-void
.end method


# virtual methods
.method protected appendDesc(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v1, 0x22

    .line 223
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    :goto_0
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    return-void

    .line 230
    :cond_0
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    return-object v0
.end method

.method public writeFieldName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x4

    .line 208
    :goto_0
    return v0

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    .line 208
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ObjectWContext;->_index:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeValue()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x5

    .line 218
    :goto_0
    return v0

    .line 216
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ObjectWContext;->_currentName:Ljava/lang/String;

    .line 217
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ObjectWContext;->_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ObjectWContext;->_index:I

    .line 218
    const/4 v0, 0x2

    goto :goto_0
.end method
