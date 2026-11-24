.class public final Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;
.super Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonStreamContext;
.source "JsonReadContext.java"


# instance fields
.field _child:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

.field protected _columnNr:I

.field protected _currentName:Ljava/lang/String;

.field protected _lineNr:I

.field protected final _parent:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;III)V
    .locals 1
    .param p1, "parent"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;
    .param p2, "type"    # I
    .param p3, "lineNr"    # I
    .param p4, "colNr"    # I

    .prologue
    .line 55
    invoke-direct {p0, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonStreamContext;-><init>(I)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_child:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .line 56
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_parent:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .line 57
    iput p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    .line 58
    iput p4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    .line 59
    return-void
.end method

.method public static createRootContext(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;
    .locals 3
    .param p0, "lineNr"    # I
    .param p1, "colNr"    # I

    .prologue
    .line 74
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;III)V

    return-object v0
.end method


# virtual methods
.method public final createChildArrayContext(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;
    .locals 2
    .param p1, "lineNr"    # I
    .param p2, "colNr"    # I

    .prologue
    const/4 v1, 0x1

    .line 79
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_child:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .line 80
    .local v0, "ctxt":Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .end local v0    # "ctxt":Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;
    invoke-direct {v0, p0, v1, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;III)V

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_child:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .line 84
    :goto_0
    return-object v0

    .line 83
    .restart local v0    # "ctxt":Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;
    :cond_0
    invoke-virtual {v0, v1, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->reset(III)V

    goto :goto_0
.end method

.method public final createChildObjectContext(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;
    .locals 2
    .param p1, "lineNr"    # I
    .param p2, "colNr"    # I

    .prologue
    const/4 v1, 0x2

    .line 89
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_child:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .line 90
    .local v0, "ctxt":Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .end local v0    # "ctxt":Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;
    invoke-direct {v0, p0, v1, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;III)V

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_child:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    .line 94
    :goto_0
    return-object v0

    .line 93
    .restart local v0    # "ctxt":Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;
    :cond_0
    invoke-virtual {v0, v1, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->reset(III)V

    goto :goto_0
.end method

.method public final expectComma()Z
    .locals 2

    .prologue
    .line 139
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_index:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_index:I

    .line 140
    .local v0, "ix":I
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_type:I

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getParent()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_parent:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;

    return-object v0
.end method

.method public final getStartLocation(Ljava/lang/Object;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;
    .locals 6
    .param p1, "srcRef"    # Ljava/lang/Object;

    .prologue
    .line 122
    const-wide/16 v2, -0x1

    .line 124
    .local v2, "totalChars":J
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method protected final reset(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "lineNr"    # I
    .param p3, "colNr"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_type:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_index:I

    .line 65
    iput p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    .line 66
    iput p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setCurrentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x5d

    const/16 v2, 0x22

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_type:I

    packed-switch v1, :pswitch_data_0

    .line 182
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 163
    :pswitch_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    :pswitch_1
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 171
    :pswitch_2
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 177
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
