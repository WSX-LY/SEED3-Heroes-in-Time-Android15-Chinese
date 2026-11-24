.class Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4$1;
.super Ljava/lang/Object;
.source "BlackSmithUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$2:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4$1;->this$2:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4$1;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 522
    iget-boolean v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4$1;->isClicked:Z

    if-nez v0, :cond_0

    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4$1;->isClicked:Z

    .line 524
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4$1;->this$2:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->access$0(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;)Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$8(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;Z)V

    .line 525
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 527
    :cond_0
    return-void
.end method
