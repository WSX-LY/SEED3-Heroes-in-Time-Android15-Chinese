.class Lch/kingdoms/android/ui/MainMenuUi$5;
.super Ljava/lang/Object;
.source "MainMenuUi.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi$5;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$5;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi;->access$11(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/ui/ChBackAnimationButton;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/ui/ChBackAnimationButton;->startAnimation()V

    .line 247
    return-void
.end method
