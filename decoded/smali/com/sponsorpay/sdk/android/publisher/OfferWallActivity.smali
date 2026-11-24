.class public Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;
.super Landroid/app/Activity;
.source "OfferWallActivity.java"


# static fields
.field public static final EXTRA_KEYS_VALUES_MAP:Ljava/lang/String; = "EXTRA_KEY_VALUES_MAP"

.field public static final EXTRA_OVERRIDEN_APP_ID:Ljava/lang/String; = "EXTRA_OVERRIDEN_APP_ID"

.field public static final EXTRA_SHOULD_STAY_OPEN_KEY:Ljava/lang/String; = "EXTRA_SHOULD_REMAIN_OPEN_KEY"

.field public static final EXTRA_USERID_KEY:Ljava/lang/String; = "EXTRA_USERID_KEY"

.field private static final OFFERWALL_PRODUCTION_BASE_URL:Ljava/lang/String; = "http://iframe.sponsorpay.com/mobile?"

.field private static final OFFERWALL_STAGING_BASE_URL:Ljava/lang/String; = "http://staging.iframe.sponsorpay.com/mobile?"

.field public static final RESULT_CODE_NO_STATUS_CODE:I = -0xa


# instance fields
.field private SHOULD_STAY_OPEN_DEFAULT:Z

.field private mCustomKeysValues:Ljava/util/Map;
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

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mShouldStayOpen:Z

.field private mUserId:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->SHOULD_STAY_OPEN_DEFAULT:Z

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mErrorDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 120
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 121
    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, p0}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 122
    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 123
    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 124
    sget-object v3, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->LOADING_OFFERWALL:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v3}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 127
    new-instance v2, Lcom/sponsorpay/sdk/android/HostInfo;

    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sponsorpay/sdk/android/HostInfo;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

    .line 130
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_USERID_KEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mUserId:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_SHOULD_REMAIN_OPEN_KEY"

    .line 133
    iget-boolean v4, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->SHOULD_STAY_OPEN_DEFAULT:Z

    .line 132
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mShouldStayOpen:Z

    .line 135
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_KEY_VALUES_MAP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 136
    .local v0, "inflatedKvMap":Ljava/io/Serializable;
    instance-of v2, v0, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 137
    check-cast v0, Ljava/util/HashMap;

    .end local v0    # "inflatedKvMap":Ljava/io/Serializable;
    iput-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mCustomKeysValues:Ljava/util/Map;

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_OVERRIDEN_APP_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "overridenAppId":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

    invoke-virtual {v2, v1}, Lcom/sponsorpay/sdk/android/HostInfo;->setOverriddenAppId(Ljava/lang/String;)V

    .line 146
    :cond_1
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    .line 147
    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 148
    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v2}, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->setContentView(Landroid/view/View;)V

    .line 150
    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 151
    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 153
    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity$1;

    .line 154
    iget-boolean v4, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mShouldStayOpen:Z

    invoke-direct {v3, p0, p0, v4}, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity$1;-><init>(Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;Landroid/app/Activity;Z)V

    .line 153
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 182
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 188
    iput-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mErrorDialog:Landroid/app/AlertDialog;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 192
    iput-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 194
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 195
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 203
    invoke-static {}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->shouldUseStagingUrls()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "http://staging.iframe.sponsorpay.com/mobile?"

    .line 206
    .local v1, "offerWallBaseUrl":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mUserId:Ljava/lang/String;

    iget-object v4, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

    .line 207
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mCustomKeysValues:Ljava/util/Map;

    const/4 v6, 0x0

    .line 206
    invoke-static {v1, v3, v4, v5, v6}, Lcom/sponsorpay/sdk/android/UrlBuilder;->buildUrl(Ljava/lang/String;Ljava/lang/String;Lcom/sponsorpay/sdk/android/HostInfo;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "offerwallUrl":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Offerwall request url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v3, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v2    # "offerwallUrl":Ljava/lang/String;
    :goto_1
    return-void

    .line 204
    .end local v1    # "offerWallBaseUrl":Ljava/lang/String;
    :cond_0
    const-string v1, "http://iframe.sponsorpay.com/mobile?"

    goto :goto_0

    .line 210
    .restart local v1    # "offerWallBaseUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected showErrorDialog(Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;)V
    .locals 1
    .param p1, "error"    # Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    .prologue
    .line 222
    invoke-static {p1}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->showErrorDialog(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method protected showErrorDialog(Ljava/lang/String;)V
    .locals 8
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 233
    move-object v4, p1

    .line 235
    .local v4, "errorMessage":Ljava/lang/String;
    sget-object v5, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_DIALOG_TITLE:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v5}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "errorDialogTitle":Ljava/lang/String;
    sget-object v5, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->DISMISS_ERROR_DIALOG:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v5}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "dismissButtonCaption":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 241
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 242
    new-instance v5, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity$2;

    invoke-direct {v5, p0}, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity$2;-><init>(Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mErrorDialog:Landroid/app/AlertDialog;

    .line 251
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 253
    :try_start_0
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v2

    .line 255
    .local v2, "e":Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Couldn\'t show error dialog. Not displayed error message is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 255
    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
