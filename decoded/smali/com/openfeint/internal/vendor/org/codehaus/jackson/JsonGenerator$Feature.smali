.class public final enum Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;
.super Ljava/lang/Enum;
.source "JsonGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTO_CLOSE_JSON_CONTENT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum AUTO_CLOSE_TARGET:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

.field private static final synthetic ENUM$VALUES:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum QUOTE_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum QUOTE_NON_NUMERIC_NUMBERS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

.field public static final enum WRITE_NUMBERS_AS_STRINGS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;


# instance fields
.field final _defaultState:Z

.field final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 45
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    const-string v1, "AUTO_CLOSE_TARGET"

    .line 58
    invoke-direct {v0, v1, v3, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    .line 60
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    const-string v1, "AUTO_CLOSE_JSON_CONTENT"

    .line 70
    invoke-direct {v0, v1, v2, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    .line 72
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    const-string v1, "QUOTE_FIELD_NAMES"

    .line 79
    invoke-direct {v0, v1, v4, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    .line 81
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    const-string v1, "QUOTE_NON_NUMERIC_NUMBERS"

    .line 93
    invoke-direct {v0, v1, v5, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    .line 95
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    const-string v1, "WRITE_NUMBERS_AS_STRINGS"

    .line 110
    invoke-direct {v0, v1, v6, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    aput-object v1, v0, v6

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->ENUM$VALUES:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 2
    .param p3, "defaultState"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 134
    iput-boolean p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->_defaultState:Z

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->_mask:I

    .line 136
    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, "flags":I
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->values()[Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 130
    return v1

    .line 125
    :cond_0
    aget-object v0, v3, v2

    .line 126
    .local v0, "f":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;
    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 127
    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v5

    or-int/2addr v1, v5

    .line 125
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    return-object v0
.end method

.method public static values()[Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->ENUM$VALUES:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    array-length v1, v0

    new-array v2, v1, [Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->_defaultState:Z

    return v0
.end method

.method public getMask()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->_mask:I

    return v0
.end method
