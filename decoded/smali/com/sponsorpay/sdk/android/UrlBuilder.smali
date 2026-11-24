.class public Lcom/sponsorpay/sdk/android/UrlBuilder;
.super Ljava/lang/Object;
.source "UrlBuilder.java"


# static fields
.field private static final ANDROID_ID_KEY:Ljava/lang/String; = "android_id"

.field private static final APPID_KEY:Ljava/lang/String; = "appid"

.field private static final LANGUAGE_KEY:Ljava/lang/String; = "language"

.field private static final OS_VERSION_KEY:Ljava/lang/String; = "os_version"

.field private static final PHONE_VERSION_KEY:Ljava/lang/String; = "phone_version"

.field private static final SDK_RELEASE_VERSION_KEY:Ljava/lang/String; = "sdk_version"

.field private static final UDID_KEY:Ljava/lang/String; = "device_id"

.field public static final URL_PARAM_ALLOW_CAMPAIGN_KEY:Ljava/lang/String; = "allow_campaign"

.field public static final URL_PARAM_CURRENCY_NAME_KEY:Ljava/lang/String; = "currency"

.field public static final URL_PARAM_OFFSET_KEY:Ljava/lang/String; = "offset"

.field private static final URL_PARAM_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final URL_PARAM_VALUE_ON:Ljava/lang/String; = "on"

.field private static final USERID_KEY:Ljava/lang/String; = "uid"

.field private static final WIFI_MAC_ADDRESS_KEY:Ljava/lang/String; = "mac_address"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUrl(Ljava/lang/String;Lcom/sponsorpay/sdk/android/HostInfo;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "resourceUrl"    # Ljava/lang/String;
    .param p1, "hostInfo"    # Lcom/sponsorpay/sdk/android/HostInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/sdk/android/HostInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "extraKeysValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 112
    invoke-static {p0, v0, p1, p2, v0}, Lcom/sponsorpay/sdk/android/UrlBuilder;->buildUrl(Ljava/lang/String;Ljava/lang/String;Lcom/sponsorpay/sdk/android/HostInfo;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildUrl(Ljava/lang/String;Ljava/lang/String;Lcom/sponsorpay/sdk/android/HostInfo;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "resourceUrl"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "hostInfo"    # Lcom/sponsorpay/sdk/android/HostInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/sdk/android/HostInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 94
    .local p3, "extraKeysValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sponsorpay/sdk/android/UrlBuilder;->buildUrl(Ljava/lang/String;Ljava/lang/String;Lcom/sponsorpay/sdk/android/HostInfo;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildUrl(Ljava/lang/String;Ljava/lang/String;Lcom/sponsorpay/sdk/android/HostInfo;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "resourceUrl"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "hostInfo"    # Lcom/sponsorpay/sdk/android/HostInfo;
    .param p4, "secretKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/sdk/android/HostInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 136
    .local p3, "extraKeysValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v3, "keyValueParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 139
    const-string v5, "uid"

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_0
    const-string v5, "device_id"

    invoke-virtual {p2}, Lcom/sponsorpay/sdk/android/HostInfo;->getUDID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v5, "appid"

    invoke-virtual {p2}, Lcom/sponsorpay/sdk/android/HostInfo;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v5, "os_version"

    invoke-virtual {p2}, Lcom/sponsorpay/sdk/android/HostInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v5, "phone_version"

    invoke-virtual {p2}, Lcom/sponsorpay/sdk/android/HostInfo;->getPhoneVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v5, "language"

    invoke-virtual {p2}, Lcom/sponsorpay/sdk/android/HostInfo;->getLanguageSetting()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v5, "sdk_version"

    sget-object v6, Lcom/sponsorpay/sdk/android/SponsorPay;->RELEASE_VERSION_STRING:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v5, "android_id"

    invoke-virtual {p2}, Lcom/sponsorpay/sdk/android/HostInfo;->getAndroidId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v5, "mac_address"

    invoke-virtual {p2}, Lcom/sponsorpay/sdk/android/HostInfo;->getWifiMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    if-eqz p3, :cond_1

    .line 151
    invoke-static {p3}, Lcom/sponsorpay/sdk/android/UrlBuilder;->validateKeyValueParams(Ljava/util/Map;)V

    .line 152
    invoke-virtual {v3, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 155
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 156
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 158
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 160
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 164
    if-eqz p4, :cond_2

    .line 165
    const-string v5, "signature"

    .line 166
    invoke-static {v3, p4}, Lcom/sponsorpay/sdk/android/SignatureTools;->generateSignatureForParameters(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 165
    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 169
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 171
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 160
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 161
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method public static mapKeysToValues([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p0, "keys"    # [Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    array-length v4, p0

    array-length v5, p1

    if-eq v4, v5, :cond_0

    .line 206
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "SponsorPay SDK: When specifying Custom Parameters using two arrays of Keys and Values, both must have the same length."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 209
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    array-length v4, p0

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 211
    .local v2, "retval":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_1

    .line 224
    return-object v2

    .line 212
    :cond_1
    aget-object v1, p0, v0

    .line 213
    .local v1, "k":Ljava/lang/String;
    aget-object v3, p1, v0

    .line 215
    .local v3, "v":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 216
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "SponsorPay SDK: When specifying Custom Parameters using two arrays of Keys and Values, none of their elements can be empty or null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 221
    :cond_3
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static validateKeyValueParams(Ljava/util/Map;)V
    .locals 5
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
    .line 181
    .local p0, "kvParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 182
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 183
    .local v0, "extraKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 192
    .end local v0    # "extraKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 183
    .restart local v0    # "extraKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    .local v1, "k":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    .local v2, "v":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v2, :cond_3

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 187
    const-string v4, "SponsorPay SDK: Custom Parameters cannot have an empty or null Key or Value."

    .line 186
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
