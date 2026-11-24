.class Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$1;
.super Ljava/lang/Object;
.source "BlackSmithUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;-><init>(Lch/kingdoms/android/ui/BlackSmithUi;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$1;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$1;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$1;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$0(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$1;->isClicked:Z

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$1;->isClicked:Z

    .line 287
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$1;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi;->access$1(Lch/kingdoms/android/ui/BlackSmithUi;)V

    .line 289
    :cond_0
    return-void
.end method
