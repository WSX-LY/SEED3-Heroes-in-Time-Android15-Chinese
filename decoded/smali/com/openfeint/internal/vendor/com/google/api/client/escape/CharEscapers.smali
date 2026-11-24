.class public final Lcom/openfeint/internal/vendor/com/google/api/client/escape/CharEscapers;
.super Ljava/lang/Object;
.source "CharEscapers.java"


# static fields
.field private static final URI_ESCAPER:Lcom/openfeint/internal/vendor/com/google/api/client/escape/Escaper;

.field private static final URI_PATH_ESCAPER:Lcom/openfeint/internal/vendor/com/google/api/client/escape/Escaper;

.field private static final URI_QUERY_STRING_ESCAPER:Lcom/openfeint/internal/vendor/com/google/api/client/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;

    const-string v1, "-_.*"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    .line 37
    sput-object v0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/CharEscapers;->URI_ESCAPER:Lcom/openfeint/internal/vendor/com/google/api/client/escape/Escaper;

    .line 41
    new-instance v0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;

    const-string v1, "-_.!~*\'()@:$&,;="

    invoke-direct {v0, v1, v3}, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    .line 40
    sput-object v0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/CharEscapers;->URI_PATH_ESCAPER:Lcom/openfeint/internal/vendor/com/google/api/client/escape/Escaper;

    .line 44
    new-instance v0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;

    const-string v1, "-_.!~*\'()@:$,;/?:"

    invoke-direct {v0, v1, v3}, Lcom/openfeint/internal/vendor/com/google/api/client/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    .line 43
    sput-object v0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/CharEscapers;->URI_QUERY_STRING_ESCAPER:Lcom/openfeint/internal/vendor/com/google/api/client/escape/Escaper;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    return-void
.end method

.method public static decodeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 98
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static escapeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/CharEscapers;->URI_ESCAPER:Lcom/openfeint/internal/vendor/com/google/api/client/escape/Escaper;

    invoke-virtual {v0, p0}, Lcom/openfeint/internal/vendor/com/google/api/client/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeUriPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/CharEscapers;->URI_PATH_ESCAPER:Lcom/openfeint/internal/vendor/com/google/api/client/escape/Escaper;

    invoke-virtual {v0, p0}, Lcom/openfeint/internal/vendor/com/google/api/client/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeUriQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 177
    sget-object v0, Lcom/openfeint/internal/vendor/com/google/api/client/escape/CharEscapers;->URI_QUERY_STRING_ESCAPER:Lcom/openfeint/internal/vendor/com/google/api/client/escape/Escaper;

    invoke-virtual {v0, p0}, Lcom/openfeint/internal/vendor/com/google/api/client/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
