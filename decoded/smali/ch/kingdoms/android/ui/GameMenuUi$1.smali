.class Lch/kingdoms/android/ui/GameMenuUi$1;
.super Ljava/lang/Object;
.source "GameMenuUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/GameMenuUi;->popUpReservedUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isClicked:Z

.field final synthetic this$0:Lch/kingdoms/android/ui/GameMenuUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/GameMenuUi;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/GameMenuUi$1;->this$0:Lch/kingdoms/android/ui/GameMenuUi;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/GameMenuUi$1;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    iget-boolean v0, p0, Lch/kingdoms/android/ui/GameMenuUi$1;->isClicked:Z

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/GameMenuUi$1;->isClicked:Z

    .line 184
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closeAllPopUpViews()V

    .line 185
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    .line 187
    :cond_0
    return-void
.end method
