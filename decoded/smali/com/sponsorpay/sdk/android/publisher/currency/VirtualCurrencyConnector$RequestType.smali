.class public final enum Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;
.super Ljava/lang/Enum;
.source "VirtualCurrencyConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELTA_COINS:Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;

.field private static final synthetic ENUM$VALUES:[Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;

    const-string v1, "DELTA_COINS"

    invoke-direct {v0, v1, v2}, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;->DELTA_COINS:Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;->DELTA_COINS:Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;->ENUM$VALUES:[Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;->ENUM$VALUES:[Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;

    array-length v1, v0

    new-array v2, v1, [Lcom/sponsorpay/sdk/android/publisher/currency/VirtualCurrencyConnector$RequestType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
