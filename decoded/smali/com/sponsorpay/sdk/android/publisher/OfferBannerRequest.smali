.class public Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;
.super Ljava/lang/Object;
.source "OfferBannerRequest.java"

# interfaces
.implements Lcom/sponsorpay/sdk/android/publisher/AsyncRequest$ResultListener;


# static fields
.field private static final OFFERBANNER_PRODUCTION_BASE_URL:Ljava/lang/String; = "http://iframe.sponsorpay.com/mobile"

.field private static final OFFERBANNER_PRODUCTION_DOMAIN:Ljava/lang/String; = "http://iframe.sponsorpay.com"

.field private static final OFFERBANNER_STAGING_BASE_URL:Ljava/lang/String; = "http://staging.iframe.sponsorpay.com/mobile"

.field private static final OFFERBANNER_STAGING_DOMAIN:Ljava/lang/String; = "http://staging.iframe.sponsorpay.com"

.field private static final STATE_OFFSET_COUNT_KEY:Ljava/lang/String; = "OFFERBANNER_AVAILABLE_RESPONSE_COUNT"

.field private static final URL_PARAM_OFFERBANNER_KEY:Ljava/lang/String; = "banner"


# instance fields
.field private mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

.field private mBaseDomain:Ljava/lang/String;

.field private mBaseUrl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrencyName:Ljava/lang/String;

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

.field private mListener:Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;

.field private mOfferBannerAdShape:Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/sdk/android/HostInfo;Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "hostInfo"    # Lcom/sponsorpay/sdk/android/HostInfo;
    .param p4, "listener"    # Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;
    .param p5, "offerBannerAdShape"    # Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;
    .param p6, "currencyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/sdk/android/HostInfo;",
            "Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;",
            "Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p7, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mContext:Landroid/content/Context;

    .line 109
    iput-object p4, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mListener:Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;

    .line 110
    iput-object p2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mUserId:Ljava/lang/String;

    .line 111
    iput-object p5, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mOfferBannerAdShape:Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;

    .line 112
    iput-object p3, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

    .line 113
    iput-object p6, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mCurrencyName:Ljava/lang/String;

    .line 114
    iput-object p7, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mCustomParams:Ljava/util/Map;

    .line 116
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->requestOfferBanner()V

    .line 117
    return-void
.end method

.method private fetchPersistedBannerOffset()I
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->fetchSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->fetchPersistedBannerOffset(Landroid/content/SharedPreferences;)I

    move-result v0

    return v0
.end method

.method private fetchPersistedBannerOffset(Landroid/content/SharedPreferences;)I
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 215
    const-string v0, "OFFERBANNER_AVAILABLE_RESPONSE_COUNT"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private fetchSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mContext:Landroid/content/Context;

    const-string v1, "SponsorPayPublisherState"

    .line 197
    const/4 v2, 0x0

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private incrementPersistedBannerOffset()V
    .locals 4

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->fetchSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 185
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0, v1}, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->fetchPersistedBannerOffset(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 186
    .local v0, "bannerOffset":I
    add-int/lit8 v0, v0, 0x1

    .line 188
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "OFFERBANNER_AVAILABLE_RESPONSE_COUNT"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    return-void
.end method

.method private requestOfferBanner()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 124
    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "banner"

    aput-object v4, v2, v7

    .line 125
    const-string v4, "allow_campaign"

    aput-object v4, v2, v5

    const-string v4, "offset"

    aput-object v4, v2, v6

    .line 126
    .local v2, "offerBannerUrlExtraKeys":[Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "on"

    aput-object v4, v3, v7

    .line 127
    const-string v4, "on"

    aput-object v4, v3, v5

    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->fetchPersistedBannerOffset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 129
    .local v3, "offerBannerUrlExtraValues":[Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sponsorpay/sdk/android/UrlBuilder;->mapKeysToValues([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 132
    .local v0, "extraKeysValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mCurrencyName:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, ""

    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mCurrencyName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    const-string v4, "currency"

    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mCurrencyName:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_0
    iget-object v4, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mCustomParams:Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 137
    iget-object v4, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mCustomParams:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 140
    :cond_1
    invoke-static {}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->shouldUseStagingUrls()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    const-string v4, "http://staging.iframe.sponsorpay.com/mobile"

    iput-object v4, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mBaseUrl:Ljava/lang/String;

    .line 142
    const-string v4, "http://staging.iframe.sponsorpay.com"

    iput-object v4, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mBaseDomain:Ljava/lang/String;

    .line 148
    :goto_0
    iget-object v4, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mBaseUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mUserId:Ljava/lang/String;

    iget-object v6, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

    invoke-static {v4, v5, v6, v0}, Lcom/sponsorpay/sdk/android/UrlBuilder;->buildUrl(Ljava/lang/String;Ljava/lang/String;Lcom/sponsorpay/sdk/android/HostInfo;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "offerBannerUrl":Ljava/lang/String;
    const-string v4, "SPOfferBanner"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Offer Banner Request URL: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v4, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    invoke-direct {v4, v1, p0}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;-><init>(Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/AsyncRequest$ResultListener;)V

    iput-object v4, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    .line 153
    iget-object v4, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    new-array v5, v7, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 154
    return-void

    .line 144
    .end local v1    # "offerBannerUrl":Ljava/lang/String;
    :cond_2
    const-string v4, "http://iframe.sponsorpay.com/mobile"

    iput-object v4, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mBaseUrl:Ljava/lang/String;

    .line 145
    const-string v4, "http://iframe.sponsorpay.com"

    iput-object v4, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mBaseDomain:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getHttpStatusCode()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    invoke-virtual {v0}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->getHttpStatusCode()I

    move-result v0

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRequestException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    invoke-virtual {v0}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->getRequestTriggeredException()Ljava/lang/Exception;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAsyncRequestComplete(Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;)V
    .locals 6
    .param p1, "request"    # Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    .prologue
    .line 162
    const-string v1, "SPOfferBanner"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAsyncRequestComplete, returned status code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->getHttpStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    invoke-virtual {v1}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->hasSucessfulStatusCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;

    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mBaseDomain:Ljava/lang/String;

    iget-object v3, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    .line 166
    invoke-virtual {v3}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->getResponseBody()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    invoke-virtual {v4}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->getCookieStrings()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mOfferBannerAdShape:Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;

    .line 165
    invoke-direct/range {v0 .. v5}, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;)V

    .line 168
    .local v0, "banner":Lcom/sponsorpay/sdk/android/publisher/OfferBanner;
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->incrementPersistedBannerOffset()V

    .line 170
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mListener:Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;

    invoke-interface {v1, v0}, Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;->onSPOfferBannerAvailable(Lcom/sponsorpay/sdk/android/publisher/OfferBanner;)V

    .line 176
    .end local v0    # "banner":Lcom/sponsorpay/sdk/android/publisher/OfferBanner;
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    invoke-virtual {v1}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->didRequestTriggerException()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mListener:Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;

    invoke-interface {v1, p0}, Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;->onSPOfferBannerRequestError(Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;->mListener:Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;

    invoke-interface {v1, p0}, Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;->onSPOfferBannerNotAvailable(Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;)V

    goto :goto_0
.end method
