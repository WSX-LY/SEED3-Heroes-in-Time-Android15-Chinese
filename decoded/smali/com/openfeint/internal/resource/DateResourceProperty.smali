.class public abstract Lcom/openfeint/internal/resource/DateResourceProperty;
.super Lcom/openfeint/internal/resource/PrimitiveResourceProperty;
.source "DateResourceProperty.java"


# static fields
.field public static sDateParser:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/openfeint/internal/resource/DateResourceProperty;->makeDateParser()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/openfeint/internal/resource/DateResourceProperty;->sDateParser:Ljava/text/DateFormat;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;-><init>()V

    return-void
.end method

.method static makeDateParser()Ljava/text/DateFormat;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "p":Ljava/text/DateFormat;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 29
    return-object v0
.end method


# virtual methods
.method public copy(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/resource/Resource;)V
    .locals 1
    .param p1, "lhs"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "rhs"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 20
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/resource/DateResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/DateResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Ljava/util/Date;)V

    .line 21
    return-void
.end method

.method public generate(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;Ljava/lang/String;)V
    .locals 2
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "generator"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/resource/DateResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Ljava/util/Date;

    move-result-object v0

    .line 46
    .local v0, "o":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 48
    sget-object v1, Lcom/openfeint/internal/resource/DateResourceProperty;->sDateParser:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method

.method public abstract get(Lcom/openfeint/internal/resource/Resource;)Ljava/util/Date;
.end method

.method public parse(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V
    .locals 4
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "jp"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "text":Ljava/lang/String;
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {p0, p1, v3}, Lcom/openfeint/internal/resource/DateResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Ljava/util/Date;)V

    .line 42
    :goto_0
    return-void

    .line 38
    :cond_0
    :try_start_0
    sget-object v2, Lcom/openfeint/internal/resource/DateResourceProperty;->sDateParser:Ljava/text/DateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/openfeint/internal/resource/DateResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {p0, p1, v3}, Lcom/openfeint/internal/resource/DateResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Ljava/util/Date;)V

    goto :goto_0
.end method

.method public abstract set(Lcom/openfeint/internal/resource/Resource;Ljava/util/Date;)V
.end method
