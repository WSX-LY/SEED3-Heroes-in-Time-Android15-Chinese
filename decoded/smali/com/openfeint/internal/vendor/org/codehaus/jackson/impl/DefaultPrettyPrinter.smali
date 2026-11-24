.class public Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"

# interfaces
.implements Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$FixedSpaceIndenter;,
        Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;,
        Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$NopIndenter;
    }
.end annotation


# instance fields
.field protected _arrayIndenter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

.field protected _nesting:I

.field protected _objectIndenter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

.field protected _spacesInObjectEntries:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$FixedSpaceIndenter;

    invoke-direct {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$FixedSpaceIndenter;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_arrayIndenter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

    .line 40
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;

    invoke-direct {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_objectIndenter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_spacesInObjectEntries:Z

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_nesting:I

    .line 65
    return-void
.end method


# virtual methods
.method public beforeArrayValues(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "jg"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_arrayIndenter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;I)V

    .line 167
    return-void
.end method

.method public beforeObjectEntries(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "jg"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_objectIndenter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;I)V

    .line 103
    return-void
.end method

.method public indentArraysWith(Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;)V
    .locals 0
    .param p1, "i"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

    .prologue
    .line 69
    if-nez p1, :cond_0

    new-instance p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$NopIndenter;

    .end local p1    # "i":Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;
    invoke-direct {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$NopIndenter;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_arrayIndenter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

    .line 70
    return-void
.end method

.method public indentObjectsWith(Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;)V
    .locals 0
    .param p1, "i"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

    .prologue
    .line 74
    if-nez p1, :cond_0

    new-instance p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$NopIndenter;

    .end local p1    # "i":Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;
    invoke-direct {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$NopIndenter;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_objectIndenter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

    .line 75
    return-void
.end method

.method public spacesInObjectEntries(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_spacesInObjectEntries:Z

    return-void
.end method

.method public writeArrayValueSeparator(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "jg"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 181
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 182
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_arrayIndenter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;I)V

    .line 183
    return-void
.end method

.method public writeEndArray(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;I)V
    .locals 2
    .param p1, "jg"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .param p2, "nrOfValues"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_arrayIndenter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_nesting:I

    .line 191
    :cond_0
    if-lez p2, :cond_1

    .line 192
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_arrayIndenter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;I)V

    .line 196
    :goto_0
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 197
    return-void

    .line 194
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    goto :goto_0
.end method

.method public writeEndObject(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;I)V
    .locals 2
    .param p1, "jg"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .param p2, "nrOfEntries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_objectIndenter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_nesting:I

    .line 146
    :cond_0
    if-lez p2, :cond_1

    .line 147
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_objectIndenter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;I)V

    .line 151
    :goto_0
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 152
    return-void

    .line 149
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    goto :goto_0
.end method

.method public writeObjectEntrySeparator(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "jg"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 136
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 137
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_objectIndenter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;->writeIndentation(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;I)V

    .line 138
    return-void
.end method

.method public writeObjectFieldValueSeparator(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_spacesInObjectEntries:Z

    if-eqz v0, :cond_0

    .line 118
    const-string v0, " : "

    invoke-virtual {p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    goto :goto_0
.end method

.method public writeRootValueSeparator(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 87
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 88
    return-void
.end method

.method public writeStartArray(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_arrayIndenter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_nesting:I

    .line 160
    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 161
    return-void
.end method

.method public writeStartObject(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 93
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 94
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_objectIndenter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;->_nesting:I

    .line 97
    :cond_0
    return-void
.end method
