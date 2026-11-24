.class public abstract Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;
.super Ljava/lang/Object;
.source "CurrencyServerAbstractResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$sponsorpay$sdk$android$publisher$currency$VirtualCurrencyConnector$RequestType:[I = null

.field private static final ERROR_CODE_KEY:Ljava/lang/String; = "code"

.field private static final ERROR_MESSAGE_KEY:Ljava/lang/String; = "message"


# instance fields
.field protected mErrorCode:Ljava/lang/String;

.field protected mErrorMessage:Ljava/lang/String;

.field protected mErrorType:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

.field protected mListener:Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;

.field protected mResponseBody:Ljava/lang/String;

.field protected mResponseSignature:Ljava/lang/String;

.field protected mResponseStatusCode:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$sponsorpay$sdk$android$publisher$currency$VirtualCurrencyConnector$RequestType()[I
    .locals 3

    .prologue
    .line 21
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->$SWITCH_TABLE$com$sponsorpay$sdk$android$publisher$currency$VirtualCurrencyConnector$RequestType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;->values()[Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;->DELTA_COINS:Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;

    invoke-virtual {v1}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->$SWITCH_TABLE$com$sponsorpay$sdk$android$publisher$currency$VirtualCurrencyConnector$RequestType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParsingInstance(Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;)Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;
    .locals 3
    .param p0, "requestType"    # Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, "instanceToReturn":Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;
    invoke-static {}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->$SWITCH_TABLE$com$sponsorpay$sdk$android$publisher$currency$VirtualCurrencyConnector$RequestType()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 257
    :goto_0
    return-object v0

    .line 251
    :pswitch_0
    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;

    .end local v0    # "instanceToReturn":Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;
    invoke-direct {v0}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;-><init>()V

    .line 252
    .restart local v0    # "instanceToReturn":Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;
    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mErrorCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mErrorCode:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mErrorMessage:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getErrorType()Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mErrorType:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    return-object v0
.end method

.method public hasErrorStatusCode()Z
    .locals 2

    .prologue
    .line 183
    iget v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mResponseStatusCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mResponseStatusCode:I

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public invokeOnErrorCallback()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mListener:Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mListener:Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;

    invoke-interface {v0, p0}, Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;->onSPCurrencyServerError(Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;)V

    .line 209
    :cond_0
    return-void
.end method

.method public abstract invokeOnSuccessCallback()V
.end method

.method public parseAndCallListener(Ljava/lang/String;)V
    .locals 2
    .param p1, "securityToken"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mErrorType:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->ERROR_NO_INTERNET_CONNECTION:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    if-ne v0, v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->invokeOnErrorCallback()V

    .line 175
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->hasErrorStatusCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->parseErrorResponse()V

    .line 165
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->invokeOnErrorCallback()V

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->verifySignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->invokeOnErrorCallback()V

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->parseSuccessfulResponse()V

    .line 170
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mErrorType:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->NO_ERROR:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    if-ne v0, v1, :cond_3

    .line 171
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->invokeOnSuccessCallback()V

    goto :goto_0

    .line 173
    :cond_3
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->invokeOnErrorCallback()V

    goto :goto_0
.end method

.method public parseErrorResponse()V
    .locals 3

    .prologue
    .line 192
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mResponseBody:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    .local v1, "responseBodyAsJsonObject":Lorg/json/JSONObject;
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mErrorCode:Ljava/lang/String;

    .line 194
    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mErrorMessage:Ljava/lang/String;

    .line 195
    sget-object v2, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->SERVER_RETURNED_ERROR:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    iput-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mErrorType:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v1    # "responseBodyAsJsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->ERROR_OTHER:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    iput-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mErrorType:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    goto :goto_0
.end method

.method public abstract parseSuccessfulResponse()V
.end method

.method public setResponseData(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseStatusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;
    .param p3, "responseSignature"    # Ljava/lang/String;

    .prologue
    .line 121
    iput p1, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mResponseStatusCode:I

    .line 122
    iput-object p2, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mResponseBody:Ljava/lang/String;

    .line 123
    iput-object p3, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mResponseSignature:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setResponseListener(Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mListener:Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;

    .line 134
    return-void
.end method

.method public verifySignature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "securityToken"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mResponseBody:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/sponsorpay/sdk/android/SignatureTools;->generateSignatureForString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "generatedSignature":Ljava/lang/String;
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mResponseSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->ERROR_INVALID_RESPONSE_SIGNATURE:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    iput-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->mErrorType:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    .line 148
    const/4 v1, 0x0

    .line 150
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
