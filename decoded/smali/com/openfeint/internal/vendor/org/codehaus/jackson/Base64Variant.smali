.class public final Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;
.super Ljava/lang/Object;
.source "Base64Variant.java"


# static fields
.field public static final BASE64_VALUE_INVALID:I = -0x1

.field public static final BASE64_VALUE_PADDING:I = -0x2

.field static final PADDING_CHAR_NONE:C


# instance fields
.field private final _asciiToBase64:[I

.field private final _base64ToAsciiB:[B

.field private final _base64ToAsciiC:[C

.field final _maxLineLength:I

.field final _name:Ljava/lang/String;

.field final _paddingChar:C

.field final _usesPadding:Z


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;Ljava/lang/String;I)V
    .locals 6
    .param p1, "base"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "maxLineLength"    # I

    .prologue
    .line 154
    iget-boolean v3, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    iget-char v4, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;Ljava/lang/String;ZCI)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;Ljava/lang/String;ZCI)V
    .locals 6
    .param p1, "base"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "usesPadding"    # Z
    .param p4, "paddingChar"    # C
    .param p5, "maxLineLength"    # I

    .prologue
    const/16 v4, 0x40

    const/4 v5, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/16 v3, 0x80

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    .line 72
    new-array v3, v4, [C

    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    .line 78
    new-array v3, v4, [B

    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    .line 164
    iput-object p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;

    .line 165
    iget-object v0, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    .line 166
    .local v0, "srcB":[B
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    array-length v4, v0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iget-object v1, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    .line 168
    .local v1, "srcC":[C
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget-object v2, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    .line 170
    .local v2, "srcV":[I
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    array-length v4, v2

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    iput-boolean p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    .line 173
    iput-char p4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    .line 174
    iput p5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_maxLineLength:I

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZCI)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "base64Alphabet"    # Ljava/lang/String;
    .param p3, "usesPadding"    # Z
    .param p4, "paddingChar"    # C
    .param p5, "maxLineLength"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x40

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/16 v3, 0x80

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    .line 72
    new-array v3, v4, [C

    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    .line 78
    new-array v3, v4, [B

    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    .line 119
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;

    .line 120
    iput-boolean p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    .line 121
    iput-char p4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    .line 122
    iput p5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_maxLineLength:I

    .line 127
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 128
    .local v1, "alphaLen":I
    if-eq v1, v4, :cond_0

    .line 129
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Base64Alphabet length must be exactly 64 (was "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    invoke-virtual {p2, v5, v1, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 134
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 135
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_2

    .line 142
    if-eqz p3, :cond_1

    .line 143
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    const/4 v4, -0x2

    aput v4, v3, p4

    .line 145
    :cond_1
    return-void

    .line 136
    :cond_2
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    aget-char v0, v3, v2

    .line 137
    .local v0, "alpha":C
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    int-to-byte v4, v0

    aput-byte v4, v3, v2

    .line 138
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    aput v2, v3, v0

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public decodeBase64Byte(B)I
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 215
    move v0, p1

    .line 216
    .local v0, "ch":I
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public decodeBase64Char(C)I
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 204
    move v0, p1

    .line 205
    .local v0, "ch":I
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public decodeBase64Char(I)I
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 210
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public encodeBase64BitsAsByte(I)B
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public encodeBase64BitsAsChar(I)C
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public encodeBase64Chunk(I[BI)I
    .locals 3
    .param p1, "b24"    # I
    .param p2, "buffer"    # [B
    .param p3, "ptr"    # I

    .prologue
    .line 305
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "ptr":I
    .local v0, "ptr":I
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, p3

    .line 306
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "ptr":I
    .restart local p3    # "ptr":I
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, v0

    .line 307
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "ptr":I
    .restart local v0    # "ptr":I
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, p3

    .line 308
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "ptr":I
    .restart local p3    # "ptr":I
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    and-int/lit8 v2, p1, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, v0

    .line 309
    return p3
.end method

.method public encodeBase64Chunk(I[CI)I
    .locals 3
    .param p1, "b24"    # I
    .param p2, "buffer"    # [C
    .param p3, "ptr"    # I

    .prologue
    .line 239
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "ptr":I
    .local v0, "ptr":I
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, p3

    .line 240
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "ptr":I
    .restart local p3    # "ptr":I
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 241
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "ptr":I
    .restart local v0    # "ptr":I
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, p3

    .line 242
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "ptr":I
    .restart local p3    # "ptr":I
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    and-int/lit8 v2, p1, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 243
    return p3
.end method

.method public encodeBase64Chunk(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "b24"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    and-int/lit8 v1, p2, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    return-void
.end method

.method public encodeBase64Partial(II[BI)I
    .locals 5
    .param p1, "bits"    # I
    .param p2, "outputBytes"    # I
    .param p3, "buffer"    # [B
    .param p4, "outPtr"    # I

    .prologue
    const/4 v4, 0x2

    .line 322
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .local v0, "outPtr":I
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0x12

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, p4

    .line 323
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v0

    .line 324
    iget-boolean v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    if-eqz v2, :cond_2

    .line 325
    iget-char v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    int-to-byte v1, v2

    .line 326
    .local v1, "pb":B
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    if-ne p2, v4, :cond_1

    .line 327
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    .line 326
    :goto_0
    aput-byte v2, p3, p4

    .line 328
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    aput-byte v1, p3, v0

    .line 334
    .end local v1    # "pb":B
    :cond_0
    :goto_1
    return p4

    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    .restart local v1    # "pb":B
    :cond_1
    move v2, v1

    .line 327
    goto :goto_0

    .line 330
    .end local v0    # "outPtr":I
    .end local v1    # "pb":B
    .restart local p4    # "outPtr":I
    :cond_2
    if-ne p2, v4, :cond_0

    .line 331
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, p4

    move p4, v0

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    goto :goto_1
.end method

.method public encodeBase64Partial(II[CI)I
    .locals 4
    .param p1, "bits"    # I
    .param p2, "outputBytes"    # I
    .param p3, "buffer"    # [C
    .param p4, "outPtr"    # I

    .prologue
    const/4 v3, 0x2

    .line 264
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .local v0, "outPtr":I
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p3, p4

    .line 265
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p3, v0

    .line 266
    iget-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    if-eqz v1, :cond_2

    .line 267
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    if-ne p2, v3, :cond_1

    .line 268
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    .line 267
    :goto_0
    aput-char v1, p3, p4

    .line 269
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    iget-char v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    aput-char v1, p3, v0

    .line 275
    :cond_0
    :goto_1
    return p4

    .line 268
    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    :cond_1
    iget-char v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    goto :goto_0

    .line 271
    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    :cond_2
    if-ne p2, v3, :cond_0

    .line 272
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p3, p4

    move p4, v0

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    goto :goto_1
.end method

.method public encodeBase64Partial(Ljava/lang/StringBuilder;II)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "bits"    # I
    .param p3, "outputBytes"    # I

    .prologue
    const/4 v2, 0x2

    .line 280
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    if-eqz v0, :cond_2

    .line 283
    if-ne p3, v2, :cond_1

    .line 284
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    .line 283
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    iget-char v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    :cond_0
    :goto_1
    return-void

    .line 284
    :cond_1
    iget-char v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    goto :goto_0

    .line 287
    :cond_2
    if-ne p3, v2, :cond_0

    .line 288
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getMaxLineLength()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_maxLineLength:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPaddingByte()B
    .locals 1

    .prologue
    .line 189
    iget-char v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    int-to-byte v0, v0

    return v0
.end method

.method public getPaddingChar()C
    .locals 1

    .prologue
    .line 188
    iget-char v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public usesPadding()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_usesPadding:Z

    return v0
.end method

.method public usesPaddingChar(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 186
    iget-char v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public usesPaddingChar(I)Z
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 187
    iget-char v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
