.class public Lch/android/api/iap/ChAndroidIab;
.super Ljava/lang/Object;
.source "ChAndroidIab.java"


# static fields
.field private static isRunBilling:Z

.field private static sActivity:Landroid/app/Activity;

.field private static sDba:Lch/kingdoms/android/db/DBAdapter;

.field private static sIab:Lch/android/lib/iab/ChInAppBilling;

.field private static sOpl:Lch/android/lib/iab/ChOnPurchaseListener;

.field private static sPhoneNumber:Ljava/lang/String;

.field private static sProduct:Lch/android/api/iap/Product;

.field private static sUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lch/android/api/iap/ChAndroidIab;->isRunBilling:Z

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lch/kingdoms/android/db/DBAdapter;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lch/android/api/iap/ChAndroidIab;->sDba:Lch/kingdoms/android/db/DBAdapter;

    return-object v0
.end method

.method static synthetic access$1()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lch/android/api/iap/ChAndroidIab;->sUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2()Lch/android/lib/iab/ChOnPurchaseListener;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lch/android/api/iap/ChAndroidIab;->sOpl:Lch/android/lib/iab/ChOnPurchaseListener;

    return-object v0
.end method

.method static synthetic access$3()Lch/android/lib/iab/ChInAppBilling;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lch/android/api/iap/ChAndroidIab;->sIab:Lch/android/lib/iab/ChInAppBilling;

    return-object v0
.end method

.method static synthetic access$4()Lch/android/api/iap/Product;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lch/android/api/iap/ChAndroidIab;->sProduct:Lch/android/api/iap/Product;

    return-object v0
.end method

.method static synthetic access$5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lch/android/api/iap/ChAndroidIab;->sPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Z)V
    .locals 0

    .prologue
    .line 31
    sput-boolean p0, Lch/android/api/iap/ChAndroidIab;->isRunBilling:Z

    return-void
.end method

.method static synthetic access$7(Lch/android/api/iap/Product;)V
    .locals 0

    .prologue
    .line 23
    sput-object p0, Lch/android/api/iap/ChAndroidIab;->sProduct:Lch/android/api/iap/Product;

    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;Lch/kingdoms/android/db/DBAdapter;Lch/android/lib/iab/ChInAppBilling;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "uiHandler"    # Landroid/os/Handler;
    .param p3, "dba"    # Lch/kingdoms/android/db/DBAdapter;
    .param p4, "iab"    # Lch/android/lib/iab/ChInAppBilling;

    .prologue
    .line 34
    sput-object p0, Lch/android/api/iap/ChAndroidIab;->sActivity:Landroid/app/Activity;

    .line 35
    sput-object p1, Lch/android/api/iap/ChAndroidIab;->sPhoneNumber:Ljava/lang/String;

    .line 36
    sput-object p2, Lch/android/api/iap/ChAndroidIab;->sUiHandler:Landroid/os/Handler;

    .line 37
    sput-object p3, Lch/android/api/iap/ChAndroidIab;->sDba:Lch/kingdoms/android/db/DBAdapter;

    .line 38
    sput-object p4, Lch/android/api/iap/ChAndroidIab;->sIab:Lch/android/lib/iab/ChInAppBilling;

    .line 39
    return-void
.end method

.method private static popUpPurchaseDlg(Lch/android/api/iap/Product;Lch/android/lib/iab/ChOnPurchaseListener;)V
    .locals 2
    .param p0, "product"    # Lch/android/api/iap/Product;
    .param p1, "opl"    # Lch/android/lib/iab/ChOnPurchaseListener;

    .prologue
    .line 74
    sget-object v0, Lch/android/api/iap/ChAndroidIab;->sProduct:Lch/android/api/iap/Product;

    if-nez v0, :cond_1

    .line 75
    sput-object p0, Lch/android/api/iap/ChAndroidIab;->sProduct:Lch/android/api/iap/Product;

    .line 76
    sput-object p1, Lch/android/api/iap/ChAndroidIab;->sOpl:Lch/android/lib/iab/ChOnPurchaseListener;

    .line 77
    sget-object v0, Lch/android/api/iap/ChAndroidIab;->sIab:Lch/android/lib/iab/ChInAppBilling;

    invoke-virtual {v0}, Lch/android/lib/iab/ChInAppBilling;->checkBillingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lch/android/api/iap/ChAndroidIab;->isRunBilling:Z

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lch/android/api/iap/ChAndroidIab;->isRunBilling:Z

    .line 79
    sget-object v0, Lch/android/api/iap/ChAndroidIab;->sUiHandler:Landroid/os/Handler;

    new-instance v1, Lch/android/api/iap/ChAndroidIab$2;

    invoke-direct {v1}, Lch/android/api/iap/ChAndroidIab$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    :cond_0
    invoke-static {}, Lch/android/api/util/NativeHeapChecker;->log()V

    .line 200
    :cond_1
    return-void
.end method

.method public static popUpPurchaseDlg(Ljava/lang/String;ZLjava/lang/String;ILch/android/lib/iab/ChOnPurchaseListener;)V
    .locals 5
    const/4 v4, 0x4
    if-eqz p1, :points
    sget-object v0, Lch/android/api/iap/ChAndroidIab;->sDba:Lch/kingdoms/android/db/DBAdapter;
    const/4 v1, 0x1
    invoke-virtual {v0, p2, v1}, Lch/kingdoms/android/db/DBAdapter;->setPurchase(Ljava/lang/String;Z)Z
    move-result v0
    if-eqz v0, :notify
    const/4 v4, 0x0
    goto :notify
    :points
    if-lez p3, :notify
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;
    move-result-object v0
    if-eqz v0, :notify
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getCashPoints()I
    move-result v1
    add-int v2, v1, p3
    if-lt v2, v1, :notify
    invoke-virtual {v0, v2}, Lch/kingdoms/ndk/data/HeroStatus;->setCashPoins(I)V
    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z
    move-result v2
    if-eqz v2, :rollback
    const/4 v4, 0x0
    goto :notify
    :rollback
    invoke-virtual {v0, v1}, Lch/kingdoms/ndk/data/HeroStatus;->setCashPoins(I)V
    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V
    :notify
    if-eqz p4, :done
    invoke-interface {p4, v4, p0, p3}, Lch/android/lib/iab/ChOnPurchaseListener;->onPurchased(ILjava/lang/String;I)V
    :done
    return-void
.end method

.method public static restoreManagedItems(Lch/android/lib/iab/ChOnPurchaseListener;)V
    .locals 4
    if-eqz p0, :done
    sget-object v0, Lch/android/api/iap/ChAndroidIab;->sDba:Lch/kingdoms/android/db/DBAdapter;
    const-string v1, "WARPGATE"
    invoke-virtual {v0, v1}, Lch/kingdoms/android/db/DBAdapter;->isPurchased(Ljava/lang/String;)Z
    move-result v1
    const/4 v2, 0x0
    const/4 v3, 0x1
    if-eqz v1, :arena
    const-string v1, "item_warpgate_unlock"
    invoke-interface {p0, v2, v1, v3}, Lch/android/lib/iab/ChOnPurchaseListener;->onPurchased(ILjava/lang/String;I)V
    :arena
    const-string v1, "COLOSSEUM"
    invoke-virtual {v0, v1}, Lch/kingdoms/android/db/DBAdapter;->isPurchased(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :done
    const-string v1, "item_colosseum_unlock"
    invoke-interface {p0, v2, v1, v3}, Lch/android/lib/iab/ChOnPurchaseListener;->onPurchased(ILjava/lang/String;I)V
    :done
    return-void
.end method
