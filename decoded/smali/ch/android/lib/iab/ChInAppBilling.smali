.class public Lch/android/lib/iab/ChInAppBilling;
.super Ljava/lang/Object;
.source "ChInAppBilling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;
    }
.end annotation


# static fields
.field public static final PRODUCT_ID_1000POINT:Ljava/lang/String; = "item_point_1000"

.field public static final PRODUCT_ID_14000POINT:Ljava/lang/String; = "item_point_14000"

.field public static final PRODUCT_ID_2200POINT:Ljava/lang/String; = "item_point_2200"

.field public static final PRODUCT_ID_3600POINT:Ljava/lang/String; = "item_point_3600"

.field public static final PRODUCT_ID_6000POINT:Ljava/lang/String; = "item_point_6000"

.field public static final PRODUCT_ID_COLOSSEUM:Ljava/lang/String; = "item_colosseum_unlock"

.field public static final PRODUCT_ID_WARPGATE:Ljava/lang/String; = "item_warpgate_unlock"


# instance fields
.field private final REQUEST_PURCHASE_WAITING_TIME:I

.field private final activity:Landroid/app/Activity;

.field private curPurchaseListener:Lch/android/lib/iab/ChOnPurchaseListener;

.field private final handler:Landroid/os/Handler;

.field private isTimeIn:Z

.field private mBillingService:Lch/android/lib/iab/BillingService;

.field private mPurchaseObserver:Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;

.field private m_progressDialog:Landroid/app/ProgressDialog;

.field private productId:Ljava/lang/String;

.field private purchaseHandler:Landroid/os/Handler;

.field private purchaseTimeOutRunnable:Ljava/lang/Runnable;

.field private purchasedSeedPoint:I

.field private showProgressDialogRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uiHandler"    # Landroid/os/Handler;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x4e20

    iput v0, p0, Lch/android/lib/iab/ChInAppBilling;->REQUEST_PURCHASE_WAITING_TIME:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->productId:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lch/android/lib/iab/ChInAppBilling;->purchasedSeedPoint:I

    .line 145
    new-instance v0, Lch/android/lib/iab/ChInAppBilling$1;

    invoke-direct {v0, p0}, Lch/android/lib/iab/ChInAppBilling$1;-><init>(Lch/android/lib/iab/ChInAppBilling;)V

    iput-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->showProgressDialogRunnable:Ljava/lang/Runnable;

    .line 156
    new-instance v0, Lch/android/lib/iab/ChInAppBilling$2;

    invoke-direct {v0, p0}, Lch/android/lib/iab/ChInAppBilling$2;-><init>(Lch/android/lib/iab/ChInAppBilling;)V

    iput-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->purchaseTimeOutRunnable:Ljava/lang/Runnable;

    .line 41
    iput-object p1, p0, Lch/android/lib/iab/ChInAppBilling;->activity:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Lch/android/lib/iab/ChInAppBilling;->handler:Landroid/os/Handler;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->purchaseHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;-><init>(Lch/android/lib/iab/ChInAppBilling;Landroid/os/Handler;)V

    iput-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->mPurchaseObserver:Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;

    .line 46
    new-instance v0, Lch/android/lib/iab/BillingService;

    invoke-direct {v0}, Lch/android/lib/iab/BillingService;-><init>()V

    iput-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->mBillingService:Lch/android/lib/iab/BillingService;

    .line 47
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->mBillingService:Lch/android/lib/iab/BillingService;

    invoke-virtual {v0, p1}, Lch/android/lib/iab/BillingService;->setContext(Landroid/content/Context;)V

    .line 50
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->mPurchaseObserver:Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;

    invoke-static {v0}, Lch/android/lib/iab/ResponseHandler;->register(Lch/android/lib/iab/PurchaseObserver;)V

    .line 51
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->mBillingService:Lch/android/lib/iab/BillingService;

    invoke-virtual {v0}, Lch/android/lib/iab/BillingService;->checkBillingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const-string v0, "IAB"

    const-string v1, "ChInAppBilling. inAppBilling not available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lch/android/lib/iab/ChInAppBilling;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lch/android/lib/iab/ChInAppBilling;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lch/android/lib/iab/ChInAppBilling;->m_progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$10(Lch/android/lib/iab/ChInAppBilling;I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lch/android/lib/iab/ChInAppBilling;->purchasedSeedPoint:I

    return-void
.end method

.method static synthetic access$2(Lch/android/lib/iab/ChInAppBilling;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->purchaseHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lch/android/lib/iab/ChInAppBilling;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->purchaseTimeOutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4(Lch/android/lib/iab/ChInAppBilling;Z)V
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lch/android/lib/iab/ChInAppBilling;->isTimeIn:Z

    return-void
.end method

.method static synthetic access$5(Lch/android/lib/iab/ChInAppBilling;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lch/android/lib/iab/ChInAppBilling;->isTimeIn:Z

    return v0
.end method

.method static synthetic access$6(Lch/android/lib/iab/ChInAppBilling;)Lch/android/lib/iab/ChOnPurchaseListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->curPurchaseListener:Lch/android/lib/iab/ChOnPurchaseListener;

    return-object v0
.end method

.method static synthetic access$7(Lch/android/lib/iab/ChInAppBilling;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->productId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lch/android/lib/iab/ChInAppBilling;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->m_progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$9(Lch/android/lib/iab/ChInAppBilling;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lch/android/lib/iab/ChInAppBilling;->purchasedSeedPoint:I

    return v0
.end method


# virtual methods
.method public checkBillingSupported()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->mBillingService:Lch/android/lib/iab/BillingService;

    invoke-virtual {v0}, Lch/android/lib/iab/BillingService;->checkBillingSupported()Z

    move-result v0

    return v0
.end method

.method public checkProgressDialog()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->handler:Landroid/os/Handler;

    new-instance v1, Lch/android/lib/iab/ChInAppBilling$3;

    invoke-direct {v1, p0}, Lch/android/lib/iab/ChInAppBilling$3;-><init>(Lch/android/lib/iab/ChInAppBilling;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->mBillingService:Lch/android/lib/iab/BillingService;

    invoke-virtual {v0}, Lch/android/lib/iab/BillingService;->unbind()V

    .line 143
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->mPurchaseObserver:Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;

    invoke-static {v0}, Lch/android/lib/iab/ResponseHandler;->register(Lch/android/lib/iab/PurchaseObserver;)V

    .line 129
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling;->mPurchaseObserver:Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;

    invoke-static {v0}, Lch/android/lib/iab/ResponseHandler;->unregister(Lch/android/lib/iab/PurchaseObserver;)V

    .line 136
    return-void
.end method

.method public declared-synchronized purchase(Lch/android/api/iap/Product;Lch/android/lib/iab/ChOnPurchaseListener;)Z
    .locals 5
    .param p1, "product"    # Lch/android/api/iap/Product;
    .param p2, "opl"    # Lch/android/lib/iab/ChOnPurchaseListener;

    .prologue
    .line 103
    monitor-enter p0

    const/4 v0, 0x0

    .line 104
    .local v0, "isSend":Z
    :try_start_0
    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling;->curPurchaseListener:Lch/android/lib/iab/ChOnPurchaseListener;

    if-nez v1, :cond_0

    .line 105
    iput-object p2, p0, Lch/android/lib/iab/ChInAppBilling;->curPurchaseListener:Lch/android/lib/iab/ChOnPurchaseListener;

    .line 107
    :cond_0
    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling;->curPurchaseListener:Lch/android/lib/iab/ChOnPurchaseListener;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p1, Lch/android/api/iap/Product;->ID:Ljava/lang/String;

    iput-object v1, p0, Lch/android/lib/iab/ChInAppBilling;->productId:Ljava/lang/String;

    .line 109
    iget v1, p1, Lch/android/api/iap/Product;->value:I

    iput v1, p0, Lch/android/lib/iab/ChInAppBilling;->purchasedSeedPoint:I

    .line 110
    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling;->mBillingService:Lch/android/lib/iab/BillingService;

    iget-object v2, p0, Lch/android/lib/iab/ChInAppBilling;->productId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lch/android/lib/iab/BillingService;->requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lch/android/lib/iab/ChInAppBilling;->showProgressDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    const-string v1, "IAB"

    const-string v2, "send purchase."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const/4 v0, 0x1

    .line 121
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 115
    :cond_2
    :try_start_1
    const-string v1, "IAB"

    const-string v2, "purchase is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling;->curPurchaseListener:Lch/android/lib/iab/ChOnPurchaseListener;

    const/4 v2, 0x4

    iget-object v3, p0, Lch/android/lib/iab/ChInAppBilling;->productId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lch/android/lib/iab/ChOnPurchaseListener;->onPurchased(ILjava/lang/String;I)V

    .line 118
    const/4 v1, 0x0

    iput v1, p0, Lch/android/lib/iab/ChInAppBilling;->purchasedSeedPoint:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized restore(Lch/android/lib/iab/ChOnPurchaseListener;)Z
    .locals 5
    .param p1, "opl"    # Lch/android/lib/iab/ChOnPurchaseListener;

    .prologue
    .line 83
    monitor-enter p0

    const/4 v0, 0x0

    .line 84
    .local v0, "isSend":Z
    :try_start_0
    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling;->curPurchaseListener:Lch/android/lib/iab/ChOnPurchaseListener;

    if-nez v1, :cond_0

    .line 85
    iput-object p1, p0, Lch/android/lib/iab/ChInAppBilling;->curPurchaseListener:Lch/android/lib/iab/ChOnPurchaseListener;

    .line 87
    :cond_0
    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling;->curPurchaseListener:Lch/android/lib/iab/ChOnPurchaseListener;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling;->mBillingService:Lch/android/lib/iab/BillingService;

    invoke-virtual {v1}, Lch/android/lib/iab/BillingService;->restoreTransactions()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lch/android/lib/iab/ChInAppBilling;->showProgressDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    const-string v1, "IAB"

    const-string v2, "send restore."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    const/4 v0, 0x1

    .line 99
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 94
    :cond_2
    :try_start_1
    const-string v1, "IAB"

    const-string v2, "restore failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling;->curPurchaseListener:Lch/android/lib/iab/ChOnPurchaseListener;

    const/4 v2, 0x4

    iget-object v3, p0, Lch/android/lib/iab/ChInAppBilling;->productId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lch/android/lib/iab/ChOnPurchaseListener;->onPurchased(ILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
