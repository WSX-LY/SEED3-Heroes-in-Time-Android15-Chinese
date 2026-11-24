.class public final enum Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;
.super Ljava/lang/Enum;
.source "CurrencyServerAbstractResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

.field public static final enum ERROR_INVALID_RESPONSE:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

.field public static final enum ERROR_INVALID_RESPONSE_SIGNATURE:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

.field public static final enum ERROR_NO_INTERNET_CONNECTION:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

.field public static final enum ERROR_OTHER:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

.field public static final enum NO_ERROR:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

.field public static final enum SERVER_RETURNED_ERROR:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;-><init>(Ljava/lang/String;I)V

    .line 35
    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->NO_ERROR:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    .line 37
    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    const-string v1, "ERROR_NO_INTERNET_CONNECTION"

    invoke-direct {v0, v1, v4}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;-><init>(Ljava/lang/String;I)V

    .line 40
    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->ERROR_NO_INTERNET_CONNECTION:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    .line 42
    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    const-string v1, "ERROR_INVALID_RESPONSE"

    invoke-direct {v0, v1, v5}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;-><init>(Ljava/lang/String;I)V

    .line 45
    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->ERROR_INVALID_RESPONSE:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    .line 47
    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    const-string v1, "ERROR_INVALID_RESPONSE_SIGNATURE"

    invoke-direct {v0, v1, v6}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;-><init>(Ljava/lang/String;I)V

    .line 50
    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->ERROR_INVALID_RESPONSE_SIGNATURE:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    .line 52
    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    const-string v1, "SERVER_RETURNED_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;-><init>(Ljava/lang/String;I)V

    .line 56
    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->SERVER_RETURNED_ERROR:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    .line 58
    new-instance v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    const-string v1, "ERROR_OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;-><init>(Ljava/lang/String;I)V

    .line 61
    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->ERROR_OTHER:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->NO_ERROR:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->ERROR_NO_INTERNET_CONNECTION:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->ERROR_INVALID_RESPONSE:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->ERROR_INVALID_RESPONSE_SIGNATURE:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->SERVER_RETURNED_ERROR:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->ERROR_OTHER:Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->ENUM$VALUES:[Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;->ENUM$VALUES:[Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    array-length v1, v0

    new-array v2, v1, [Lcom/sponsorpay/sdk/android/publisher/currency/CurrencyServerAbstractResponse$RequestErrorType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
