.class public final enum Lch/android/lib/iab/Consts$PurchaseState;
.super Ljava/lang/Enum;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/lib/iab/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurchaseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lch/android/lib/iab/Consts$PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELED:Lch/android/lib/iab/Consts$PurchaseState;

.field private static final synthetic ENUM$VALUES:[Lch/android/lib/iab/Consts$PurchaseState;

.field public static final enum PURCHASED:Lch/android/lib/iab/Consts$PurchaseState;

.field public static final enum REFUNDED:Lch/android/lib/iab/Consts$PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lch/android/lib/iab/Consts$PurchaseState;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lch/android/lib/iab/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v0, Lch/android/lib/iab/Consts$PurchaseState;->PURCHASED:Lch/android/lib/iab/Consts$PurchaseState;

    .line 50
    new-instance v0, Lch/android/lib/iab/Consts$PurchaseState;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lch/android/lib/iab/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/android/lib/iab/Consts$PurchaseState;->CANCELED:Lch/android/lib/iab/Consts$PurchaseState;

    .line 51
    new-instance v0, Lch/android/lib/iab/Consts$PurchaseState;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lch/android/lib/iab/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/android/lib/iab/Consts$PurchaseState;->REFUNDED:Lch/android/lib/iab/Consts$PurchaseState;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lch/android/lib/iab/Consts$PurchaseState;

    sget-object v1, Lch/android/lib/iab/Consts$PurchaseState;->PURCHASED:Lch/android/lib/iab/Consts$PurchaseState;

    aput-object v1, v0, v2

    sget-object v1, Lch/android/lib/iab/Consts$PurchaseState;->CANCELED:Lch/android/lib/iab/Consts$PurchaseState;

    aput-object v1, v0, v3

    sget-object v1, Lch/android/lib/iab/Consts$PurchaseState;->REFUNDED:Lch/android/lib/iab/Consts$PurchaseState;

    aput-object v1, v0, v4

    sput-object v0, Lch/android/lib/iab/Consts$PurchaseState;->ENUM$VALUES:[Lch/android/lib/iab/Consts$PurchaseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lch/android/lib/iab/Consts$PurchaseState;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 55
    invoke-static {}, Lch/android/lib/iab/Consts$PurchaseState;->values()[Lch/android/lib/iab/Consts$PurchaseState;

    move-result-object v0

    .line 56
    .local v0, "values":[Lch/android/lib/iab/Consts$PurchaseState;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 57
    :cond_0
    sget-object v1, Lch/android/lib/iab/Consts$PurchaseState;->CANCELED:Lch/android/lib/iab/Consts$PurchaseState;

    .line 59
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lch/android/lib/iab/Consts$PurchaseState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lch/android/lib/iab/Consts$PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lch/android/lib/iab/Consts$PurchaseState;

    return-object v0
.end method

.method public static values()[Lch/android/lib/iab/Consts$PurchaseState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lch/android/lib/iab/Consts$PurchaseState;->ENUM$VALUES:[Lch/android/lib/iab/Consts$PurchaseState;

    array-length v1, v0

    new-array v2, v1, [Lch/android/lib/iab/Consts$PurchaseState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
