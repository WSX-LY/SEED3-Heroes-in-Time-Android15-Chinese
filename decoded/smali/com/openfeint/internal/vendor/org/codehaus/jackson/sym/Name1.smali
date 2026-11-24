.class public final Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name1;
.super Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
.source "Name1.java"


# static fields
.field static final sEmptyName:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name1;


# instance fields
.field final mQuad:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name1;

    const-string v1, ""

    invoke-direct {v0, v1, v2, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name1;->sEmptyName:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name1;

    .line 19
    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # I
    .param p3, "quad"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name1;->mQuad:I

    .line 30
    return-void
.end method

.method static final getEmptyName()Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name1;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name1;->sEmptyName:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name1;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 1
    .param p1, "quad"    # I

    .prologue
    .line 36
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name1;->mQuad:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(II)Z
    .locals 1
    .param p1, "quad1"    # I
    .param p2, "quad2"    # I

    .prologue
    .line 41
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name1;->mQuad:I

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals([II)Z
    .locals 4
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    if-ne p2, v0, :cond_0

    aget v2, p1, v1

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name1;->mQuad:I

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
