.class public Lch/kingdoms/android/ui/SelectJobUi;
.super Lch/android/api/ui/ChLinearLayout;
.source "SelectJobUi.java"


# instance fields
.field private jobNum:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
    .locals 18
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-super {v0, v15}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 32
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lch/kingdoms/android/ui/SelectJobUi;->jobNum:I

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 34
    .local v5, "context":Landroid/content/Context;
    new-instance v3, Lch/android/api/ui/ChRelativeLayout;

    invoke-direct {v3, v5}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    .local v3, "classNameLayout":Lch/android/api/ui/ChRelativeLayout;
    const v15, 0x7f020272

    invoke-virtual {v3, v15}, Lch/android/api/ui/ChRelativeLayout;->setBackgroundResource(I)V

    .line 36
    new-instance v4, Lch/android/api/ui/ChImageView;

    invoke-direct {v4, v5}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 38
    .local v4, "classNameView":Lch/android/api/ui/ChImageView;
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v12, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 39
    .local v12, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v15, 0xd

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 40
    invoke-virtual {v3, v4, v12}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v6, Lch/android/api/ui/ChRelativeLayout;

    invoke-direct {v6, v5}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .local v6, "heroMotionLayout":Lch/android/api/ui/ChRelativeLayout;
    const v15, 0x7f020271

    invoke-virtual {v6, v15}, Lch/android/api/ui/ChRelativeLayout;->setBackgroundResource(I)V

    .line 45
    new-instance v8, Lch/android/api/ui/ChImageButton;

    const v15, 0x7f0201f4

    const v16, 0x7f0201f4

    move/from16 v0, v16

    invoke-direct {v8, v5, v15, v0}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 46
    .local v8, "leftBtn":Lch/android/api/ui/ChImageButton;
    new-instance v11, Lch/android/api/ui/ChImageButton;

    const v15, 0x7f020267

    const v16, 0x7f020267

    move/from16 v0, v16

    invoke-direct {v11, v5, v15, v0}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 48
    .local v11, "rightBtn":Lch/android/api/ui/ChImageButton;
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v12    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v12, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49
    .restart local v12    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v15, 0x9

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50
    const/16 v15, 0xf

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51
    move-object/from16 v0, p2

    iget v15, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v16, 0x41200000    # 10.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v12, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 52
    invoke-virtual {v6, v8, v12}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v12    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v12, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 56
    .restart local v12    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v15, 0xb

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57
    const/16 v15, 0xf

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 58
    move-object/from16 v0, p2

    iget v15, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v16, 0x41200000    # 10.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v12, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 59
    invoke-virtual {v6, v11, v12}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v2, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v2, v5}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    .local v2, "bottomLayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 64
    const v15, 0x7f020270

    invoke-virtual {v2, v15}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 65
    new-instance v13, Landroid/widget/ScrollView;

    invoke-direct {v13, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 66
    .local v13, "txtScrollView":Landroid/widget/ScrollView;
    new-instance v14, Lch/android/api/ui/ChTextView;

    invoke-direct {v14, v5}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v14, "txtView":Lch/android/api/ui/ChTextView;
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-direct/range {v15 .. v17}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14, v15}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v10, Lch/android/api/ui/ChImageButton;

    const v15, 0x7f020235

    const v16, 0x7f020234

    move/from16 v0, v16

    invoke-direct {v10, v5, v15, v0}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 71
    .local v10, "okBtn":Lch/android/api/ui/ChImageButton;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p2

    iget v15, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v16, 0x43820000    # 260.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p2

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    move/from16 v16, v0

    const/high16 v17, 0x42800000    # 64.0f

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v9, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v9, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v15, 0x1

    iput v15, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74
    invoke-virtual {v2, v13, v9}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .end local v9    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v9, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    .restart local v9    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v15, 0x1

    iput v15, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 80
    invoke-virtual {v2, v10, v9}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x2

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lch/kingdoms/android/ui/SelectJobUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p2

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    move/from16 v16, v0

    const v17, 0x43a08000    # 321.0f

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v15}, Lch/kingdoms/android/ui/SelectJobUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x2

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lch/kingdoms/android/ui/SelectJobUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v15

    add-int/lit8 v7, v15, 0x1

    .line 88
    .local v7, "layerLevel":I
    new-instance v15, Lch/kingdoms/android/ui/SelectJobUi$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v7, v14, v4}, Lch/kingdoms/android/ui/SelectJobUi$1;-><init>(Lch/kingdoms/android/ui/SelectJobUi;ILch/android/api/ui/ChTextView;Lch/android/api/ui/ChImageView;)V

    invoke-virtual {v8, v15}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    new-instance v15, Lch/kingdoms/android/ui/SelectJobUi$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v7, v14, v4}, Lch/kingdoms/android/ui/SelectJobUi$2;-><init>(Lch/kingdoms/android/ui/SelectJobUi;ILch/android/api/ui/ChTextView;Lch/android/api/ui/ChImageView;)V

    invoke-virtual {v11, v15}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v15, Lch/kingdoms/android/ui/SelectJobUi$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v7, v1}, Lch/kingdoms/android/ui/SelectJobUi$3;-><init>(Lch/kingdoms/android/ui/SelectJobUi;ILandroid/app/Activity;)V

    invoke-virtual {v10, v15}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Lch/kingdoms/android/ui/SelectJobUi;->setClassName(Landroid/widget/ImageView;I)V

    .line 139
    const/16 v15, 0x14

    invoke-static {v15}, Lch/kingdoms/ndk/NdkTextLoader;->getScriptTxt(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/SelectJobUi;ZLch/android/api/ui/ChTextView;Lch/android/api/ui/ChImageView;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/ui/SelectJobUi;->setJobText(ZLch/android/api/ui/ChTextView;Lch/android/api/ui/ChImageView;)V

    return-void
.end method

.method private setClassName(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "imgView"    # Landroid/widget/ImageView;
    .param p2, "job"    # I

    .prologue
    .line 162
    packed-switch p2, :pswitch_data_0

    .line 176
    :goto_0
    return-void

    .line 164
    :pswitch_0
    const v0, 0x7f020076

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 167
    :pswitch_1
    const v0, 0x7f020077

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 170
    :pswitch_2
    const v0, 0x7f020075

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 173
    :pswitch_3
    const v0, 0x7f020078

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setJobText(ZLch/android/api/ui/ChTextView;Lch/android/api/ui/ChImageView;)V
    .locals 4
    .param p1, "isLeft"    # Z
    .param p2, "txtView"    # Lch/android/api/ui/ChTextView;
    .param p3, "classNameView"    # Lch/android/api/ui/ChImageView;

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 144
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputLeft()V

    .line 149
    :goto_0
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_1
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v1

    .line 155
    .local v1, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v2

    iput v2, p0, Lch/kingdoms/android/ui/SelectJobUi;->jobNum:I

    .line 156
    iget v2, p0, Lch/kingdoms/android/ui/SelectJobUi;->jobNum:I

    add-int/lit8 v2, v2, 0x14

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getScriptTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget v2, p0, Lch/kingdoms/android/ui/SelectJobUi;->jobNum:I

    invoke-direct {p0, p3, v2}, Lch/kingdoms/android/ui/SelectJobUi;->setClassName(Landroid/widget/ImageView;I)V

    .line 159
    return-void

    .line 146
    .end local v1    # "hero":Lch/kingdoms/ndk/data/HeroStatus;
    :cond_0
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputRight()V

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
