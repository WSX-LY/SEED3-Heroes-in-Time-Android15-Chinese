.class Lch/kingdoms/android/ui/NetworkUi$2$3;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$2;

.field private final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$2;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$2$3;->this$1:Lch/kingdoms/android/ui/NetworkUi$2;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$2$3;->val$pd:Landroid/app/ProgressDialog;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$2$3;)Lch/kingdoms/android/ui/NetworkUi$2;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$2$3;->this$1:Lch/kingdoms/android/ui/NetworkUi$2;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$2$3;->this$1:Lch/kingdoms/android/ui/NetworkUi$2;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$2;->access$0(Lch/kingdoms/android/ui/NetworkUi$2;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$2$3$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/NetworkUi$2$3$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$2$3;)V

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/NetworkUi;->access$15(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$2$3;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 251
    return-void
.end method
