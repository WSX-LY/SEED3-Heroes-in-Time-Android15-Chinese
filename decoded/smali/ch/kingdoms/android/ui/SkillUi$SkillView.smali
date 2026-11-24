.class Lch/kingdoms/android/ui/SkillUi$SkillView;
.super Lch/android/api/ui/ChLinearLayout;
.source "SkillUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/SkillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkillView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;,
        Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;
    }
.end annotation


# instance fields
.field private HERO_SKILL_START_INDEX:I

.field private final INFO_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

.field private final LIST_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;

.field private m_heroSkill:Lch/kingdoms/ndk/data/HeroSkill;

.field private m_heroStatus:Lch/kingdoms/ndk/data/HeroStatus;

.field final synthetic this$0:Lch/kingdoms/android/ui/SkillUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/SkillUi;Landroid/content/Context;Z)V
    .locals 11
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "_isActiveSkills"    # Z

    .prologue
    const/high16 v10, 0x42480000    # 50.0f

    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x40a00000    # 5.0f

    const/4 v6, 0x0

    .line 276
    iput-object p1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->this$0:Lch/kingdoms/android/ui/SkillUi;

    .line 277
    invoke-direct {p0, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-super {p0, v6}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 280
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$6(Lch/kingdoms/android/ui/SkillUi;)Lch/kingdoms/ndk/data/HeroSkill;

    move-result-object v2

    iput-object v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->m_heroSkill:Lch/kingdoms/ndk/data/HeroSkill;

    .line 281
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$2(Lch/kingdoms/android/ui/SkillUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v2

    iput-object v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->m_heroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    .line 282
    if-eqz p3, :cond_1

    .line 283
    iget-object v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->m_heroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0xc

    iput v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->HERO_SKILL_START_INDEX:I

    .line 288
    :goto_0
    sget-boolean v2, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 289
    const-string v2, "KD"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HERO_SKILL_START_INDEX : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->HERO_SKILL_START_INDEX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    new-instance v2, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;

    invoke-direct {v2, p0, p2}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;-><init>(Lch/kingdoms/android/ui/SkillUi$SkillView;Landroid/content/Context;)V

    iput-object v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->LIST_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;

    .line 293
    iget-object v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->LIST_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    invoke-virtual {v2, v3, v6, v6, v6}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->setPadding(IIII)V

    .line 294
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x43390000    # 185.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 295
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v10

    mul-float/2addr v3, v9

    float-to-int v3, v3

    .line 294
    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 296
    .local v0, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 297
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v4

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v5

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 298
    iget-object v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->LIST_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;

    invoke-super {p0, v2, v0}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    new-instance v2, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    invoke-direct {v2, p0, p2}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;-><init>(Lch/kingdoms/android/ui/SkillUi$SkillView;Landroid/content/Context;)V

    iput-object v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->INFO_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    .line 301
    iget-object v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->INFO_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v4

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v2, v6, v3, v6, v4}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->setPadding(IIII)V

    .line 302
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x43480000    # 200.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 303
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v10

    mul-float/2addr v3, v9

    float-to-int v3, v3

    .line 302
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 304
    .local v1, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 305
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    invoke-virtual {v1, v6, v2, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 306
    iget-object v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->INFO_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    invoke-super {p0, v2, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    return-void

    .line 286
    .end local v0    # "lp1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iput v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->HERO_SKILL_START_INDEX:I

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/SkillUi$SkillView;)I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->HERO_SKILL_START_INDEX:I

    return v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroSkill;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->m_heroSkill:Lch/kingdoms/ndk/data/HeroSkill;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroStatus;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->m_heroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    return-object v0
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/SkillUi$SkillView;Lch/kingdoms/ndk/data/HeroStatus;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->m_heroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    return-void
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->LIST_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;

    return-object v0
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->this$0:Lch/kingdoms/android/ui/SkillUi;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x5

    const/4 v6, 0x0

    .line 344
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->this$0:Lch/kingdoms/android/ui/SkillUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$3(Lch/kingdoms/android/ui/SkillUi;)I

    move-result v0

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    .line 347
    .local v8, "index":I
    iget v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->HERO_SKILL_START_INDEX:I

    div-int/lit8 v0, v0, 0x2

    sub-int v1, v8, v0

    .line 348
    .local v1, "iconNum":I
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetSkills()Lch/kingdoms/ndk/data/HeroSkill;

    move-result-object v7

    .line 349
    .local v7, "heroSkill":Lch/kingdoms/ndk/data/HeroSkill;
    invoke-static {v8}, Lch/kingdoms/ndk/NdkTextLoader;->getSkillTxt(I)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "skillStr":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 351
    iget v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->HERO_SKILL_START_INDEX:I

    if-nez v0, :cond_3

    .line 352
    rem-int/lit8 v0, v8, 0x6

    if-eq v0, v4, :cond_0

    iget-object v0, v7, Lch/kingdoms/ndk/data/HeroSkill;->bSkillUnlocks:[B

    rem-int/lit8 v3, v8, 0x6

    aget-byte v0, v0, v3

    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->m_heroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/HeroStatus;->getLevel()I

    move-result v3

    if-le v0, v3, :cond_1

    .line 353
    :cond_0
    rem-int/lit8 v0, v8, 0x6

    if-ne v0, v4, :cond_3

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->isExistAngryRing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->LIST_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;

    invoke-virtual {v0, v8}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->select(I)V

    .line 356
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->INFO_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    iget-object v3, v7, Lch/kingdoms/ndk/data/HeroSkill;->bufSkillLvs:[B

    rem-int/lit8 v4, v8, 0x6

    aget-byte v3, v3, v4

    iget-object v4, v7, Lch/kingdoms/ndk/data/HeroSkill;->bufSkillLvPluss:[B

    rem-int/lit8 v5, v8, 0x6

    aget-byte v4, v4, v5

    rem-int/lit8 v5, v8, 0x6

    invoke-static {v6, v5}, Lch/kingdoms/ndk/NdkUiEventManager;->getSkillSp(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v8, 0x6

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getSkillTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->set(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 364
    .end local v1    # "iconNum":I
    .end local v2    # "skillStr":Ljava/lang/String;
    .end local v7    # "heroSkill":Lch/kingdoms/ndk/data/HeroSkill;
    .end local v8    # "index":I
    :cond_2
    :goto_0
    return-void

    .line 357
    .restart local v1    # "iconNum":I
    .restart local v2    # "skillStr":Ljava/lang/String;
    .restart local v7    # "heroSkill":Lch/kingdoms/ndk/data/HeroSkill;
    .restart local v8    # "index":I
    :cond_3
    iget v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->HERO_SKILL_START_INDEX:I

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, v7, Lch/kingdoms/ndk/data/HeroSkill;->aSkillUnlocks:[B

    rem-int/lit8 v3, v8, 0x6

    aget-byte v0, v0, v3

    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->m_heroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/HeroStatus;->getLevel()I

    move-result v3

    if-gt v0, v3, :cond_2

    .line 359
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->LIST_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;

    invoke-virtual {v0, v8}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->select(I)V

    .line 360
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->INFO_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    iget-object v3, v7, Lch/kingdoms/ndk/data/HeroSkill;->actSkillLvs:[B

    rem-int/lit8 v4, v8, 0x6

    aget-byte v3, v3, v4

    iget-object v4, v7, Lch/kingdoms/ndk/data/HeroSkill;->actSkillLvPluss:[B

    rem-int/lit8 v5, v8, 0x6

    aget-byte v4, v4, v5

    rem-int/lit8 v5, v8, 0x6

    invoke-static {v6, v5}, Lch/kingdoms/ndk/NdkUiEventManager;->getSkillSp(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v8, 0x6

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getSkillTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->set(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 312
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChLinearLayout;->onMeasure(II)V

    .line 315
    return-void
.end method

.method public selectActiveSkills()V
    .locals 2

    .prologue
    .line 330
    const/high16 v0, 0x7f020000

    invoke-super {p0, v0}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 331
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->LIST_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->select(I)V

    .line 332
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->INFO_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->clear()V

    .line 333
    return-void
.end method

.method public selectBuffSkills()V
    .locals 2

    .prologue
    .line 336
    const v0, 0x7f020060

    invoke-super {p0, v0}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 337
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->LIST_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->select(I)V

    .line 338
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->INFO_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->clear()V

    .line 339
    return-void
.end method

.method public updateSkill(Z)V
    .locals 1
    .param p1, "isActiveSkills"    # Z

    .prologue
    .line 318
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->this$0:Lch/kingdoms/android/ui/SkillUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$6(Lch/kingdoms/android/ui/SkillUi;)Lch/kingdoms/ndk/data/HeroSkill;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->m_heroSkill:Lch/kingdoms/ndk/data/HeroSkill;

    .line 319
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->this$0:Lch/kingdoms/android/ui/SkillUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$2(Lch/kingdoms/android/ui/SkillUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->m_heroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    .line 320
    if-eqz p1, :cond_0

    .line 321
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->m_heroStatus:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->HERO_SKILL_START_INDEX:I

    .line 326
    :goto_0
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->LIST_VIEW:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->update()V

    .line 327
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView;->HERO_SKILL_START_INDEX:I

    goto :goto_0
.end method
