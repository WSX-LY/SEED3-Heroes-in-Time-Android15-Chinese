.class public Lch/kingdoms/android/ui/CaptionUi;
.super Ljava/lang/Object;
.source "CaptionUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;
    }
.end annotation


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final CAPTION_VIEW:Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
    .locals 3
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lch/kingdoms/android/ui/CaptionUi;->ACTIVITY:Landroid/app/Activity;

    .line 21
    iput-object p2, p0, Lch/kingdoms/android/ui/CaptionUi;->DI:Lch/android/api/util/DisplayInfo;

    .line 23
    new-instance v0, Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;

    iget-object v1, p0, Lch/kingdoms/android/ui/CaptionUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/CaptionUi;->DI:Lch/android/api/util/DisplayInfo;

    invoke-direct {v0, p0, v1, v2}, Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;-><init>(Lch/kingdoms/android/ui/CaptionUi;Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V

    iput-object v0, p0, Lch/kingdoms/android/ui/CaptionUi;->CAPTION_VIEW:Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lch/kingdoms/android/ui/CaptionUi;->handler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/CaptionUi;)Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lch/kingdoms/android/ui/CaptionUi;->CAPTION_VIEW:Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;

    return-object v0
.end method


# virtual methods
.method public closeCaption()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lch/kingdoms/android/ui/CaptionUi;->handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/android/ui/CaptionUi$4;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/CaptionUi$4;-><init>(Lch/kingdoms/android/ui/CaptionUi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method

.method public closeNpcName()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lch/kingdoms/android/ui/CaptionUi;->CAPTION_VIEW:Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;->closeNpcName()V

    .line 34
    return-void
.end method

.method public getCaptionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lch/kingdoms/android/ui/CaptionUi;->CAPTION_VIEW:Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;->getCaptionText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lch/kingdoms/android/ui/CaptionUi;->CAPTION_VIEW:Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;

    return-object v0
.end method

.method public hideSkipBtn()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lch/kingdoms/android/ui/CaptionUi;->CAPTION_VIEW:Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;->setSkipVisibility(I)V

    .line 94
    return-void
.end method

.method public invisibleNpcName()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lch/kingdoms/android/ui/CaptionUi;->handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/android/ui/CaptionUi$2;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/CaptionUi$2;-><init>(Lch/kingdoms/android/ui/CaptionUi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

.method public isSkipBtnVisible()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lch/kingdoms/android/ui/CaptionUi;->CAPTION_VIEW:Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;->isSkipBtnVisible()Z

    move-result v0

    return v0
.end method

.method public showNpcName(Ljava/lang/String;FF)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 29
    iget-object v0, p0, Lch/kingdoms/android/ui/CaptionUi;->CAPTION_VIEW:Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;

    const/high16 v1, 0x43c80000    # 400.0f

    div-float v1, p2, v1

    iget-object v2, p0, Lch/kingdoms/android/ui/CaptionUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x43700000    # 240.0f

    div-float v2, p3, v2

    iget-object v3, p0, Lch/kingdoms/android/ui/CaptionUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v3, v3, Lch/android/api/util/DisplayInfo;->heightPixels:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;->showNpcName(Ljava/lang/String;II)V

    .line 30
    return-void
.end method

.method public showSkipBtn()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lch/kingdoms/android/ui/CaptionUi;->CAPTION_VIEW:Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;->setSkipVisibility(I)V

    .line 89
    return-void
.end method

.method public updateCaption(ZIIII)V
    .locals 2
    .param p1, "_isLeft"    # Z
    .param p2, "_scrTargetState"    # I
    .param p3, "_cScrTxtNum"    # I
    .param p4, "_nextScrTxt"    # I
    .param p5, "_bustNum"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lch/kingdoms/android/ui/CaptionUi;->handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/android/ui/CaptionUi$3;

    invoke-direct {v1, p0, p1, p3, p5}, Lch/kingdoms/android/ui/CaptionUi$3;-><init>(Lch/kingdoms/android/ui/CaptionUi;ZII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method public visibleNpcName()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lch/kingdoms/android/ui/CaptionUi;->handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/android/ui/CaptionUi$1;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/CaptionUi$1;-><init>(Lch/kingdoms/android/ui/CaptionUi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void
.end method
