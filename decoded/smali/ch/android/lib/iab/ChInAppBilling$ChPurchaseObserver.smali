.class Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;
.super Lch/android/lib/iab/PurchaseObserver;
.source "ChInAppBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/lib/iab/ChInAppBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChPurchaseObserver"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$ch$android$lib$iab$Consts$PurchaseState:[I


# instance fields
.field final synthetic this$0:Lch/android/lib/iab/ChInAppBilling;


# direct methods
.method static synthetic $SWITCH_TABLE$ch$android$lib$iab$Consts$PurchaseState()[I
    .locals 3

    .prologue
    .line 167
    sget-object v0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->$SWITCH_TABLE$ch$android$lib$iab$Consts$PurchaseState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lch/android/lib/iab/Consts$PurchaseState;->values()[Lch/android/lib/iab/Consts$PurchaseState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lch/android/lib/iab/Consts$PurchaseState;->CANCELED:Lch/android/lib/iab/Consts$PurchaseState;

    invoke-virtual {v1}, Lch/android/lib/iab/Consts$PurchaseState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lch/android/lib/iab/Consts$PurchaseState;->PURCHASED:Lch/android/lib/iab/Consts$PurchaseState;

    invoke-virtual {v1}, Lch/android/lib/iab/Consts$PurchaseState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lch/android/lib/iab/Consts$PurchaseState;->REFUNDED:Lch/android/lib/iab/Consts$PurchaseState;

    invoke-virtual {v1}, Lch/android/lib/iab/Consts$PurchaseState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->$SWITCH_TABLE$ch$android$lib$iab$Consts$PurchaseState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lch/android/lib/iab/ChInAppBilling;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 168
    iput-object p1, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    .line 169
    invoke-static {p1}, Lch/android/lib/iab/ChInAppBilling;->access$0(Lch/android/lib/iab/ChInAppBilling;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lch/android/lib/iab/PurchaseObserver;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 170
    return-void
.end method


# virtual methods
.method public onBillingSupported(Z)V
    .locals 3
    .param p1, "supported"    # Z

    .prologue
    .line 175
    const-string v0, "IAB"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method public onPurchaseStateChange(Lch/android/lib/iab/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 4
    .param p1, "purchaseState"    # Lch/android/lib/iab/Consts$PurchaseState;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "quantity"    # I
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v1}, Lch/android/lib/iab/ChInAppBilling;->access$2(Lch/android/lib/iab/ChInAppBilling;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v2}, Lch/android/lib/iab/ChInAppBilling;->access$3(Lch/android/lib/iab/ChInAppBilling;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lch/android/lib/iab/ChInAppBilling;->access$4(Lch/android/lib/iab/ChInAppBilling;Z)V

    .line 194
    const-string v1, "IAB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPurchaseStateChange : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-virtual {v1}, Lch/android/lib/iab/ChInAppBilling;->checkProgressDialog()V

    .line 196
    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v1}, Lch/android/lib/iab/ChInAppBilling;->access$6(Lch/android/lib/iab/ChInAppBilling;)Lch/android/lib/iab/ChOnPurchaseListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    invoke-static {}, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->$SWITCH_TABLE$ch$android$lib$iab$Consts$PurchaseState()[I

    move-result-object v1

    invoke-virtual {p1}, Lch/android/lib/iab/Consts$PurchaseState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 206
    :pswitch_0
    const/4 v0, 0x1

    .line 208
    .local v0, "result":I
    :goto_0
    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v1}, Lch/android/lib/iab/ChInAppBilling;->access$6(Lch/android/lib/iab/ChInAppBilling;)Lch/android/lib/iab/ChOnPurchaseListener;

    move-result-object v1

    iget-object v2, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v2}, Lch/android/lib/iab/ChInAppBilling;->access$9(Lch/android/lib/iab/ChInAppBilling;)I

    move-result v2

    invoke-interface {v1, v0, p2, v2}, Lch/android/lib/iab/ChOnPurchaseListener;->onPurchased(ILjava/lang/String;I)V

    .line 211
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lch/android/lib/iab/ChInAppBilling;->access$10(Lch/android/lib/iab/ChInAppBilling;I)V

    .line 212
    return-void

    .line 200
    :pswitch_1
    const/4 v0, 0x0

    .line 201
    .restart local v0    # "result":I
    goto :goto_0

    .line 203
    .end local v0    # "result":I
    :pswitch_2
    const/4 v0, 0x2

    .line 204
    .restart local v0    # "result":I
    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onRequestPurchaseResponse(Lch/android/lib/iab/BillingService$RequestPurchase;Lch/android/lib/iab/Consts$ResponseCode;)V
    .locals 5
    .param p1, "request"    # Lch/android/lib/iab/BillingService$RequestPurchase;
    .param p2, "responseCode"    # Lch/android/lib/iab/Consts$ResponseCode;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 218
    const-string v0, "IAB"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lch/android/lib/iab/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object v0, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_OK:Lch/android/lib/iab/Consts$ResponseCode;

    if-ne p2, v0, :cond_0

    .line 222
    const-string v0, "IAB"

    const-string v1, "purchase was successfully sent to server"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 224
    :cond_0
    sget-object v0, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_USER_CANCELED:Lch/android/lib/iab/Consts$ResponseCode;

    if-ne p2, v0, :cond_1

    .line 226
    const-string v0, "IAB"

    const-string v1, "user canceled purchase"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v0}, Lch/android/lib/iab/ChInAppBilling;->access$6(Lch/android/lib/iab/ChInAppBilling;)Lch/android/lib/iab/ChOnPurchaseListener;

    move-result-object v0

    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v1}, Lch/android/lib/iab/ChInAppBilling;->access$7(Lch/android/lib/iab/ChInAppBilling;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1, v3}, Lch/android/lib/iab/ChOnPurchaseListener;->onPurchased(ILjava/lang/String;I)V

    goto :goto_0

    .line 231
    :cond_1
    const-string v0, "IAB"

    const-string v1, "purchase failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v0}, Lch/android/lib/iab/ChInAppBilling;->access$6(Lch/android/lib/iab/ChInAppBilling;)Lch/android/lib/iab/ChOnPurchaseListener;

    move-result-object v0

    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v1}, Lch/android/lib/iab/ChInAppBilling;->access$7(Lch/android/lib/iab/ChInAppBilling;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1, v3}, Lch/android/lib/iab/ChOnPurchaseListener;->onPurchased(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public onRestoreTransactionsResponse(Lch/android/lib/iab/BillingService$RestoreTransactions;Lch/android/lib/iab/Consts$ResponseCode;)V
    .locals 4
    .param p1, "request"    # Lch/android/lib/iab/BillingService$RestoreTransactions;
    .param p2, "responseCode"    # Lch/android/lib/iab/Consts$ResponseCode;

    .prologue
    .line 243
    sget-object v0, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_OK:Lch/android/lib/iab/Consts$ResponseCode;

    if-ne p2, v0, :cond_1

    .line 245
    const-string v0, "IAB"

    const-string v1, "completed RestoreTransactions request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v0}, Lch/android/lib/iab/ChInAppBilling;->access$6(Lch/android/lib/iab/ChInAppBilling;)Lch/android/lib/iab/ChOnPurchaseListener;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v2}, Lch/android/lib/iab/ChInAppBilling;->access$7(Lch/android/lib/iab/ChInAppBilling;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lch/android/lib/iab/ChOnPurchaseListener;->onPurchased(ILjava/lang/String;I)V

    .line 250
    const-string v0, "IAB"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RestoreTransactions error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v0}, Lch/android/lib/iab/ChInAppBilling;->access$0(Lch/android/lib/iab/ChInAppBilling;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RestoreTransactions error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 253
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v0}, Lch/android/lib/iab/ChInAppBilling;->access$8(Lch/android/lib/iab/ChInAppBilling;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling$ChPurchaseObserver;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v0}, Lch/android/lib/iab/ChInAppBilling;->access$8(Lch/android/lib/iab/ChInAppBilling;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method
