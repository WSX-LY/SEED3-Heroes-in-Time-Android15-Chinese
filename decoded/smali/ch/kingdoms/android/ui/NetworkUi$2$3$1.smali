.class Lch/kingdoms/android/ui/NetworkUi$2$3$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$2$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/NetworkUi$2$3;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$2$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$2$3$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$2$3;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 247
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$2$3$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$2$3;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$2$3;->access$0(Lch/kingdoms/android/ui/NetworkUi$2$3;)Lch/kingdoms/android/ui/NetworkUi$2;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$2;->access$0(Lch/kingdoms/android/ui/NetworkUi$2;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$13(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v0

    invoke-interface {v0}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    .line 248
    return-void
.end method
