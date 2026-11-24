.class Lcom/sponsorpay/sdk/android/publisher/OfferBanner$1;
.super Lcom/sponsorpay/sdk/android/publisher/OfferWebClient;
.source "OfferBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->getBannerView(Landroid/app/Activity;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/sdk/android/publisher/OfferBanner;

.field private final synthetic val$hostActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/sponsorpay/sdk/android/publisher/OfferBanner;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner$1;->this$0:Lcom/sponsorpay/sdk/android/publisher/OfferBanner;

    iput-object p2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner$1;->val$hostActivity:Landroid/app/Activity;

    .line 132
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/OfferWebClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected onSponsorPayExitScheme(ILjava/lang/String;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "targetUrl"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner$1;->val$hostActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, p2}, Lcom/sponsorpay/sdk/android/publisher/OfferBanner$1;->launchActivityWithUrl(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 136
    return-void
.end method
