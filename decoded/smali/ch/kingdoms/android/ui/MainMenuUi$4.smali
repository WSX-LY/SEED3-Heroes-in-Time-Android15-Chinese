.class Lch/kingdoms/android/ui/MainMenuUi$4;
.super Ljava/lang/Object;
.source "MainMenuUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainMenuUi;->setToTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/MainMenuUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/MainMenuUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi$4;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$4;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/MainMenuUi;->setToMainMenu(Z)V

    .line 237
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$4;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/MainMenuUi;->access$10(Lch/kingdoms/android/ui/MainMenuUi;I)V

    .line 238
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$4;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$4;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi;->access$11(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/ui/ChBackAnimationButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/MainMenuUi;->removeView(Landroid/view/View;)V

    .line 239
    return-void
.end method
