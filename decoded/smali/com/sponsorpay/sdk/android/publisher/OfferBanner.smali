.class public Lcom/sponsorpay/sdk/android/publisher/OfferBanner;
.super Ljava/lang/Object;
.source "OfferBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "SPOfferBanner"

.field public static final SP_AD_SHAPE_320X50:Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;


# instance fields
.field private mBaseUrl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCookies:[Ljava/lang/String;

.field private mHtmlContent:Ljava/lang/String;

.field private mOfferBannerView:Landroid/view/View;

.field private mShape:Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;

    const/16 v1, 0x140

    const/16 v2, 0x32

    const-string v3, "SP_AD_SHAPE_320X50"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->SP_AD_SHAPE_320X50:Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "htmlContent"    # Ljava/lang/String;
    .param p4, "cookies"    # [Ljava/lang/String;
    .param p5, "shape"    # Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mBaseUrl:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mHtmlContent:Ljava/lang/String;

    .line 109
    iput-object p4, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mCookies:[Ljava/lang/String;

    .line 110
    iput-object p5, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mShape:Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;

    .line 111
    return-void
.end method


# virtual methods
.method public getBannerView(Landroid/app/Activity;)Landroid/view/View;
    .locals 8
    .param p1, "hostActivity"    # Landroid/app/Activity;

    .prologue
    .line 125
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mOfferBannerView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 126
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, "webView":Landroid/webkit/WebView;
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mBaseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mHtmlContent:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mShape:Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;

    invoke-virtual {v1}, Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->convertDevicePixelsIntoPixelsMeasurement(FLandroid/content/Context;)I

    move-result v7

    .line 129
    .local v7, "width":I
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mShape:Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;

    invoke-virtual {v1}, Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->convertDevicePixelsIntoPixelsMeasurement(FLandroid/content/Context;)I

    move-result v6

    .line 130
    .local v6, "height":I
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v1, Lcom/sponsorpay/sdk/android/publisher/OfferBanner$1;

    invoke-direct {v1, p0, p1}, Lcom/sponsorpay/sdk/android/publisher/OfferBanner$1;-><init>(Lcom/sponsorpay/sdk/android/publisher/OfferBanner;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 139
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mCookies:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mBaseUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->setCookiesIntoCookieManagerInstance([Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 141
    iput-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mOfferBannerView:Landroid/view/View;

    .line 143
    .end local v0    # "webView":Landroid/webkit/WebView;
    .end local v6    # "height":I
    .end local v7    # "width":I
    :cond_0
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->mOfferBannerView:Landroid/view/View;

    return-object v1
.end method
