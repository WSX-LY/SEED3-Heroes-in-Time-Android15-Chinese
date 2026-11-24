.class public abstract Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
.super Ljava/lang/Object;
.source "JavaType.java"


# instance fields
.field protected final _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected _hashCode:I

.field protected _typeHandler:Ljava/lang/Object;

.field protected _valueHandler:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_hashCode:I

    .line 66
    return-void
.end method


# virtual methods
.method protected _assertSubclass(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not assignable to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    return-void
.end method

.method protected abstract _narrow(Ljava/lang/Class;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation
.end method

.method protected _widen(Ljava/lang/Class;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_narrow(Ljava/lang/Class;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public containedType(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method public containedTypeCount()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public containedTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final forcedNarrowBy(Ljava/lang/Class;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    .line 113
    .end local p0    # "this":Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
    :goto_0
    return-object p0

    .line 106
    .restart local p0    # "this":Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_narrow(Ljava/lang/Class;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 107
    .local v0, "result":Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->setValueHandler(Ljava/lang/Object;)V

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->setTypeHandler(Ljava/lang/Object;)V

    :cond_2
    move-object p0, v0

    .line 113
    goto :goto_0
.end method

.method public getContentType()Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyType()Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRawClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public getTypeHandler()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueHandler()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasRawClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_hashCode:I

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    return v0
.end method

.method public isArrayType()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public isConcrete()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 210
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 211
    .local v0, "mod":I
    and-int/lit16 v2, v0, 0x600

    if-nez v2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v1

    .line 217
    :cond_1
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract isContainerType()Z
.end method

.method public final isEnumType()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method

.method public final isFinal()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public final isInterface()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public final isPrimitive()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isThrowable()Z
    .locals 2

    .prologue
    .line 224
    const-class v0, Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final narrowBy(Ljava/lang/Class;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    .line 91
    .end local p0    # "this":Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
    :goto_0
    return-object p0

    .line 83
    .restart local p0    # "this":Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
    :cond_0
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_assertSubclass(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_narrow(Ljava/lang/Class;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 85
    .local v0, "result":Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->setValueHandler(Ljava/lang/Object;)V

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->setTypeHandler(Ljava/lang/Object;)V

    :cond_2
    move-object p0, v0

    .line 91
    goto :goto_0
.end method

.method public abstract narrowContentsBy(Ljava/lang/Class;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation
.end method

.method public setTypeHandler(Ljava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 172
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to reset type handler for type ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    const-string v2, "]; old handler of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new handler of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_typeHandler:Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public setValueHandler(Ljava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 157
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to reset value handler for type ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    const-string v2, "]; old handler of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new handler of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_valueHandler:Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public abstract toCanonical()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public final widenBy(Ljava/lang/Class;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 133
    .end local p0    # "this":Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
    :goto_0
    return-object p0

    .line 132
    .restart local p0    # "this":Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_assertSubclass(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;->_widen(Ljava/lang/Class;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    goto :goto_0
.end method
