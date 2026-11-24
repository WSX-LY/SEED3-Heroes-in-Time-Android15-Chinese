.class Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$5;
.super Ljava/lang/Object;
.source "BlackSmithUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->setResultAniView(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$5;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$5;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$11(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/android/api/ui/ChAnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/ui/ChAnimationDrawable;->start()V

    .line 579
    return-void
.end method
