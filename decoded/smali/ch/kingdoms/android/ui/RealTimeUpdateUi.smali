.class public Lch/kingdoms/android/ui/RealTimeUpdateUi;
.super Ljava/lang/Object;
.source "RealTimeUpdateUi.java"


# instance fields
.field private final f_expView:Lch/android/api/ui/ChExpView;

.field private final f_heroHpMpTpView:Lch/android/api/ui/ChHeroMpHpTpView;

.field private final f_monsterHpView:Lch/android/api/ui/ChMonsterHpView;

.field private final f_pointsLayout:Lch/android/api/ui/ChRelativeLayout;

.field private heroLevel:I

.field private isLevelUp:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
    .locals 8
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x4

    const/4 v4, -0x1

    const/4 v5, -0x2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1, v4, v4}, Lch/android/api/ui/ChViewGen;->createRelativeLayout(Landroid/app/Activity;II)Lch/android/api/ui/ChRelativeLayout;

    move-result-object v4

    iput-object v4, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_pointsLayout:Lch/android/api/ui/ChRelativeLayout;

    .line 37
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 39
    .local v1, "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 40
    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 41
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43
    .local v2, "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v3, "rlp3":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    .local v0, "appContext":Landroid/content/Context;
    new-instance v4, Lch/android/api/ui/ChHeroMpHpTpView;

    iget v5, p2, Lch/android/api/util/DisplayInfo;->density:F

    invoke-direct {v4, v0, v5}, Lch/android/api/ui/ChHeroMpHpTpView;-><init>(Landroid/content/Context;F)V

    iput-object v4, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_heroHpMpTpView:Lch/android/api/ui/ChHeroMpHpTpView;

    .line 52
    iget-object v4, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_heroHpMpTpView:Lch/android/api/ui/ChHeroMpHpTpView;

    const/16 v5, 0x2760

    invoke-virtual {v4, v5}, Lch/android/api/ui/ChHeroMpHpTpView;->setId(I)V

    .line 53
    new-instance v4, Lch/android/api/ui/ChMonsterHpView;

    iget v5, p2, Lch/android/api/util/DisplayInfo;->density:F

    invoke-direct {v4, v0, v5}, Lch/android/api/ui/ChMonsterHpView;-><init>(Landroid/content/Context;F)V

    iput-object v4, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_monsterHpView:Lch/android/api/ui/ChMonsterHpView;

    .line 54
    new-instance v4, Lch/android/api/ui/ChExpView;

    iget v5, p2, Lch/android/api/util/DisplayInfo;->density:F

    invoke-direct {v4, v0, v5}, Lch/android/api/ui/ChExpView;-><init>(Landroid/content/Context;F)V

    iput-object v4, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_expView:Lch/android/api/ui/ChExpView;

    .line 56
    iget-object v4, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_pointsLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v5, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_heroHpMpTpView:Lch/android/api/ui/ChHeroMpHpTpView;

    invoke-virtual {v4, v5, v1}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v4, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_pointsLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v5, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_monsterHpView:Lch/android/api/ui/ChMonsterHpView;

    invoke-virtual {v4, v5, v2}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v4, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_pointsLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v5, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_expView:Lch/android/api/ui/ChExpView;

    invoke-virtual {v4, v5, v3}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {p0, v6}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->setVisibility(I)V

    .line 61
    invoke-virtual {p0, v6}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->setMonsterHpVisible(I)V

    .line 62
    return-void
.end method


# virtual methods
.method public checkUpdates()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_heroHpMpTpView:Lch/android/api/ui/ChHeroMpHpTpView;

    invoke-virtual {v0}, Lch/android/api/ui/ChHeroMpHpTpView;->checkPointsExisting()V

    .line 68
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_monsterHpView:Lch/android/api/ui/ChMonsterHpView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChMonsterHpView;->setHp(I)V

    .line 69
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->initMonHp()V

    .line 70
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->setMonsterHpVisible(I)V

    .line 71
    return-void
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_pointsLayout:Lch/android/api/ui/ChRelativeLayout;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_heroHpMpTpView:Lch/android/api/ui/ChHeroMpHpTpView;

    invoke-virtual {v0}, Lch/android/api/ui/ChHeroMpHpTpView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public invalidateExpView()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_expView:Lch/android/api/ui/ChExpView;

    invoke-virtual {v0}, Lch/android/api/ui/ChExpView;->invalidate()V

    .line 128
    return-void
.end method

.method public invalidateHeroHpSpTpView()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_heroHpMpTpView:Lch/android/api/ui/ChHeroMpHpTpView;

    invoke-virtual {v0}, Lch/android/api/ui/ChHeroMpHpTpView;->invalidate()V

    .line 117
    iget-boolean v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->isLevelUp:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_heroHpMpTpView:Lch/android/api/ui/ChHeroMpHpTpView;

    invoke-virtual {v0}, Lch/android/api/ui/ChHeroMpHpTpView;->checkPointsExisting()V

    .line 120
    :cond_0
    return-void
.end method

.method public invalidateMonsterHpView()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_monsterHpView:Lch/android/api/ui/ChMonsterHpView;

    invoke-virtual {v0}, Lch/android/api/ui/ChMonsterHpView;->invalidate()V

    .line 124
    return-void
.end method

.method public setBuff(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "isOn"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_heroHpMpTpView:Lch/android/api/ui/ChHeroMpHpTpView;

    invoke-virtual {v0, p1, p2}, Lch/android/api/ui/ChHeroMpHpTpView;->setBuff(IZ)V

    .line 157
    return-void
.end method

.method public setBuffBlink(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "isBlink"    # Z

    .prologue
    .line 160
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_heroHpMpTpView:Lch/android/api/ui/ChHeroMpHpTpView;

    invoke-virtual {v0, p1, p2}, Lch/android/api/ui/ChHeroMpHpTpView;->setBuffBlink(IZ)V

    .line 161
    return-void
.end method

.method public setMonster(Ljava/lang/String;II)V
    .locals 1
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_level"    # I
    .param p3, "_maxHp"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_monsterHpView:Lch/android/api/ui/ChMonsterHpView;

    invoke-virtual {v0, p1, p2, p3}, Lch/android/api/ui/ChMonsterHpView;->setMonster(Ljava/lang/String;II)V

    .line 113
    return-void
.end method

.method public setMonsterHpVisible(I)V
    .locals 2
    .param p1, "_visibility"    # I

    .prologue
    .line 131
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 132
    if-nez p1, :cond_1

    .line 133
    const-string v0, "KD"

    const-string v1, "_visibility == View.VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    :goto_0
    iget-object v1, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_monsterHpView:Lch/android/api/ui/ChMonsterHpView;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lch/android/api/ui/ChMonsterHpView;->setMonHpVisible(Z)V

    .line 139
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_monsterHpView:Lch/android/api/ui/ChMonsterHpView;

    invoke-virtual {v0}, Lch/android/api/ui/ChMonsterHpView;->invalidate()V

    .line 140
    return-void

    .line 135
    :cond_1
    const-string v0, "KD"

    const-string v1, "_visibility == View.INVISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnClickListenerToHeroHpMpView(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 74
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_heroHpMpTpView:Lch/android/api/ui/ChHeroMpHpTpView;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChHeroMpHpTpView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "_visible"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 143
    if-ne p1, v1, :cond_0

    .line 144
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_heroHpMpTpView:Lch/android/api/ui/ChHeroMpHpTpView;

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChHeroMpHpTpView;->setVisibility(I)V

    .line 145
    invoke-virtual {p0, v1}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->setMonsterHpVisible(I)V

    .line 146
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_expView:Lch/android/api/ui/ChExpView;

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChExpView;->setVisibility(I)V

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_heroHpMpTpView:Lch/android/api/ui/ChHeroMpHpTpView;

    invoke-virtual {v0, v2}, Lch/android/api/ui/ChHeroMpHpTpView;->setVisibility(I)V

    .line 150
    invoke-virtual {p0, v2}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->setMonsterHpVisible(I)V

    .line 151
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_expView:Lch/android/api/ui/ChExpView;

    invoke-virtual {v0, v2}, Lch/android/api/ui/ChExpView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateHeroExp(II)V
    .locals 1
    .param p1, "_maxExp"    # I
    .param p2, "_exp"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_expView:Lch/android/api/ui/ChExpView;

    invoke-virtual {v0, p1, p2}, Lch/android/api/ui/ChExpView;->setExp(II)V

    .line 105
    return-void
.end method

.method public updateHeroHpSpTp(IIIII)V
    .locals 6
    .param p1, "_hp"    # I
    .param p2, "perHp"    # I
    .param p3, "_sp"    # I
    .param p4, "perSp"    # I
    .param p5, "_tp"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_heroHpMpTpView:Lch/android/api/ui/ChHeroMpHpTpView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lch/android/api/ui/ChHeroMpHpTpView;->setPoint(IIIII)V

    .line 101
    return-void
.end method

.method public updateHeroMaxHpSpTp(IIII)V
    .locals 1
    .param p1, "_lv"    # I
    .param p2, "_hp"    # I
    .param p3, "_sp"    # I
    .param p4, "_tp"    # I

    .prologue
    .line 90
    iget v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->heroLevel:I

    if-eq v0, p1, :cond_0

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->isLevelUp:Z

    .line 95
    :goto_0
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_heroHpMpTpView:Lch/android/api/ui/ChHeroMpHpTpView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lch/android/api/ui/ChHeroMpHpTpView;->setMaxPoint(IIII)V

    .line 96
    iput p1, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->heroLevel:I

    .line 97
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->isLevelUp:Z

    goto :goto_0
.end method

.method public updateMonsterHp(I)V
    .locals 1
    .param p1, "_hp"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lch/kingdoms/android/ui/RealTimeUpdateUi;->f_monsterHpView:Lch/android/api/ui/ChMonsterHpView;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChMonsterHpView;->setHp(I)V

    .line 109
    return-void
.end method
