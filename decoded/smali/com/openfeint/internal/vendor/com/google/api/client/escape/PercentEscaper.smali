.class public Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;
.super Lcom/openfeint/internal/vendor/com/google/api/client/escape/UnicodeEscaper;
.source "PercentEscaper.java"


# static fields
.field public static final SAFECHARS_URLENCODER:Ljava/lang/String; = "-_.*"

.field public static final SAFEPATHCHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'()@:$&,;="

.field public static final SAFEQUERYSTRINGCHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'()@:$,;/?:"

.field private static final UPPER_HEX_DIGITS:[C

.field private static final URI_ESCAPED_SPACE:[C


# instance fields
.field private final plusForSpace:Z

.field private final safeOctets:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    sput-object v0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->URI_ESCAPED_SPACE:[C

    .line 98
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 97
    sput-object v0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "safeChars"    # Ljava/lang/String;
    .param p2, "plusForSpace"    # Z

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/com/google/api/client/escape/UnicodeEscaper;-><init>()V

    .line 125
    const-string v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 127
    const-string v1, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    .line 126
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 134
    const-string v1, "plusForSpace cannot be specified when space is a \'safe\' character"

    .line 133
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 138
    const-string v1, "The \'%\' character cannot be specified as \'safe\'"

    .line 137
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_2
    iput-boolean p2, p0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->plusForSpace:Z

    .line 141
    invoke-static {p1}, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->createSafeOctets(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->safeOctets:[Z

    .line 142
    return-void
.end method

.method private static createSafeOctets(Ljava/lang/String;)[Z
    .locals 8
    .param p0, "safeChars"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 150
    const/16 v1, 0x7a

    .line 151
    .local v1, "maxChar":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 152
    .local v3, "safeCharArray":[C
    array-length v6, v3

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_0

    .line 155
    add-int/lit8 v5, v1, 0x1

    new-array v2, v5, [Z

    .line 156
    .local v2, "octets":[Z
    const/16 v0, 0x30

    .local v0, "c":I
    :goto_1
    const/16 v5, 0x39

    if-le v0, v5, :cond_1

    .line 159
    const/16 v0, 0x41

    :goto_2
    const/16 v5, 0x5a

    if-le v0, v5, :cond_2

    .line 162
    const/16 v0, 0x61

    :goto_3
    const/16 v5, 0x7a

    if-le v0, v5, :cond_3

    .line 165
    array-length v5, v3

    .end local v0    # "c":I
    :goto_4
    if-lt v4, v5, :cond_4

    .line 168
    return-object v2

    .line 152
    .end local v2    # "octets":[Z
    :cond_0
    aget-char v0, v3, v5

    .line 153
    .local v0, "c":C
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 152
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 157
    .local v0, "c":I
    .restart local v2    # "octets":[Z
    :cond_1
    aput-boolean v7, v2, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    :cond_2
    aput-boolean v7, v2, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 163
    :cond_3
    aput-boolean v7, v2, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 165
    .end local v0    # "c":I
    :cond_4
    aget-char v0, v3, v4

    .line 166
    .local v0, "c":C
    aput-boolean v7, v2, v0

    .line 165
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 195
    .local v2, "slen":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 201
    .end local p1    # "s":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 196
    .restart local p1    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 197
    .local v0, "c":C
    iget-object v3, p0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->safeOctets:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->safeOctets:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_2

    .line 198
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 195
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected escape(I)[C
    .locals 7
    .param p1, "cp"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x25

    .line 211
    iget-object v1, p0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->safeOctets:[Z

    array-length v1, v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->safeOctets:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 277
    :goto_0
    return-object v0

    .line 213
    :cond_0
    const/16 v1, 0x20

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->plusForSpace:Z

    if-eqz v1, :cond_1

    .line 214
    sget-object v0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->URI_ESCAPED_SPACE:[C

    goto :goto_0

    .line 215
    :cond_1
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_2

    .line 218
    new-array v0, v6, [C

    .line 219
    .local v0, "dest":[C
    aput-char v2, v0, v3

    .line 220
    sget-object v1, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    .line 221
    sget-object v1, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    ushr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v4

    goto :goto_0

    .line 223
    .end local v0    # "dest":[C
    :cond_2
    const/16 v1, 0x7ff

    if-gt p1, v1, :cond_3

    .line 226
    const/4 v1, 0x6

    new-array v0, v1, [C

    .line 227
    .restart local v0    # "dest":[C
    aput-char v2, v0, v3

    .line 228
    aput-char v2, v0, v6

    .line 229
    const/4 v1, 0x5

    sget-object v2, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 230
    ushr-int/lit8 p1, p1, 0x4

    .line 231
    const/4 v1, 0x4

    sget-object v2, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 232
    ushr-int/lit8 p1, p1, 0x2

    .line 233
    sget-object v1, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    .line 234
    ushr-int/lit8 p1, p1, 0x4

    .line 235
    sget-object v1, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    or-int/lit8 v2, p1, 0xc

    aget-char v1, v1, v2

    aput-char v1, v0, v4

    goto :goto_0

    .line 237
    .end local v0    # "dest":[C
    :cond_3
    const v1, 0xffff

    if-gt p1, v1, :cond_4

    .line 240
    const/16 v1, 0x9

    new-array v0, v1, [C

    .line 241
    .restart local v0    # "dest":[C
    aput-char v2, v0, v3

    .line 242
    const/16 v1, 0x45

    aput-char v1, v0, v4

    .line 243
    aput-char v2, v0, v6

    .line 244
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 245
    const/16 v1, 0x8

    sget-object v2, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 246
    ushr-int/lit8 p1, p1, 0x4

    .line 247
    const/4 v1, 0x7

    sget-object v2, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 248
    ushr-int/lit8 p1, p1, 0x2

    .line 249
    const/4 v1, 0x5

    sget-object v2, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 250
    ushr-int/lit8 p1, p1, 0x4

    .line 251
    const/4 v1, 0x4

    sget-object v2, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 252
    ushr-int/lit8 p1, p1, 0x2

    .line 253
    sget-object v1, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    aget-char v1, v1, p1

    aput-char v1, v0, v5

    goto/16 :goto_0

    .line 255
    .end local v0    # "dest":[C
    :cond_4
    const v1, 0x10ffff

    if-gt p1, v1, :cond_5

    .line 256
    const/16 v1, 0xc

    new-array v0, v1, [C

    .line 259
    .restart local v0    # "dest":[C
    aput-char v2, v0, v3

    .line 260
    const/16 v1, 0x46

    aput-char v1, v0, v4

    .line 261
    aput-char v2, v0, v6

    .line 262
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 263
    const/16 v1, 0x9

    aput-char v2, v0, v1

    .line 264
    const/16 v1, 0xb

    sget-object v2, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 265
    ushr-int/lit8 p1, p1, 0x4

    .line 266
    const/16 v1, 0xa

    sget-object v2, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 267
    ushr-int/lit8 p1, p1, 0x2

    .line 268
    const/16 v1, 0x8

    sget-object v2, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 269
    ushr-int/lit8 p1, p1, 0x4

    .line 270
    const/4 v1, 0x7

    sget-object v2, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 271
    ushr-int/lit8 p1, p1, 0x2

    .line 272
    const/4 v1, 0x5

    sget-object v2, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 273
    ushr-int/lit8 p1, p1, 0x4

    .line 274
    const/4 v1, 0x4

    sget-object v2, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 275
    ushr-int/lit8 p1, p1, 0x2

    .line 276
    sget-object v1, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x7

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    goto/16 :goto_0

    .line 280
    .end local v0    # "dest":[C
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid unicode character value "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "end"    # I

    .prologue
    .line 178
    :goto_0
    if-lt p2, p3, :cond_1

    .line 184
    :cond_0
    return p2

    .line 179
    :cond_1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 180
    .local v0, "c":C
    iget-object v1, p0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->safeOctets:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;->safeOctets:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 178
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
