.class Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;
.super Landroid/os/AsyncTask;
.source "VirtualCurrencyConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrencyServerRequestAsyncTask"
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
.field private static final SIGNATURE_HEADER:Ljava/lang/String; = "X-Sponsorpay-Response-Signature"


# instance fields
.field public didTriggerException:Z

.field private mRequestUrl:Ljava/lang/String;

.field private mVcc:Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;

.field public requestType:Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;

.field public responseBody:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public statusCode:I

.field final synthetic this$0:Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;


# direct methods
.method public constructor <init>(Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;Ljava/lang/String;)V
    .locals 0
    .param p2, "vcc"    # Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;
    .param p3, "requestType"    # Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;
    .param p4, "requestUrl"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->this$0:Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;

    .line 153
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 155
    iput-object p2, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->mVcc:Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;

    .line 156
    iput-object p4, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->mRequestUrl:Ljava/lang/String;

    .line 157
    iput-object p3, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->requestType:Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;

    .line 158
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 169
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->mRequestUrl:Ljava/lang/String;

    invoke-direct {v1, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 172
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    iput-boolean v6, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->didTriggerException:Z

    .line 175
    :try_start_0
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 176
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    iput v5, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->statusCode:I

    .line 177
    invoke-static {v2}, Lcom/sponsorpay/sdk/android/HttpResponseParser;->extractResponseString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->responseBody:Ljava/lang/String;

    .line 178
    const-string v5, "X-Sponsorpay-Response-Signature"

    invoke-interface {v2, v5}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 179
    .local v3, "responseSignatureHeaders":[Lorg/apache/http/Header;
    array-length v5, v3

    if-lez v5, :cond_0

    const/4 v5, 0x0

    aget-object v5, v3, v5

    .line 180
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 179
    :goto_0
    iput-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->signature:Ljava/lang/String;

    .line 187
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "responseSignatureHeaders":[Lorg/apache/http/Header;
    :goto_1
    const/4 v5, 0x0

    return-object v5

    .line 180
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    .restart local v3    # "responseSignatureHeaders":[Lorg/apache/http/Header;
    :cond_0
    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "responseSignatureHeaders":[Lorg/apache/http/Header;
    :catch_0
    move-exception v4

    .line 183
    .local v4, "t":Ljava/lang/Throwable;
    const-class v5, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error thrown when executing request: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->didTriggerException:Z

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;->mVcc:Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;

    invoke-static {v0, p0}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->access$0(Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$CurrencyServerRequestAsyncTask;)V

    .line 200
    return-void
.end method
