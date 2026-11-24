.class public Lcom/sponsorpay/sdk/android/HostInfo;
.super Ljava/lang/Object;
.source "HostInfo.java"


# static fields
.field private static final ANDROID_OS_PREFIX:Ljava/lang/String; = "Android OS "

.field private static final SPONSORPAY_APP_ID_KEY:Ljava/lang/String; = "SPONSORPAY_APP_ID"


# instance fields
.field private mAndroidId:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLanguageSetting:Ljava/lang/String;

.field private mOsVersion:Ljava/lang/String;

.field private mPhoneVersion:Ljava/lang/String;

.field private mUDID:Ljava/lang/String;

.field private mWifiMacAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mContext:Landroid/content/Context;

    .line 139
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 138
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 142
    .local v1, "tManager":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mUDID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mLanguageSetting:Ljava/lang/String;

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Android OS "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mOsVersion:Ljava/lang/String;

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mPhoneVersion:Ljava/lang/String;

    .line 157
    iget-object v4, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mAndroidId:Ljava/lang/String;

    .line 159
    iget-object v4, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mAndroidId:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 160
    const-string v4, ""

    iput-object v4, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mAndroidId:Ljava/lang/String;

    .line 165
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 166
    .local v3, "wifiMan":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 167
    .local v2, "wifiInf":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mWifiMacAddress:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    .end local v2    # "wifiInf":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifiMan":Landroid/net/wifi/WifiManager;
    :goto_1
    iget-object v4, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mWifiMacAddress:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 172
    const-string v4, ""

    iput-object v4, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mWifiMacAddress:Ljava/lang/String;

    .line 174
    :cond_1
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, ""

    iput-object v4, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mUDID:Ljava/lang/String;

    goto :goto_0

    .line 168
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private getValueFromAppMetadata(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    .line 192
    .local v1, "appMetadata":Landroid/os/Bundle;
    :try_start_0
    iget-object v5, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 193
    const/16 v7, 0x80

    .line 192
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 198
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 200
    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-object v4

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 204
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 206
    .local v3, "retrievedValue":Ljava/lang/Object;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mAndroidId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mAppId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mAppId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    :cond_0
    const-string v0, "SPONSORPAY_APP_ID"

    invoke-direct {p0, v0}, Lcom/sponsorpay/sdk/android/HostInfo;->getValueFromAppMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mAppId:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mAppId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mAppId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 232
    const-string v1, "SponsorPay SDK: no valid App ID has been provided. Please set a valid App ID in your application manifest or provide one at runtime. See the integration guide or the SDK javadoc for more information."

    .line 231
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageSetting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mLanguageSetting:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mPhoneVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mUDID:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mWifiMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public setOverriddenAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/HostInfo;->mAppId:Ljava/lang/String;

    .line 247
    return-void
.end method
