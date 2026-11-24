.class public Lcom/sponsorpay/sdk/android/HttpResponseParser;
.super Ljava/lang/Object;
.source "HttpResponseParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractResponseString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 9
    .param p0, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 33
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 34
    .local v4, "responseEntity":Lorg/apache/http/HttpEntity;
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 36
    .local v1, "inStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 37
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 41
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 45
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 52
    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .local v5, "responseString":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 42
    .end local v5    # "responseString":Ljava/lang/String;
    .restart local v1    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .restart local v5    # "responseString":Ljava/lang/String;
    goto :goto_1
.end method
