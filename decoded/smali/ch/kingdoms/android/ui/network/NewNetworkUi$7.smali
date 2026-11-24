.class Lch/kingdoms/android/ui/network/NewNetworkUi$7;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpItemManageMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isClick:Z

.field final synthetic this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$7;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$7;->isClick:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 701
    iget-boolean v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$7;->isClick:Z

    if-nez v0, :cond_0

    .line 702
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 703
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$7;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$5(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/network/ChNetwork;->disconnect()V

    .line 704
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$7;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$4(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v0

    invoke-interface {v0}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    .line 706
    :cond_0
    return-void
.end method
