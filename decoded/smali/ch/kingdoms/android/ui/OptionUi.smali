.class public Lch/kingdoms/android/ui/OptionUi;
.super Lch/android/api/ui/ChRelativeLayout;
.source "OptionUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;,
        Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;
    }
.end annotation


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final DI:Lch/android/api/util/DisplayInfo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IZLandroid/view/View$OnClickListener;)V
    .locals 25
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "titleResId"    # I
    .param p4, "isInMain"    # Z
    .param p5, "backBtnOnClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const v3, 0x7f0202bb

    move-object/from16 v0, p0

    invoke-super {v0, v3}, Lch/android/api/ui/ChRelativeLayout;->setBackgroundResource(I)V

    .line 47
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/OptionUi;->ACTIVITY:Landroid/app/Activity;

    .line 48
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/OptionUi;->DI:Lch/android/api/util/DisplayInfo;

    .line 49
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/OptionUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 51
    .local v12, "context":Landroid/content/Context;
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v14

    .line 53
    .local v14, "dba":Lch/kingdoms/android/db/DBAdapter;
    invoke-static {}, Lch/kingdoms/ndk/NdkSoundManager;->stopSound()V

    .line 55
    if-eqz p3, :cond_0

    .line 56
    new-instance v24, Lch/android/api/ui/ChImageView;

    move-object/from16 v0, v24

    invoke-direct {v0, v12}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 57
    .local v24, "titleView":Lch/android/api/ui/ChImageView;
    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 58
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    .local v22, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xa

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60
    const/16 v3, 0x9

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lch/kingdoms/android/ui/OptionUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .end local v22    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v24    # "titleView":Lch/android/api/ui/ChImageView;
    :cond_0
    new-instance v11, Lch/android/api/ui/ChBackAnimationButton;

    invoke-direct {v11, v12}, Lch/android/api/ui/ChBackAnimationButton;-><init>(Landroid/content/Context;)V

    .line 66
    .local v11, "backBtn":Lch/android/api/ui/ChBackAnimationButton;
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67
    .restart local v22    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xa

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    const/16 v3, 0xb

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lch/kingdoms/android/ui/OptionUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v21, Lch/android/api/ui/ChLinearLayout;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    .local v21, "optionLayout":Lch/android/api/ui/ChLinearLayout;
    const v3, 0x7f020249

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 74
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 75
    new-instance v5, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;-><init>(Lch/kingdoms/android/ui/OptionUi;Landroid/content/Context;)V

    .line 77
    .local v5, "seekBar":Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getMaxGameSpeedLevel()I

    move-result v20

    .line 78
    .local v20, "maxLevel":I
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getGameSpeedLevel()I

    move-result v13

    .line 79
    .local v13, "curLevel":I
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->setMax(I)V

    .line 80
    invoke-virtual {v5, v13}, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->setProgress(I)V

    .line 81
    new-instance v18, Lch/android/api/ui/ChLinearLayout;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    .local v18, "ll":Lch/android/api/ui/ChLinearLayout;
    new-instance v17, Lch/android/api/ui/ChImageView;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 83
    .local v17, "iv":Lch/android/api/ui/ChImageView;
    const v3, 0x7f0200c6

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 85
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v19, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    move-object/from16 v0, v19

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 87
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    .end local v19    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .restart local v19    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    move-object/from16 v0, v19

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 92
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    .end local v19    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    .restart local v19    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/OptionUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x41c80000    # 25.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v19

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 97
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/OptionUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v19

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 98
    const/16 v3, 0x11

    move-object/from16 v0, v19

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 99
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v6, Lch/android/api/ui/ChOnOffButton;

    const v3, 0x7f020239

    const v4, 0x7f02023a

    invoke-direct {v6, v12, v3, v4}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    .line 104
    .local v6, "soundBtn":Lch/android/api/ui/ChOnOffButton;
    const v3, 0x7f0202ad

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1, v3, v6}, Lch/kingdoms/android/ui/OptionUi;->addOptionViews(Landroid/content/Context;Lch/android/api/ui/ChLinearLayout;ILandroid/view/View;)V

    .line 105
    new-instance v3, Lch/kingdoms/android/ui/OptionUi$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Lch/kingdoms/android/ui/OptionUi$1;-><init>(Lch/kingdoms/android/ui/OptionUi;Lch/android/api/ui/ChOnOffButton;)V

    invoke-virtual {v6, v3}, Lch/android/api/ui/ChOnOffButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance v7, Lch/android/api/ui/ChOnOffButton;

    const v3, 0x7f020239

    const v4, 0x7f02023a

    invoke-direct {v7, v12, v3, v4}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    .line 118
    .local v7, "vibBtn":Lch/android/api/ui/ChOnOffButton;
    const v3, 0x7f0202d5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1, v3, v7}, Lch/kingdoms/android/ui/OptionUi;->addOptionViews(Landroid/content/Context;Lch/android/api/ui/ChLinearLayout;ILandroid/view/View;)V

    .line 119
    new-instance v3, Lch/kingdoms/android/ui/OptionUi$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7}, Lch/kingdoms/android/ui/OptionUi$2;-><init>(Lch/kingdoms/android/ui/OptionUi;Lch/android/api/ui/ChOnOffButton;)V

    invoke-virtual {v7, v3}, Lch/android/api/ui/ChOnOffButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    if-eqz p4, :cond_4

    .line 134
    new-instance v8, Lch/android/api/ui/ChOnOffButton;

    const v3, 0x7f020239

    const v4, 0x7f020239

    invoke-direct {v8, v12, v3, v4}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    .line 139
    .local v8, "autoRoutingBtn":Lch/android/api/ui/ChOnOffButton;
    :goto_0
    const v3, 0x7f02001f

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1, v3, v8}, Lch/kingdoms/android/ui/OptionUi;->addOptionViews(Landroid/content/Context;Lch/android/api/ui/ChLinearLayout;ILandroid/view/View;)V

    .line 140
    new-instance v3, Lch/kingdoms/android/ui/OptionUi$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lch/kingdoms/android/ui/OptionUi$3;-><init>(Lch/kingdoms/android/ui/OptionUi;Lch/android/api/ui/ChOnOffButton;)V

    invoke-virtual {v8, v3}, Lch/android/api/ui/ChOnOffButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    new-instance v15, Lch/android/api/ui/ChImageButton;

    const v3, 0x7f020240

    const v4, 0x7f02023f

    invoke-direct {v15, v12, v3, v4}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 155
    .local v15, "dpadCusomizeBtn":Lch/android/api/ui/ChImageButton;
    const v3, 0x7f02023e

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1, v3, v15}, Lch/kingdoms/android/ui/OptionUi;->addOptionViews(Landroid/content/Context;Lch/android/api/ui/ChLinearLayout;ILandroid/view/View;)V

    .line 156
    new-instance v3, Lch/kingdoms/android/ui/OptionUi$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lch/kingdoms/android/ui/OptionUi$4;-><init>(Lch/kingdoms/android/ui/OptionUi;)V

    invoke-virtual {v15, v3}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v22    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 165
    .restart local v22    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lch/kingdoms/android/ui/OptionUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v3, Lch/kingdoms/android/ui/OptionUi$5;

    move-object/from16 v4, p0

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lch/kingdoms/android/ui/OptionUi$5;-><init>(Lch/kingdoms/android/ui/OptionUi;Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;Lch/android/api/ui/ChOnOffButton;Lch/android/api/ui/ChOnOffButton;Lch/android/api/ui/ChOnOffButton;ZLandroid/view/View$OnClickListener;)V

    invoke-virtual {v11, v3}, Lch/android/api/ui/ChBackAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    new-instance v16, Landroid/os/Handler;

    invoke-direct/range {v16 .. v16}, Landroid/os/Handler;-><init>()V

    .line 197
    .local v16, "handler":Landroid/os/Handler;
    new-instance v3, Lch/kingdoms/android/ui/OptionUi$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lch/kingdoms/android/ui/OptionUi$6;-><init>(Lch/kingdoms/android/ui/OptionUi;Lch/android/api/ui/ChBackAnimationButton;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    invoke-virtual {v14}, Lch/kingdoms/android/db/DBAdapter;->isSoundOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    invoke-virtual {v6}, Lch/android/api/ui/ChOnOffButton;->setToSelect()V

    .line 208
    :cond_1
    if-eqz p4, :cond_5

    .line 209
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lch/android/api/ui/ChOnOffButton;->setClickable(Z)V

    .line 210
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lch/android/api/ui/ChOnOffButton;->setFocusable(Z)V

    .line 211
    invoke-virtual {v8}, Lch/android/api/ui/ChOnOffButton;->setToUnSelect()V

    .line 218
    :cond_2
    :goto_1
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getVibration()I

    move-result v3

    if-lez v3, :cond_3

    .line 219
    invoke-virtual {v7}, Lch/android/api/ui/ChOnOffButton;->setToSelect()V

    .line 221
    :cond_3
    return-void

    .line 136
    .end local v8    # "autoRoutingBtn":Lch/android/api/ui/ChOnOffButton;
    .end local v15    # "dpadCusomizeBtn":Lch/android/api/ui/ChImageButton;
    .end local v16    # "handler":Landroid/os/Handler;
    :cond_4
    new-instance v8, Lch/android/api/ui/ChOnOffButton;

    const v3, 0x7f020239

    const v4, 0x7f02023a

    invoke-direct {v8, v12, v3, v4}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    .restart local v8    # "autoRoutingBtn":Lch/android/api/ui/ChOnOffButton;
    goto/16 :goto_0

    .line 213
    .restart local v15    # "dpadCusomizeBtn":Lch/android/api/ui/ChImageButton;
    .restart local v16    # "handler":Landroid/os/Handler;
    :cond_5
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getCurrentSaveSlotIndex()I

    move-result v23

    .line 214
    .local v23, "slot":I
    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lch/kingdoms/android/db/DBAdapter;->isAutoRoutingOn(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    invoke-virtual {v8}, Lch/android/api/ui/ChOnOffButton;->setToSelect()V

    goto :goto_1
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/OptionUi;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/OptionUi;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi;->ACTIVITY:Landroid/app/Activity;

    return-object v0
.end method

.method private addOptionViews(Landroid/content/Context;Lch/android/api/ui/ChLinearLayout;ILandroid/view/View;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "optionLayout"    # Lch/android/api/ui/ChLinearLayout;
    .param p3, "titleResId"    # I
    .param p4, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x10

    const/4 v3, -0x2

    .line 232
    new-instance v1, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v1, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 233
    .local v1, "ll":Lch/android/api/ui/ChLinearLayout;
    new-instance v0, Lch/android/api/ui/ChImageView;

    invoke-direct {v0, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 234
    .local v0, "iv":Lch/android/api/ui/ChImageView;
    invoke-virtual {v0, p3}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 236
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 237
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 238
    invoke-virtual {v1, v0, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 242
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 243
    invoke-virtual {v1, p4, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 247
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lch/kingdoms/android/ui/OptionUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 248
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 249
    invoke-virtual {p2, v1, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v2, 0x7f0202bb

    .line 226
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChRelativeLayout;->onMeasure(II)V

    .line 227
    invoke-virtual {p0}, Lch/kingdoms/android/ui/OptionUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    .line 228
    invoke-virtual {p0}, Lch/kingdoms/android/ui/OptionUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    .line 227
    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChRelativeLayout;->setMeasuredDimension(II)V

    .line 229
    return-void
.end method
