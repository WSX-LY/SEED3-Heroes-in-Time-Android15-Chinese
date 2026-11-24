.class public interface abstract Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader$InterstitialLoadingStatusListener;
.super Ljava/lang/Object;
.source "InterstitialLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/sdk/android/publisher/InterstitialLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InterstitialLoadingStatusListener"
.end annotation


# virtual methods
.method public abstract onInterstitialLoadingTimeOut()V
.end method

.method public abstract onInterstitialRequestError()V
.end method

.method public abstract onNoInterstitialAvailable()V
.end method

.method public abstract onWillShowInterstitial()V
.end method
