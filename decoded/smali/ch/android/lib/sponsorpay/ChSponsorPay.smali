.class public Lch/android/lib/sponsorpay/ChSponsorPay;
.super Ljava/lang/Object;
.source "ChSponsorPay.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "4454"

.field private static final SECURITY_TOKEN:Ljava/lang/String; = "seed120321"

.field private static sActivity:Landroid/app/Activity;

.field private static sDba:Lch/kingdoms/android/db/DBAdapter;

.field private static sHandler:Landroid/os/Handler;

.field private static sNumber:Ljava/lang/String;

.field private static sUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lch/android/lib/sponsorpay/ChSponsorPay;->sActivity:Landroid/app/Activity;

    .line 30
    sput-object v0, Lch/android/lib/sponsorpay/ChSponsorPay;->sDba:Lch/kingdoms/android/db/DBAdapter;

    .line 31
    sput-object v0, Lch/android/lib/sponsorpay/ChSponsorPay;->sHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lch/android/lib/sponsorpay/ChSponsorPay;->sActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lch/android/lib/sponsorpay/ChSponsorPay;->sNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Landroid/os/Handler;Lch/kingdoms/android/db/DBAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "dba"    # Lch/kingdoms/android/db/DBAdapter;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 37
    sput-object p0, Lch/android/lib/sponsorpay/ChSponsorPay;->sActivity:Landroid/app/Activity;

    .line 38
    sput-object p1, Lch/android/lib/sponsorpay/ChSponsorPay;->sHandler:Landroid/os/Handler;

    .line 39
    sput-object p2, Lch/android/lib/sponsorpay/ChSponsorPay;->sDba:Lch/kingdoms/android/db/DBAdapter;

    .line 41
    sput-object p3, Lch/android/lib/sponsorpay/ChSponsorPay;->sNumber:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static requestSponsorPayPoints()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-static {}, Lcom/openfeint/api/OpenFeint;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lcom/openfeint/api/OpenFeint;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/api/resource/CurrentUser;->userID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/android/lib/sponsorpay/ChSponsorPay;->sUserId:Ljava/lang/String;

    .line 62
    :goto_0
    sget-object v0, Lch/android/lib/sponsorpay/ChSponsorPay;->sDba:Lch/kingdoms/android/db/DBAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lch/android/lib/sponsorpay/ChSponsorPay;->sUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lch/android/lib/sponsorpay/ChSponsorPay;->sActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lch/android/lib/sponsorpay/ChSponsorPay;->sUserId:Ljava/lang/String;

    new-instance v2, Lch/android/lib/sponsorpay/ChSponsorPay$2;

    invoke-direct {v2}, Lch/android/lib/sponsorpay/ChSponsorPay$2;-><init>()V

    .line 108
    const-string v4, "seed120321"

    const-string v5, "4454"

    .line 63
    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->requestNewCoins(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/sdk/android/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void

    .line 60
    :cond_1
    sput-object v3, Lch/android/lib/sponsorpay/ChSponsorPay;->sUserId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static requestSponsorPayPointsByHandler()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lch/android/lib/sponsorpay/ChSponsorPay;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lch/android/lib/sponsorpay/ChSponsorPay;->sHandler:Landroid/os/Handler;

    new-instance v1, Lch/android/lib/sponsorpay/ChSponsorPay$1;

    invoke-direct {v1}, Lch/android/lib/sponsorpay/ChSponsorPay$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    :cond_0
    return-void
.end method
