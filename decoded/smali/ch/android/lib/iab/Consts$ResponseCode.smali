.class public final enum Lch/android/lib/iab/Consts$ResponseCode;
.super Ljava/lang/Enum;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/lib/iab/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lch/android/lib/iab/Consts$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lch/android/lib/iab/Consts$ResponseCode;

.field public static final enum RESULT_BILLING_UNAVAILABLE:Lch/android/lib/iab/Consts$ResponseCode;

.field public static final enum RESULT_DEVELOPER_ERROR:Lch/android/lib/iab/Consts$ResponseCode;

.field public static final enum RESULT_ERROR:Lch/android/lib/iab/Consts$ResponseCode;

.field public static final enum RESULT_ITEM_UNAVAILABLE:Lch/android/lib/iab/Consts$ResponseCode;

.field public static final enum RESULT_OK:Lch/android/lib/iab/Consts$ResponseCode;

.field public static final enum RESULT_SERVICE_UNAVAILABLE:Lch/android/lib/iab/Consts$ResponseCode;

.field public static final enum RESULT_USER_CANCELED:Lch/android/lib/iab/Consts$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lch/android/lib/iab/Consts$ResponseCode;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v3}, Lch/android/lib/iab/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_OK:Lch/android/lib/iab/Consts$ResponseCode;

    .line 29
    new-instance v0, Lch/android/lib/iab/Consts$ResponseCode;

    const-string v1, "RESULT_USER_CANCELED"

    invoke-direct {v0, v1, v4}, Lch/android/lib/iab/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_USER_CANCELED:Lch/android/lib/iab/Consts$ResponseCode;

    .line 30
    new-instance v0, Lch/android/lib/iab/Consts$ResponseCode;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lch/android/lib/iab/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lch/android/lib/iab/Consts$ResponseCode;

    .line 31
    new-instance v0, Lch/android/lib/iab/Consts$ResponseCode;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lch/android/lib/iab/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lch/android/lib/iab/Consts$ResponseCode;

    .line 32
    new-instance v0, Lch/android/lib/iab/Consts$ResponseCode;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    invoke-direct {v0, v1, v7}, Lch/android/lib/iab/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lch/android/lib/iab/Consts$ResponseCode;

    .line 33
    new-instance v0, Lch/android/lib/iab/Consts$ResponseCode;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lch/android/lib/iab/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_DEVELOPER_ERROR:Lch/android/lib/iab/Consts$ResponseCode;

    .line 34
    new-instance v0, Lch/android/lib/iab/Consts$ResponseCode;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lch/android/lib/iab/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_ERROR:Lch/android/lib/iab/Consts$ResponseCode;

    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [Lch/android/lib/iab/Consts$ResponseCode;

    sget-object v1, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_OK:Lch/android/lib/iab/Consts$ResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_USER_CANCELED:Lch/android/lib/iab/Consts$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lch/android/lib/iab/Consts$ResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lch/android/lib/iab/Consts$ResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lch/android/lib/iab/Consts$ResponseCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_DEVELOPER_ERROR:Lch/android/lib/iab/Consts$ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_ERROR:Lch/android/lib/iab/Consts$ResponseCode;

    aput-object v2, v0, v1

    sput-object v0, Lch/android/lib/iab/Consts$ResponseCode;->ENUM$VALUES:[Lch/android/lib/iab/Consts$ResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lch/android/lib/iab/Consts$ResponseCode;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 38
    invoke-static {}, Lch/android/lib/iab/Consts$ResponseCode;->values()[Lch/android/lib/iab/Consts$ResponseCode;

    move-result-object v0

    .line 39
    .local v0, "values":[Lch/android/lib/iab/Consts$ResponseCode;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 40
    :cond_0
    sget-object v1, Lch/android/lib/iab/Consts$ResponseCode;->RESULT_ERROR:Lch/android/lib/iab/Consts$ResponseCode;

    .line 42
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lch/android/lib/iab/Consts$ResponseCode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lch/android/lib/iab/Consts$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lch/android/lib/iab/Consts$ResponseCode;

    return-object v0
.end method

.method public static values()[Lch/android/lib/iab/Consts$ResponseCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lch/android/lib/iab/Consts$ResponseCode;->ENUM$VALUES:[Lch/android/lib/iab/Consts$ResponseCode;

    array-length v1, v0

    new-array v2, v1, [Lch/android/lib/iab/Consts$ResponseCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
