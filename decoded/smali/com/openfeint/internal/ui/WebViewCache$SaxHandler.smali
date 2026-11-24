.class Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/WebViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaxHandler"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field loadingString:Ljava/lang/String;

.field outputMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/openfeint/internal/ui/WebViewCache;


# direct methods
.method private constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;)V
    .locals 1

    .prologue
    .line 701
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 704
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->outputMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;)V
    .locals 0

    .prologue
    .line 701
    invoke-direct {p0, p1}, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;-><init>(Lcom/openfeint/internal/ui/WebViewCache;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 721
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    add-int v1, p2, p3

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->loadingString:Ljava/lang/String;

    .line 722
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 712
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "clipped":Ljava/lang/String;
    const-string v1, "key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->loadingString:Ljava/lang/String;

    iput-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->key:Ljava/lang/String;

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    const-string v1, "string"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->outputMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->loadingString:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->loadingString:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/openfeint/internal/db/DB;->setClientManifest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOutputMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 705
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->outputMap:Ljava/util/Map;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attr"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 708
    const-string v0, ""

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->loadingString:Ljava/lang/String;

    .line 709
    return-void
.end method
