.class Lch/kingdoms/android/ui/network/NewNetworkUi$2$1$1;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/network/NewNetworkUi$2$1;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi$2$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2$1$1;->this$2:Lch/kingdoms/android/ui/network/NewNetworkUi$2$1;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2$1$1;->this$2:Lch/kingdoms/android/ui/network/NewNetworkUi$2$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$2$1;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$2$1;)Lch/kingdoms/android/ui/network/NewNetworkUi$2;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$2;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$4(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v0

    invoke-interface {v0}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    .line 303
    return-void
.end method
