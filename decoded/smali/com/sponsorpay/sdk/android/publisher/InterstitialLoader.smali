.class public Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;
.super Ljava/lang/Object;
.source "InterstitialLoader.java"

# interfaces
.implements Lcom/sponsorpay/sdk/android/publisher/AsyncRequest$ResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;
    }
.end annotation


# static fields
.field private static final INTERSTITIAL_PRODUCTION_BASE_URL:Ljava/lang/String; = "http://iframe.sponsorpay.com/mobile"

.field private static final INTERSTITIAL_PRODUCTION_DOMAIN:Ljava/lang/String; = "http://iframe.sponsorpay.com"

.field private static final INTERSTITIAL_STAGING_BASE_URL:Ljava/lang/String; = "http://staging.iframe.sponsorpay.com/mobile"

.field private static final INTERSTITIAL_STAGING_DOMAIN:Ljava/lang/String; = "http://staging.iframe.sponsorpay.com"

.field private static final LOADING_TIMEOUT_SECONDS_DEFAULT:I = 0x5

.field public static final LOG_TAG:Ljava/lang/String; = "InterstitialLoader"

.field private static final MILLISECONDS_IN_SECOND:I = 0x3e8

.field private static final SHOULD_INTERSTITIAL_REMAIN_OPEN_DEFAULT:Z = false

.field private static final SKIN_NAME_DEFAULT:Ljava/lang/String; = "DEFAULT"

.field private static final URL_PARAM_BACKGROUND_KEY:Ljava/lang/String; = "background"

.field private static final URL_PARAM_INTERSTITIAL_KEY:Ljava/lang/String; = "interstitial"

.field private static final URL_PARAM_SKIN_KEY:Ljava/lang/String; = "skin"

.field private static sInterstitialAvailableResponseCount:I


# instance fields
.field private mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

.field private mBackgroundUrl:Ljava/lang/String;

.field private mCallingActivity:Landroid/app/Activity;

.field private mCancelLoadingOnTimeOut:Ljava/lang/Runnable;

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

.field private mHandler:Landroid/os/Handler;

.field private mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

.field private mLoadingStatusListener:Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;

.field private mLoadingTimeoutSecs:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mShouldStayOpen:Z

.field private mSkinName:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    sput v0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->sInterstitialAvailableResponseCount:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sponsorpay/sdk/android/HostInfo;Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;)V
    .locals 1
    .param p1, "callingActivity"    # Landroid/app/Activity;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "hostInfo"    # Lcom/sponsorpay/sdk/android/HostInfo;
    .param p4, "loadingStatusListener"    # Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mBackgroundUrl:Ljava/lang/String;

    .line 117
    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mSkinName:Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mShouldStayOpen:Z

    .line 119
    const/4 v0, 0x5

    iput v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mLoadingTimeoutSecs:I

    .line 148
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mCallingActivity:Landroid/app/Activity;

    .line 149
    iput-object p2, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mUserId:Ljava/lang/String;

    .line 150
    iput-object p3, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

    .line 151
    iput-object p4, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mLoadingStatusListener:Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mHandler:Landroid/os/Handler;

    .line 154
    return-void
.end method

.method static synthetic access$0(Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->cancelInterstitialLoading()V

    return-void
.end method

.method static synthetic access$1(Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;)Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mLoadingStatusListener:Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;

    return-object v0
.end method

.method private cancelInterstitialLoading()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    invoke-virtual {v0}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->cancel(Z)Z

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 289
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    .line 290
    return-void
.end method

.method private launchInterstitialActivity(Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    .prologue
    .line 300
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mCallingActivity:Landroid/app/Activity;

    const-class v3, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    .local v1, "interstitialIntent":Landroid/content/Intent;
    const-string v2, "EXTRA_INITIAL_CONTENT_KEY"

    .line 302
    invoke-virtual {p1}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->getResponseBody()Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v2, "EXTRA_COOKIESTRINGS"

    .line 304
    invoke-virtual {p1}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->getCookieStrings()[Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v2, "EXTRA_SHOULD_REMAIN_OPEN_KEY"

    .line 306
    iget-boolean v3, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mShouldStayOpen:Z

    .line 305
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    invoke-static {}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->shouldUseStagingUrls()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "http://staging.iframe.sponsorpay.com"

    .line 310
    .local v0, "interstitialDomain":Ljava/lang/String;
    :goto_0
    const-string v2, "EXTRA_INITIAL_BASE_URL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mCallingActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 313
    return-void

    .line 309
    .end local v0    # "interstitialDomain":Ljava/lang/String;
    :cond_0
    const-string v0, "http://iframe.sponsorpay.com"

    goto :goto_0
.end method


# virtual methods
.method public onAsyncRequestComplete(Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    .prologue
    .line 327
    const-string v0, "InterstitialLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interstitial request completed with status code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->getHttpStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", did trigger exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 329
    invoke-virtual {p1}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->didRequestTriggerException()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 335
    :cond_0
    invoke-virtual {p1}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->hasSucessfulStatusCode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    sget v0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->sInterstitialAvailableResponseCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->sInterstitialAvailableResponseCount:I

    .line 337
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mLoadingStatusListener:Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mLoadingStatusListener:Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;

    invoke-interface {v0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;->onWillShowInterstitial()V

    .line 340
    :cond_1
    invoke-direct {p0, p1}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->launchInterstitialActivity(Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;)V

    .line 351
    :cond_2
    :goto_0
    return-void

    .line 342
    :cond_3
    invoke-virtual {p1}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->didRequestTriggerException()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 343
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mLoadingStatusListener:Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mLoadingStatusListener:Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;

    invoke-interface {v0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;->onInterstitialRequestError()V

    goto :goto_0

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mLoadingStatusListener:Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mLoadingStatusListener:Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;

    invoke-interface {v0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;->onNoInterstitialAvailable()V

    goto :goto_0
.end method

.method public setBackgroundUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "backgroundUrl"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mBackgroundUrl:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setCustomParameters(Ljava/util/Map;)V
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
    .line 160
    .local p1, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mCustomParams:Ljava/util/Map;

    .line 161
    return-void
.end method

.method public setLoadingTimeoutSecs(I)V
    .locals 0
    .param p1, "loadingTimeoutSecs"    # I

    .prologue
    .line 204
    if-lez p1, :cond_0

    .end local p1    # "loadingTimeoutSecs":I
    :goto_0
    iput p1, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mLoadingTimeoutSecs:I

    .line 206
    return-void

    .line 205
    .restart local p1    # "loadingTimeoutSecs":I
    :cond_0
    const/4 p1, 0x5

    goto :goto_0
.end method

.method public setShouldStayOpen(Z)V
    .locals 0
    .param p1, "shouldStayOpen"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mShouldStayOpen:Z

    .line 185
    return-void
.end method

.method public setSkinName(Ljava/lang/String;)V
    .locals 0
    .param p1, "skinName"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mSkinName:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public startLoading()V
    .locals 10

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 220
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->cancelInterstitialLoading()V

    .line 222
    new-array v2, v7, [Ljava/lang/String;

    const-string v5, "interstitial"

    aput-object v5, v2, v8

    .line 223
    const-string v5, "allow_campaign"

    aput-object v5, v2, v9

    .line 224
    const-string v5, "offset"

    aput-object v5, v2, v6

    .line 225
    .local v2, "interstitialUrlExtraKeys":[Ljava/lang/String;
    new-array v3, v7, [Ljava/lang/String;

    const-string v5, "on"

    aput-object v5, v3, v8

    .line 226
    const-string v5, "on"

    aput-object v5, v3, v9

    .line 227
    sget v5, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->sInterstitialAvailableResponseCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 230
    .local v3, "interstitialUrlExtraValues":[Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sponsorpay/sdk/android/UrlBuilder;->mapKeysToValues([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 232
    .local v4, "keysValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mSkinName:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, ""

    iget-object v6, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mSkinName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 233
    const-string v5, "skin"

    iget-object v6, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mSkinName:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_0
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mBackgroundUrl:Ljava/lang/String;

    if-eqz v5, :cond_1

    const-string v5, ""

    iget-object v6, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mBackgroundUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 236
    const-string v5, "background"

    iget-object v6, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mBackgroundUrl:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_1
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mCustomParams:Ljava/util/Map;

    if-eqz v5, :cond_2

    .line 239
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mCustomParams:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 242
    :cond_2
    invoke-static {}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->shouldUseStagingUrls()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v0, "http://staging.iframe.sponsorpay.com/mobile"

    .line 245
    .local v0, "interstitialBaseUrl":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mUserId:Ljava/lang/String;

    iget-object v6, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

    invoke-static {v0, v5, v6, v4}, Lcom/sponsorpay/sdk/android/UrlBuilder;->buildUrl(Ljava/lang/String;Ljava/lang/String;Lcom/sponsorpay/sdk/android/HostInfo;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "interstitialUrl":Ljava/lang/String;
    const-string v5, "interstitial"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "url: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v5, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    invoke-direct {v5, v1, p0}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;-><init>(Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/AsyncRequest$ResultListener;)V

    iput-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    .line 251
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mAsyncRequest:Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;

    new-array v6, v8, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 253
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mCancelLoadingOnTimeOut:Ljava/lang/Runnable;

    if-eqz v5, :cond_3

    .line 254
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mCancelLoadingOnTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    :cond_3
    new-instance v5, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$1;

    invoke-direct {v5, p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$1;-><init>(Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;)V

    iput-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mCancelLoadingOnTimeOut:Ljava/lang/Runnable;

    .line 267
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mCancelLoadingOnTimeOut:Ljava/lang/Runnable;

    iget v7, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mLoadingTimeoutSecs:I

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    new-instance v5, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mCallingActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 270
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mCallingActivity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 271
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 272
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 273
    sget-object v6, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->LOADING_INTERSTITIAL:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v6}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v6

    .line 272
    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 275
    return-void

    .line 243
    .end local v0    # "interstitialBaseUrl":Ljava/lang/String;
    .end local v1    # "interstitialUrl":Ljava/lang/String;
    :cond_4
    const-string v0, "http://iframe.sponsorpay.com/mobile"

    goto :goto_0
.end method
