.class public final enum Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum END_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

.field public static final enum END_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

.field private static final synthetic ENUM$VALUES:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

.field public static final enum FIELD_NAME:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

.field public static final enum NOT_AVAILABLE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

.field public static final enum START_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

.field public static final enum START_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

.field public static final enum VALUE_EMBEDDED_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

.field public static final enum VALUE_FALSE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

.field public static final enum VALUE_NULL:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

.field public static final enum VALUE_NUMBER_FLOAT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

.field public static final enum VALUE_NUMBER_INT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

.field public static final enum VALUE_STRING:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

.field public static final enum VALUE_TRUE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;


# instance fields
.field final _serialized:Ljava/lang/String;

.field final _serializedBytes:[B

.field final _serializedChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 16
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    const-string v1, "NOT_AVAILABLE"

    .line 35
    invoke-direct {v0, v1, v5, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->NOT_AVAILABLE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 37
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    const-string v1, "START_OBJECT"

    .line 41
    const-string v2, "{"

    invoke-direct {v0, v1, v6, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 43
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    const-string v1, "END_OBJECT"

    .line 47
    const-string v2, "}"

    invoke-direct {v0, v1, v7, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 49
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    const-string v1, "START_ARRAY"

    .line 53
    const-string v2, "["

    invoke-direct {v0, v1, v8, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 55
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    const-string v1, "END_ARRAY"

    const/4 v2, 0x4

    .line 59
    const-string v3, "]"

    invoke-direct {v0, v1, v2, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 61
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    const-string v1, "FIELD_NAME"

    const/4 v2, 0x5

    .line 65
    invoke-direct {v0, v1, v2, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 67
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    const-string v1, "VALUE_EMBEDDED_OBJECT"

    const/4 v2, 0x6

    .line 79
    invoke-direct {v0, v1, v2, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 81
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    const-string v1, "VALUE_STRING"

    const/4 v2, 0x7

    .line 86
    invoke-direct {v0, v1, v2, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 88
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    const-string v1, "VALUE_NUMBER_INT"

    const/16 v2, 0x8

    .line 94
    invoke-direct {v0, v1, v2, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 96
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    const-string v1, "VALUE_NUMBER_FLOAT"

    const/16 v2, 0x9

    .line 102
    invoke-direct {v0, v1, v2, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 104
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    const-string v1, "VALUE_TRUE"

    const/16 v2, 0xa

    .line 108
    const-string v3, "true"

    invoke-direct {v0, v1, v2, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 110
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    const-string v1, "VALUE_FALSE"

    const/16 v2, 0xb

    .line 114
    const-string v3, "false"

    invoke-direct {v0, v1, v2, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 116
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    const-string v1, "VALUE_NULL"

    const/16 v2, 0xc

    .line 120
    const-string v3, "null"

    invoke-direct {v0, v1, v2, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 14
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->NOT_AVAILABLE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    aput-object v1, v0, v5

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    aput-object v1, v0, v6

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    aput-object v1, v0, v7

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    aput-object v2, v0, v1

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ENUM$VALUES:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p3, "token"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    if-nez p3, :cond_1

    .line 136
    iput-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->_serialized:Ljava/lang/String;

    .line 137
    iput-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->_serializedChars:[C

    .line 138
    iput-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->_serializedBytes:[B

    .line 149
    :cond_0
    return-void

    .line 140
    :cond_1
    iput-object p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->_serialized:Ljava/lang/String;

    .line 141
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->_serializedChars:[C

    .line 143
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->_serializedChars:[C

    array-length v1, v2

    .line 144
    .local v1, "len":I
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->_serializedBytes:[B

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 146
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->_serializedBytes:[B

    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->_serializedChars:[C

    aget-char v3, v3, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public static values()[Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ENUM$VALUES:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    array-length v1, v0

    new-array v2, v1, [Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public asByteArray()[B
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->_serializedBytes:[B

    return-object v0
.end method

.method public asCharArray()[C
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->_serializedChars:[C

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->_serialized:Ljava/lang/String;

    return-object v0
.end method

.method public isNumeric()Z
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isScalarValue()Z
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
