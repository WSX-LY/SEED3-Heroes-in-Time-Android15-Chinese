.class Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$3;
.super Ljava/lang/Object;
.source "BlackSmithUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->setResultAniView(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

.field private final synthetic val$_result:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;I)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$3;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    iput p2, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$3;->val$_result:I

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$3;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 456
    iget-boolean v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$3;->isClicked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$3;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$3(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$3;->isClicked:Z

    .line 458
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$3;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    iget v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$3;->val$_result:I

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$4(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;I)V

    .line 459
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$3;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$5(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/android/api/ui/ChAnimationDrawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Lch/android/api/ui/ChAnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 460
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$3;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$6(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/android/api/ui/ChAnimationDrawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Lch/android/api/ui/ChAnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 462
    :cond_0
    return-void
.end method
