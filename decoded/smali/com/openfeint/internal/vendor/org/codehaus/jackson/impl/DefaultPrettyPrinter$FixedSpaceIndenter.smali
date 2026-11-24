.class public Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$FixedSpaceIndenter;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"

# interfaces
.implements Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/Indenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedSpaceIndenter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInline()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public writeIndentation(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;I)V
    .locals 1
    .param p1, "jg"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 229
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 230
    return-void
.end method
