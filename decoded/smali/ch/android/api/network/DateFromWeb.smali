.class public Lch/android/api/network/DateFromWeb;
.super Ljava/lang/Object;
.source "DateFromWeb.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTodayDate()Ljava/util/Date;
    .locals 16

    .prologue
    .line 17
    const-string v6, "<td nowrap=\"nowrap\"><tt>"

    .line 18
    .local v6, "headStr":Ljava/lang/String;
    const-string v12, "</tt></td>"

    .line 19
    .local v12, "tailStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 20
    .local v3, "curDate":Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 23
    .local v2, "buffer":Ljava/lang/StringBuffer;
    :try_start_0
    const-string v14, "NETWORK"

    const-string v15, "start"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v13, Ljava/net/URL;

    const-string v14, "http://www.xav.com/time.cgi"

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 25
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    .line 26
    .local v7, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 27
    .local v8, "isr":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 29
    .local v1, "br":Ljava/io/BufferedReader;
    const-string v14, "NETWORK"

    const-string v15, "read start"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 33
    .local v9, "readedStr":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 50
    const-string v14, "NETWORK"

    const-string v15, "read end"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 52
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 53
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 62
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v9    # "readedStr":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    :goto_1
    return-object v3

    .line 36
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v9    # "readedStr":Ljava/lang/String;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_0
    const-string v14, "<td nowrap=\"nowrap\"><tt>"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 37
    const-string v14, "NETWORK"

    const-string v15, "find date"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v14, "<td nowrap=\"nowrap\"><tt>"

    invoke-virtual {v9, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    const-string v15, "<td nowrap=\"nowrap\"><tt>"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int v11, v14, v15

    .line 39
    .local v11, "startIndex":I
    const-string v14, "</tt></td>"

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 40
    .local v5, "endIndex":I
    invoke-virtual {v9, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "DateStriso8601":Ljava/lang/String;
    const-string v14, "NETWORK"

    invoke-virtual {v9, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v10, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 45
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v10, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 48
    .end local v0    # "DateStriso8601":Ljava/lang/String;
    .end local v5    # "endIndex":I
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "startIndex":I
    :cond_1
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 54
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v9    # "readedStr":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 56
    .local v4, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 57
    .end local v4    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v4

    .line 58
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 59
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 60
    .local v4, "e":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method
