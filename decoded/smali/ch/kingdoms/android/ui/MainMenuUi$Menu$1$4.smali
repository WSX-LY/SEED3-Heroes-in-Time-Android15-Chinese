.class Lch/kingdoms/android/ui/MainMenuUi$Menu$1$4;
.super Ljava/lang/Object;
.source "MainMenuUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/MainMenuUi$Menu$1;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/MainMenuUi$Menu$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$4;->this$2:Lch/kingdoms/android/ui/MainMenuUi$Menu$1;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 440
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2744

    if-ne v0, v1, :cond_0

    .line 441
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$4;->this$2:Lch/kingdoms/android/ui/MainMenuUi$Menu$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->access$0(Lch/kingdoms/android/ui/MainMenuUi$Menu$1;)Lch/kingdoms/android/ui/MainMenuUi$Menu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$1(Lch/kingdoms/android/ui/MainMenuUi$Menu;Z)V

    .line 442
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 444
    :cond_0
    return-void
.end method
