.class public Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;
.super Ljava/lang/Object;
.source "JsonLocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NA:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final _columnNr:I

.field final _lineNr:I

.field final _sourceRef:Ljava/lang/Object;

.field final _totalBytes:J

.field final _totalChars:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    const/4 v6, -0x1

    .line 29
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    const-string v1, "N/A"

    move-wide v4, v2

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->NA:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JII)V
    .locals 8
    .param p1, "srcRef"    # Ljava/lang/Object;
    .param p2, "totalChars"    # J
    .param p4, "lineNr"    # I
    .param p5, "colNr"    # I

    .prologue
    .line 49
    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JJII)V
    .locals 0
    .param p1, "sourceRef"    # Ljava/lang/Object;
        .annotation runtime Lcom/openfeint/internal/vendor/org/codehaus/jackson/annotate/JsonProperty;
            value = "sourceRef"
        .end annotation
    .end param
    .param p2, "totalBytes"    # J
        .annotation runtime Lcom/openfeint/internal/vendor/org/codehaus/jackson/annotate/JsonProperty;
            value = "byteOffset"
        .end annotation
    .end param
    .param p4, "totalChars"    # J
        .annotation runtime Lcom/openfeint/internal/vendor/org/codehaus/jackson/annotate/JsonProperty;
            value = "charOffset"
        .end annotation
    .end param
    .param p6, "lineNr"    # I
        .annotation runtime Lcom/openfeint/internal/vendor/org/codehaus/jackson/annotate/JsonProperty;
            value = "lineNr"
        .end annotation
    .end param
    .param p7, "columnNr"    # I
        .annotation runtime Lcom/openfeint/internal/vendor/org/codehaus/jackson/annotate/JsonProperty;
            value = "columnNr"
        .end annotation
    .end param
    .annotation runtime Lcom/openfeint/internal/vendor/org/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    .line 60
    iput-wide p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_totalBytes:J

    .line 61
    iput-wide p4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_totalChars:J

    .line 62
    iput p6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_lineNr:I

    .line 63
    iput p7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_columnNr:I

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    if-ne p1, p0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v1

    .line 134
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 135
    :cond_2
    instance-of v3, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 136
    check-cast v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    .line 138
    .local v0, "otherLoc":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 139
    iget-object v3, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 140
    :cond_4
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    iget-object v4, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 142
    :cond_5
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_lineNr:I

    iget v4, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_lineNr:I

    if-ne v3, v4, :cond_6

    .line 143
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_columnNr:I

    iget v4, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_columnNr:I

    if-ne v3, v4, :cond_6

    .line 144
    iget-wide v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_totalChars:J

    iget-wide v5, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_totalChars:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 145
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->getByteOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->getByteOffset()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    :cond_6
    move v1, v2

    .line 142
    goto :goto_0
.end method

.method public getByteOffset()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_totalBytes:J

    return-wide v0
.end method

.method public getCharOffset()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_totalChars:J

    return-wide v0
.end method

.method public getColumnNr()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_columnNr:I

    return v0
.end method

.method public getLineNr()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_lineNr:I

    return v0
.end method

.method public getSourceRef()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 123
    .local v0, "hash":I
    :goto_0
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_lineNr:I

    xor-int/2addr v0, v1

    .line 124
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_columnNr:I

    add-int/2addr v0, v1

    .line 125
    iget-wide v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_totalChars:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    .line 126
    iget-wide v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_totalBytes:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 127
    return v0

    .line 122
    .end local v0    # "hash":I
    :cond_0
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 107
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :goto_0
    const-string v1, "; line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_lineNr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ", column: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_columnNr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;->_sourceRef:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
