.class public Lch/android/api/ui/ChStatView;
.super Lch/android/api/ui/ChLinearLayout;
.source "ChStatView.java"


# instance fields
.field private final AGI:Landroid/widget/TextView;

.field private final ATK:Landroid/widget/TextView;

.field private final ATR:Landroid/widget/TextView;

.field private final CRT:Landroid/widget/TextView;

.field private final DEF:Landroid/widget/TextView;

.field private final SATK:Landroid/widget/TextView;

.field private m_baseHeroStatus:Lch/kingdoms/ndk/data/HeroStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/kingdoms/ndk/data/HeroStatus;F)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_heroStat"    # Lch/kingdoms/ndk/data/HeroStatus;
    .param p3, "_density"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 24
    invoke-direct {p0, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v1, 0x1

    invoke-super {p0, v1}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 32
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 34
    const-string v1, "ATK"

    invoke-direct {p0, v1, p3}, Lch/android/api/ui/ChStatView;->createNameTxtView(Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0}, Lch/android/api/ui/ChStatView;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    invoke-direct {p0, p3}, Lch/android/api/ui/ChStatView;->createAbilityView(F)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChStatView;->ATK:Landroid/widget/TextView;

    .line 36
    iget-object v1, p0, Lch/android/api/ui/ChStatView;->ATK:Landroid/widget/TextView;

    invoke-direct {p0}, Lch/android/api/ui/ChStatView;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    const-string v1, "ATR"

    invoke-direct {p0, v1, p3}, Lch/android/api/ui/ChStatView;->createNameTxtView(Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0}, Lch/android/api/ui/ChStatView;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-direct {p0, p3}, Lch/android/api/ui/ChStatView;->createAbilityView(F)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChStatView;->ATR:Landroid/widget/TextView;

    .line 39
    iget-object v1, p0, Lch/android/api/ui/ChStatView;->ATR:Landroid/widget/TextView;

    invoke-direct {p0}, Lch/android/api/ui/ChStatView;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    new-instance v0, Landroid/widget/LinearLayout;

    .end local v0    # "ll":Landroid/widget/LinearLayout;
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    .restart local v0    # "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    const-string v1, "S.ATK"

    invoke-direct {p0, v1, p3}, Lch/android/api/ui/ChStatView;->createNameTxtView(Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0}, Lch/android/api/ui/ChStatView;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-direct {p0, p3}, Lch/android/api/ui/ChStatView;->createAbilityView(F)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChStatView;->SATK:Landroid/widget/TextView;

    .line 46
    iget-object v1, p0, Lch/android/api/ui/ChStatView;->SATK:Landroid/widget/TextView;

    invoke-direct {p0}, Lch/android/api/ui/ChStatView;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    const-string v1, "AGI"

    invoke-direct {p0, v1, p3}, Lch/android/api/ui/ChStatView;->createNameTxtView(Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0}, Lch/android/api/ui/ChStatView;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-direct {p0, p3}, Lch/android/api/ui/ChStatView;->createAbilityView(F)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChStatView;->AGI:Landroid/widget/TextView;

    .line 49
    iget-object v1, p0, Lch/android/api/ui/ChStatView;->AGI:Landroid/widget/TextView;

    invoke-direct {p0}, Lch/android/api/ui/ChStatView;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    new-instance v0, Landroid/widget/LinearLayout;

    .end local v0    # "ll":Landroid/widget/LinearLayout;
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    .restart local v0    # "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 54
    const-string v1, "DEF"

    invoke-direct {p0, v1, p3}, Lch/android/api/ui/ChStatView;->createNameTxtView(Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0}, Lch/android/api/ui/ChStatView;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-direct {p0, p3}, Lch/android/api/ui/ChStatView;->createAbilityView(F)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChStatView;->DEF:Landroid/widget/TextView;

    .line 56
    iget-object v1, p0, Lch/android/api/ui/ChStatView;->DEF:Landroid/widget/TextView;

    invoke-direct {p0}, Lch/android/api/ui/ChStatView;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    const-string v1, "CRT"

    invoke-direct {p0, v1, p3}, Lch/android/api/ui/ChStatView;->createNameTxtView(Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0}, Lch/android/api/ui/ChStatView;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-direct {p0, p3}, Lch/android/api/ui/ChStatView;->createAbilityView(F)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChStatView;->CRT:Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lch/android/api/ui/ChStatView;->CRT:Landroid/widget/TextView;

    invoke-direct {p0}, Lch/android/api/ui/ChStatView;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    return-void
.end method

.method private createAbilityView(F)Landroid/widget/TextView;
    .locals 3
    .param p1, "_density"    # F

    .prologue
    const/4 v2, 0x0

    .line 141
    new-instance v0, Landroid/widget/TextView;

    invoke-super {p0}, Lch/android/api/ui/ChLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 142
    .local v0, "txtView":Landroid/widget/TextView;
    sget-object v1, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 143
    const/16 v1, 0x8

    invoke-static {v1}, Lch/android/api/util/TextPaints;->calDensityFontSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lch/android/api/util/PixelText;->setSize(Landroid/widget/TextView;F)V

    .line 144
    const v1, -0x368a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 147
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 148
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 149
    return-object v0
.end method

.method private createLp()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 126
    return-object v0
.end method

.method private createNameTxtView(Ljava/lang/String;F)Landroid/widget/TextView;
    .locals 3
    .param p1, "_txt"    # Ljava/lang/String;
    .param p2, "_density"    # F

    .prologue
    const/4 v2, 0x0

    .line 130
    new-instance v0, Landroid/widget/TextView;

    invoke-super {p0}, Lch/android/api/ui/ChLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "txtView":Landroid/widget/TextView;
    sget-object v1, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 132
    invoke-static {}, Lch/android/api/util/TextPaints;->getSmallSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lch/android/api/util/PixelText;->setSize(Landroid/widget/TextView;F)V

    .line 133
    const v1, -0x3b5282

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 136
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 137
    return-object v0
.end method

.method private updateTextColor(Landroid/widget/TextView;II)V
    .locals 2
    .param p1, "_view"    # Landroid/widget/TextView;
    .param p2, "_compare1"    # I
    .param p3, "_compare2"    # I

    .prologue
    .line 113
    if-eq p2, p3, :cond_2

    .line 114
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "KD"

    const-string v1, "chanage min/maxATK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    if-le p2, p3, :cond_1

    const/high16 v0, -0x10000

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    :goto_1
    return-void

    .line 117
    :cond_1
    const v0, -0xff0001

    goto :goto_0

    .line 119
    :cond_2
    const v0, -0x3b5282

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lch/android/api/ui/ChStatView;->m_baseHeroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {p0, v0}, Lch/android/api/ui/ChStatView;->update(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 70
    return-void
.end method

.method public init(Lch/kingdoms/ndk/data/HeroStatus;)V
    .locals 1
    .param p1, "_heroStatus"    # Lch/kingdoms/ndk/data/HeroStatus;

    .prologue
    .line 64
    iput-object p1, p0, Lch/android/api/ui/ChStatView;->m_baseHeroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    .line 65
    iget-object v0, p0, Lch/android/api/ui/ChStatView;->m_baseHeroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {p0, v0}, Lch/android/api/ui/ChStatView;->update(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 66
    return-void
.end method

.method public update(Lch/kingdoms/ndk/data/HeroStatus;)V
    .locals 3
    .param p1, "_heroStat"    # Lch/kingdoms/ndk/data/HeroStatus;

    .prologue
    .line 73
    iget-object v0, p0, Lch/android/api/ui/ChStatView;->m_baseHeroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lch/android/api/ui/ChStatView;->ATK:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getMinAtk()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getMaxAtk()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lch/android/api/ui/ChStatView;->ATK:Landroid/widget/TextView;

    iget-object v1, p0, Lch/android/api/ui/ChStatView;->m_baseHeroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getMinAtk()I

    move-result v1

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getMinAtk()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lch/android/api/ui/ChStatView;->updateTextColor(Landroid/widget/TextView;II)V

    .line 77
    iget-object v0, p0, Lch/android/api/ui/ChStatView;->ATR:Landroid/widget/TextView;

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getAtr()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lch/android/api/ui/ChStatView;->ATR:Landroid/widget/TextView;

    iget-object v1, p0, Lch/android/api/ui/ChStatView;->m_baseHeroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getAtr()I

    move-result v1

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getAtr()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lch/android/api/ui/ChStatView;->updateTextColor(Landroid/widget/TextView;II)V

    .line 80
    iget-object v0, p0, Lch/android/api/ui/ChStatView;->SATK:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getMinSatk()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getMaxSatk()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lch/android/api/ui/ChStatView;->SATK:Landroid/widget/TextView;

    iget-object v1, p0, Lch/android/api/ui/ChStatView;->m_baseHeroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getMinSatk()I

    move-result v1

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getMinSatk()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lch/android/api/ui/ChStatView;->updateTextColor(Landroid/widget/TextView;II)V

    .line 83
    iget-object v0, p0, Lch/android/api/ui/ChStatView;->AGI:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getAgi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lch/android/api/ui/ChStatView;->AGI:Landroid/widget/TextView;

    iget-object v1, p0, Lch/android/api/ui/ChStatView;->m_baseHeroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getAgi()I

    move-result v1

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getAgi()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lch/android/api/ui/ChStatView;->updateTextColor(Landroid/widget/TextView;II)V

    .line 86
    iget-object v0, p0, Lch/android/api/ui/ChStatView;->DEF:Landroid/widget/TextView;

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getDef()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lch/android/api/ui/ChStatView;->DEF:Landroid/widget/TextView;

    iget-object v1, p0, Lch/android/api/ui/ChStatView;->m_baseHeroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getDef()I

    move-result v1

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getDef()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lch/android/api/ui/ChStatView;->updateTextColor(Landroid/widget/TextView;II)V

    .line 89
    iget-object v0, p0, Lch/android/api/ui/ChStatView;->CRT:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getCrt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lch/android/api/ui/ChStatView;->CRT:Landroid/widget/TextView;

    iget-object v1, p0, Lch/android/api/ui/ChStatView;->m_baseHeroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getCrt()I

    move-result v1

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getCrt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lch/android/api/ui/ChStatView;->updateTextColor(Landroid/widget/TextView;II)V

    .line 110
    :cond_0
    return-void
.end method
