.class public Lch/kingdoms/android/ui/QuestUi;
.super Ljava/lang/Object;
.source "QuestUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/QuestUi$QuestContents;,
        Lch/kingdoms/android/ui/QuestUi$QuestList;
    }
.end annotation


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final CONTENTS_VIEW:Lch/kingdoms/android/ui/QuestUi$QuestContents;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final ID_GIVE_UP:I

.field private LAYER_LEVEL:I

.field private final LAYOUT:Lch/android/api/ui/ChLinearLayout;

.field private final LIST_VIEW:Lch/kingdoms/android/ui/QuestUi$QuestList;

.field private m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

.field private m_selectedIndex:I

.field private final mainQuestSelectBmp:Landroid/graphics/Bitmap;

.field private final mainQuestUnselectBmp:Landroid/graphics/Bitmap;

.field private final questElementH:I

.field private final questElementW:I

.field private final subQuestSelectBmp:Landroid/graphics/Bitmap;

.field private final subQuestUnselectBmp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
    .locals 10
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v5, 0x2710

    iput v5, p0, Lch/kingdoms/android/ui/QuestUi;->ID_GIVE_UP:I

    .line 54
    iput-object p1, p0, Lch/kingdoms/android/ui/QuestUi;->ACTIVITY:Landroid/app/Activity;

    .line 55
    iput-object p2, p0, Lch/kingdoms/android/ui/QuestUi;->DI:Lch/android/api/util/DisplayInfo;

    .line 57
    iget-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 58
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0201fe

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->mainQuestUnselectBmp:Landroid/graphics/Bitmap;

    .line 59
    const v5, 0x7f0201ff

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->mainQuestSelectBmp:Landroid/graphics/Bitmap;

    .line 60
    const v5, 0x7f0202be

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->subQuestUnselectBmp:Landroid/graphics/Bitmap;

    .line 61
    const v5, 0x7f0202bf

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->subQuestSelectBmp:Landroid/graphics/Bitmap;

    .line 62
    iget-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->mainQuestSelectBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, p0, Lch/kingdoms/android/ui/QuestUi;->questElementW:I

    .line 63
    iget-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->mainQuestSelectBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, p0, Lch/kingdoms/android/ui/QuestUi;->questElementH:I

    .line 68
    iget-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, "appContext":Landroid/content/Context;
    new-instance v5, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v5, v0}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    .line 70
    iget-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 72
    new-instance v5, Lch/kingdoms/android/ui/QuestUi$QuestContents;

    invoke-direct {v5, p0, v0}, Lch/kingdoms/android/ui/QuestUi$QuestContents;-><init>(Lch/kingdoms/android/ui/QuestUi;Landroid/content/Context;)V

    iput-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->CONTENTS_VIEW:Lch/kingdoms/android/ui/QuestUi$QuestContents;

    .line 73
    new-instance v5, Lch/kingdoms/android/ui/QuestUi$QuestList;

    invoke-direct {v5, p0, v0}, Lch/kingdoms/android/ui/QuestUi$QuestList;-><init>(Lch/kingdoms/android/ui/QuestUi;Landroid/content/Context;)V

    iput-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->LIST_VIEW:Lch/kingdoms/android/ui/QuestUi$QuestList;

    .line 75
    iget-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x41f00000    # 30.0f

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 76
    .local v3, "marginHeight":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    .line 77
    iget-object v6, p0, Lch/kingdoms/android/ui/QuestUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0202b2

    invoke-static {v6, v7}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v6

    sub-int/2addr v6, v3

    .line 76
    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v1, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 79
    iget-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lch/kingdoms/android/ui/QuestUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v7, 0x41a00000    # 20.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Lch/kingdoms/android/ui/QuestUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v7, v7, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Lch/kingdoms/android/ui/QuestUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v8, v8, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 80
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    .line 81
    iget-object v6, p0, Lch/kingdoms/android/ui/QuestUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0202b2

    invoke-static {v6, v7}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v6

    sub-int/2addr v6, v3

    .line 80
    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    .local v2, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 83
    iget-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lch/kingdoms/android/ui/QuestUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v7, 0x41a00000    # 20.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Lch/kingdoms/android/ui/QuestUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v7, v7, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Lch/kingdoms/android/ui/QuestUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v8, v8, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 84
    iget-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    iget-object v6, p0, Lch/kingdoms/android/ui/QuestUi;->CONTENTS_VIEW:Lch/kingdoms/android/ui/QuestUi$QuestContents;

    invoke-virtual {v5, v6, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    iget-object v6, p0, Lch/kingdoms/android/ui/QuestUi;->LIST_VIEW:Lch/kingdoms/android/ui/QuestUi$QuestList;

    invoke-virtual {v5, v6, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/QuestUi;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/QuestUi;I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/QuestUi;->getBmp(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/QuestUi;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lch/kingdoms/android/ui/QuestUi;->questElementW:I

    return v0
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/QuestUi;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lch/kingdoms/android/ui/QuestUi;->questElementH:I

    return v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/QuestUi;)[Lch/kingdoms/ndk/data/QuestDatas$Quest;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    return-object v0
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/QuestUi;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lch/kingdoms/android/ui/QuestUi;->m_selectedIndex:I

    return v0
.end method

.method static synthetic access$6(Lch/kingdoms/android/ui/QuestUi;[Lch/kingdoms/ndk/data/QuestDatas$Quest;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    return-void
.end method

.method static synthetic access$7(Lch/kingdoms/android/ui/QuestUi;)Lch/kingdoms/android/ui/QuestUi$QuestList;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->LIST_VIEW:Lch/kingdoms/android/ui/QuestUi$QuestList;

    return-object v0
.end method

.method static synthetic access$8(Lch/kingdoms/android/ui/QuestUi;)Lch/kingdoms/android/ui/QuestUi$QuestContents;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->CONTENTS_VIEW:Lch/kingdoms/android/ui/QuestUi$QuestContents;

    return-object v0
.end method

.method private getBmp(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 94
    sparse-switch p1, :sswitch_data_0

    .line 102
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->subQuestSelectBmp:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    .line 96
    :sswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->mainQuestUnselectBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 98
    :sswitch_1
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->mainQuestSelectBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 100
    :sswitch_2
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->subQuestUnselectBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 94
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0201fe -> :sswitch_0
        0x7f0201ff -> :sswitch_1
        0x7f0202be -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 136
    iget v0, p0, Lch/kingdoms/android/ui/QuestUi;->LAYER_LEVEL:I

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    .line 138
    .local v8, "id":I
    sparse-switch v8, :sswitch_data_0

    .line 192
    :goto_0
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->LIST_VIEW:Lch/kingdoms/android/ui/QuestUi$QuestList;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/QuestUi$QuestList;->invalidate()V

    .line 194
    .end local v8    # "id":I
    :cond_0
    return-void

    .line 140
    .restart local v8    # "id":I
    :sswitch_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetQuestDatas()Lch/kingdoms/ndk/data/QuestDatas;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/QuestDatas;->getQuests()[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    .line 142
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCnt()I

    move-result v0

    iget-object v2, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCompleteCnt()I

    move-result v2

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCompleteCnt()I

    move-result v9

    .line 143
    .local v9, "questCnt":I
    :goto_1
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->CONTENTS_VIEW:Lch/kingdoms/android/ui/QuestUi$QuestContents;

    iget-object v2, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getHiddenType()B

    move-result v2

    if-ne v2, v1, :cond_2

    move v2, v1

    :goto_2
    iget-object v3, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getExplain()Ljava/lang/String;

    move-result-object v4

    .line 144
    iget-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getClientName()Ljava/lang/String;

    move-result-object v5

    .line 145
    iget-object v6, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCompleteCnt()I

    move-result v6

    if-lez v6, :cond_3

    .line 146
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCompleteCnt()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    iget-object v7, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getChkHidden()B

    move-result v7

    if-ne v7, v1, :cond_4

    move v7, v1

    .line 143
    :goto_4
    invoke-virtual/range {v0 .. v7}, Lch/kingdoms/android/ui/QuestUi$QuestContents;->setQuest(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->LIST_VIEW:Lch/kingdoms/android/ui/QuestUi$QuestList;

    invoke-virtual {v0, v10}, Lch/kingdoms/android/ui/QuestUi$QuestList;->select(I)V

    .line 148
    iput v10, p0, Lch/kingdoms/android/ui/QuestUi;->m_selectedIndex:I

    goto/16 :goto_0

    .line 142
    .end local v9    # "questCnt":I
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCnt()I

    move-result v9

    goto :goto_1

    .restart local v9    # "questCnt":I
    :cond_2
    move v2, v10

    .line 143
    goto :goto_2

    .line 146
    :cond_3
    const-string v6, ""

    goto :goto_3

    :cond_4
    move v7, v10

    goto :goto_4

    .line 156
    .end local v9    # "questCnt":I
    :sswitch_1
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetQuestDatas()Lch/kingdoms/ndk/data/QuestDatas;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/QuestDatas;->getQuests()[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    .line 157
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCnt()I

    move-result v0

    iget-object v2, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCompleteCnt()I

    move-result v2

    if-le v0, v2, :cond_5

    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCompleteCnt()I

    move-result v9

    .line 158
    .restart local v9    # "questCnt":I
    :goto_5
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->CONTENTS_VIEW:Lch/kingdoms/android/ui/QuestUi$QuestContents;

    iget-object v2, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getHiddenType()B

    move-result v2

    if-ne v2, v1, :cond_6

    move v2, v1

    :goto_6
    iget-object v3, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getExplain()Ljava/lang/String;

    move-result-object v4

    .line 159
    iget-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getClientName()Ljava/lang/String;

    move-result-object v5

    .line 160
    iget-object v6, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCompleteCnt()I

    move-result v6

    if-lez v6, :cond_7

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCompleteCnt()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_7
    iget-object v7, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getChkHidden()B

    move-result v7

    if-ne v7, v1, :cond_8

    move v7, v1

    :goto_8
    move v1, v10

    .line 158
    invoke-virtual/range {v0 .. v7}, Lch/kingdoms/android/ui/QuestUi$QuestContents;->setQuest(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->LIST_VIEW:Lch/kingdoms/android/ui/QuestUi$QuestList;

    invoke-virtual {v0, v8}, Lch/kingdoms/android/ui/QuestUi$QuestList;->select(I)V

    .line 163
    iput v8, p0, Lch/kingdoms/android/ui/QuestUi;->m_selectedIndex:I

    goto/16 :goto_0

    .line 157
    .end local v9    # "questCnt":I
    :cond_5
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCnt()I

    move-result v9

    goto :goto_5

    .restart local v9    # "questCnt":I
    :cond_6
    move v2, v10

    .line 158
    goto :goto_6

    .line 161
    :cond_7
    const-string v6, ""

    goto :goto_7

    :cond_8
    move v7, v10

    goto :goto_8

    .line 166
    .end local v9    # "questCnt":I
    :sswitch_2
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->ACTIVITY:Landroid/app/Activity;

    const v1, 0x7f05003b

    new-instance v2, Lch/kingdoms/android/ui/QuestUi$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/QuestUi$1;-><init>(Lch/kingdoms/android/ui/QuestUi;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    goto/16 :goto_0

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x2710 -> :sswitch_2
    .end sparse-switch
.end method

.method public updateLayerLevel()V
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v0

    iput v0, p0, Lch/kingdoms/android/ui/QuestUi;->LAYER_LEVEL:I

    .line 126
    return-void
.end method

.method public updateQuest()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 108
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetQuestDatas()Lch/kingdoms/ndk/data/QuestDatas;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/QuestDatas;->getQuests()[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    .line 111
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCnt()I

    move-result v0

    iget-object v2, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCompleteCnt()I

    move-result v2

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCompleteCnt()I

    move-result v8

    .line 114
    .local v8, "questCnt":I
    :goto_0
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->CONTENTS_VIEW:Lch/kingdoms/android/ui/QuestUi$QuestContents;

    iget-object v2, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getHiddenType()B

    move-result v2

    if-ne v2, v1, :cond_2

    move v2, v1

    :goto_1
    iget-object v3, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getExplain()Ljava/lang/String;

    move-result-object v4

    .line 115
    iget-object v5, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getClientName()Ljava/lang/String;

    move-result-object v5

    .line 116
    iget-object v6, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCompleteCnt()I

    move-result v6

    if-lez v6, :cond_3

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCompleteCnt()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    iget-object v7, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getChkHidden()B

    move-result v7

    if-ne v7, v1, :cond_4

    move v7, v1

    .line 114
    :goto_3
    invoke-virtual/range {v0 .. v7}, Lch/kingdoms/android/ui/QuestUi$QuestContents;->setQuest(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->LIST_VIEW:Lch/kingdoms/android/ui/QuestUi$QuestList;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/QuestUi$QuestList;->update()V

    .line 119
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->LIST_VIEW:Lch/kingdoms/android/ui/QuestUi$QuestList;

    invoke-virtual {v0, v9}, Lch/kingdoms/android/ui/QuestUi$QuestList;->select(I)V

    .line 120
    iput v9, p0, Lch/kingdoms/android/ui/QuestUi;->m_selectedIndex:I

    .line 122
    .end local v8    # "questCnt":I
    :cond_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi;->m_quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCnt()I

    move-result v8

    goto :goto_0

    .restart local v8    # "questCnt":I
    :cond_2
    move v2, v9

    .line 114
    goto :goto_1

    .line 117
    :cond_3
    const-string v6, ""

    goto :goto_2

    :cond_4
    move v7, v9

    goto :goto_3
.end method
