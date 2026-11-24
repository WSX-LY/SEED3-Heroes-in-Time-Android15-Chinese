.class public abstract Lcom/openfeint/internal/vendor/com/google/api/client/escape/UnicodeEscaper;
.super Lcom/openfeint/internal/vendor/com/google/api/client/escape/Escaper;
.source "UnicodeEscaper.java"


# static fields
.field private static final DEST_PAD:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/com/google/api/client/escape/Escaper;-><init>()V

    return-void
.end method

.method protected static codePointAt(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "end"    # I

    .prologue
    .line 246
    if-ge p1, p2, :cond_5

    .line 247
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .local v2, "index":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 248
    .local v0, "c1":C
    const v3, 0xd800

    if-lt v0, v3, :cond_0

    const v3, 0xdfff

    if-le v0, v3, :cond_1

    .line 259
    .end local v0    # "c1":C
    :cond_0
    :goto_0
    return v0

    .line 251
    .restart local v0    # "c1":C
    :cond_1
    const v3, 0xdbff

    if-gt v0, v3, :cond_4

    .line 253
    if-ne v2, p2, :cond_2

    .line 254
    neg-int v0, v0

    goto :goto_0

    .line 257
    :cond_2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 258
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 259
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_0

    .line 261
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expected low surrogate but got char \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 263
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 262
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 265
    .end local v1    # "c2":C
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected low surrogate character \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 267
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 266
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 270
    .end local v0    # "c1":C
    .end local v2    # "index":I
    .restart local p1    # "index":I
    :cond_5
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "Index exceeds specified range"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static growBuffer([CII)[C
    .locals 2
    .param p0, "dest"    # [C
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 279
    new-array v0, p2, [C

    .line 280
    .local v0, "copy":[C
    if-lez p1, :cond_0

    .line 281
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract escape(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract escape(I)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 13
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 157
    .local v5, "end":I
    invoke-static {}, Lcom/openfeint/internal/vendor/com/google/api/client/escape/Platform;->charBufferFromThreadLocal()[C

    move-result-object v2

    .line 158
    .local v2, "dest":[C
    const/4 v3, 0x0

    .line 159
    .local v3, "destIndex":I
    const/4 v10, 0x0

    .line 161
    .local v10, "unescapedChunkStart":I
    :goto_0
    if-lt p2, v5, :cond_2

    .line 199
    sub-int v0, v5, v10

    .line 200
    .local v0, "charsSkipped":I
    if-lez v0, :cond_1

    .line 201
    add-int v6, v3, v0

    .line 202
    .local v6, "endIndex":I
    array-length v11, v2

    if-ge v11, v6, :cond_0

    .line 203
    invoke-static {v2, v3, v6}, Lcom/openfeint/internal/vendor/com/google/api/client/escape/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 205
    :cond_0
    invoke-virtual {p1, v10, v5, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 206
    move v3, v6

    .line 208
    .end local v6    # "endIndex":I
    :cond_1
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v2, v12, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v11

    .line 162
    .end local v0    # "charsSkipped":I
    :cond_2
    invoke-static {p1, p2, v5}, Lcom/openfeint/internal/vendor/com/google/api/client/escape/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 163
    .local v1, "cp":I
    if-gez v1, :cond_3

    .line 164
    new-instance v11, Ljava/lang/IllegalArgumentException;

    .line 165
    const-string v12, "Trailing high surrogate at end of input"

    .line 164
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 170
    :cond_3
    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/com/google/api/client/escape/UnicodeEscaper;->escape(I)[C

    move-result-object v7

    .line 171
    .local v7, "escaped":[C
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x2

    :goto_1
    add-int v8, p2, v11

    .line 172
    .local v8, "nextIndex":I
    if-eqz v7, :cond_7

    .line 173
    sub-int v0, p2, v10

    .line 177
    .restart local v0    # "charsSkipped":I
    add-int v11, v3, v0

    array-length v12, v7

    add-int v9, v11, v12

    .line 178
    .local v9, "sizeNeeded":I
    array-length v11, v2

    if-ge v11, v9, :cond_4

    .line 179
    sub-int v11, v5, p2

    add-int/2addr v11, v9

    add-int/lit8 v4, v11, 0x20

    .line 180
    .local v4, "destLength":I
    invoke-static {v2, v3, v4}, Lcom/openfeint/internal/vendor/com/google/api/client/escape/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 183
    .end local v4    # "destLength":I
    :cond_4
    if-lez v0, :cond_5

    .line 184
    invoke-virtual {p1, v10, p2, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 185
    add-int/2addr v3, v0

    .line 187
    :cond_5
    array-length v11, v7

    if-lez v11, :cond_6

    .line 188
    const/4 v11, 0x0

    array-length v12, v7

    invoke-static {v7, v11, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    array-length v11, v7

    add-int/2addr v3, v11

    .line 192
    :cond_6
    move v10, v8

    .line 194
    .end local v0    # "charsSkipped":I
    .end local v9    # "sizeNeeded":I
    :cond_7
    invoke-virtual {p0, p1, v8, v5}, Lcom/openfeint/internal/vendor/com/google/api/client/escape/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result p2

    goto :goto_0

    .line 171
    .end local v8    # "nextIndex":I
    :cond_8
    const/4 v11, 0x1

    goto :goto_1
.end method

.method protected abstract nextEscapeIndex(Ljava/lang/CharSequence;II)I
.end method
