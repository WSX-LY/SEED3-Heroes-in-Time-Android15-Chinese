.class public Lcom/sponsorpay/sdk/android/publisher/currency/RequestErrorResponse;
.super Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;
.source "RequestErrorResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;-><init>()V

    .line 22
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->ERROR_NO_INTERNET_CONNECTION:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    iput-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/RequestErrorResponse;->mErrorType:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    .line 23
    return-void
.end method


# virtual methods
.method public invokeOnSuccessCallback()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public parseSuccessfulResponse()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
