.class public Lch/android/api/network/ChHttp;
.super Ljava/lang/Object;
.source "ChHttp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "spec"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v5, 0x0

    .line 16
    .local v5, "result":Z
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 17
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 19
    .local v0, "conn":Ljava/net/URLConnection;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 21
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v4, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 22
    .local v4, "osw":Ljava/io/OutputStreamWriter;
    invoke-virtual {v4, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 25
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 27
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-class v8, Ljava/lang/Boolean;

    invoke-virtual {v2, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 28
    .local v3, "isSuccess":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v5

    .line 44
    .end local v0    # "conn":Ljava/net/URLConnection;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "isSuccess":Ljava/lang/Boolean;
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .end local v6    # "url":Ljava/net/URL;
    :goto_0
    return v5

    .line 29
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 32
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 34
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 38
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v7

    goto :goto_0
.end method
