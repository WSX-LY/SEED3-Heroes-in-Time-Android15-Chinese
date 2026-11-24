.class Lch/android/lib/iab/ChInAppBilling$1;
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
    iput-object p1, p0, Lch/android/lib/iab/ChInAppBilling$1;->this$0:Lch/android/lib/iab/ChInAppBilling;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 149
    const-string v0, "IAB"

    const-string v1, "showProgressDialogRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling$1;->this$0:Lch/android/lib/iab/ChInAppBilling;

    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling$1;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v1}, Lch/android/lib/iab/ChInAppBilling;->access$0(Lch/android/lib/iab/ChInAppBilling;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    const-string v3, "Waiting response..."

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lch/android/lib/iab/ChInAppBilling;->access$1(Lch/android/lib/iab/ChInAppBilling;Landroid/app/ProgressDialog;)V

    .line 151
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling$1;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v0}, Lch/android/lib/iab/ChInAppBilling;->access$2(Lch/android/lib/iab/ChInAppBilling;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lch/android/lib/iab/ChInAppBilling$1;->this$0:Lch/android/lib/iab/ChInAppBilling;

    invoke-static {v1}, Lch/android/lib/iab/ChInAppBilling;->access$3(Lch/android/lib/iab/ChInAppBilling;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    iget-object v0, p0, Lch/android/lib/iab/ChInAppBilling$1;->this$0:Lch/android/lib/iab/ChInAppBilling;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/android/lib/iab/ChInAppBilling;->access$4(Lch/android/lib/iab/ChInAppBilling;Z)V

    .line 153
    return-void
.end method
