.class Lch/kingdoms/android/ui/CaptionUi$1;
.super Ljava/lang/Object;
.source "CaptionUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/CaptionUi;->visibleNpcName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/CaptionUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/CaptionUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/CaptionUi$1;->this$0:Lch/kingdoms/android/ui/CaptionUi;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lch/kingdoms/android/ui/CaptionUi$1;->this$0:Lch/kingdoms/android/ui/CaptionUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/CaptionUi;->access$0(Lch/kingdoms/android/ui/CaptionUi;)Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;->visibleNpcName()V

    .line 42
    return-void
.end method
