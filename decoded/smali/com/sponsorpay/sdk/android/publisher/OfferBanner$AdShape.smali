.class public Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;
.super Ljava/lang/Object;
.source "OfferBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/sdk/android/publisher/OfferBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdShape"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method protected constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;->mWidth:I

    .line 30
    iput p2, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;->mHeight:I

    .line 31
    iput-object p3, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;->mDescription:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;->mWidth:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/sponsorpay/sdk/android/publisher/OfferBanner$AdShape;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
