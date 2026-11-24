.class Lch/kingdoms/android/ui/MainMenuUi$1$1;
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
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi$1$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$1;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$1$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi$1;->access$0(Lch/kingdoms/android/ui/MainMenuUi$1;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi;->access$6(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/ui/ChImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$1$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi$1;->access$0(Lch/kingdoms/android/ui/MainMenuUi$1;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi;->access$6(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/ui/ChImageView;

    move-result-object v0

    const v1, 0x7f0201fa

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 106
    :cond_0
    return-void
.end method
