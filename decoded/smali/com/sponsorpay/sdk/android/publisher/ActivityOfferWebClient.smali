.class public Lcom/sponsorpay/sdk/android/publisher/ActivityOfferWebClient;
.super Lcom/sponsorpay/sdk/android/publisher/OfferWebClient;
.source "ActivityOfferWebClient.java"


# instance fields
.field private mHostActivity:Landroid/app/Activity;

.field private mShouldHostActivityStayOpen:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "hostActivity"    # Landroid/app/Activity;
    .param p2, "shouldStayOpen"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/OfferWebClient;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/ActivityOfferWebClient;->mHostActivity:Landroid/app/Activity;

    .line 26
    iput-boolean p2, p0, Lcom/sponsorpay/sdk/android/publisher/ActivityOfferWebClient;->mShouldHostActivityStayOpen:Z

    .line 27
    return-void
.end method


# virtual methods
.method protected onSponsorPayExitScheme(ILjava/lang/String;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "targetUrl"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/ActivityOfferWebClient;->mHostActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setResult(I)V

    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, "willCloseHostActivity":Z
    if-nez p2, :cond_1

    .line 35
    const/4 v0, 0x1

    .line 41
    :goto_0
    const-string v1, "OfferWebClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Should stay open: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/sponsorpay/sdk/android/publisher/ActivityOfferWebClient;->mShouldHostActivityStayOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 42
    const-string v3, ", will close activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/ActivityOfferWebClient;->mHostActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 46
    :cond_0
    return-void

    .line 37
    :cond_1
    iget-boolean v1, p0, Lcom/sponsorpay/sdk/android/publisher/ActivityOfferWebClient;->mShouldHostActivityStayOpen:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 38
    :goto_1
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/ActivityOfferWebClient;->mHostActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1, p2}, Lcom/sponsorpay/sdk/android/publisher/ActivityOfferWebClient;->launchActivityWithUrl(Landroid/app/Activity;Ljava/lang/String;)Z

    goto :goto_0

    .line 37
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
