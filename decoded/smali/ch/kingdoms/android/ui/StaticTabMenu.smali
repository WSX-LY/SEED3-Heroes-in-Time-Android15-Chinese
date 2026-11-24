.class public Lch/kingdoms/android/ui/StaticTabMenu;
.super Ljava/lang/Object;
.source "StaticTabMenu.java"

# interfaces
.implements Lch/android/api/ui/ICheckConfirmObject;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;
    }
.end annotation


# static fields
.field private static tabMenu:Lch/kingdoms/android/ui/StaticTabMenu;


# instance fields
.field private final ID_BTNS_LAYOUT:I

.field private final ID_EQUIP:I

.field private final ID_ITEM:I

.field private final ID_QUEST:I

.field private final ID_SKILL:I

.field private final ID_STATUS:I

.field private final ID_SYSTEM:I

.field private final activity:Landroid/app/Activity;

.field private final context:Landroid/content/Context;

.field private curMainState:I

.field private currentView:Landroid/view/View;

.field private final equipBtn:Lch/android/api/ui/ChOnOffButton;

.field private final equipUi:Lch/kingdoms/android/ui/EquipUi;

.field private final equipView:Landroid/view/View;

.field private final gameMenu:Lch/kingdoms/android/ui/IGameMenu;

.field private heroJob:I

.field private final invenView:Landroid/view/View;

.field private islockMenus:Z

.field private final itemBtn:Lch/android/api/ui/ChOnOffButton;

.field private layerLevel:I

.field private final newInvenUi:Lch/kingdoms/android/ui/NewInvenUi;

.field private nextInnerView:Landroid/view/View;

.field private final questBtn:Lch/android/api/ui/ChOnOffButton;

.field private final questUi:Lch/kingdoms/android/ui/QuestUi;

.field private final questView:Landroid/view/View;

.field private final rlayout:Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;

.field private selectedBtnIndex:I

.field private selectedViewId:I

.field private final skillBtn:Lch/android/api/ui/ChOnOffButton;

.field private final skillUi:Lch/kingdoms/android/ui/SkillUi;

.field private final skillView:Landroid/view/View;

.field private final statusBtn:Lch/android/api/ui/ChOnOffButton;

.field private final statusUi:Lch/kingdoms/android/ui/StatusUi;

.field private final statusView:Landroid/view/View;

.field private final systemBtn:Lch/android/api/ui/ChOnOffButton;

.field private final systemUi:Lch/kingdoms/android/ui/SystemUi;

.field private final systemView:Landroid/view/View;

.field private final tabViews:[Landroid/view/View;

.field private final titleView:Lch/android/api/ui/ChImageView;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/IGameMenu;)V
    .locals 24
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "gameMenu"    # Lch/kingdoms/android/ui/IGameMenu;

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const v19, 0x3938700

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->ID_BTNS_LAYOUT:I

    .line 46
    const/16 v19, 0x64

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->ID_STATUS:I

    .line 47
    const/16 v19, 0x65

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->ID_EQUIP:I

    .line 48
    const/16 v19, 0x66

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->ID_ITEM:I

    .line 49
    const/16 v19, 0x67

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->ID_SKILL:I

    .line 50
    const/16 v19, 0x68

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->ID_QUEST:I

    .line 51
    const/16 v19, 0x69

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->ID_SYSTEM:I

    .line 89
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->activity:Landroid/app/Activity;

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->context:Landroid/content/Context;

    .line 91
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->gameMenu:Lch/kingdoms/android/ui/IGameMenu;

    .line 92
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->currentView:Landroid/view/View;

    .line 94
    new-instance v19, Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;-><init>(Lch/kingdoms/android/ui/StaticTabMenu;Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->rlayout:Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->rlayout:Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;

    move-object/from16 v19, v0

    const v20, 0x7f0200b7

    invoke-virtual/range {v19 .. v20}, Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;->setBackgroundResource(I)V

    .line 97
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lch/android/api/ui/ChViewGen;->createImageView(Landroid/app/Activity;I)Lch/android/api/ui/ChImageView;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->titleView:Lch/android/api/ui/ChImageView;

    .line 98
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    .local v14, "titleLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0x9

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 100
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->rlayout:Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->titleView:Lch/android/api/ui/ChImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v5, Lch/android/api/ui/ChBackButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lch/android/api/ui/ChBackButton;-><init>(Landroid/content/Context;)V

    .line 105
    .local v5, "backBtn":Lch/android/api/ui/ChBackButton;
    const/16 v19, 0x2738

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lch/android/api/ui/ChBackButton;->setId(I)V

    .line 106
    new-instance v19, Lch/kingdoms/android/ui/StaticTabMenu$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lch/kingdoms/android/ui/StaticTabMenu$1;-><init>(Lch/kingdoms/android/ui/StaticTabMenu;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lch/android/api/ui/ChBackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 122
    .local v6, "backBtnLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 123
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    new-instance v19, Lch/android/api/ui/ChOnOffButton;

    const v20, 0x7f0202b9

    const v21, 0x7f0202b6

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->statusBtn:Lch/android/api/ui/ChOnOffButton;

    .line 126
    new-instance v19, Lch/android/api/ui/ChOnOffButton;

    const v20, 0x7f0200a2

    const v21, 0x7f0200a0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->equipBtn:Lch/android/api/ui/ChOnOffButton;

    .line 127
    new-instance v19, Lch/android/api/ui/ChOnOffButton;

    const v20, 0x7f0200e0

    const v21, 0x7f0200df

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->itemBtn:Lch/android/api/ui/ChOnOffButton;

    .line 128
    new-instance v19, Lch/android/api/ui/ChOnOffButton;

    const v20, 0x7f02029d

    const v21, 0x7f02029b

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->skillBtn:Lch/android/api/ui/ChOnOffButton;

    .line 129
    new-instance v19, Lch/android/api/ui/ChOnOffButton;

    const v20, 0x7f020253

    const v21, 0x7f02024f

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->questBtn:Lch/android/api/ui/ChOnOffButton;

    .line 130
    new-instance v19, Lch/android/api/ui/ChOnOffButton;

    const v20, 0x7f0202c4

    const v21, 0x7f0202c2

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->systemBtn:Lch/android/api/ui/ChOnOffButton;

    .line 131
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->statusBtn:Lch/android/api/ui/ChOnOffButton;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->equipBtn:Lch/android/api/ui/ChOnOffButton;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->itemBtn:Lch/android/api/ui/ChOnOffButton;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->skillBtn:Lch/android/api/ui/ChOnOffButton;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->questBtn:Lch/android/api/ui/ChOnOffButton;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->systemBtn:Lch/android/api/ui/ChOnOffButton;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    .line 132
    .local v18, "views":[Landroid/view/View;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v11, v0, :cond_0

    .line 138
    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lch/android/api/ui/ChViewGen;->createLinearLayout(Landroid/app/Activity;III)Lch/android/api/ui/ChLinearLayout;

    move-result-object v7

    .line 139
    .local v7, "btnsLayout":Lch/android/api/ui/ChLinearLayout;
    const v19, 0x3938700

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChLinearLayout;->setId(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->statusBtn:Lch/android/api/ui/ChOnOffButton;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->equipBtn:Lch/android/api/ui/ChOnOffButton;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->itemBtn:Lch/android/api/ui/ChOnOffButton;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->skillBtn:Lch/android/api/ui/ChOnOffButton;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->questBtn:Lch/android/api/ui/ChOnOffButton;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->systemBtn:Lch/android/api/ui/ChOnOffButton;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 148
    .local v8, "btnslp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 149
    const/16 v19, 0xe

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->rlayout:Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    .line 154
    .local v10, "handler":Landroid/os/Handler;
    new-instance v19, Lch/kingdoms/android/ui/StaticTabMenu$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lch/kingdoms/android/ui/StaticTabMenu$2;-><init>(Lch/kingdoms/android/ui/StaticTabMenu;Lch/android/api/ui/ChBackButton;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    new-instance v12, Lch/android/api/ui/ChRelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 163
    .local v12, "rl":Lch/android/api/ui/ChRelativeLayout;
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0200b7

    invoke-static/range {v19 .. v20}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v19

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0200b7

    invoke-static/range {v20 .. v21}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v20

    .line 163
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v13, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->rlayout:Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v13}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v19, Lch/kingdoms/android/ui/StatusUi;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lch/kingdoms/android/ui/StatusUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/ndk/data/HeroStatus;Lch/android/api/ui/ICheckConfirmObject;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->statusUi:Lch/kingdoms/android/ui/StatusUi;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->statusUi:Lch/kingdoms/android/ui/StatusUi;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lch/kingdoms/android/ui/StatusUi;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->statusView:Landroid/view/View;

    .line 172
    new-instance v19, Lch/kingdoms/android/ui/EquipUi;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lch/kingdoms/android/ui/EquipUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->equipUi:Lch/kingdoms/android/ui/EquipUi;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->equipUi:Lch/kingdoms/android/ui/EquipUi;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lch/kingdoms/android/ui/EquipUi;->getView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->equipView:Landroid/view/View;

    .line 174
    new-instance v19, Lch/kingdoms/android/ui/NewInvenUi;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lch/kingdoms/android/ui/NewInvenUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/IGameMenu;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->newInvenUi:Lch/kingdoms/android/ui/NewInvenUi;

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->newInvenUi:Lch/kingdoms/android/ui/NewInvenUi;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lch/kingdoms/android/ui/NewInvenUi;->getView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->invenView:Landroid/view/View;

    .line 176
    new-instance v19, Lch/kingdoms/android/ui/SkillUi;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lch/kingdoms/android/ui/SkillUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->skillUi:Lch/kingdoms/android/ui/SkillUi;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->skillUi:Lch/kingdoms/android/ui/SkillUi;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lch/kingdoms/android/ui/SkillUi;->getView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->skillView:Landroid/view/View;

    .line 178
    new-instance v19, Lch/kingdoms/android/ui/QuestUi;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lch/kingdoms/android/ui/QuestUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->questUi:Lch/kingdoms/android/ui/QuestUi;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->questUi:Lch/kingdoms/android/ui/QuestUi;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lch/kingdoms/android/ui/QuestUi;->getView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->questView:Landroid/view/View;

    .line 180
    new-instance v19, Lch/kingdoms/android/ui/SystemUi;

    move-object/from16 v0, p0

    iget v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->curMainState:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lch/kingdoms/android/ui/SystemUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/IGameMenu;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->systemUi:Lch/kingdoms/android/ui/SystemUi;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->systemUi:Lch/kingdoms/android/ui/SystemUi;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lch/kingdoms/android/ui/SystemUi;->getView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->systemView:Landroid/view/View;

    .line 182
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v9, v0, [Landroid/view/View;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->statusView:Landroid/view/View;

    move-object/from16 v20, v0

    aput-object v20, v9, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->equipView:Landroid/view/View;

    move-object/from16 v20, v0

    aput-object v20, v9, v19

    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->invenView:Landroid/view/View;

    move-object/from16 v20, v0

    aput-object v20, v9, v19

    const/16 v19, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->skillView:Landroid/view/View;

    move-object/from16 v20, v0

    aput-object v20, v9, v19

    const/16 v19, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->questView:Landroid/view/View;

    move-object/from16 v20, v0

    aput-object v20, v9, v19

    const/16 v19, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->systemView:Landroid/view/View;

    move-object/from16 v20, v0

    aput-object v20, v9, v19

    .line 183
    .local v9, "centerViews":[Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0202b2

    invoke-static/range {v19 .. v20}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v17

    .line 184
    .local v17, "viewW":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0202b2

    invoke-static/range {v19 .. v20}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v16

    .line 185
    .local v16, "viewH":I
    array-length v0, v9

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 197
    move-object/from16 v0, p0

    iput-object v9, v0, Lch/kingdoms/android/ui/StaticTabMenu;->tabViews:[Landroid/view/View;

    .line 199
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->nextInnerView:Landroid/view/View;

    .line 200
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->islockMenus:Z

    .line 201
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->selectedViewId:I

    .line 202
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lch/kingdoms/android/ui/StaticTabMenu;->selectedBtnIndex:I

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->rlayout:Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    return-void

    .line 133
    .end local v7    # "btnsLayout":Lch/android/api/ui/ChLinearLayout;
    .end local v8    # "btnslp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "centerViews":[Landroid/view/View;
    .end local v10    # "handler":Landroid/os/Handler;
    .end local v12    # "rl":Lch/android/api/ui/ChRelativeLayout;
    .end local v13    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "viewH":I
    .end local v17    # "viewW":I
    :cond_0
    aget-object v19, v18, v11

    add-int/lit8 v20, v11, 0x64

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setId(I)V

    .line 134
    aget-object v19, v18, v11

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 185
    .restart local v7    # "btnsLayout":Lch/android/api/ui/ChLinearLayout;
    .restart local v8    # "btnslp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v9    # "centerViews":[Landroid/view/View;
    .restart local v10    # "handler":Landroid/os/Handler;
    .restart local v12    # "rl":Lch/android/api/ui/ChRelativeLayout;
    .restart local v13    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v16    # "viewH":I
    .restart local v17    # "viewW":I
    :cond_1
    aget-object v15, v9, v19

    .line 186
    .local v15, "view":Landroid/view/View;
    if-eqz v15, :cond_2

    .line 187
    const v21, 0x7f0202b2

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 188
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    new-instance v12, Lch/android/api/ui/ChRelativeLayout;

    .end local v12    # "rl":Lch/android/api/ui/ChRelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/StaticTabMenu;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 191
    .restart local v12    # "rl":Lch/android/api/ui/ChRelativeLayout;
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v13    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 192
    .restart local v13    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v21, 0xd

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 193
    invoke-virtual {v12, v15, v13}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-direct/range {v21 .. v23}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/StaticTabMenu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->currentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/StaticTabMenu;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->islockMenus:Z

    return v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/StaticTabMenu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->statusView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/StaticTabMenu;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/StaticTabMenu;->checkSaveStatus(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private checkSaveStatus(Landroid/view/View;)Z
    .locals 2
    .param p1, "_view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 340
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->currentView:Landroid/view/View;

    check-cast v0, Lch/android/api/ui/ICheckConfrm;

    invoke-interface {v0}, Lch/android/api/ui/ICheckConfrm;->checkConfirm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iput-boolean v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->islockMenus:Z

    move v0, v1

    .line 345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/IGameMenu;)Lch/kingdoms/android/ui/StaticTabMenu;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "di"    # Lch/android/api/util/DisplayInfo;
    .param p2, "gameMenu"    # Lch/kingdoms/android/ui/IGameMenu;

    .prologue
    .line 30
    const-class v1, Lch/kingdoms/android/ui/StaticTabMenu;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lch/kingdoms/android/ui/StaticTabMenu;->tabMenu:Lch/kingdoms/android/ui/StaticTabMenu;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lch/kingdoms/android/ui/StaticTabMenu;

    invoke-direct {v0, p0, p1, p2}, Lch/kingdoms/android/ui/StaticTabMenu;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/IGameMenu;)V

    sput-object v0, Lch/kingdoms/android/ui/StaticTabMenu;->tabMenu:Lch/kingdoms/android/ui/StaticTabMenu;

    .line 33
    :cond_0
    sget-object v0, Lch/kingdoms/android/ui/StaticTabMenu;->tabMenu:Lch/kingdoms/android/ui/StaticTabMenu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private popUpNotAvailable()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->activity:Landroid/app/Activity;

    const/16 v1, 0x46

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    .line 321
    return-void
.end method

.method private selectBtn(I)V
    .locals 5
    .param p1, "_index"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 374
    const/4 v2, 0x6

    new-array v0, v2, [Lch/android/api/ui/ChOnOffButton;

    iget-object v2, p0, Lch/kingdoms/android/ui/StaticTabMenu;->statusBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v2, v0, v1

    const/4 v2, 0x1

    iget-object v3, p0, Lch/kingdoms/android/ui/StaticTabMenu;->equipBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lch/kingdoms/android/ui/StaticTabMenu;->itemBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lch/kingdoms/android/ui/StaticTabMenu;->skillBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lch/kingdoms/android/ui/StaticTabMenu;->questBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lch/kingdoms/android/ui/StaticTabMenu;->systemBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v3, v0, v2

    .line 375
    .local v0, "btns":[Lch/android/api/ui/ChOnOffButton;
    iget v2, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedBtnIndex:I

    if-eq v2, p1, :cond_1

    .line 377
    iget v2, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedBtnIndex:I

    if-le v2, v4, :cond_0

    iget v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedBtnIndex:I

    :cond_0
    aget-object v1, v0, v1

    invoke-virtual {v1}, Lch/android/api/ui/ChOnOffButton;->setToUnSelect()V

    .line 378
    iput p1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedBtnIndex:I

    .line 379
    iget v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedBtnIndex:I

    if-le v1, v4, :cond_1

    iget v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedBtnIndex:I

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 380
    iget v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedBtnIndex:I

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lch/android/api/ui/ChOnOffButton;->setToSelect()V

    .line 383
    :cond_1
    return-void
.end method

.method private setInnerView(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 324
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->currentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->currentView:Landroid/view/View;

    instance-of v1, v1, Lch/android/api/ui/ICheckConfrm;

    if-eqz v1, :cond_0

    .line 325
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/StaticTabMenu;->checkSaveStatus(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iput-object p1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->nextInnerView:Landroid/view/View;

    .line 336
    :goto_0
    return v0

    .line 329
    :cond_0
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->currentView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->currentView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 332
    :cond_1
    if-eqz p1, :cond_2

    .line 333
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iput-object p1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->currentView:Landroid/view/View;

    .line 336
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x4

    .line 386
    iget-object v3, p0, Lch/kingdoms/android/ui/StaticTabMenu;->gameMenu:Lch/kingdoms/android/ui/IGameMenu;

    invoke-interface {v3}, Lch/kingdoms/android/ui/IGameMenu;->closeInfo()V

    .line 387
    const/4 v3, 0x6

    new-array v2, v3, [Landroid/view/View;

    iget-object v3, p0, Lch/kingdoms/android/ui/StaticTabMenu;->statusView:Landroid/view/View;

    aput-object v3, v2, v7

    iget-object v3, p0, Lch/kingdoms/android/ui/StaticTabMenu;->equipView:Landroid/view/View;

    aput-object v3, v2, v8

    iget-object v3, p0, Lch/kingdoms/android/ui/StaticTabMenu;->invenView:Landroid/view/View;

    aput-object v3, v2, v9

    const/4 v3, 0x3

    iget-object v4, p0, Lch/kingdoms/android/ui/StaticTabMenu;->skillView:Landroid/view/View;

    aput-object v4, v2, v3

    iget-object v3, p0, Lch/kingdoms/android/ui/StaticTabMenu;->questView:Landroid/view/View;

    aput-object v3, v2, v5

    const/4 v3, 0x5

    iget-object v4, p0, Lch/kingdoms/android/ui/StaticTabMenu;->systemView:Landroid/view/View;

    aput-object v4, v2, v3

    .line 388
    .local v2, "views":[Landroid/view/View;
    const/4 v3, 0x6

    new-array v0, v3, [Lch/android/api/ui/ChOnOffButton;

    iget-object v3, p0, Lch/kingdoms/android/ui/StaticTabMenu;->statusBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v3, v0, v7

    iget-object v3, p0, Lch/kingdoms/android/ui/StaticTabMenu;->equipBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v3, v0, v8

    iget-object v3, p0, Lch/kingdoms/android/ui/StaticTabMenu;->itemBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v3, v0, v9

    const/4 v3, 0x3

    iget-object v4, p0, Lch/kingdoms/android/ui/StaticTabMenu;->skillBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v4, v0, v3

    iget-object v3, p0, Lch/kingdoms/android/ui/StaticTabMenu;->questBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v3, v0, v5

    const/4 v3, 0x5

    iget-object v4, p0, Lch/kingdoms/android/ui/StaticTabMenu;->systemBtn:Lch/android/api/ui/ChOnOffButton;

    aput-object v4, v0, v3

    .line 389
    .local v0, "btns":[Lch/android/api/ui/ChOnOffButton;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 395
    iput v6, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedBtnIndex:I

    .line 396
    iput v6, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedViewId:I

    .line 397
    const/4 v3, 0x0

    iput-object v3, p0, Lch/kingdoms/android/ui/StaticTabMenu;->currentView:Landroid/view/View;

    .line 398
    return-void

    .line 390
    :cond_0
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 391
    aget-object v3, v2, v1

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 392
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lch/android/api/ui/ChOnOffButton;->setToUnSelect()V

    .line 389
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->rlayout:Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I
    move-result v0
    const-string v1, "menuClickId"
    invoke-static {v1, v0}, Lch/android/api/util/Seed3Diag;->value(Ljava/lang/String;I)V

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 242
    .local v0, "id":I
    iget-boolean v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->islockMenus:Z

    if-nez v1, :cond_1

    iget v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedViewId:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->layerLevel:I

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 243
    packed-switch v0, :pswitch_data_0

    .line 313
    :cond_0
    :goto_0
    iput v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedViewId:I

    .line 317
    :cond_1
    return-void

    .line 245
    :pswitch_0
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->statusUi:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/kingdoms/android/ui/StatusUi;->updateStatus(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 246
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->statusView:Landroid/view/View;

    invoke-direct {p0, v1}, Lch/kingdoms/android/ui/StaticTabMenu;->setInnerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->titleView:Lch/android/api/ui/ChImageView;

    const v2, 0x7f0202b8

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 248
    invoke-direct {p0, v4}, Lch/kingdoms/android/ui/StaticTabMenu;->selectBtn(I)V

    .line 249
    iput v4, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedBtnIndex:I

    goto :goto_0

    .line 253
    :pswitch_1
    iget v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->heroJob:I

    if-eq v1, v3, :cond_2

    .line 254
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->equipUi:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetEquipItems()[S

    move-result-object v2

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v3

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/ui/EquipUi;->updateQquip([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 255
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->equipView:Landroid/view/View;

    invoke-direct {p0, v1}, Lch/kingdoms/android/ui/StaticTabMenu;->setInnerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->titleView:Lch/android/api/ui/ChImageView;

    const v2, 0x7f0200a6

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 257
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->equipUi:Lch/kingdoms/android/ui/EquipUi;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/EquipUi;->updateLayerLevel()V

    .line 258
    invoke-direct {p0, v5}, Lch/kingdoms/android/ui/StaticTabMenu;->selectBtn(I)V

    .line 259
    iput v5, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedBtnIndex:I

    goto :goto_0

    .line 262
    :cond_2
    invoke-direct {p0}, Lch/kingdoms/android/ui/StaticTabMenu;->popUpNotAvailable()V

    goto :goto_0

    .line 266
    :pswitch_2
    iget v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->heroJob:I

    if-eq v1, v3, :cond_3

    .line 268
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->newInvenUi:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Lch/kingdoms/android/ui/NewInvenUi;->setLayerLevel(I)V

    .line 269
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->newInvenUi:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/NewInvenUi;->initInven()V

    .line 270
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->invenView:Landroid/view/View;

    invoke-direct {p0, v1}, Lch/kingdoms/android/ui/StaticTabMenu;->setInnerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->titleView:Lch/android/api/ui/ChImageView;

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 272
    invoke-direct {p0, v6}, Lch/kingdoms/android/ui/StaticTabMenu;->selectBtn(I)V

    .line 273
    iput v6, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedBtnIndex:I

    goto :goto_0

    .line 278
    :cond_3
    invoke-direct {p0}, Lch/kingdoms/android/ui/StaticTabMenu;->popUpNotAvailable()V

    goto/16 :goto_0

    .line 282
    :pswitch_3
    iget v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->heroJob:I

    if-eq v1, v3, :cond_4

    iget v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->heroJob:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    .line 283
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->skillUi:Lch/kingdoms/android/ui/SkillUi;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/SkillUi;->updateSkill()V

    .line 284
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->skillUi:Lch/kingdoms/android/ui/SkillUi;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/SkillUi;->updateLayerLevel()V

    .line 285
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->skillView:Landroid/view/View;

    invoke-direct {p0, v1}, Lch/kingdoms/android/ui/StaticTabMenu;->setInnerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->titleView:Lch/android/api/ui/ChImageView;

    const v2, 0x7f02029c

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 287
    invoke-direct {p0, v7}, Lch/kingdoms/android/ui/StaticTabMenu;->selectBtn(I)V

    .line 288
    iput v7, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedBtnIndex:I

    goto/16 :goto_0

    .line 291
    :cond_4
    invoke-direct {p0}, Lch/kingdoms/android/ui/StaticTabMenu;->popUpNotAvailable()V

    goto/16 :goto_0

    .line 295
    :pswitch_4
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->questView:Landroid/view/View;

    invoke-direct {p0, v1}, Lch/kingdoms/android/ui/StaticTabMenu;->setInnerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 296
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->titleView:Lch/android/api/ui/ChImageView;

    const v2, 0x7f020251

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 297
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->questUi:Lch/kingdoms/android/ui/QuestUi;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/QuestUi;->updateLayerLevel()V

    .line 298
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lch/kingdoms/android/ui/StaticTabMenu;->selectBtn(I)V

    .line 299
    const/4 v1, 0x4

    iput v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedBtnIndex:I

    .line 301
    :cond_5
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->questUi:Lch/kingdoms/android/ui/QuestUi;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/QuestUi;->updateQuest()V

    goto/16 :goto_0

    .line 304
    :pswitch_5
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->systemUi:Lch/kingdoms/android/ui/SystemUi;

    iget v2, p0, Lch/kingdoms/android/ui/StaticTabMenu;->curMainState:I

    invoke-virtual {v1, v2}, Lch/kingdoms/android/ui/SystemUi;->update(I)V

    .line 305
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->systemView:Landroid/view/View;

    invoke-direct {p0, v1}, Lch/kingdoms/android/ui/StaticTabMenu;->setInnerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->titleView:Lch/android/api/ui/ChImageView;

    const v2, 0x7f0202c3

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 307
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->systemUi:Lch/kingdoms/android/ui/SystemUi;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/SystemUi;->updateLayerLevel()V

    .line 308
    invoke-direct {p0, v3}, Lch/kingdoms/android/ui/StaticTabMenu;->selectBtn(I)V

    .line 309
    iput v3, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedBtnIndex:I

    goto/16 :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public pushChecked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 351
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->nextInnerView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 352
    invoke-virtual {p0}, Lch/kingdoms/android/ui/StaticTabMenu;->close()V

    .line 370
    :goto_0
    iput-boolean v3, p0, Lch/kingdoms/android/ui/StaticTabMenu;->islockMenus:Z

    .line 371
    return-void

    .line 355
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->tabViews:[Landroid/view/View;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 361
    :goto_2
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->currentView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->currentView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 364
    :cond_1
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->nextInnerView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 365
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->nextInnerView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->nextInnerView:Landroid/view/View;

    iput-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->currentView:Landroid/view/View;

    .line 368
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->nextInnerView:Landroid/view/View;

    goto :goto_0

    .line 356
    :cond_3
    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->tabViews:[Landroid/view/View;

    aget-object v1, v1, v0

    iget-object v2, p0, Lch/kingdoms/android/ui/StaticTabMenu;->nextInnerView:Landroid/view/View;

    if-ne v1, v2, :cond_4

    .line 357
    invoke-direct {p0, v0}, Lch/kingdoms/android/ui/StaticTabMenu;->selectBtn(I)V

    goto :goto_2

    .line 355
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public selectPage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const-string v0, "selectPage"
    invoke-static {v0, p1}, Lch/android/api/util/Seed3Diag;->value(Ljava/lang/String;I)V

    .line 216
    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->tabViews:[Landroid/view/View;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 217
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v0

    iput v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->layerLevel:I

    .line 218
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v0

    iput v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->heroJob:I

    .line 219
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->tabViews:[Landroid/view/View;

    aget-object v0, v0, p1

    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->statusView:Landroid/view/View;

    if-ne v0, v1, :cond_2

    .line 220
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->titleView:Lch/android/api/ui/ChImageView;

    const v1, 0x7f0202b8

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 221
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->statusUi:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/StatusUi;->updateStatus(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 227
    :cond_0
    :goto_0
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->tabViews:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lch/kingdoms/android/ui/StaticTabMenu;->setInnerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/StaticTabMenu;->selectBtn(I)V

    .line 229
    iput p1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->selectedBtnIndex:I

    .line 232
    :cond_1
    return-void

    .line 222
    :cond_2
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->tabViews:[Landroid/view/View;

    aget-object v0, v0, p1

    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->questView:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->titleView:Lch/android/api/ui/ChImageView;

    const v1, 0x7f020251

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 224
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->questUi:Lch/kingdoms/android/ui/QuestUi;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/QuestUi;->updateQuest()V

    .line 225
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu;->questUi:Lch/kingdoms/android/ui/QuestUi;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/QuestUi;->updateLayerLevel()V

    goto :goto_0
.end method

.method public setMainState(I)V
    .locals 0
    .param p1, "mainState"    # I

    .prologue
    .line 212
    iput p1, p0, Lch/kingdoms/android/ui/StaticTabMenu;->curMainState:I

    .line 213
    return-void
.end method
