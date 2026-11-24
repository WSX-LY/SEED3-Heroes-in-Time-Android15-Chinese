.class Lch/kingdoms/android/ui/NetworkUi$3;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->popUpNetworkView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/NetworkUi;

.field private final synthetic val$connectThread:Ljava/lang/Thread;

.field private final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi;Ljava/lang/Thread;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$3;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$3;->val$connectThread:Ljava/lang/Thread;

    iput-object p3, p0, Lch/kingdoms/android/ui/NetworkUi$3;->val$pd:Landroid/app/ProgressDialog;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$3;)Lch/kingdoms/android/ui/NetworkUi;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$3;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$3;->val$connectThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$3;->val$connectThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 266
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$3;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 267
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$3;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$3$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/NetworkUi$3$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$3;)V

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/NetworkUi;->access$15(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$3;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$3;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method
