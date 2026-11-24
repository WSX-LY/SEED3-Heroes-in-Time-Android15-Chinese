.class Lch/android/lib/sponsorpay/ChSponsorPay$2$1;
.super Ljava/lang/Object;
.source "ChSponsorPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/lib/sponsorpay/ChSponsorPay$2;->onSPCurrencyDeltaReceived(Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerDeltaOfCoinsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/android/lib/sponsorpay/ChSponsorPay$2;


# direct methods
.method constructor <init>(Lch/android/lib/sponsorpay/ChSponsorPay$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/lib/sponsorpay/ChSponsorPay$2$1;->this$1:Lch/android/lib/sponsorpay/ChSponsorPay$2;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 97
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 98
    .local v0, "gson":Lcom/google/gson/Gson;
    const-string v2, "http://ch-games.appspot.com/seedpointlog"

    .line 99
    new-instance v3, Lch/lib/gsonobjects/SeedPoint;

    invoke-static {}, Lch/android/lib/sponsorpay/ChSponsorPay;->access$1()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lch/android/lib/sponsorpay/ChSponsorPay$2$1;->this$1:Lch/android/lib/sponsorpay/ChSponsorPay$2;

    invoke-static {v7}, Lch/android/lib/sponsorpay/ChSponsorPay$2;->access$0(Lch/android/lib/sponsorpay/ChSponsorPay$2;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/Seed3And/SponsorPay"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lch/android/lib/sponsorpay/ChSponsorPay$2$1;->this$1:Lch/android/lib/sponsorpay/ChSponsorPay$2;

    invoke-static {v7}, Lch/android/lib/sponsorpay/ChSponsorPay$2;->access$1(Lch/android/lib/sponsorpay/ChSponsorPay$2;)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lch/lib/gsonobjects/SeedPoint;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-static {v2, v3}, Lch/android/api/network/ChHttp;->post(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 101
    .local v1, "result":Z
    const-string v2, "IAB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lch/android/lib/sponsorpay/ChSponsorPay;->access$1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "O/Seed2And/SponsorPay"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lch/android/lib/sponsorpay/ChSponsorPay$2$1;->this$1:Lch/android/lib/sponsorpay/ChSponsorPay$2;

    invoke-static {v4}, Lch/android/lib/sponsorpay/ChSponsorPay$2;->access$1(Lch/android/lib/sponsorpay/ChSponsorPay$2;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v2, "IAB"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send purchase data to server : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method
