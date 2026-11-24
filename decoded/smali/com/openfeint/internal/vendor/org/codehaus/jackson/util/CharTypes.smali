.class public final Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;
.super Ljava/lang/Object;
.source "CharTypes.java"


# static fields
.field static final HEX_CHARS:[C

.field static final sHexValues:[I

.field static final sInputCodes:[I

.field static final sInputCodesComment:[I

.field static final sInputCodesJsNames:[I

.field static final sInputCodesUtf8:[I

.field static final sInputCodesUtf8JsNames:[I

.field static final sOutputEscapes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/4 v9, -0x1

    const/16 v8, 0x80

    const/16 v7, 0x100

    const/4 v6, 0x0

    .line 14
    const-string v4, "0123456789ABCDEF"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    sput-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->HEX_CHARS:[C

    .line 26
    new-array v3, v7, [I

    .line 28
    .local v3, "table":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v4, 0x20

    if-lt v2, v4, :cond_0

    .line 32
    const/16 v4, 0x22

    const/4 v5, 0x1

    aput v5, v3, v4

    .line 33
    const/16 v4, 0x5c

    const/4 v5, 0x1

    aput v5, v3, v4

    .line 34
    sput-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    .line 43
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    array-length v4, v4

    new-array v3, v4, [I

    .line 44
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    const/16 v0, 0x80

    .local v0, "c":I
    :goto_1
    if-lt v0, v7, :cond_1

    .line 62
    sput-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodesUtf8:[I

    .line 75
    new-array v3, v7, [I

    .line 77
    invoke-static {v3, v9}, Ljava/util/Arrays;->fill([II)V

    .line 79
    const/16 v2, 0x21

    :goto_2
    if-lt v2, v7, :cond_5

    .line 84
    sput-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodesJsNames:[I

    .line 94
    new-array v3, v7, [I

    .line 96
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodesJsNames:[I

    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodesJsNames:[I

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    invoke-static {v3, v8, v8, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 98
    sput-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodesUtf8JsNames:[I

    .line 105
    new-array v4, v7, [I

    sput-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    .line 108
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodesUtf8:[I

    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    invoke-static {v4, v8, v5, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    const/16 v5, 0x20

    invoke-static {v4, v6, v5, v9}, Ljava/util/Arrays;->fill([IIII)V

    .line 112
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    const/16 v5, 0x9

    aput v6, v4, v5

    .line 113
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    aput v10, v4, v10

    .line 114
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    const/16 v5, 0xd

    const/16 v6, 0xd

    aput v6, v4, v5

    .line 115
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    const/16 v5, 0x2a

    const/16 v6, 0x2a

    aput v6, v4, v5

    .line 124
    new-array v3, v7, [I

    .line 126
    const/4 v2, 0x0

    :goto_3
    const/16 v4, 0x20

    if-lt v2, v4, :cond_7

    .line 132
    const/16 v4, 0x22

    const/16 v5, 0x22

    aput v5, v3, v4

    .line 133
    const/16 v4, 0x5c

    const/16 v5, 0x5c

    aput v5, v3, v4

    .line 135
    const/16 v4, 0x8

    const/16 v5, 0x62

    aput v5, v3, v4

    .line 136
    const/16 v4, 0x9

    const/16 v5, 0x74

    aput v5, v3, v4

    .line 137
    const/16 v4, 0xc

    const/16 v5, 0x66

    aput v5, v3, v4

    .line 138
    const/16 v4, 0x6e

    aput v4, v3, v10

    .line 139
    const/16 v4, 0xd

    const/16 v5, 0x72

    aput v5, v3, v4

    .line 140
    sput-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sOutputEscapes:[I

    .line 148
    new-array v4, v8, [I

    sput-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sHexValues:[I

    .line 150
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sHexValues:[I

    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([II)V

    .line 151
    const/4 v2, 0x0

    :goto_4
    if-lt v2, v10, :cond_8

    .line 154
    const/4 v2, 0x0

    :goto_5
    const/4 v4, 0x6

    if-lt v2, v4, :cond_9

    .line 12
    return-void

    .line 29
    .end local v0    # "c":I
    :cond_0
    aput v9, v3, v2

    .line 28
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 49
    .restart local v0    # "c":I
    :cond_1
    and-int/lit16 v4, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_2

    .line 50
    const/4 v1, 0x2

    .line 60
    .local v1, "code":I
    :goto_6
    aput v1, v3, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 51
    .end local v1    # "code":I
    :cond_2
    and-int/lit16 v4, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v4, v5, :cond_3

    .line 52
    const/4 v1, 0x3

    .restart local v1    # "code":I
    goto :goto_6

    .line 53
    .end local v1    # "code":I
    :cond_3
    and-int/lit16 v4, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v4, v5, :cond_4

    .line 55
    const/4 v1, 0x4

    .restart local v1    # "code":I
    goto :goto_6

    .line 58
    .end local v1    # "code":I
    :cond_4
    const/4 v1, -0x1

    .restart local v1    # "code":I
    goto :goto_6

    .line 80
    .end local v1    # "code":I
    :cond_5
    int-to-char v4, v2

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 81
    aput v6, v3, v2

    .line 79
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 127
    :cond_7
    add-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    aput v4, v3, v2

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 152
    :cond_8
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sHexValues:[I

    add-int/lit8 v5, v2, 0x30

    aput v2, v4, v5

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 155
    :cond_9
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sHexValues:[I

    add-int/lit8 v5, v2, 0x61

    add-int/lit8 v6, v2, 0xa

    aput v6, v4, v5

    .line 156
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sHexValues:[I

    add-int/lit8 v5, v2, 0x41

    add-int/lit8 v6, v2, 0xa

    aput v6, v4, v5

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 10
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x30

    .line 176
    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sOutputEscapes:[I

    .line 177
    .local v2, "escCodes":[I
    array-length v3, v2

    .line 178
    .local v3, "escLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "len":I
    :goto_0
    if-lt v4, v5, :cond_0

    .line 198
    return-void

    .line 179
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 180
    .local v0, "c":C
    if-ge v0, v3, :cond_1

    aget v7, v2, v0

    if-nez v7, :cond_2

    .line 181
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    :cond_2
    const/16 v7, 0x5c

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    aget v1, v2, v0

    .line 186
    .local v1, "escCode":I
    if-gez v1, :cond_3

    .line 188
    const/16 v7, 0x75

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    add-int/lit8 v7, v1, 0x1

    neg-int v6, v7

    .line 192
    .local v6, "value":I
    sget-object v7, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->HEX_CHARS:[C

    shr-int/lit8 v8, v6, 0x4

    aget-char v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    sget-object v7, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->HEX_CHARS:[C

    and-int/lit8 v8, v6, 0xf

    aget-char v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 195
    .end local v6    # "value":I
    :cond_3
    int-to-char v7, v1

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static charToHex(I)I
    .locals 1
    .param p0, "ch"    # I

    .prologue
    .line 171
    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sHexValues:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static final getInputCodeComment()[I
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodesComment:[I

    return-object v0
.end method

.method public static final getInputCodeLatin1()[I
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodes:[I

    return-object v0
.end method

.method public static final getInputCodeLatin1JsNames()[I
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodesJsNames:[I

    return-object v0
.end method

.method public static final getInputCodeUtf8()[I
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodesUtf8:[I

    return-object v0
.end method

.method public static final getInputCodeUtf8JsNames()[I
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sInputCodesUtf8JsNames:[I

    return-object v0
.end method

.method public static final getOutputEscapes()[I
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->sOutputEscapes:[I

    return-object v0
.end method
