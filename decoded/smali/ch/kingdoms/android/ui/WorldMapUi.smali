.class public Lch/kingdoms/android/ui/WorldMapUi;
.super Ljava/lang/Object;
.source "WorldMapUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/WorldMapUi$MapView;
    }
.end annotation


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final GAME_MENU_UI:Lch/kingdoms/android/ui/GameMenuUi;

.field private final LAYOUT:Lch/android/api/ui/ChLinearLayout;

.field private final MAP_NAME:Landroid/widget/TextView;

.field private final MAP_VIEW:Lch/kingdoms/android/ui/WorldMapUi$MapView;

.field isClosed:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/GameMenuUi;)V
    .locals 9
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "_gameMenuUi"    # Lch/kingdoms/android/ui/GameMenuUi;

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v5, 0x0

    iput-boolean v5, p0, Lch/kingdoms/android/ui/WorldMapUi;->isClosed:Z

    .line 44
    iput-object p1, p0, Lch/kingdoms/android/ui/WorldMapUi;->ACTIVITY:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lch/kingdoms/android/ui/WorldMapUi;->DI:Lch/android/api/util/DisplayInfo;

    .line 47
    iput-object p3, p0, Lch/kingdoms/android/ui/WorldMapUi;->GAME_MENU_UI:Lch/kingdoms/android/ui/GameMenuUi;

    .line 49
    iget-object v5, p0, Lch/kingdoms/android/ui/WorldMapUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    .local v0, "appContext":Landroid/content/Context;
    new-instance v5, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v5, v0}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lch/kingdoms/android/ui/WorldMapUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    .line 51
    iget-object v5, p0, Lch/kingdoms/android/ui/WorldMapUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    const v6, 0x7f0202db

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 52
    new-instance v3, Lch/android/api/ui/ChRelativeLayout;

    invoke-direct {v3, v0}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    .local v3, "rlayout":Lch/android/api/ui/ChRelativeLayout;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v4, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lch/kingdoms/android/ui/WorldMapUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x42280000    # 42.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 56
    iget-object v5, p0, Lch/kingdoms/android/ui/WorldMapUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x42240000    # 41.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 57
    new-instance v5, Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-direct {v5, p0, v0}, Lch/kingdoms/android/ui/WorldMapUi$MapView;-><init>(Lch/kingdoms/android/ui/WorldMapUi;Landroid/content/Context;)V

    iput-object v5, p0, Lch/kingdoms/android/ui/WorldMapUi;->MAP_VIEW:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    .line 58
    iget-object v5, p0, Lch/kingdoms/android/ui/WorldMapUi;->MAP_VIEW:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-virtual {v3, v5, v4}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v4    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    .restart local v4    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lch/kingdoms/android/ui/WorldMapUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x43a00000    # 320.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 65
    new-instance v1, Lch/android/api/ui/ChBackAnimationButton;

    invoke-direct {v1, v0}, Lch/android/api/ui/ChBackAnimationButton;-><init>(Landroid/content/Context;)V

    .line 66
    .local v1, "backBtn":Lch/android/api/ui/ChBackAnimationButton;
    const/16 v5, 0x2744

    invoke-virtual {v1, v5}, Lch/android/api/ui/ChBackAnimationButton;->setId(I)V

    .line 67
    invoke-virtual {v1, p0}, Lch/android/api/ui/ChBackAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {v3, v1, v4}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 71
    .local v2, "handler":Landroid/os/Handler;
    new-instance v5, Lch/kingdoms/android/ui/WorldMapUi$1;

    invoke-direct {v5, p0, v1}, Lch/kingdoms/android/ui/WorldMapUi$1;-><init>(Lch/kingdoms/android/ui/WorldMapUi;Lch/android/api/ui/ChBackAnimationButton;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v4    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lch/kingdoms/android/ui/WorldMapUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x43ba0000    # 372.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v4, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 82
    .restart local v4    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lch/kingdoms/android/ui/WorldMapUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x436c0000    # 236.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 84
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lch/kingdoms/android/ui/WorldMapUi;->MAP_NAME:Landroid/widget/TextView;

    .line 85
    iget-object v5, p0, Lch/kingdoms/android/ui/WorldMapUi;->MAP_NAME:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 86
    iget-object v5, p0, Lch/kingdoms/android/ui/WorldMapUi;->MAP_NAME:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v5, p0, Lch/kingdoms/android/ui/WorldMapUi;->MAP_NAME:Landroid/widget/TextView;

    sget-object v6, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    iget-object v5, p0, Lch/kingdoms/android/ui/WorldMapUi;->MAP_NAME:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v4}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v5, p0, Lch/kingdoms/android/ui/WorldMapUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3, v6}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/WorldMapUi;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lch/kingdoms/android/ui/WorldMapUi;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/WorldMapUi;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lch/kingdoms/android/ui/WorldMapUi;->MAP_NAME:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lch/kingdoms/android/ui/WorldMapUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 99
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v1, p0, Lch/kingdoms/android/ui/WorldMapUi;->MAP_VIEW:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 103
    :pswitch_1
    iget-boolean v1, p0, Lch/kingdoms/android/ui/WorldMapUi;->isClosed:Z

    if-nez v1, :cond_0

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/kingdoms/android/ui/WorldMapUi;->isClosed:Z

    .line 105
    iget-object v1, p0, Lch/kingdoms/android/ui/WorldMapUi;->GAME_MENU_UI:Lch/kingdoms/android/ui/GameMenuUi;

    iget-object v2, p0, Lch/kingdoms/android/ui/WorldMapUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {v1, v2}, Lch/kingdoms/android/ui/GameMenuUi;->closeViewInCenter(Landroid/view/View;)V

    goto :goto_0

    .line 109
    :pswitch_2
    iget-object v1, p0, Lch/kingdoms/android/ui/WorldMapUi;->MAP_VIEW:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->setToWorldMap()V

    .line 110
    iget-object v1, p0, Lch/kingdoms/android/ui/WorldMapUi;->MAP_NAME:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x2744
        :pswitch_0
    .end packed-switch

    .line 101
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
