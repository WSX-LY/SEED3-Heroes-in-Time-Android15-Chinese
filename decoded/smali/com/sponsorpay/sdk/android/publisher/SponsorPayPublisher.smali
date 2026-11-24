.class public Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;
.super Ljava/lang/Object;
.source "SponsorPayPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;
    }
.end annotation


# static fields
.field public static final DEFAULT_OFFERWALL_REQUEST_CODE:I = 0xff

.field public static final PREFERENCES_FILENAME:Ljava/lang/String; = "SponsorPayPublisherState"

.field private static sCustomKeysValues:Ljava/util/Map;
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

.field private static sDefaultOfferBannerAdShape:Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;

.field private static sShouldUseStagingUrls:Z

.field private static sUIStrings:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner;->SP_AD_SHAPE_320X50:Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sDefaultOfferBannerAdShape:Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;

    .line 186
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sShouldUseStagingUrls:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCustomParameters()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sCustomKeysValues:Ljava/util/Map;

    .line 160
    return-void
.end method

.method static convertDevicePixelsIntoPixelsMeasurement(FLandroid/content/Context;)I
    .locals 4
    .param p0, "dps"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 746
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 747
    .local v1, "scale":F
    mul-float v2, p0, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 748
    .local v0, "pixels":I
    return v0
.end method

.method private static getCustomParameters(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "passedParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 183
    .local v0, "retval":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 177
    .end local v0    # "retval":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sCustomKeysValues:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 178
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sCustomKeysValues:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .restart local v0    # "retval":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 180
    .end local v0    # "retval":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "retval":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static getIntentForOfferWallActivity(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-static {p0, p1, v0, v0, v0}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->getIntentForOfferWallActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentForOfferWallActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "shouldStayOpen"    # Ljava/lang/Boolean;
    .param p3, "overrideAppId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 306
    .local p4, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_USERID_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    if-eqz p2, :cond_0

    .line 310
    const-string v1, "EXTRA_SHOULD_REMAIN_OPEN_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 312
    :cond_0
    if-eqz p3, :cond_1

    .line 313
    const-string v1, "EXTRA_OVERRIDEN_APP_ID"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    :cond_1
    const-string v1, "EXTRA_KEY_VALUES_MAP"

    invoke-static {p4}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->getCustomParameters(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 317
    return-object v0
.end method

.method public static getIntentForOfferWallActivity(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "shouldStayOpen"    # Z

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->getIntentForOfferWallActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentForOfferWallActivity(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "shouldStayOpen"    # Z
    .param p3, "overrideAppId"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p3, v1}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->getIntentForOfferWallActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getUIString(Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "identifier"    # Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    .prologue
    .line 80
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->initUIStrings()V

    .line 83
    :cond_0
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static initUIStrings()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    .line 60
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_DIALOG_TITLE:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->DISMISS_ERROR_DIALOG:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Dismiss"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->GENERIC_ERROR:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    .line 63
    const-string v2, "An error happened when performing this operation"

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_LOADING_OFFERWALL:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    .line 65
    const-string v2, "An error happened when loading the offer wall"

    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_LOADING_OFFERWALL_NO_INTERNET_CONNECTION:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    .line 67
    const-string v2, "An error happened when loading the offer wall (no internet connection)"

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->LOADING_INTERSTITIAL:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Loading..."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->LOADING_OFFERWALL:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Loading..."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public static loadShowInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;)V
    .locals 9
    .param p0, "callingActivity"    # Landroid/app/Activity;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "loadingStatusListener"    # Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;

    .prologue
    const/4 v3, 0x0

    .line 552
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-static/range {v0 .. v8}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->loadShowInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 554
    return-void
.end method

.method public static loadShowInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;Ljava/lang/Boolean;)V
    .locals 9
    .param p0, "callingActivity"    # Landroid/app/Activity;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "loadingStatusListener"    # Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;
    .param p3, "shouldStayOpen"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 530
    .line 531
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v7, v4

    move-object v8, v4

    .line 530
    invoke-static/range {v0 .. v8}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->loadShowInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 532
    return-void
.end method

.method public static loadShowInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "callingActivity"    # Landroid/app/Activity;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "loadingStatusListener"    # Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;
    .param p3, "shouldStayOpen"    # Ljava/lang/Boolean;
    .param p4, "backgroundUrl"    # Ljava/lang/String;
    .param p5, "skinName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 501
    .line 502
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v8, v7

    .line 501
    invoke-static/range {v0 .. v8}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->loadShowInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 503
    return-void
.end method

.method public static loadShowInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p0, "callingActivity"    # Landroid/app/Activity;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "loadingStatusListener"    # Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;
    .param p3, "shouldStayOpen"    # Ljava/lang/Boolean;
    .param p4, "backgroundUrl"    # Ljava/lang/String;
    .param p5, "skinName"    # Ljava/lang/String;
    .param p6, "loadingTimeoutSecs"    # I

    .prologue
    const/4 v7, 0x0

    .line 464
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v8, v7

    invoke-static/range {v0 .. v8}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->loadShowInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 466
    return-void
.end method

.method public static loadShowInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p0, "callingActivity"    # Landroid/app/Activity;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "loadingStatusListener"    # Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;
    .param p3, "shouldStayOpen"    # Ljava/lang/Boolean;
    .param p4, "backgroundUrl"    # Ljava/lang/String;
    .param p5, "skinName"    # Ljava/lang/String;
    .param p6, "loadingTimeoutSecs"    # I
    .param p7, "overriddenAppId"    # Ljava/lang/String;

    .prologue
    .line 357
    .line 358
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 357
    invoke-static/range {v0 .. v8}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->loadShowInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 359
    return-void
.end method

.method public static loadShowInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "callingActivity"    # Landroid/app/Activity;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "loadingStatusListener"    # Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;
    .param p3, "shouldStayOpen"    # Ljava/lang/Boolean;
    .param p4, "backgroundUrl"    # Ljava/lang/String;
    .param p5, "skinName"    # Ljava/lang/String;
    .param p6, "loadingTimeoutSecs"    # I
    .param p7, "overriddenAppId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p8, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/sponsorpay/sdk/android/HostInfo;

    invoke-direct {v1, p0}, Lcom/sponsorpay/sdk/android/HostInfo;-><init>(Landroid/content/Context;)V

    .line 403
    .local v1, "hostInfo":Lcom/sponsorpay/sdk/android/HostInfo;
    if-eqz p7, :cond_0

    .line 404
    invoke-virtual {v1, p7}, Lcom/sponsorpay/sdk/android/HostInfo;->setOverriddenAppId(Ljava/lang/String;)V

    .line 406
    :cond_0
    new-instance v2, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sponsorpay/sdk/android/HostInfo;Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;)V

    .line 409
    .local v2, "il":Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;
    if-eqz p3, :cond_1

    .line 410
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->setShouldStayOpen(Z)V

    .line 411
    :cond_1
    if-eqz p4, :cond_2

    .line 412
    invoke-virtual {v2, p4}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->setBackgroundUrl(Ljava/lang/String;)V

    .line 413
    :cond_2
    if-eqz p5, :cond_3

    .line 414
    invoke-virtual {v2, p5}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->setSkinName(Ljava/lang/String;)V

    .line 415
    :cond_3
    if-lez p6, :cond_4

    .line 416
    invoke-virtual {v2, p6}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->setLoadingTimeoutSecs(I)V

    .line 419
    :cond_4
    invoke-static {p8}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->getCustomParameters(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    .line 421
    .local v0, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_5

    .line 422
    invoke-virtual {v2, v0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->setCustomParameters(Ljava/util/Map;)V

    .line 425
    :cond_5
    invoke-virtual {v2}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->startLoading()V

    .line 426
    return-void
.end method

.method public static requestNewCoins(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;
    .param p3, "transactionId"    # Ljava/lang/String;
    .param p4, "securityToken"    # Ljava/lang/String;
    .param p5, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 583
    .line 584
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 583
    invoke-static/range {v0 .. v6}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->requestNewCoins(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 585
    return-void
.end method

.method public static requestNewCoins(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;
    .param p3, "transactionId"    # Ljava/lang/String;
    .param p4, "securityToken"    # Ljava/lang/String;
    .param p5, "applicationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p6, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lcom/sponsorpay/sdk/android/HostInfo;

    invoke-direct {v4, p0}, Lcom/sponsorpay/sdk/android/HostInfo;-><init>(Landroid/content/Context;)V

    .line 618
    .local v4, "hostInfo":Lcom/sponsorpay/sdk/android/HostInfo;
    if-eqz p5, :cond_0

    .line 619
    invoke-virtual {v4, p5}, Lcom/sponsorpay/sdk/android/HostInfo;->setOverriddenAppId(Ljava/lang/String;)V

    .line 621
    :cond_0
    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;Lcom/sponsorpay/sdk/android/HostInfo;Ljava/lang/String;)V

    .line 624
    .local v0, "vcc":Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;
    invoke-static {p6}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->getCustomParameters(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->setCustomParameters(Ljava/util/Map;)V

    .line 626
    invoke-virtual {v0}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;->fetchDeltaOfCoins()V

    .line 627
    return-void
.end method

.method public static requestOfferBanner(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;
    .param p3, "offerBannerAdShape"    # Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;
    .param p4, "currencyName"    # Ljava/lang/String;
    .param p5, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 655
    .line 656
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 655
    invoke-static/range {v0 .. v6}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->requestOfferBanner(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;

    move-result-object v0

    return-object v0
.end method

.method public static requestOfferBanner(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;
    .param p3, "offerBannerAdShape"    # Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;
    .param p4, "currencyName"    # Ljava/lang/String;
    .param p5, "applicationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;",
            "Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;"
        }
    .end annotation

    .prologue
    .line 687
    .local p6, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lcom/sponsorpay/sdk/android/HostInfo;

    invoke-direct {v3, p0}, Lcom/sponsorpay/sdk/android/HostInfo;-><init>(Landroid/content/Context;)V

    .line 689
    .local v3, "hostInfo":Lcom/sponsorpay/sdk/android/HostInfo;
    if-eqz p5, :cond_0

    .line 690
    invoke-virtual {v3, p5}, Lcom/sponsorpay/sdk/android/HostInfo;->setOverriddenAppId(Ljava/lang/String;)V

    .line 692
    :cond_0
    if-nez p3, :cond_1

    .line 693
    sget-object p3, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sDefaultOfferBannerAdShape:Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;

    .line 696
    :cond_1
    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;

    .line 697
    invoke-static {p6}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->getCustomParameters(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 696
    invoke-direct/range {v0 .. v7}, Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/sdk/android/HostInfo;Lcom/sponsorpay/sdk/android/publisher/SPOfferBannerListener;Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;Ljava/lang/String;Ljava/util/Map;)V

    .line 701
    .local v0, "bannerRequest":Lcom/sponsorpay/sdk/android/publisher/OfferBannerRequest;
    return-object v0
.end method

.method static setCookiesIntoCookieManagerInstance([Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p0, "cookies"    # [Ljava/lang/String;
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 717
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 740
    :cond_0
    return-void

    .line 726
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :goto_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 733
    .local v2, "instance":Landroid/webkit/CookieManager;
    sget-object v3, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Setting the following cookies into CookieManager instance "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for base URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 733
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    array-length v4, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, p0, v3

    .line 737
    .local v0, "cookieString":Ljava/lang/String;
    invoke-virtual {v2, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    sget-object v5, Lcom/sponsorpay/sdk/android/publisher/AsyncRequest;->LOG_TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 727
    .end local v0    # "cookieString":Ljava/lang/String;
    .end local v2    # "instance":Landroid/webkit/CookieManager;
    :catch_0
    move-exception v1

    .line 728
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-static {p2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    goto :goto_0
.end method

.method public static setCustomParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object p0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sCustomKeysValues:Ljava/util/Map;

    .line 143
    return-void
.end method

.method public static setCustomParameters([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "keys"    # [Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {p0, p1}, Lcom/sponsorpay/sdk/android/UrlBuilder;->mapKeysToValues([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sCustomKeysValues:Ljava/util/Map;

    .line 153
    return-void
.end method

.method public static setCustomUIString(Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;ILandroid/content/Context;)V
    .locals 1
    .param p0, "identifier"    # Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;
    .param p1, "message"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->setCustomUIString(Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static setCustomUIString(Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;Ljava/lang/String;)V
    .locals 1
    .param p0, "identifier"    # Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 95
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->initUIStrings()V

    .line 98
    :cond_0
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public static setCustomUIStrings(Ljava/util/EnumMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "messages":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->values()[Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 113
    return-void

    .line 108
    :cond_0
    aget-object v0, v3, v2

    .line 109
    .local v0, "condition":Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;
    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->setCustomUIString(Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;Ljava/lang/String;)V

    .line 108
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public static setCustomUIStrings(Ljava/util/EnumMap;Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "messages":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->values()[Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 136
    return-void

    .line 131
    :cond_0
    aget-object v0, v3, v2

    .line 132
    .local v0, "condition":Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;
    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->setCustomUIString(Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;ILandroid/content/Context;)V

    .line 131
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public static setShouldUseStagingUrls(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 189
    sput-boolean p0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sShouldUseStagingUrls:Z

    .line 190
    return-void
.end method

.method public static shouldUseStagingUrls()Z
    .locals 1

    .prologue
    .line 193
    sget-boolean v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->sShouldUseStagingUrls:Z

    return v0
.end method
