.class Lch/android/api/iap/ChAndroidIab$2;
.super Ljava/lang/Object;
.source "ChAndroidIab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/iap/ChAndroidIab;->popUpPurchaseDlg(Lch/android/api/iap/Product;Lch/android/lib/iab/ChOnPurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lch/android/api/iap/ChAndroidIab;->access$3()Lch/android/lib/iab/ChInAppBilling;

    move-result-object v0

    invoke-static {}, Lch/android/api/iap/ChAndroidIab;->access$4()Lch/android/api/iap/Product;

    move-result-object v1

    new-instance v2, Lch/android/api/iap/ChAndroidIab$2$1;

    invoke-direct {v2, p0}, Lch/android/api/iap/ChAndroidIab$2$1;-><init>(Lch/android/api/iap/ChAndroidIab$2;)V

    invoke-virtual {v0, v1, v2}, Lch/android/lib/iab/ChInAppBilling;->purchase(Lch/android/api/iap/Product;Lch/android/lib/iab/ChOnPurchaseListener;)Z

    .line 195
    return-void
.end method
