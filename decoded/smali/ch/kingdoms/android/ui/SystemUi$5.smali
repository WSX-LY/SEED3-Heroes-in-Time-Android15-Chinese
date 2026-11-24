.class Lch/kingdoms/android/ui/SystemUi$5;
.super Ljava/lang/Object;
.source "SystemUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/SystemUi;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isClicked:Z

.field final synthetic this$0:Lch/kingdoms/android/ui/SystemUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/SystemUi;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/SystemUi$5;->this$0:Lch/kingdoms/android/ui/SystemUi;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/SystemUi$5;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 222
    iget-boolean v0, p0, Lch/kingdoms/android/ui/SystemUi$5;->isClicked:Z

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/SystemUi$5;->isClicked:Z

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2742

    if-ne v0, v1, :cond_1

    .line 225
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closeAllPopUpViews()V

    .line 226
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    .line 227
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi$5;->this$0:Lch/kingdoms/android/ui/SystemUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/SystemUi;->access$2(Lch/kingdoms/android/ui/SystemUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v0

    invoke-interface {v0}, Lch/kingdoms/android/ui/IGameMenu;->closeInfo()V

    .line 228
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->postUnSetGame()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_0
.end method
