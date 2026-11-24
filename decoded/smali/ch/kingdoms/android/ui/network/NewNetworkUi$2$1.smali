.class Lch/kingdoms/android/ui/network/NewNetworkUi$2$1;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi$2;->handle(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$2;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$2;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$2$1;)Lch/kingdoms/android/ui/network/NewNetworkUi$2;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$2;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$2;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$2;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/Activity;

    move-result-object v0

    .line 297
    const/4 v1, 0x1

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    new-instance v2, Lch/kingdoms/android/ui/network/NewNetworkUi$2$1$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$2$1$1;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi$2$1;)V

    .line 296
    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$2;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$2;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$1(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 306
    return-void
.end method
