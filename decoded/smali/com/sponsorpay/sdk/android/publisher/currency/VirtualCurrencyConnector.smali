.class public Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;
.super Ljava/lang/Object;
.source "VirtualCurrencyConnector.java"

# interfaces
.implements Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;,
        Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;
    }
.end annotation


# static fields
.field private static final CURRENCY_DELTA_REQUEST_RESOURCE:Ljava/lang/String; = "new_credit.json"

.field private static final STATE_LATEST_TRANSACTION_ID_KEY_PREFIX:Ljava/lang/String; = "STATE_LATEST_CURRENCY_TRANSACTION_ID_"

.field private static final STATE_LATEST_TRANSACTION_ID_KEY_SEPARATOR:Ljava/lang/String; = "_"

.field private static final URL_PARAM_KEY_LAST_TRANSACTION_ID:Ljava/lang/String; = "ltid"

.field private static final URL_PARAM_KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final URL_PARAM_VALUE_NO_TRANSACTION:Ljava/lang/String; = "NO_TRANSACTION"

.field private static final VIRTUAL_CURRENCY_SERVER_BASE_URL:Ljava/lang/String; = "http://api.sponsorpay.com/vcs/v1/"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomParameters:Ljava/util/Map;
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

.field private mSecurityToken:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private mUserListener:Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;Lcom/sponsorpay/sdk/android/HostInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;
    .param p4, "hostInfo"    # Lcom/sponsorpay/sdk/android/HostInfo;
    .param p5, "securityToken"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mContext:Landroid/content/Context;

    .line 224
    iput-object p2, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mUserId:Ljava/lang/String;

    .line 225
    iput-object p4, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

    .line 226
    iput-object p5, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mSecurityToken:Ljava/lang/String;

    .line 227
    iput-object p3, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mUserListener:Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;

    .line 228
    return-void
.end method

.method static synthetic access$0(Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->onCurrencyServerResponse(Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;)V

    return-void
.end method

.method public static fetchLatestTransactionId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 351
    .line 352
    const-string v2, "SponsorPayPublisherState"

    const/4 v3, 0x0

    .line 351
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 353
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p2, p1}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->generatePreferencesLatestTransactionIdKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 354
    const-string v3, "NO_TRANSACTION"

    .line 353
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "retval":Ljava/lang/String;
    return-object v1
.end method

.method private fetchLatestTransactionIdForCurrentAppAndUser()Ljava/lang/String;
    .locals 4

    .prologue
    .line 334
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

    invoke-virtual {v2}, Lcom/sponsorpay/sdk/android/HostInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mUserId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->fetchLatestTransactionId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "retval":Ljava/lang/String;
    return-object v0
.end method

.method private static generatePreferencesLatestTransactionIdKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "STATE_LATEST_CURRENCY_TRANSACTION_ID_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 324
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentUnixTimestampAsString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 367
    const/16 v0, 0x3e8

    .line 368
    .local v0, "MILLISECONDS_IN_SECOND":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private onCurrencyServerResponse(Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;)V
    .locals 6
    .param p1, "requestTask"    # Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;

    .prologue
    .line 289
    const-class v1, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 290
    const-string v2, "Currency Server Response, status code: %d, response body: %s, signature: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 291
    iget v5, p1, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->statusCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->responseBody:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->signature:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 289
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-boolean v1, p1, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->didTriggerException:Z

    if-eqz v1, :cond_0

    .line 296
    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/currency/RequestErrorResponse;

    invoke-direct {v0}, Lcom/sponsorpay/sdk/android/publisher/currency/RequestErrorResponse;-><init>()V

    .line 303
    .local v0, "response":Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;
    :goto_0
    invoke-virtual {v0, p0}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->setResponseListener(Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;)V

    .line 304
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mSecurityToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->parseAndCallListener(Ljava/lang/String;)V

    .line 305
    return-void

    .line 298
    .end local v0    # "response":Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;
    :cond_0
    iget-object v1, p1, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->requestType:Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;

    invoke-static {v1}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->getParsingInstance(Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;)Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;

    move-result-object v0

    .line 299
    .restart local v0    # "response":Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;
    iget v1, p1, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->statusCode:I

    iget-object v2, p1, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->responseBody:Ljava/lang/String;

    .line 300
    iget-object v3, p1, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->signature:Ljava/lang/String;

    .line 299
    invoke-virtual {v0, v1, v2, v3}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->setResponseData(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveLatestTransactionIdForCurrentUser(Ljava/lang/String;)V
    .locals 4
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mContext:Landroid/content/Context;

    .line 316
    const-string v2, "SponsorPayPublisherState"

    const/4 v3, 0x0

    .line 315
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 317
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 318
    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mUserId:Ljava/lang/String;

    iget-object v3, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

    invoke-virtual {v3}, Lcom/sponsorpay/sdk/android/HostInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->generatePreferencesLatestTransactionIdKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 319
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 320
    return-void
.end method


# virtual methods
.method public fetchDeltaOfCoins()V
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->fetchLatestTransactionIdForCurrentAppAndUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->fetchDeltaOfCoinsForCurrentUserSinceTransactionId(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public fetchDeltaOfCoinsForCurrentUserSinceTransactionId(Ljava/lang/String;)V
    .locals 10
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 256
    new-array v3, v7, [Ljava/lang/String;

    const-string v5, "ltid"

    aput-object v5, v3, v9

    .line 257
    const-string v5, "timestamp"

    aput-object v5, v3, v6

    .line 258
    .local v3, "requestUrlExtraKeys":[Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v9

    .line 259
    invoke-static {}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->getCurrentUnixTimestampAsString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 261
    .local v4, "requestUrlExtraValues":[Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sponsorpay/sdk/android/UrlBuilder;->mapKeysToValues([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 264
    .local v0, "extraKeysValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mCustomParameters:Ljava/util/Map;

    if-eqz v5, :cond_0

    .line 265
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mCustomParameters:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 268
    :cond_0
    const-string v5, "http://api.sponsorpay.com/vcs/v1/new_credit.json"

    .line 269
    iget-object v6, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mUserId:Ljava/lang/String;

    iget-object v7, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

    iget-object v8, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mSecurityToken:Ljava/lang/String;

    .line 268
    invoke-static {v5, v6, v7, v0, v8}, Lcom/sponsorpay/sdk/android/UrlBuilder;->buildUrl(Ljava/lang/String;Ljava/lang/String;Lcom/sponsorpay/sdk/android/HostInfo;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "requestUrl":Ljava/lang/String;
    const-class v5, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Delta of coins request will be sent to URL + params: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 271
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v1, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;

    .line 275
    sget-object v5, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;->DELTA_COINS:Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;

    .line 274
    invoke-direct {v1, p0, p0, v5, v2}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;-><init>(Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;Ljava/lang/String;)V

    .line 277
    .local v1, "requestTask":Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;
    new-array v5, v9, [Ljava/lang/Void;

    invoke-virtual {v1, v5}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 278
    return-void
.end method

.method public onSPCurrencyDeltaReceived(Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;

    .prologue
    .line 385
    invoke-virtual {p1}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;->getLatestTransactionId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->saveLatestTransactionIdForCurrentUser(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mUserListener:Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;

    invoke-interface {v0, p1}, Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;->onSPCurrencyDeltaReceived(Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;)V

    .line 387
    return-void
.end method

.method public onSPCurrencyServerError(Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mUserListener:Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;

    invoke-interface {v0, p1}, Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;->onSPCurrencyServerError(Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;)V

    .line 377
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
    .line 234
    .local p1, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->mCustomParameters:Ljava/util/Map;

    .line 235
    return-void
.end method
