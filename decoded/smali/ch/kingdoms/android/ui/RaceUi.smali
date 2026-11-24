.class public Lch/kingdoms/android/ui/RaceUi;
.super Lch/android/api/ui/ChRelativeLayout;
.source "RaceUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/RaceUi$SpeedBar;
    }
.end annotation


# instance fields
.field private final ID_LEFT_BTN:I

.field private final ID_OK_BTN:I

.field private final ID_RIGHT_BTN:I

.field private final ID_SPEED_BAR:I

.field private final di:Lch/android/api/util/DisplayInfo;

.field private final leftBtn:Lch/android/api/ui/ChBackAnimationButton;

.field private final okBtn:Lch/android/api/ui/ChBackAnimationButton;

.field private final rightBtn:Lch/android/api/ui/ChBackAnimationButton;

.field private final speedBar:Lch/kingdoms/android/ui/RaceUi$SpeedBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    const/16 v8, 0x65

    const/4 v7, 0x4

    const/16 v6, 0x64

    const/16 v5, 0xc

    const/4 v4, -0x2

    .line 33
    invoke-direct {p0, p1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput v6, p0, Lch/kingdoms/android/ui/RaceUi;->ID_SPEED_BAR:I

    .line 22
    iput v8, p0, Lch/kingdoms/android/ui/RaceUi;->ID_OK_BTN:I

    .line 23
    const/16 v1, 0x66

    iput v1, p0, Lch/kingdoms/android/ui/RaceUi;->ID_LEFT_BTN:I

    .line 24
    const/16 v1, 0x67

    iput v1, p0, Lch/kingdoms/android/ui/RaceUi;->ID_RIGHT_BTN:I

    .line 35
    iput-object p2, p0, Lch/kingdoms/android/ui/RaceUi;->di:Lch/android/api/util/DisplayInfo;

    .line 36
    new-instance v1, Lch/kingdoms/android/ui/RaceUi$SpeedBar;

    invoke-direct {v1, p0, p1}, Lch/kingdoms/android/ui/RaceUi$SpeedBar;-><init>(Lch/kingdoms/android/ui/RaceUi;Landroid/content/Context;)V

    iput-object v1, p0, Lch/kingdoms/android/ui/RaceUi;->speedBar:Lch/kingdoms/android/ui/RaceUi$SpeedBar;

    .line 37
    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi;->speedBar:Lch/kingdoms/android/ui/RaceUi$SpeedBar;

    invoke-virtual {v1, v6}, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->setId(I)V

    .line 39
    new-instance v1, Lch/android/api/ui/ChBackAnimationButton;

    const v2, 0x7f02025b

    const v3, 0x7f02025a

    invoke-direct {v1, p1, v2, v3}, Lch/android/api/ui/ChBackAnimationButton;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lch/kingdoms/android/ui/RaceUi;->leftBtn:Lch/android/api/ui/ChBackAnimationButton;

    .line 40
    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi;->leftBtn:Lch/android/api/ui/ChBackAnimationButton;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChBackAnimationButton;->setId(I)V

    .line 41
    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi;->leftBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {v1, p0}, Lch/android/api/ui/ChBackAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    new-instance v1, Lch/android/api/ui/ChBackAnimationButton;

    const v2, 0x7f02025f

    const v3, 0x7f02025e

    invoke-direct {v1, p1, v2, v3}, Lch/android/api/ui/ChBackAnimationButton;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lch/kingdoms/android/ui/RaceUi;->rightBtn:Lch/android/api/ui/ChBackAnimationButton;

    .line 43
    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi;->rightBtn:Lch/android/api/ui/ChBackAnimationButton;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChBackAnimationButton;->setId(I)V

    .line 44
    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi;->rightBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {v1, p0}, Lch/android/api/ui/ChBackAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance v1, Lch/android/api/ui/ChBackAnimationButton;

    const v2, 0x7f02025d

    const v3, 0x7f02025c

    invoke-direct {v1, p1, v2, v3}, Lch/android/api/ui/ChBackAnimationButton;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lch/kingdoms/android/ui/RaceUi;->okBtn:Lch/android/api/ui/ChBackAnimationButton;

    .line 46
    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi;->okBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {v1, p0}, Lch/android/api/ui/ChBackAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi;->okBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {v1, v8}, Lch/android/api/ui/ChBackAnimationButton;->setId(I)V

    .line 49
    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi;->leftBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {v1, v7}, Lch/android/api/ui/ChBackAnimationButton;->setVisibility(I)V

    .line 50
    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi;->rightBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {v1, v7}, Lch/android/api/ui/ChBackAnimationButton;->setVisibility(I)V

    .line 53
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 56
    iget v1, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 57
    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi;->speedBar:Lch/kingdoms/android/ui/RaceUi$SpeedBar;

    invoke-virtual {p0, v1, v0}, Lch/kingdoms/android/ui/RaceUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61
    .restart local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 62
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 63
    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi;->okBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {p0, v1, v0}, Lch/kingdoms/android/ui/RaceUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67
    .restart local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi;->leftBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {p0, v1, v0}, Lch/kingdoms/android/ui/RaceUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73
    .restart local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75
    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi;->rightBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {p0, v1, v0}, Lch/kingdoms/android/ui/RaceUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/RaceUi;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi;->di:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/RaceUi;)Lch/android/api/ui/ChBackAnimationButton;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi;->leftBtn:Lch/android/api/ui/ChBackAnimationButton;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/RaceUi;)Lch/android/api/ui/ChBackAnimationButton;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi;->rightBtn:Lch/android/api/ui/ChBackAnimationButton;

    return-object v0
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/RaceUi;)Lch/android/api/ui/ChBackAnimationButton;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi;->okBtn:Lch/android/api/ui/ChBackAnimationButton;

    return-object v0
.end method


# virtual methods
.method public hideDirBtns()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 101
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi;->leftBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChBackAnimationButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi;->leftBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChBackAnimationButton;->setVisibility(I)V

    .line 104
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi;->rightBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChBackAnimationButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi;->rightBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChBackAnimationButton;->setVisibility(I)V

    .line 107
    :cond_1
    return-void
.end method

.method public invalidateSpeedBar()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi;->speedBar:Lch/kingdoms/android/ui/RaceUi$SpeedBar;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->invalidate()V

    .line 94
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 166
    :pswitch_0
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputOk()V

    goto :goto_0

    .line 170
    :pswitch_1
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputLeft()V

    goto :goto_0

    .line 174
    :pswitch_2
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputRight()V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showLeftBtn()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi;->leftBtn:Lch/android/api/ui/ChBackAnimationButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChBackAnimationButton;->setVisibility(I)V

    .line 111
    return-void
.end method

.method public showRightBtn()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi;->rightBtn:Lch/android/api/ui/ChBackAnimationButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChBackAnimationButton;->setVisibility(I)V

    .line 115
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 81
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lch/kingdoms/android/ui/RaceUi$1;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/RaceUi$1;-><init>(Lch/kingdoms/android/ui/RaceUi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public updateSpeed(I)V
    .locals 1
    .param p1, "speed"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi;->speedBar:Lch/kingdoms/android/ui/RaceUi$SpeedBar;

    invoke-virtual {v0, p1}, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->updateSpeed(I)V

    .line 98
    return-void
.end method
