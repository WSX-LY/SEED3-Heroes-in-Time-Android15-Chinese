.class public Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;
.super Landroid/app/Activity;
.source "InterstitialActivity.java"


# static fields
.field private static final BACKGROUND_DRAWABLE_ALPHA:I = 0xc4

.field private static final BACKGROUND_DRAWABLE_CORNER_RADIUS:I = 0xa

.field private static final BIGGER_SCREEN_LONG_SIDE_RESOLUTION_DP:I = 0x320

.field private static final BIGGER_SCREEN_SHORT_SIDE_RESOLUTION_DP:I = 0x1e0

.field public static final EXTRA_BASE_DOMAIN_KEY:Ljava/lang/String; = "EXTRA_INITIAL_BASE_URL"

.field public static final EXTRA_COOKIESTRINGS_KEY:Ljava/lang/String; = "EXTRA_COOKIESTRINGS"

.field public static final EXTRA_INITIAL_CONTENT_KEY:Ljava/lang/String; = "EXTRA_INITIAL_CONTENT_KEY"

.field public static final EXTRA_SHOULD_STAY_OPEN_KEY:Ljava/lang/String; = "EXTRA_SHOULD_REMAIN_OPEN_KEY"

.field private static final INTERSTITIAL_BORDER_BIGGER_DEVICE:I = 0xc

.field private static final INTERSTITIAL_BORDER_SMALLER_DEVICE:I = 0x3

.field private static final LONG_SIDE_SIZE_FOR_BIGGER_SCREEN_DP:I = 0x2b2

.field private static final LONG_SIDE_SIZE_FOR_SMALLER_SCREEN_DP:I = 0x1ae

.field private static final SHORT_SIDE_SIZE_FOR_BIGGER_SCREEN_DP:I = 0x17c

.field private static final SHORT_SIDE_SIZE_FOR_SMALLER_SCREEN_DP:I = 0x118


# instance fields
.field private mShouldStayOpen:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private determineInterstitialBorderWidth()I
    .locals 3

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->isHostBiggerDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    .line 187
    .local v0, "worderWidthDP":I
    :goto_0
    int-to-float v1, v0

    .line 188
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 187
    invoke-static {v1, v2}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->convertDevicePixelsIntoPixelsMeasurement(FLandroid/content/Context;)I

    move-result v1

    return v1

    .line 185
    .end local v0    # "worderWidthDP":I
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private static generateBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    const/16 v3, 0x8

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    .line 116
    .local v0, "cornerRadii":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 117
    .local v1, "roundRectBg":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 118
    .local v2, "roundRectBgDrawable":Landroid/graphics/drawable/ShapeDrawable;
    const/16 v3, 0xc4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 120
    return-object v2

    .line 110
    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method private generateLayoutParamsForCurrentDisplay()Landroid/view/ViewGroup$LayoutParams;
    .locals 8

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->isHostBiggerDevice()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 129
    const/16 v5, 0x17c

    .line 130
    .local v5, "shortInterstitialSideDp":I
    const/16 v4, 0x2b2

    .line 138
    .local v4, "longInterstitialSideDp":I
    :goto_0
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->isCurrentOrientationPortrait()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 139
    move v3, v5

    .line 140
    .local v3, "interstitialWidthDp":I
    move v2, v4

    .line 147
    .local v2, "interstitialHeightDp":I
    :goto_1
    int-to-float v7, v3

    .line 146
    invoke-static {v7, v0}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->convertDevicePixelsIntoPixelsMeasurement(FLandroid/content/Context;)I

    move-result v6

    .line 149
    .local v6, "widthPx":I
    int-to-float v7, v2

    .line 148
    invoke-static {v7, v0}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->convertDevicePixelsIntoPixelsMeasurement(FLandroid/content/Context;)I

    move-result v1

    .line 151
    .local v1, "heightPx":I
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v6, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v7

    .line 132
    .end local v1    # "heightPx":I
    .end local v2    # "interstitialHeightDp":I
    .end local v3    # "interstitialWidthDp":I
    .end local v4    # "longInterstitialSideDp":I
    .end local v5    # "shortInterstitialSideDp":I
    .end local v6    # "widthPx":I
    :cond_0
    const/16 v5, 0x118

    .line 133
    .restart local v5    # "shortInterstitialSideDp":I
    const/16 v4, 0x1ae

    .restart local v4    # "longInterstitialSideDp":I
    goto :goto_0

    .line 142
    :cond_1
    move v3, v4

    .line 143
    .restart local v3    # "interstitialWidthDp":I
    move v2, v5

    .restart local v2    # "interstitialHeightDp":I
    goto :goto_1
.end method

.method private isCurrentOrientationPortrait()Z
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 207
    .local v0, "display":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isHostBiggerDevice()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 163
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 164
    .local v3, "display":Landroid/util/DisplayMetrics;
    iget v10, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 165
    .local v4, "displayLongSideResolutionPx":I
    iget v10, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 169
    .local v5, "displayShortSideResolutionPx":I
    const/high16 v10, 0x43f00000    # 480.0f

    invoke-static {v10, v2}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->convertDevicePixelsIntoPixelsMeasurement(FLandroid/content/Context;)I

    move-result v1

    .line 172
    .local v1, "biggerDeviceShortSideResolutionPx":I
    const/high16 v10, 0x44480000    # 800.0f

    invoke-static {v10, v2}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->convertDevicePixelsIntoPixelsMeasurement(FLandroid/content/Context;)I

    move-result v0

    .line 177
    .local v0, "biggerDeviceLongSideResolutionPx":I
    if-lt v5, v1, :cond_0

    move v7, v8

    .line 178
    .local v7, "shorterSidePasses":Z
    :goto_0
    if-lt v4, v0, :cond_1

    move v6, v8

    .line 180
    .local v6, "longerSidePasses":Z
    :goto_1
    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    :goto_2
    return v8

    .end local v6    # "longerSidePasses":Z
    .end local v7    # "shorterSidePasses":Z
    :cond_0
    move v7, v9

    .line 177
    goto :goto_0

    .restart local v7    # "shorterSidePasses":Z
    :cond_1
    move v6, v9

    .line 178
    goto :goto_1

    .restart local v6    # "longerSidePasses":Z
    :cond_2
    move v8, v9

    .line 180
    goto :goto_2
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 213
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->generateLayoutParamsForCurrentDisplay()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 214
    .local v0, "interstitialSize":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 216
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "EXTRA_INITIAL_CONTENT_KEY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "initialInterstitialContent":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "EXTRA_INITIAL_BASE_URL"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "baseDomain":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "EXTRA_COOKIESTRINGS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "cookieStrings":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "EXTRA_SHOULD_REMAIN_OPEN_KEY"

    iget-boolean v4, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mShouldStayOpen:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mShouldStayOpen:Z

    .line 74
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebView:Landroid/webkit/WebView;

    .line 75
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 77
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->generateLayoutParamsForCurrentDisplay()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 78
    .local v8, "interstitialSize":Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v8}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 81
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebViewContainer:Landroid/widget/LinearLayout;

    .line 83
    invoke-direct {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->determineInterstitialBorderWidth()I

    move-result v6

    .line 84
    .local v6, "borderWidth":I
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 86
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 88
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebViewContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 91
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/sponsorpay/sdk/android/publisher/ActivityOfferWebClient;

    .line 95
    iget-boolean v4, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mShouldStayOpen:Z

    invoke-direct {v3, p0, v4}, Lcom/sponsorpay/sdk/android/publisher/ActivityOfferWebClient;-><init>(Landroid/app/Activity;Z)V

    .line 94
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 98
    invoke-static {v7, v1, p0}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->setCookiesIntoCookieManagerInstance([Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 100
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    .line 101
    const/4 v5, 0x0

    .line 100
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 104
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->mWebViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->setContentView(Landroid/view/View;)V

    .line 105
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v3, 0x0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 106
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/sponsorpay/sdk/android/publisher/InterstitialActivity;->generateBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    return-void
.end method
