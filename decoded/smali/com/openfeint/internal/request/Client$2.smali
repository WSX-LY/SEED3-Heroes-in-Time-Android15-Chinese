.class Lcom/openfeint/internal/request/Client$2;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/request/Client;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/SyncedStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/request/Client;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/request/Client;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/request/Client$2;->this$0:Lcom/openfeint/internal/request/Client;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 134
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 135
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 136
    .local v0, "ceheader":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .line 138
    .local v1, "codecs":[Lorg/apache/http/HeaderElement;
    if-eqz v1, :cond_0

    .line 139
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-lt v3, v4, :cond_1

    .line 148
    .end local v0    # "ceheader":Lorg/apache/http/Header;
    .end local v1    # "codecs":[Lorg/apache/http/HeaderElement;
    .end local v3    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 140
    .restart local v0    # "ceheader":Lorg/apache/http/Header;
    .restart local v1    # "codecs":[Lorg/apache/http/HeaderElement;
    .restart local v3    # "i":I
    :cond_1
    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    new-instance v4, Lcom/openfeint/internal/request/Client$GzipDecompressingEntity;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/openfeint/internal/request/Client$GzipDecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_1

    .line 139
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
