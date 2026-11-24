.class Lch/kingdoms/android/ui/SystemUi$4;
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
    iput-object p1, p0, Lch/kingdoms/android/ui/SystemUi$4;->this$0:Lch/kingdoms/android/ui/SystemUi;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/SystemUi$4;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    iget-boolean v0, p0, Lch/kingdoms/android/ui/SystemUi$4;->isClicked:Z

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/SystemUi$4;->isClicked:Z

    .line 206
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 207
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi$4;->this$0:Lch/kingdoms/android/ui/SystemUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/SystemUi;->access$2(Lch/kingdoms/android/ui/SystemUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v0

    invoke-interface {v0}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    .line 209
    :cond_0
    return-void
.end method
