.class Lch/android/lib/iab/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseHandler"

.field private static sPurchaseObserver:Lch/android/lib/iab/PurchaseObserver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lch/android/lib/iab/PurchaseObserver;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lch/android/lib/iab/ResponseHandler;->sPurchaseObserver:Lch/android/lib/iab/PurchaseObserver;

    return-object v0
.end method

.method public static buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 2
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    sget-object v0, Lch/android/lib/iab/ResponseHandler;->sPurchaseObserver:Lch/android/lib/iab/PurchaseObserver;

    if-nez v0, :cond_0

    .line 76
    const-string v0, "ResponseHandler"

    const-string v1, "UI is not running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-object v0, Lch/android/lib/iab/ResponseHandler;->sPurchaseObserver:Lch/android/lib/iab/PurchaseObserver;

    invoke-virtual {v0, p0, p1}, Lch/android/lib/iab/PurchaseObserver;->startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static checkBillingSupportedResponse(Z)V
    .locals 1
    .param p0, "supported"    # Z

    .prologue
    .line 58
    sget-object v0, Lch/android/lib/iab/ResponseHandler;->sPurchaseObserver:Lch/android/lib/iab/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lch/android/lib/iab/ResponseHandler;->sPurchaseObserver:Lch/android/lib/iab/PurchaseObserver;

    invoke-virtual {v0, p0}, Lch/android/lib/iab/PurchaseObserver;->onBillingSupported(Z)V

    .line 61
    :cond_0
    return-void
.end method

.method public static purchaseResponse(Landroid/content/Context;Lch/android/lib/iab/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "purchaseState"    # Lch/android/lib/iab/Consts$PurchaseState;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "orderId"    # Ljava/lang/String;
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lch/android/lib/iab/ResponseHandler$1;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lch/android/lib/iab/ResponseHandler$1;-><init>(Lch/android/lib/iab/Consts$PurchaseState;Ljava/lang/String;JLjava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 128
    return-void
.end method

.method public static declared-synchronized register(Lch/android/lib/iab/PurchaseObserver;)V
    .locals 2
    .param p0, "observer"    # Lch/android/lib/iab/PurchaseObserver;

    .prologue
    .line 40
    const-class v0, Lch/android/lib/iab/ResponseHandler;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lch/android/lib/iab/ResponseHandler;->sPurchaseObserver:Lch/android/lib/iab/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit v0

    return-void

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lch/android/lib/iab/BillingService$RequestPurchase;Lch/android/lib/iab/Consts$ResponseCode;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lch/android/lib/iab/BillingService$RequestPurchase;
    .param p2, "responseCode"    # Lch/android/lib/iab/Consts$ResponseCode;

    .prologue
    .line 145
    sget-object v0, Lch/android/lib/iab/ResponseHandler;->sPurchaseObserver:Lch/android/lib/iab/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lch/android/lib/iab/ResponseHandler;->sPurchaseObserver:Lch/android/lib/iab/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lch/android/lib/iab/PurchaseObserver;->onRequestPurchaseResponse(Lch/android/lib/iab/BillingService$RequestPurchase;Lch/android/lib/iab/Consts$ResponseCode;)V

    .line 148
    :cond_0
    return-void
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lch/android/lib/iab/BillingService$RestoreTransactions;Lch/android/lib/iab/Consts$ResponseCode;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lch/android/lib/iab/BillingService$RestoreTransactions;
    .param p2, "responseCode"    # Lch/android/lib/iab/Consts$ResponseCode;

    .prologue
    .line 161
    sget-object v0, Lch/android/lib/iab/ResponseHandler;->sPurchaseObserver:Lch/android/lib/iab/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lch/android/lib/iab/ResponseHandler;->sPurchaseObserver:Lch/android/lib/iab/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lch/android/lib/iab/PurchaseObserver;->onRestoreTransactionsResponse(Lch/android/lib/iab/BillingService$RestoreTransactions;Lch/android/lib/iab/Consts$ResponseCode;)V

    .line 164
    :cond_0
    return-void
.end method

.method public static declared-synchronized unregister(Lch/android/lib/iab/PurchaseObserver;)V
    .locals 2
    .param p0, "observer"    # Lch/android/lib/iab/PurchaseObserver;

    .prologue
    .line 48
    const-class v0, Lch/android/lib/iab/ResponseHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lch/android/lib/iab/ResponseHandler;->sPurchaseObserver:Lch/android/lib/iab/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
