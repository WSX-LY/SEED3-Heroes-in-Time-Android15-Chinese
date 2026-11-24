.class Lch/android/lib/sponsorpay/ChSponsorPay$2;
.super Ljava/lang/Object;
.source "ChSponsorPay.java"

# interfaces
.implements Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/lib/sponsorpay/ChSponsorPay;->requestSponsorPayPoints()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private coins:I

.field private isSaved:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method static synthetic access$0(Lch/android/lib/sponsorpay/ChSponsorPay$2;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lch/android/lib/sponsorpay/ChSponsorPay$2;->isSaved:Z

    return v0
.end method

.method static synthetic access$1(Lch/android/lib/sponsorpay/ChSponsorPay$2;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lch/android/lib/sponsorpay/ChSponsorPay$2;->coins:I

    return v0
.end method


# virtual methods
.method public onSPCurrencyDeltaReceived(Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;)V
    .locals 9
    .param p1, "resp"    # Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;

    .prologue
    .line 77
    const-string v5, "SponsorPayResearch"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "transactionId : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;->getLatestTransactionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v5, "SponsorPayResearch"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "coin : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;->getDeltaOfCoins()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p1}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;->getDeltaOfCoins()D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, p0, Lch/android/lib/sponsorpay/ChSponsorPay$2;->coins:I

    .line 81
    iget v5, p0, Lch/android/lib/sponsorpay/ChSponsorPay$2;->coins:I

    if-lez v5, :cond_1

    .line 82
    iget v5, p0, Lch/android/lib/sponsorpay/ChSponsorPay$2;->coins:I

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->loadPoint()I

    move-result v6

    add-int v3, v5, v6

    .line 83
    .local v3, "point":I
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v2

    .line 84
    .local v2, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v2, v3}, Lch/kingdoms/ndk/data/HeroStatus;->setCashPoins(I)V

    .line 85
    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 86
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v1

    .line 87
    .local v1, "dba":Lch/kingdoms/android/db/DBAdapter;
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 88
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 89
    const-string v5, "seedpoints"

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lch/kingdoms/android/db/DBAdapter;->setData(Ljava/lang/String;[B)Z

    move-result v5

    iput-boolean v5, p0, Lch/android/lib/sponsorpay/ChSponsorPay$2;->isSaved:Z

    .line 90
    iget-boolean v5, p0, Lch/android/lib/sponsorpay/ChSponsorPay$2;->isSaved:Z

    if-eqz v5, :cond_0

    .line 91
    invoke-static {}, Lch/android/lib/sponsorpay/ChSponsorPay;->access$0()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Get points from SponsorPay : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lch/android/lib/sponsorpay/ChSponsorPay$2;->coins:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 93
    :cond_0
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lch/android/lib/sponsorpay/ChSponsorPay$2$1;

    invoke-direct {v5, p0}, Lch/android/lib/sponsorpay/ChSponsorPay$2$1;-><init>(Lch/android/lib/sponsorpay/ChSponsorPay$2;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->run()V

    .line 107
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "dba":Lch/kingdoms/android/db/DBAdapter;
    .end local v2    # "hero":Lch/kingdoms/ndk/data/HeroStatus;
    .end local v3    # "point":I
    .end local v4    # "thread":Ljava/lang/Thread;
    :cond_1
    return-void
.end method

.method public onSPCurrencyServerError(Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;)V
    .locals 3
    .param p1, "resp"    # Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;

    .prologue
    .line 70
    const-string v0, "SponsorPayResearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method
