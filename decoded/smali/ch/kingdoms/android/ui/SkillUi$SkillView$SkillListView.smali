.class Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;
.super Landroid/widget/ScrollView;
.source "SkillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/SkillUi$SkillView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkillListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;
    }
.end annotation


# instance fields
.field private final ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

.field private final LAYOUT:Lch/android/api/ui/ChLinearLayout;

.field final synthetic this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/SkillUi$SkillView;Landroid/content/Context;)V
    .locals 11
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 370
    iput-object p1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    .line 371
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 373
    new-instance v0, Lch/android/api/ui/ChLinearLayout;

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/SkillUi;->access$4(Lch/kingdoms/android/ui/SkillUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    .line 374
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 376
    const/4 v0, 0x6

    new-array v0, v0, [Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    iput-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    .line 377
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetSkills()Lch/kingdoms/ndk/data/HeroSkill;

    move-result-object v9

    .line 378
    .local v9, "heroSkill":Lch/kingdoms/ndk/data/HeroSkill;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v0, 0x6

    if-lt v10, v0, :cond_0

    .line 399
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->addView(Landroid/view/View;)V

    .line 400
    return-void

    .line 379
    :cond_0
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView;)I

    move-result v0

    add-int v2, v10, v0

    .line 380
    .local v2, "index":I
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView;)I

    move-result v0

    if-nez v0, :cond_5

    .line 381
    const/4 v0, 0x5

    if-ge v10, v0, :cond_1

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$1(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroSkill;

    move-result-object v0

    iget-object v0, v0, Lch/kingdoms/ndk/data/HeroSkill;->bSkillUnlocks:[B

    aget-byte v0, v0, v10

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$2(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getLevel()I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$2(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 382
    :cond_1
    const/4 v0, 0x5

    if-ne v10, v0, :cond_3

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->isExistAngryRing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 383
    :cond_2
    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int v1, v10, v0

    iget-object v0, v9, Lch/kingdoms/ndk/data/HeroSkill;->bufSkillLvs:[B

    rem-int/lit8 v3, v2, 0x6

    aget-byte v3, v0, v3

    const/4 v5, -0x1

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->createSkillElemnt(IIIII)Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    move-result-object v0

    aput-object v0, v6, v10

    .line 396
    :goto_1
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    aget-object v1, v1, v10

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 378
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 384
    :cond_3
    const/4 v0, 0x5

    if-ne v10, v0, :cond_4

    .line 385
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    new-instance v3, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/SkillUi;->access$4(Lch/kingdoms/android/ui/SkillUi;)Landroid/app/Activity;

    move-result-object v5

    const/16 v6, 0x1e

    const-string v7, ""

    const/high16 v8, -0x10000

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;-><init>(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;Landroid/content/Context;ILjava/lang/String;I)V

    aput-object v3, v0, v10

    goto :goto_1

    .line 387
    :cond_4
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    new-instance v3, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/SkillUi;->access$4(Lch/kingdoms/android/ui/SkillUi;)Landroid/app/Activity;

    move-result-object v5

    const/16 v6, 0x1e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Lv."

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$1(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroSkill;

    move-result-object v4

    iget-object v4, v4, Lch/kingdoms/ndk/data/HeroSkill;->bSkillUnlocks:[B

    aget-byte v4, v4, v10

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, -0x10000

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;-><init>(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;Landroid/content/Context;ILjava/lang/String;I)V

    aput-object v3, v0, v10

    goto :goto_1

    .line 390
    :cond_5
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$1(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroSkill;

    move-result-object v0

    iget-object v0, v0, Lch/kingdoms/ndk/data/HeroSkill;->aSkillUnlocks:[B

    aget-byte v0, v0, v10

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$2(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getLevel()I

    move-result v1

    if-gt v0, v1, :cond_6

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$2(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    .line 391
    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int v1, v10, v0

    iget-object v0, v9, Lch/kingdoms/ndk/data/HeroSkill;->actSkillLvs:[B

    rem-int/lit8 v3, v2, 0x6

    aget-byte v3, v0, v3

    const/4 v5, -0x1

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->createSkillElemnt(IIIII)Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    move-result-object v0

    aput-object v0, v6, v10

    goto/16 :goto_1

    .line 393
    :cond_6
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    new-instance v3, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/SkillUi;->access$4(Lch/kingdoms/android/ui/SkillUi;)Landroid/app/Activity;

    move-result-object v5

    const/16 v6, 0x1e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Lv."

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$1(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroSkill;

    move-result-object v4

    iget-object v4, v4, Lch/kingdoms/ndk/data/HeroSkill;->aSkillUnlocks:[B

    aget-byte v4, v4, v10

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, -0x10000

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;-><init>(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;Landroid/content/Context;ILjava/lang/String;I)V

    aput-object v3, v0, v10

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;)Lch/kingdoms/android/ui/SkillUi$SkillView;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    return-object v0
.end method

.method private createSkillElemnt(IIIII)Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;
    .locals 7
    .param p1, "_iconIndex"    # I
    .param p2, "_skillIndex"    # I
    .param p3, "_point"    # I
    .param p4, "_id"    # I
    .param p5, "_color"    # I

    .prologue
    .line 453
    const/4 v1, -0x1

    if-le p2, v1, :cond_0

    .line 454
    new-instance v0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v1}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/SkillUi;->access$4(Lch/kingdoms/android/ui/SkillUi;)Landroid/app/Activity;

    move-result-object v2

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Lch/kingdoms/ndk/NdkTextLoader;->getSkillTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " +"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v3, p1

    move v5, p5

    .line 454
    invoke-direct/range {v0 .. v5}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;-><init>(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;Landroid/content/Context;ILjava/lang/String;I)V

    .line 456
    .local v0, "element":Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;
    invoke-virtual {v0, p4}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->setId(I)V

    .line 457
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    .end local v0    # "element":Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    iget-object v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v2}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/SkillUi;->access$4(Lch/kingdoms/android/ui/SkillUi;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {p2}, Lch/kingdoms/ndk/NdkTextLoader;->getSkillTxt(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move v4, p1

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;-><init>(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;Landroid/content/Context;ILjava/lang/String;I)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public select(I)V
    .locals 2
    .param p1, "_index"    # I

    .prologue
    .line 442
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 450
    return-void

    .line 443
    :cond_0
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->getId()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 444
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->select()V

    .line 442
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_2
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    aget-object v1, v1, v0

    invoke-static {v1}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->unselect()V

    goto :goto_1
.end method

.method public update()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, -0x1

    const/16 v11, 0x1e

    const/4 v10, 0x5

    const/high16 v9, -0x10000

    .line 403
    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v4

    invoke-static {v3, v4}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$3(Lch/kingdoms/android/ui/SkillUi$SkillView;Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 404
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetSkills()Lch/kingdoms/ndk/data/HeroSkill;

    move-result-object v0

    .line 405
    .local v0, "heroSkill":Lch/kingdoms/ndk/data/HeroSkill;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    if-lt v1, v3, :cond_0

    .line 439
    return-void

    .line 406
    :cond_0
    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v3}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView;)I

    move-result v3

    add-int v2, v1, v3

    .line 407
    .local v2, "index":I
    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v3}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView;)I

    move-result v3

    if-nez v3, :cond_5

    .line 409
    if-ge v1, v10, :cond_1

    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v3}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$1(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroSkill;

    move-result-object v3

    iget-object v3, v3, Lch/kingdoms/ndk/data/HeroSkill;->bSkillUnlocks:[B

    aget-byte v3, v3, v1

    iget-object v4, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v4}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$2(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/HeroStatus;->getLevel()I

    move-result v4

    if-gt v3, v4, :cond_1

    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v3}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$2(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v3

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v3

    if-ne v3, v13, :cond_2

    .line 410
    :cond_1
    if-ne v1, v10, :cond_3

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->isExistAngryRing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 411
    :cond_2
    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    aget-object v3, v3, v1

    iget-object v4, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v4}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getSkillTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " +"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 412
    iget-object v6, v0, Lch/kingdoms/ndk/data/HeroSkill;->bufSkillLvs:[B

    rem-int/lit8 v7, v2, 0x6

    aget-byte v6, v6, v7

    iget-object v7, v0, Lch/kingdoms/ndk/data/HeroSkill;->bufSkillLvPluss:[B

    rem-int/lit8 v8, v2, 0x6

    aget-byte v7, v7, v8

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 411
    invoke-virtual {v3, v4, v5, v12}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->setSkill(ILjava/lang/String;I)V

    .line 413
    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->setId(I)V

    .line 436
    :goto_1
    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->invalidate()V

    .line 437
    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    aget-object v3, v3, v1

    iget-object v4, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-virtual {v3, v4}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 414
    :cond_3
    if-ne v1, v10, :cond_4

    .line 416
    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    aget-object v3, v3, v1

    const-string v4, ""

    invoke-virtual {v3, v11, v4, v9}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->setSkill(ILjava/lang/String;I)V

    .line 417
    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->setId(I)V

    goto :goto_1

    .line 420
    :cond_4
    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    aget-object v3, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Lv."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v5}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$1(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroSkill;

    move-result-object v5

    iget-object v5, v5, Lch/kingdoms/ndk/data/HeroSkill;->bSkillUnlocks:[B

    aget-byte v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v11, v4, v9}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->setSkill(ILjava/lang/String;I)V

    .line 421
    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->setId(I)V

    goto :goto_1

    .line 425
    :cond_5
    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v3}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$1(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroSkill;

    move-result-object v3

    iget-object v3, v3, Lch/kingdoms/ndk/data/HeroSkill;->aSkillUnlocks:[B

    aget-byte v3, v3, v1

    iget-object v4, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v4}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$2(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/HeroStatus;->getLevel()I

    move-result v4

    if-gt v3, v4, :cond_6

    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v3}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$2(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v3

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v3

    if-eq v3, v13, :cond_6

    .line 427
    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    aget-object v3, v3, v1

    iget-object v4, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v4}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getSkillTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " +"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 428
    iget-object v6, v0, Lch/kingdoms/ndk/data/HeroSkill;->actSkillLvs:[B

    rem-int/lit8 v7, v2, 0x6

    aget-byte v6, v6, v7

    iget-object v7, v0, Lch/kingdoms/ndk/data/HeroSkill;->actSkillLvPluss:[B

    rem-int/lit8 v8, v2, 0x6

    aget-byte v7, v7, v8

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 427
    invoke-virtual {v3, v4, v5, v12}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->setSkill(ILjava/lang/String;I)V

    .line 429
    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->setId(I)V

    goto/16 :goto_1

    .line 432
    :cond_6
    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    aget-object v3, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Lv."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->this$1:Lch/kingdoms/android/ui/SkillUi$SkillView;

    invoke-static {v5}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$1(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/ndk/data/HeroSkill;

    move-result-object v5

    iget-object v5, v5, Lch/kingdoms/ndk/data/HeroSkill;->aSkillUnlocks:[B

    aget-byte v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v11, v4, v9}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->setSkill(ILjava/lang/String;I)V

    .line 433
    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->ELEMENTS:[Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView$SkillElementView;->setId(I)V

    goto/16 :goto_1
.end method
