.class public Lch/kingdoms/android/ui/SkillUi;
.super Ljava/lang/Object;
.source "SkillUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/SkillUi$SkillView;,
        Lch/kingdoms/android/ui/SkillUi$TabBtnView;
    }
.end annotation


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private LAYER_LEVEL:I

.field private final LAYOUT:Lch/android/api/ui/ChLinearLayout;

.field private final RESOURCE:Landroid/content/res/Resources;

.field private final TOP_BTNS:Lch/kingdoms/android/ui/SkillUi$TabBtnView;

.field private m_skillView:Lch/kingdoms/android/ui/SkillUi$SkillView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
    .locals 5
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    const/4 v4, -0x2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lch/kingdoms/android/ui/SkillUi;->ACTIVITY:Landroid/app/Activity;

    .line 48
    iput-object p2, p0, Lch/kingdoms/android/ui/SkillUi;->DI:Lch/android/api/util/DisplayInfo;

    .line 49
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lch/kingdoms/android/ui/SkillUi;->RESOURCE:Landroid/content/res/Resources;

    .line 51
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v1, v0}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lch/kingdoms/android/ui/SkillUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    .line 53
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 56
    new-instance v1, Lch/kingdoms/android/ui/SkillUi$TabBtnView;

    invoke-direct {v1, p0, v0}, Lch/kingdoms/android/ui/SkillUi$TabBtnView;-><init>(Lch/kingdoms/android/ui/SkillUi;Landroid/content/Context;)V

    iput-object v1, p0, Lch/kingdoms/android/ui/SkillUi;->TOP_BTNS:Lch/kingdoms/android/ui/SkillUi$TabBtnView;

    .line 59
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    iget-object v2, p0, Lch/kingdoms/android/ui/SkillUi;->TOP_BTNS:Lch/kingdoms/android/ui/SkillUi$TabBtnView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-virtual {p0}, Lch/kingdoms/android/ui/SkillUi;->selectActiveSkills()V

    .line 62
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/SkillUi;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi;->RESOURCE:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/SkillUi;)Lch/kingdoms/ndk/data/HeroStatus;
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lch/kingdoms/android/ui/SkillUi;->getHeroStatus()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/SkillUi;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lch/kingdoms/android/ui/SkillUi;->LAYER_LEVEL:I

    return v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/SkillUi;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi;->ACTIVITY:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/SkillUi;)Lch/kingdoms/android/ui/SkillUi$TabBtnView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi;->TOP_BTNS:Lch/kingdoms/android/ui/SkillUi$TabBtnView;

    return-object v0
.end method

.method static synthetic access$6(Lch/kingdoms/android/ui/SkillUi;)Lch/kingdoms/ndk/data/HeroSkill;
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lch/kingdoms/android/ui/SkillUi;->getHeroSkill()Lch/kingdoms/ndk/data/HeroSkill;

    move-result-object v0

    return-object v0
.end method

.method private getHeroSkill()Lch/kingdoms/ndk/data/HeroSkill;
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetSkills()Lch/kingdoms/ndk/data/HeroSkill;

    move-result-object v0

    return-object v0
.end method

.method private getHeroStatus()Lch/kingdoms/ndk/data/HeroStatus;
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    return-object v0
.end method

.method public selectActiveSkills()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 83
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi;->m_skillView:Lch/kingdoms/android/ui/SkillUi$SkillView;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lch/kingdoms/android/ui/SkillUi$SkillView;

    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lch/kingdoms/android/ui/SkillUi$SkillView;-><init>(Lch/kingdoms/android/ui/SkillUi;Landroid/content/Context;Z)V

    iput-object v0, p0, Lch/kingdoms/android/ui/SkillUi;->m_skillView:Lch/kingdoms/android/ui/SkillUi$SkillView;

    .line 85
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi;->m_skillView:Lch/kingdoms/android/ui/SkillUi$SkillView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 86
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi;->m_skillView:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-virtual {v0, v4}, Lch/kingdoms/android/ui/SkillUi$SkillView;->updateSkill(Z)V

    .line 91
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi;->m_skillView:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->selectActiveSkills()V

    .line 92
    return-void
.end method

.method public selectBuffSkills()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 99
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi;->m_skillView:Lch/kingdoms/android/ui/SkillUi$SkillView;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lch/kingdoms/android/ui/SkillUi$SkillView;

    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lch/kingdoms/android/ui/SkillUi$SkillView;-><init>(Lch/kingdoms/android/ui/SkillUi;Landroid/content/Context;Z)V

    iput-object v0, p0, Lch/kingdoms/android/ui/SkillUi;->m_skillView:Lch/kingdoms/android/ui/SkillUi$SkillView;

    .line 101
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi;->m_skillView:Lch/kingdoms/android/ui/SkillUi$SkillView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi;->m_skillView:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-virtual {v0, v4}, Lch/kingdoms/android/ui/SkillUi$SkillView;->updateSkill(Z)V

    .line 107
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi;->m_skillView:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView;->selectBuffSkills()V

    .line 108
    return-void
.end method

.method public updateLayerLevel()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v0

    iput v0, p0, Lch/kingdoms/android/ui/SkillUi;->LAYER_LEVEL:I

    .line 66
    return-void
.end method

.method public updateSkill()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi;->TOP_BTNS:Lch/kingdoms/android/ui/SkillUi$TabBtnView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->selectActiveSkills()V

    .line 70
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi;->TOP_BTNS:Lch/kingdoms/android/ui/SkillUi$TabBtnView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->updateSkillAddPoints()V

    .line 71
    invoke-virtual {p0}, Lch/kingdoms/android/ui/SkillUi;->selectActiveSkills()V

    .line 72
    return-void
.end method
