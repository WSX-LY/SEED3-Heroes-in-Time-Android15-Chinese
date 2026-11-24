.class public Lcom/sponsorpay/sdk/android/advertiser/SponsorPayCallbackDelayer;
.super Landroid/content/BroadcastReceiver;
.source "SponsorPayCallbackDelayer.java"


# static fields
.field public static final ACTION_TRIGGER_SPONSORPAY_CALLBACK:Ljava/lang/String; = "ACTION_TRIGGER_SPONSORPAY_CALLBACK"

.field public static final EXTRA_APPID_KEY:Ljava/lang/String; = "EXTRA_APPID_KEY"

.field public static final EXTRA_CUSTOM_PARAMETERS:Ljava/lang/String; = "EXTRA_CUSTOM_PARAMETERS"

.field public static final MILLISECONDS_IN_MINUTE:I = 0xea60


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static callWithDelay(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "delayMinutes"    # J

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayCallbackDelayer;->callWithDelay(Landroid/content/Context;Ljava/lang/String;JLjava/util/HashMap;)V

    .line 53
    return-void
.end method

.method public static callWithDelay(Landroid/content/Context;Ljava/lang/String;JLjava/util/HashMap;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "delayMinutes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p4, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v9, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayCallbackDelayer;

    invoke-virtual {v9}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "callWithDelay called"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-eqz p1, :cond_0

    const-string v9, ""

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 79
    :cond_0
    new-instance v4, Lcom/sponsorpay/sdk/android/HostInfo;

    invoke-direct {v4, p0}, Lcom/sponsorpay/sdk/android/HostInfo;-><init>(Landroid/content/Context;)V

    .line 80
    .local v4, "hostInfo":Lcom/sponsorpay/sdk/android/HostInfo;
    invoke-virtual {v4}, Lcom/sponsorpay/sdk/android/HostInfo;->getAppId()Ljava/lang/String;

    .line 84
    .end local v4    # "hostInfo":Lcom/sponsorpay/sdk/android/HostInfo;
    :cond_1
    new-instance v3, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayCallbackDelayer;

    invoke-direct {v3}, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayCallbackDelayer;-><init>()V

    .line 85
    .local v3, "delayerInstance":Lcom/sponsorpay/sdk/android/advertiser/SponsorPayCallbackDelayer;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v9, "ACTION_TRIGGER_SPONSORPAY_CALLBACK"

    invoke-direct {v2, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "checkInFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    new-instance v5, Landroid/content/Intent;

    const-string v9, "ACTION_TRIGGER_SPONSORPAY_CALLBACK"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v5, "intent":Landroid/content/Intent;
    const-string v9, "EXTRA_APPID_KEY"

    invoke-virtual {v5, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    if-eqz p4, :cond_2

    .line 95
    invoke-static/range {p4 .. p4}, Lcom/sponsorpay/sdk/android/UrlBuilder;->validateKeyValueParams(Ljava/util/Map;)V

    .line 96
    const-string v9, "EXTRA_CUSTOM_PARAMETERS"

    move-object/from16 v0, p4

    invoke-virtual {v5, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 99
    :cond_2
    const/4 v9, 0x0

    .line 100
    const/high16 v10, 0x40000000    # 2.0f

    .line 99
    invoke-static {p0, v9, v5, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 103
    .local v8, "triggerCallbackPendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 104
    const-wide/32 v11, 0xea60

    mul-long/2addr v11, p2

    .line 103
    add-long v6, v9, v11

    .line 105
    .local v6, "timeForCheckInAlarm":J
    const-string v9, "alarm"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 106
    .local v1, "alarmManager":Landroid/app/AlarmManager;
    const/4 v9, 0x2

    invoke-virtual {v1, v9, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 108
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Calling SponsorPayAdvertiser.register"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "EXTRA_CUSTOM_PARAMETERS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 122
    .local v1, "inflatedKvMap":Ljava/io/Serializable;
    instance-of v2, v1, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 123
    check-cast v0, Ljava/util/HashMap;

    .line 126
    :cond_0
    const-string v2, "EXTRA_APPID_KEY"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/sponsorpay/sdk/android/advertiser/SponsorPayAdvertiser;->register(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 127
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    return-void
.end method
