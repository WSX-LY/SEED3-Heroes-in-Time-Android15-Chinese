.class public Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;
.super Ljava/lang/Object;
.source "SponsorPayAdvertiser.java"

# interfaces
.implements Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender$APIResultListener;


# static fields
.field private static final PREFERENCES_FILE_NAME:Ljava/lang/String; = "SponsorPayAdvertiserState"

.field private static final STATE_GOT_SUCCESSFUL_RESPONSE_KEY:Ljava/lang/String; = "SponsorPayAdvertiserState"

.field private static mInstance:Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;

.field private static sCustomParameters:Ljava/util/Map;
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

.field private static sShouldUseStagingUrls:Z


# instance fields
.field private mAPICaller:Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;

.field private mContext:Landroid/content/Context;

.field private mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->sShouldUseStagingUrls:Z

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->mContext:Landroid/content/Context;

    .line 144
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->mContext:Landroid/content/Context;

    const-string v1, "SponsorPayAdvertiserState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->mPrefs:Landroid/content/SharedPreferences;

    .line 145
    return-void
.end method

.method public static clearCustomParameters()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->sCustomParameters:Ljava/util/Map;

    .line 90
    return-void
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
    .line 125
    .local p0, "passedParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 133
    .local v0, "retval":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 127
    .end local v0    # "retval":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    sget-object v1, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->sCustomParameters:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 128
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->sCustomParameters:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .restart local v0    # "retval":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 130
    .end local v0    # "retval":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "retval":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static register(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-static {p0, v0, v0}, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->register(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 156
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "overrideAppId"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->register(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 218
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "overrideAppId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p2, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->mInstance:Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;

    invoke-direct {v0, p0}, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->mInstance:Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;

    .line 240
    :cond_0
    sget-object v0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->mInstance:Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;

    invoke-static {p2}, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->getCustomParameters(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->register(Ljava/lang/String;Ljava/util/Map;)V

    .line 241
    return-void
.end method

.method private register(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "overrideAppId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/sponsorpay/sdk/android/HostInfo;

    iget-object v2, p0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sponsorpay/sdk/android/HostInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

    .line 258
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

    invoke-virtual {v1, p1}, Lcom/sponsorpay/sdk/android/HostInfo;->setOverriddenAppId(Ljava/lang/String;)V

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "SponsorPayAdvertiserState"

    .line 267
    const/4 v3, 0x0

    .line 266
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 270
    .local v0, "gotSuccessfulResponseYet":Z
    new-instance v1, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;

    iget-object v2, p0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->mHostInfo:Lcom/sponsorpay/sdk/android/HostInfo;

    invoke-direct {v1, v2, p0}, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;-><init>(Lcom/sponsorpay/sdk/android/HostInfo;Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender$APIResultListener;)V

    iput-object v1, p0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->mAPICaller:Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;

    .line 272
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->mAPICaller:Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;

    invoke-virtual {v1, p2}, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->setCustomParams(Ljava/util/Map;)V

    .line 274
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->mAPICaller:Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;

    invoke-virtual {v1, v0}, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->setWasAlreadySuccessful(Z)V

    .line 275
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->mAPICaller:Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;

    invoke-virtual {v1}, Lcom/sponsorpay/sdk/android/advertiser/AdvertiserCallbackSender;->trigger()V

    .line 276
    return-void
.end method

.method public static registerWithDelay(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delayMin"    # I

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-static {p0, p1, v0, v0}, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->registerWithDelay(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V

    .line 169
    return-void
.end method

.method public static registerWithDelay(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delayMin"    # I
    .param p2, "overrideAppId"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->registerWithDelay(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V

    .line 184
    return-void
.end method

.method public static registerWithDelay(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delayMin"    # I
    .param p2, "overrideAppId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .line 202
    .local p3, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    int-to-long v0, p1

    .line 203
    invoke-static {p3}, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->getCustomParameters(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v2

    .line 202
    invoke-static {p0, p2, v0, v1, v2}, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayCallbackDelayer;->callWithDelay(Landroid/content/Context;Ljava/lang/String;JLjava/util/HashMap;)V

    .line 204
    return-void
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
    .line 72
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object p0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->sCustomParameters:Ljava/util/Map;

    .line 73
    return-void
.end method

.method public static setCustomParameters([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "keys"    # [Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/sponsorpay/sdk/android/UrlBuilder;->mapKeysToValues([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->sCustomParameters:Ljava/util/Map;

    .line 83
    return-void
.end method

.method public static setShouldUseStagingUrls(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 59
    sput-boolean p0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->sShouldUseStagingUrls:Z

    .line 60
    return-void
.end method

.method public static shouldUseStagingUrls()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->sShouldUseStagingUrls:Z

    return v0
.end method


# virtual methods
.method public onAPIResponse(Z)V
    .locals 3
    .param p1, "wasSuccessful"    # Z

    .prologue
    .line 289
    if-eqz p1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 291
    .local v0, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "SponsorPayAdvertiserState"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 292
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 294
    .end local v0    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
