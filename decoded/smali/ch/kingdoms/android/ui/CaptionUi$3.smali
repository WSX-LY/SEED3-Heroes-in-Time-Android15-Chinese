.class Lch/kingdoms/android/ui/CaptionUi$3;
.super Ljava/lang/Object;
.source "CaptionUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/CaptionUi;->updateCaption(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/CaptionUi;

.field private final synthetic val$_bustNum:I

.field private final synthetic val$_cScrTxtNum:I

.field private final synthetic val$_isLeft:Z


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/CaptionUi;ZII)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/CaptionUi$3;->this$0:Lch/kingdoms/android/ui/CaptionUi;

    iput-boolean p2, p0, Lch/kingdoms/android/ui/CaptionUi$3;->val$_isLeft:Z

    iput p3, p0, Lch/kingdoms/android/ui/CaptionUi$3;->val$_cScrTxtNum:I

    iput p4, p0, Lch/kingdoms/android/ui/CaptionUi$3;->val$_bustNum:I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 69
    iget-object v0, p0, Lch/kingdoms/android/ui/CaptionUi$3;->this$0:Lch/kingdoms/android/ui/CaptionUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/CaptionUi;->access$0(Lch/kingdoms/android/ui/CaptionUi;)Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;

    move-result-object v0

    iget-boolean v1, p0, Lch/kingdoms/android/ui/CaptionUi$3;->val$_isLeft:Z

    iget v2, p0, Lch/kingdoms/android/ui/CaptionUi$3;->val$_cScrTxtNum:I

    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->getCaptionTxt(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lch/kingdoms/android/ui/CaptionUi$3;->val$_bustNum:I

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getCaptionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;->showCaption(ZLjava/lang/String;ILjava/lang/String;)V

    .line 70
    return-void
.end method
