.class Lch/kingdoms/android/ui/HelpUi$1;
.super Ljava/lang/Object;
.source "HelpUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/HelpUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/HelpUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/HelpUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/HelpUi$1;->this$0:Lch/kingdoms/android/ui/HelpUi;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lch/kingdoms/android/ui/HelpUi$1;->this$0:Lch/kingdoms/android/ui/HelpUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/HelpUi;->access$0(Lch/kingdoms/android/ui/HelpUi;)Lch/android/api/ui/ChBackAnimationButton;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/ui/ChBackAnimationButton;->startAnimation()V

    .line 200
    return-void
.end method
