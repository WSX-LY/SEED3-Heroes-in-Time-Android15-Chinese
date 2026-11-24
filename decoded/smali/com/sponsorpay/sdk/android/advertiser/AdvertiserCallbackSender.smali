.class public Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;
.super Landroid/os/AsyncTask;
.source "AdvertiserCallbackSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender$APIResultListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final API_PRODUCTION_RESOURCE_URL:Ljava/lang/String; = "http://service.sponsorpay.com/installs"

.field private static final API_STAGING_RESOURCE_URL:Ljava/lang/String; = "http://staging.service.sponsorpay.com/installs"

.field private static final SUCCESFUL_HTTP_STATUS_CODE:I = 0xc8

.field private static final SUCCESSFUL_ANSWER_RECEIVED_KEY:Ljava/lang/String; = "answer_received"


# instance fields
.field private mCustomParams:Ljava/util/Map;
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

.field private mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mHttpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field private mHttpResponse:Lorg/apache/http/HttpResponse;

.field private mListener:Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender$APIResultListener;

.field private mWasAlreadySuccessful:Z


# direct methods
.method public constructor <init>(Lcom/sponsorpay/sdk/android/HostInfo;Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender$APIResultListener;)V
    .locals 1
    .param p1, "hostInfo"    # Lcom/sponsorpay/sdk/android/HostInfo;
    .param p2, "listener"    # Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender$APIResultListener;

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->mWasAlreadySuccessful:Z

    .line 111
    iput-object p2, p0, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->mListener:Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender$APIResultListener;

    .line 112
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

    .line 113
    return-void
.end method

.method private buildUrl()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 146
    invoke-static {}, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->shouldUseStagingUrls()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "http://staging.service.sponsorpay.com/installs"

    .line 150
    .local v0, "baseUrl":Ljava/lang/String;
    :goto_0
    new-array v4, v5, [Ljava/lang/String;

    const-string v3, "answer_received"

    aput-object v3, v4, v6

    .line 151
    new-array v5, v5, [Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->mWasAlreadySuccessful:Z

    if-eqz v3, :cond_2

    const-string v3, "1"

    :goto_1
    aput-object v3, v5, v6

    .line 149
    invoke-static {v4, v5}, Lcom/sponsorpay/sdk/android/UrlBuilder;->mapKeysToValues([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 153
    .local v2, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->mCustomParams:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->mCustomParams:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

    invoke-static {v0, v3, v2}, Lcom/sponsorpay/sdk/android/UrlBuilder;->buildUrl(Ljava/lang/String;Lcom/sponsorpay/sdk/android/HostInfo;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "callbackUrl":Ljava/lang/String;
    const-class v3, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Advertiser callback will be sent to: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-object v1

    .line 147
    .end local v0    # "baseUrl":Ljava/lang/String;
    .end local v1    # "callbackUrl":Ljava/lang/String;
    .end local v2    # "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v0, "http://service.sponsorpay.com/installs"

    goto :goto_0

    .line 151
    .restart local v0    # "baseUrl":Ljava/lang/String;
    :cond_2
    const-string v3, "0"

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 182
    const/4 v3, 0x0

    .line 184
    .local v3, "returnValue":Ljava/lang/Boolean;
    aget-object v0, p1, v7

    .line 186
    .local v0, "callbackUrl":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->mHttpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 187
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v4, p0, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 190
    :try_start_0
    iget-object v4, p0, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->mHttpClient:Lorg/apache/http/client/HttpClient;

    iget-object v5, p0, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->mHttpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    iput-object v4, p0, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->mHttpResponse:Lorg/apache/http/HttpResponse;

    .line 194
    iget-object v4, p0, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->mHttpResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 196
    .local v2, "responseStatusCode":I
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_0

    .line 197
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 202
    :goto_0
    const-class v4, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Server returned status code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v2    # "responseStatusCode":I
    :goto_1
    return-object v3

    .line 199
    .restart local v2    # "responseStatusCode":I
    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 204
    .end local v2    # "responseStatusCode":I
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 206
    const-class v4, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "An exception occurred when trying to send advertiser callback: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "requestWasSuccessful"    # Ljava/lang/Boolean;

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->mListener:Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender$APIResultListener;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->mListener:Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender$APIResultListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender$APIResultListener;->onAPIResponse(Z)V

    .line 229
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCustomParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->mCustomParams:Ljava/util/Map;

    .line 120
    return-void
.end method

.method public setWasAlreadySuccessful(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->mWasAlreadySuccessful:Z

    .line 128
    return-void
.end method

.method public trigger()V
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->buildUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    return-void
.end method
