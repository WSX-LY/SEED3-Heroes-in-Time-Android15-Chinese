.class Lch/kingdoms/android/ui/MainMenuUi$1$2;
.super Ljava/lang/Object;
.source "MainMenuUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainMenuUi$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/MainMenuUi$1;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/MainMenuUi$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi$1$2;->this$1:Lch/kingdoms/android/ui/MainMenuUi$1;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$1$2;->this$1:Lch/kingdoms/android/ui/MainMenuUi$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi$1;->access$0(Lch/kingdoms/android/ui/MainMenuUi$1;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi;->access$8(Lch/kingdoms/android/ui/MainMenuUi;)V

    .line 113
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$1$2;->this$1:Lch/kingdoms/android/ui/MainMenuUi$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi$1;->access$0(Lch/kingdoms/android/ui/MainMenuUi$1;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi;->access$6(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/ui/ChImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$1$2;->this$1:Lch/kingdoms/android/ui/MainMenuUi$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi$1;->access$0(Lch/kingdoms/android/ui/MainMenuUi$1;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$1$2;->this$1:Lch/kingdoms/android/ui/MainMenuUi$1;

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi$1;->access$0(Lch/kingdoms/android/ui/MainMenuUi$1;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi;->access$6(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/ui/ChImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/MainMenuUi;->removeView(Landroid/view/View;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$1$2;->this$1:Lch/kingdoms/android/ui/MainMenuUi$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi$1;->access$0(Lch/kingdoms/android/ui/MainMenuUi$1;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi;->access$9(Lch/kingdoms/android/ui/MainMenuUi;)V

    .line 117
    return-void
.end method
