.class public Lch/android/api/util/Consts;
.super Ljava/lang/Object;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/android/api/util/Consts$ITEM;,
        Lch/android/api/util/Consts$JOB;,
        Lch/android/api/util/Consts$MAIN_STATE;,
        Lch/android/api/util/Consts$NETWORK_MSG;,
        Lch/android/api/util/Consts$QSLOT_STATE;,
        Lch/android/api/util/Consts$SCRIPT;,
        Lch/android/api/util/Consts$TOWNPORTAL;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final DEF_TYPE_DRAWABLE:Ljava/lang/String; = "drawable"

.field public static final IAP_RESULT_PURCHASE_CANCEL:I = 0x3ea

.field public static final IAP_RESULT_PURCHASE_MANAGED_ITEM:I = 0x3e8

.field public static final IAP_RESULT_PURCHASE_UNMANAGED_ITEM:I = 0x3e9

.field public static final INTENT_PRODUCT_DBKEY:Ljava/lang/String; = "INTENT_PRODUCT_DBKEY"

.field public static final INTENT_PRODUCT_ID:Ljava/lang/String; = "INTENT_PRODUCT_ID"

.field public static final INTENT_PRODUCT_TYPE:Ljava/lang/String; = "INTENT_PRODUCT_TYPE"

.field public static final INTETN_PRODUCT_ITEMINDEX:Ljava/lang/String; = "INTETN_PRODUCT_ITEMINDEX"

.field public static final LOG_IAP:Ljava/lang/String; = "IAP"

.field public static final LOG_NET:Ljava/lang/String; = "NETWORK"

.field public static final LOG_TAG:Ljava/lang/String; = "KD"

.field public static final NOT_INITIALIZED:I = -0x1

.field public static final PACKAGE_NAME:Ljava/lang/String; = "ch.kingdoms.market.compat"

.field public static final PRODUCT_TYPE_MANAGED:Z = true

.field public static final PRODUCT_TYPE_UNMANAGED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
