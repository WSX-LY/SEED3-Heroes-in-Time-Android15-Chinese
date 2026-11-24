.class Lch/android/lib/iab/BillingService$RestoreTransactions;
.super Lch/android/lib/iab/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/lib/iab/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreTransactions"
.end annotation


# instance fields
.field mNonce:J

.field final synthetic this$0:Lch/android/lib/iab/BillingService;


# direct methods
.method public constructor <init>(Lch/android/lib/iab/BillingService;)V
    .locals 1

    .prologue
    .line 312
    iput-object p1, p0, Lch/android/lib/iab/BillingService$RestoreTransactions;->this$0:Lch/android/lib/iab/BillingService;

    .line 316
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lch/android/lib/iab/BillingService$BillingRequest;-><init>(Lch/android/lib/iab/BillingService;I)V

    .line 317
    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 333
    invoke-super {p0, p1}, Lch/android/lib/iab/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 334
    iget-wide v0, p0, Lch/android/lib/iab/BillingService$RestoreTransactions;->mNonce:J

    invoke-static {v0, v1}, Lch/android/lib/iab/Security;->removeNonce(J)V

    .line 335
    return-void
.end method

.method protected responseCodeReceived(Lch/android/lib/iab/Consts$ResponseCode;)V
    .locals 1
    .param p1, "responseCode"    # Lch/android/lib/iab/Consts$ResponseCode;

    .prologue
    .line 339
    iget-object v0, p0, Lch/android/lib/iab/BillingService$RestoreTransactions;->this$0:Lch/android/lib/iab/BillingService;

    invoke-static {v0, p0, p1}, Lch/android/lib/iab/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lch/android/lib/iab/BillingService$RestoreTransactions;Lch/android/lib/iab/Consts$ResponseCode;)V

    .line 340
    return-void
.end method

.method protected run()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {}, Lch/android/lib/iab/Security;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lch/android/lib/iab/BillingService$RestoreTransactions;->mNonce:J

    .line 323
    const-string v2, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v2}, Lch/android/lib/iab/BillingService$RestoreTransactions;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 324
    .local v0, "request":Landroid/os/Bundle;
    const-string v2, "NONCE"

    iget-wide v3, p0, Lch/android/lib/iab/BillingService$RestoreTransactions;->mNonce:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 325
    invoke-static {}, Lch/android/lib/iab/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 326
    .local v1, "response":Landroid/os/Bundle;
    const-string v2, "restoreTransactions"

    invoke-virtual {p0, v2, v1}, Lch/android/lib/iab/BillingService$RestoreTransactions;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 327
    const-string v2, "REQUEST_ID"

    .line 328
    sget-wide v3, Lch/android/lib/iab/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 327
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
