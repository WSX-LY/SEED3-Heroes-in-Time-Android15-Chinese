.class Lch/android/lib/iab/ResponseHandler$1;
.super Ljava/lang/Object;
.source "ResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/lib/iab/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lch/android/lib/iab/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$developerPayload:Ljava/lang/String;

.field private final synthetic val$productId:Ljava/lang/String;

.field private final synthetic val$purchaseState:Lch/android/lib/iab/Consts$PurchaseState;

.field private final synthetic val$purchaseTime:J


# direct methods
.method constructor <init>(Lch/android/lib/iab/Consts$PurchaseState;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/lib/iab/ResponseHandler$1;->val$purchaseState:Lch/android/lib/iab/Consts$PurchaseState;

    iput-object p2, p0, Lch/android/lib/iab/ResponseHandler$1;->val$productId:Ljava/lang/String;

    iput-wide p3, p0, Lch/android/lib/iab/ResponseHandler$1;->val$purchaseTime:J

    iput-object p5, p0, Lch/android/lib/iab/ResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 120
    const-class v7, Lch/android/lib/iab/ResponseHandler;

    monitor-enter v7

    .line 121
    :try_start_0
    invoke-static {}, Lch/android/lib/iab/ResponseHandler;->access$0()Lch/android/lib/iab/PurchaseObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lch/android/lib/iab/ResponseHandler;->access$0()Lch/android/lib/iab/PurchaseObserver;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lch/android/lib/iab/ResponseHandler$1;->val$purchaseState:Lch/android/lib/iab/Consts$PurchaseState;

    iget-object v2, p0, Lch/android/lib/iab/ResponseHandler$1;->val$productId:Ljava/lang/String;

    const/4 v3, 0x1

    iget-wide v4, p0, Lch/android/lib/iab/ResponseHandler$1;->val$purchaseTime:J

    iget-object v6, p0, Lch/android/lib/iab/ResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    .line 122
    invoke-virtual/range {v0 .. v6}, Lch/android/lib/iab/PurchaseObserver;->postPurchaseStateChange(Lch/android/lib/iab/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V

    .line 120
    :cond_0
    monitor-exit v7

    .line 126
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
