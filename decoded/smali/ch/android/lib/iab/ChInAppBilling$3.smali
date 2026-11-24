.class Lch/android/lib/iab/ChInAppBilling$3;
.super Ljava/lang/Object;
.source "ChInAppBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/lib/iab/ChInAppBilling;->checkProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/android/lib/iab/ChInAppBilling;


# direct methods
.method constructor <init>(Lch/android/lib/iab/ChInAppBilling;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/lib/iab/ChInAppBilling$3;->this$0:Lch/android/lib/iab/ChInAppBilling;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "IAB"

    const-string v1, "checkProgressDialog..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling$3;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v0}, Lch/android/lib/iab/ChInAppBilling;->access$8(Lch/android/lib/iab/ChInAppBilling;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "IAB"

    const-string v1, "m_progressDialog.dismiss..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling$3;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v0}, Lch/android/lib/iab/ChInAppBilling;->access$8(Lch/android/lib/iab/ChInAppBilling;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 66
    :cond_0
    return-void
.end method
