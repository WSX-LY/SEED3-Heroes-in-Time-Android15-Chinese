.class public final enum Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;
.super Ljava/lang/Enum;
.source "JsonParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALLOW_COMMENTS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum ALLOW_SINGLE_QUOTES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum ALLOW_UNQUOTED_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum AUTO_CLOSE_SOURCE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum CANONICALIZE_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

.field private static final synthetic ENUM$VALUES:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum INTERN_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;


# instance fields
.field final _defaultState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    const-string v1, "AUTO_CLOSE_SOURCE"

    .line 74
    invoke-direct {v0, v1, v3, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .line 76
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    const-string v1, "ALLOW_COMMENTS"

    .line 90
    invoke-direct {v0, v1, v4, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .line 92
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    const-string v1, "ALLOW_UNQUOTED_FIELD_NAMES"

    .line 106
    invoke-direct {v0, v1, v5, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .line 108
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    const-string v1, "ALLOW_SINGLE_QUOTES"

    .line 124
    invoke-direct {v0, v1, v6, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .line 126
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    const-string v1, "ALLOW_UNQUOTED_CONTROL_CHARS"

    .line 143
    invoke-direct {v0, v1, v7, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .line 145
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    const-string v1, "INTERN_FIELD_NAMES"

    const/4 v2, 0x5

    .line 160
    invoke-direct {v0, v1, v2, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .line 162
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    const-string v1, "CANONICALIZE_FIELD_NAMES"

    const/4 v2, 0x6

    .line 170
    invoke-direct {v0, v1, v2, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .line 61
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ENUM$VALUES:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "defaultState"    # Z

    .prologue
    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 211
    iput-boolean p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->_defaultState:Z

    .line 212
    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, "flags":I
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->values()[Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 207
    return v1

    .line 202
    :cond_0
    aget-object v0, v3, v2

    .line 203
    .local v0, "f":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;
    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v5

    or-int/2addr v1, v5

    .line 202
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    return-object v0
.end method

.method public static values()[Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ENUM$VALUES:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    array-length v1, v0

    new-array v2, v1, [Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->_defaultState:Z

    return v0
.end method

.method public enabledIn(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMask()I
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
