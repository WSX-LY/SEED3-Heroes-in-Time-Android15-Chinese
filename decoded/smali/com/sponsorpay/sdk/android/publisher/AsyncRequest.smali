.class public Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;
.super Landroid/os/AsyncTask;
.source "AsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/sdk/android/publisher/AsyncRequest$ResultListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static ACCEPT_LANGUAGE_HEADER_NAME:Ljava/lang/String;

.field public static LOG_TAG:Ljava/lang/String;

.field private static USER_AGENT_HEADER_NAME:Ljava/lang/String;

.field private static USER_AGENT_HEADER_VALUE:Ljava/lang/String;

.field public static shouldLogVerbosely:Z


# instance fields
.field private mCookieStrings:[Ljava/lang/String;

.field private mRequestException:Ljava/lang/Exception;

.field private mRequestUrl:Ljava/lang/String;

.field private mResponseBody:Ljava/lang/String;

.field private mResultListener:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest$ResultListener;

.field private mStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->shouldLogVerbosely:Z

    .line 38
    const-string v0, "AsyncRequest"

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->LOG_TAG:Ljava/lang/String;

    .line 43
    const-string v0, "User-Agent"

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->USER_AGENT_HEADER_NAME:Ljava/lang/String;

    .line 48
    const-string v0, "Accept-Language"

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->ACCEPT_LANGUAGE_HEADER_NAME:Ljava/lang/String;

    .line 53
    const-string v0, "Android"

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->USER_AGENT_HEADER_VALUE:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/AsyncRequest$ResultListener;)V
    .locals 0
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sponsorpay/sdk/android/publisher/AsyncRequest$ResultListener;

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mRequestUrl:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mResultListener:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest$ResultListener;

    .line 98
    return-void
.end method

.method private makeAcceptLanguageHeaderValue()Ljava/lang/String;
    .locals 7

    .prologue
    .line 155
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "preferredLanguage":Ljava/lang/String;
    move-object v0, v2

    .line 158
    .local v0, "acceptLanguageLocaleValue":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "englishLanguageCode":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    :cond_0
    move-object v0, v1

    .line 165
    :cond_1
    :goto_0
    return-object v0

    .line 162
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", %s;q=0.8"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public didRequestTriggerException()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mRequestException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v12, 0x0

    .line 109
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    iget-object v7, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mRequestUrl:Ljava/lang/String;

    invoke-direct {v5, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 110
    .local v5, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    sget-object v7, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->USER_AGENT_HEADER_NAME:Ljava/lang/String;

    sget-object v8, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->USER_AGENT_HEADER_VALUE:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->makeAcceptLanguageHeaderValue()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "acceptLanguageHeaderValue":Ljava/lang/String;
    sget-boolean v7, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->shouldLogVerbosely:Z

    if-eqz v7, :cond_0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "acceptLanguageHeaderValue: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 114
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    sget-object v7, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->ACCEPT_LANGUAGE_HEADER_NAME:Ljava/lang/String;

    invoke-interface {v5, v7, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 120
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    iput-object v12, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mRequestException:Ljava/lang/Exception;

    .line 123
    :try_start_0
    invoke-interface {v1, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 124
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    iput v7, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mStatusCode:I

    .line 125
    invoke-static {v6}, Lcom/sponsorpay/sdk/android/HttpResponseParser;->extractResponseString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mResponseBody:Ljava/lang/String;

    .line 127
    const-string v7, "Set-Cookie"

    invoke-interface {v6, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 130
    .local v2, "cookieHeaders":[Lorg/apache/http/Header;
    array-length v7, v2

    if-lez v7, :cond_2

    .line 132
    sget-boolean v7, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->shouldLogVerbosely:Z

    if-eqz v7, :cond_1

    .line 133
    sget-object v7, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Got following cookies from server (url: %s):"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 134
    iget-object v11, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mRequestUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    .line 133
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1
    array-length v7, v2

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mCookieStrings:[Ljava/lang/String;

    .line 137
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v2

    if-lt v4, v7, :cond_3

    .line 147
    .end local v2    # "cookieHeaders":[Lorg/apache/http/Header;
    .end local v4    # "i":I
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    :goto_1
    return-object v12

    .line 138
    .restart local v2    # "cookieHeaders":[Lorg/apache/http/Header;
    .restart local v4    # "i":I
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    iget-object v7, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mCookieStrings:[Ljava/lang/String;

    aget-object v8, v2, v4

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 139
    sget-boolean v7, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->shouldLogVerbosely:Z

    if-eqz v7, :cond_4

    .line 140
    sget-object v7, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->LOG_TAG:Ljava/lang/String;

    iget-object v8, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mCookieStrings:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "cookieHeaders":[Lorg/apache/http/Header;
    .end local v4    # "i":I
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception triggered when executing request: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput-object v3, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mRequestException:Ljava/lang/Exception;

    goto :goto_1
.end method

.method public getCookieStrings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mCookieStrings:[Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mStatusCode:I

    return v0
.end method

.method public getRequestTriggeredException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mRequestException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mResponseBody:Ljava/lang/String;

    return-object v0
.end method

.method public hasSucessfulStatusCode()Z
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mStatusCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mStatusCode:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->mResultListener:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest$ResultListener;

    invoke-interface {v0, p0}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest$ResultListener;->onAsyncRequestComplete(Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;)V

    .line 178
    return-void
.end method
