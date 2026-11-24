.class Lch/android/lib/iab/ChInAppBilling$2;
.super Ljava/lang/Object;
.source "ChInAppBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/lib/iab/ChInAppBilling;
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
    iput-object p1, p0, Lch/android/lib/iab/ChInAppBilling$2;->this$0:Lch/android/lib/iab/ChInAppBilling;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling$2;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v0}, Lch/android/lib/iab/ChInAppBilling;->access$5(Lch/android/lib/iab/ChInAppBilling;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling$2;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v0}, Lch/android/lib/iab/ChInAppBilling;->access$6(Lch/android/lib/iab/ChInAppBilling;)Lch/android/lib/iab/ChOnPurchaseListener;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lch/android/lib/iab/ChInAppBilling$2;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v2}, Lch/android/lib/iab/ChInAppBilling;->access$7(Lch/android/lib/iab/ChInAppBilling;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lch/android/lib/iab/ChOnPurchaseListener;->onPurchased(ILjava/lang/String;I)V

    .line 162
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling$2;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v0}, Lch/android/lib/iab/ChInAppBilling;->access$8(Lch/android/lib/iab/ChInAppBilling;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 164
    :cond_0
    return-void
.end method
