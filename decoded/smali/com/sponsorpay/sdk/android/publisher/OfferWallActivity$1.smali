.class Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity$1;
.super Lcom/sponsorpay/sdk/android/publisher/ActivityOfferWebClient;
.source "OfferWallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;


# direct methods
.method constructor <init>(Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;Landroid/app/Activity;Z)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Activity;
    .param p3, "$anonymous1"    # Z

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity$1;->this$0:Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;

    .line 153
    invoke-direct {p0, p2, p3}, Lcom/sponsorpay/sdk/android/publisher/ActivityOfferWebClient;-><init>(Landroid/app/Activity;Z)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity$1;->this$0:Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;

    invoke-static {v0}, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->access$0(Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity$1;->this$0:Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;

    invoke-static {v0}, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->access$0(Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 159
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity$1;->this$0:Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->access$1(Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;Landroid/app/ProgressDialog;)V

    .line 161
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sponsorpay/sdk/android/publisher/ActivityOfferWebClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 170
    sparse-switch p2, :sswitch_data_0

    .line 176
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_LOADING_OFFERWALL:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    .line 179
    .local v0, "error":Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;
    :goto_0
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity$1;->this$0:Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;

    invoke-virtual {v1, v0}, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->showErrorDialog(Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;)V

    .line 180
    return-void

    .line 173
    .end local v0    # "error":Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;
    :sswitch_0
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_LOADING_OFFERWALL_NO_INTERNET_CONNECTION:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    .line 174
    .restart local v0    # "error":Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;
    goto :goto_0

    .line 170
    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_0
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method
