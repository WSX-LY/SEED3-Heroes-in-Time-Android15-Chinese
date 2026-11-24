.class public final enum Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;
.super Ljava/lang/Enum;
.source "SponsorPayPublisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UIStringIdentifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISMISS_ERROR_DIALOG:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

.field private static final synthetic ENUM$VALUES:[Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

.field public static final enum ERROR_DIALOG_TITLE:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

.field public static final enum ERROR_LOADING_OFFERWALL:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

.field public static final enum ERROR_LOADING_OFFERWALL_NO_INTERNET_CONNECTION:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

.field public static final enum GENERIC_ERROR:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

.field public static final enum LOADING_INTERSTITIAL:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

.field public static final enum LOADING_OFFERWALL:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v1, "ERROR_DIALOG_TITLE"

    invoke-direct {v0, v1, v3}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_DIALOG_TITLE:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v1, "DISMISS_ERROR_DIALOG"

    invoke-direct {v0, v1, v4}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->DISMISS_ERROR_DIALOG:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v1, "GENERIC_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->GENERIC_ERROR:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v1, "ERROR_LOADING_OFFERWALL"

    invoke-direct {v0, v1, v6}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_LOADING_OFFERWALL:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v1, "ERROR_LOADING_OFFERWALL_NO_INTERNET_CONNECTION"

    invoke-direct {v0, v1, v7}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_LOADING_OFFERWALL_NO_INTERNET_CONNECTION:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v1, "LOADING_INTERSTITIAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->LOADING_INTERSTITIAL:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v1, "LOADING_OFFERWALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->LOADING_OFFERWALL:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_DIALOG_TITLE:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->DISMISS_ERROR_DIALOG:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->GENERIC_ERROR:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_LOADING_OFFERWALL:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_LOADING_OFFERWALL_NO_INTERNET_CONNECTION:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->LOADING_INTERSTITIAL:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->LOADING_OFFERWALL:Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->ENUM$VALUES:[Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;->ENUM$VALUES:[Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    array-length v1, v0

    new-array v2, v1, [Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
