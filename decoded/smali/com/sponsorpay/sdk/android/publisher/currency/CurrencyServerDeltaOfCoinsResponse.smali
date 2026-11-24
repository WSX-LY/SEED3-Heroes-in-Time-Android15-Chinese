.class public Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;
.super Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;
.source "CurrencyServerDeltaOfCoinsResponse.java"


# static fields
.field private static final DELTA_OF_COINS_KEY:Ljava/lang/String; = "delta_of_coins"

.field private static final LATEST_TRANSACTION_ID_KEY:Ljava/lang/String; = "latest_transaction_id"


# instance fields
.field private mDeltaOfCoins:D

.field private mLatestTransactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeltaOfCoins()D
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;->mDeltaOfCoins:D

    return-wide v0
.end method

.method public getLatestTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;->mLatestTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method public invokeOnSuccessCallback()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;->mListener:Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;->mListener:Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;

    invoke-interface {v0, p0}, Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;->onSPCurrencyDeltaReceived(Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;)V

    .line 73
    :cond_0
    return-void
.end method

.method public parseSuccessfulResponse()V
    .locals 4

    .prologue
    .line 55
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;->mResponseBody:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "responseBodyAsJsonObject":Lorg/json/JSONObject;
    const-string v2, "delta_of_coins"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;->mDeltaOfCoins:D

    .line 57
    const-string v2, "latest_transaction_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;->mLatestTransactionId:Ljava/lang/String;

    .line 58
    sget-object v2, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->NO_ERROR:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    iput-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;->mErrorType:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "responseBodyAsJsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->ERROR_INVALID_RESPONSE:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    iput-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;->mErrorType:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    goto :goto_0
.end method
