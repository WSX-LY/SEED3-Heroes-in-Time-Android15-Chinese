.class Lch/android/api/iap/ChAndroidIab$2$1$3;
.super Ljava/lang/Object;
.source "ChAndroidIab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/iap/ChAndroidIab$2$1;->onPurchased(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/android/api/iap/ChAndroidIab$2$1;


# direct methods
.method constructor <init>(Lch/android/api/iap/ChAndroidIab$2$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/iap/ChAndroidIab$2$1$3;->this$2:Lch/android/api/iap/ChAndroidIab$2$1;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "IAB"

    const-string v1, "sUiHandler.postDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {}, Lch/android/api/iap/ChAndroidIab;->access$3()Lch/android/lib/iab/ChInAppBilling;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/lib/iab/ChInAppBilling;->checkProgressDialog()V

    .line 182
    return-void
.end method
