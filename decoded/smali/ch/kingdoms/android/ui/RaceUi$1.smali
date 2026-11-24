.class Lch/kingdoms/android/ui/RaceUi$1;
.super Ljava/lang/Object;
.source "RaceUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/RaceUi;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/RaceUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/RaceUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/RaceUi$1;->this$0:Lch/kingdoms/android/ui/RaceUi;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi$1;->this$0:Lch/kingdoms/android/ui/RaceUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/RaceUi;->access$1(Lch/kingdoms/android/ui/RaceUi;)Lch/android/api/ui/ChBackAnimationButton;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/ui/ChBackAnimationButton;->startAnimation()V

    .line 86
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi$1;->this$0:Lch/kingdoms/android/ui/RaceUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/RaceUi;->access$2(Lch/kingdoms/android/ui/RaceUi;)Lch/android/api/ui/ChBackAnimationButton;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/ui/ChBackAnimationButton;->startAnimation()V

    .line 87
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi$1;->this$0:Lch/kingdoms/android/ui/RaceUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/RaceUi;->access$3(Lch/kingdoms/android/ui/RaceUi;)Lch/android/api/ui/ChBackAnimationButton;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/ui/ChBackAnimationButton;->startAnimation()V

    .line 88
    return-void
.end method
