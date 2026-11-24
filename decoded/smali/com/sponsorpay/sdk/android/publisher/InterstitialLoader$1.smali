.class Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$1;
.super Ljava/lang/Object;
.source "InterstitialLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->startLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;


# direct methods
.method constructor <init>(Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$1;->this$0:Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$1;->this$0:Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;

    invoke-static {v0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->access$0(Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;)V

    .line 261
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$1;->this$0:Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;

    invoke-static {v0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->access$1(Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;)Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$1;->this$0:Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;

    invoke-static {v0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;->access$1(Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;)Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;->onInterstitialLoadingTimeOut()V

    .line 264
    :cond_0
    return-void
.end method
