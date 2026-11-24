.class public Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;
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
    name = "Lf2SpacesIndenter"
.end annotation


# static fields
.field static final SPACES:[C

.field static final SPACE_COUNT:I = 0x40

.field static final SYSTEM_LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, "lf":Ljava/lang/String;
    :try_start_0
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 248
    :goto_0
    if-nez v0, :cond_0

    const-string v0, "\n"

    .end local v0    # "lf":Ljava/lang/String;
    :cond_0
    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;->SYSTEM_LINE_SEPARATOR:Ljava/lang/String;

    .line 252
    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C

    .line 254
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 239
    return-void

    .line 247
    .restart local v0    # "lf":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInline()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public writeIndentation(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;I)V
    .locals 3
    .param p1, "jg"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x40

    const/4 v1, 0x0

    .line 264
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;->SYSTEM_LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 265
    add-int/2addr p2, p2

    .line 266
    :goto_0
    if-gt p2, v2, :cond_0

    .line 270
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C

    invoke-virtual {p1, v0, v1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeRaw([CII)V

    .line 271
    return-void

    .line 267
    :cond_0
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C

    invoke-virtual {p1, v0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeRaw([CII)V

    .line 268
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C

    array-length v0, v0

    sub-int/2addr p2, v0

    goto :goto_0
.end method
