.class Lch/kingdoms/android/ui/network/NewNetworkUi$17$1;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi$17;->onResult(Lch/android/api/network/ChResultPacket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$17;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi$17;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$17$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$17;

    .line 1252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1256
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1257
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$17$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$17;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$17;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$17;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$10(Lch/kingdoms/android/ui/network/NewNetworkUi;)V

    .line 1258
    return-void
.end method
