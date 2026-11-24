.class public abstract Lcom/sponsorpay/sdk/android/publisher/OfferWebClient;
.super Landroid/webkit/WebViewClient;
.source "OfferWebClient.java"


# static fields
.field private static final EXIT_URL_RESULT_CODE_PARAM_KEY:Ljava/lang/String; = "status"

.field private static final EXIT_URL_TARGET_URL_PARAM_KEY:Ljava/lang/String; = "url"

.field public static final LOG_TAG:Ljava/lang/String; = "OfferWebClient"

.field public static final RESULT_CODE_NO_STATUS_CODE:I = -0xa

.field private static final SPONSORPAY_EXIT_SCHEMA:Ljava/lang/String; = "sponsorpay://exit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method protected static parseSponsorPayExitUrlForResultCode(Ljava/lang/String;)I
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 60
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "resultCodeAsString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 65
    :goto_0
    return v2

    :cond_0
    const/16 v2, -0xa

    goto :goto_0
.end method

.method protected static parseSponsorPayExitUrlForTargetUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 42
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "targetUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 45
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected launchActivityWithUrl(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .param p1, "launcherActivity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 84
    if-nez p2, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 91
    :goto_0
    return v1

    .line 86
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 91
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected abstract onSponsorPayExitScheme(ILjava/lang/String;)V
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v2, "sponsorpay://exit"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-static {p2}, Lcom/sponsorpay/sdk/android/publisher/OfferWebClient;->parseSponsorPayExitUrlForResultCode(Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, "resultCode":I
    invoke-static {p2}, Lcom/sponsorpay/sdk/android/publisher/OfferWebClient;->parseSponsorPayExitUrlForTargetUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "targetUrl":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/sdk/android/publisher/OfferWebClient;->onSponsorPayExitScheme(ILjava/lang/String;)V

    .line 77
    const/4 v2, 0x1

    .line 79
    .end local v0    # "resultCode":I
    .end local v1    # "targetUrl":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
