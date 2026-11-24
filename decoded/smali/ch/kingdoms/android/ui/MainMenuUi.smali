.class public Lch/kingdoms/android/ui/MainMenuUi;
.super Lch/android/api/ui/ChRelativeLayout;
.source "MainMenuUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/MainMenuUi$Menu;,
        Lch/kingdoms/android/ui/MainMenuUi$SlotListView;
    }
.end annotation


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private banner:Lch/android/api/network/ChBanner;

.field private final handler:Landroid/os/Handler;

.field private final logoView:Lch/android/api/ui/ChImageView;

.field private mainMenu:Lch/kingdoms/android/ui/MainMenuUi$Menu;

.field private final slotInfos:[Lch/kingdoms/ndk/data/SaveSlotInfo;

.field private final startTime:J

.field private touchMeView:Lch/android/api/ui/ChBackAnimationButton;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Z)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "isTitle"    # Z

    .prologue
    const v3, 0x106000b

    const/4 v2, -0x2

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi;->handler:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi;->ACTIVITY:Landroid/app/Activity;

    .line 66
    iput-object p2, p0, Lch/kingdoms/android/ui/MainMenuUi;->DI:Lch/android/api/util/DisplayInfo;

    .line 67
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getSaveSlotInfos()[Lch/kingdoms/ndk/data/SaveSlotInfo;

    move-result-object v1

    iput-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi;->slotInfos:[Lch/kingdoms/ndk/data/SaveSlotInfo;

    .line 68
    invoke-virtual {p0, v3}, Lch/kingdoms/android/ui/MainMenuUi;->setBackgroundColor(I)V

    .line 69
    if-eqz p3, :cond_0

    .line 70
    const v1, 0x7f0201f8

    invoke-static {p1, v1}, Lch/android/api/ui/ChViewGen;->createImageView(Landroid/app/Activity;I)Lch/android/api/ui/ChImageView;

    move-result-object v1

    iput-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi;->logoView:Lch/android/api/ui/ChImageView;

    .line 71
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi;->logoView:Lch/android/api/ui/ChImageView;

    invoke-virtual {v1, v3}, Lch/android/api/ui/ChImageView;->setBackgroundColor(I)V

    .line 72
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi;->logoView:Lch/android/api/ui/ChImageView;

    invoke-virtual {p0, v1, v0}, Lch/kingdoms/android/ui/MainMenuUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .end local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lch/kingdoms/android/ui/MainMenuUi;->startTime:J

    .line 82
    return-void

    .line 76
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi;->logoView:Lch/android/api/ui/ChImageView;

    .line 77
    invoke-direct {p0}, Lch/kingdoms/android/ui/MainMenuUi;->settingMain()V

    .line 78
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lch/kingdoms/android/ui/MainMenuUi;->setToMainMenu(Z)V

    .line 79
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lch/kingdoms/android/ui/MainMenuUi;->updateLayerLevel(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/network/ChBanner;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi;->banner:Lch/android/api/network/ChBanner;

    return-object v0
.end method

.method static synthetic access$10(Lch/kingdoms/android/ui/MainMenuUi;I)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/MainMenuUi;->updateLayerLevel(I)V

    return-void
.end method

.method static synthetic access$11(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/ui/ChBackAnimationButton;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi;->touchMeView:Lch/android/api/ui/ChBackAnimationButton;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/MainMenuUi;Lch/android/api/network/ChBanner;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi;->banner:Lch/android/api/network/ChBanner;

    return-void
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi;->ACTIVITY:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/MainMenuUi;)[Lch/kingdoms/ndk/data/SaveSlotInfo;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi;->slotInfos:[Lch/kingdoms/ndk/data/SaveSlotInfo;

    return-object v0
.end method

.method static synthetic access$6(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/ui/ChImageView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi;->logoView:Lch/android/api/ui/ChImageView;

    return-object v0
.end method

.method static synthetic access$7(Lch/kingdoms/android/ui/MainMenuUi;)J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lch/kingdoms/android/ui/MainMenuUi;->startTime:J

    return-wide v0
.end method

.method static synthetic access$8(Lch/kingdoms/android/ui/MainMenuUi;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lch/kingdoms/android/ui/MainMenuUi;->settingMain()V

    return-void
.end method

.method static synthetic access$9(Lch/kingdoms/android/ui/MainMenuUi;)V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lch/kingdoms/android/ui/MainMenuUi;->setToTitle()V

    return-void
.end method

.method private setToTitle()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 224
    new-instance v2, Lch/android/api/ui/ChBackAnimationButton;

    iget-object v3, p0, Lch/kingdoms/android/ui/MainMenuUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0202d0

    const v5, 0x7f0202d1

    invoke-direct {v2, v3, v4, v5}, Lch/android/api/ui/ChBackAnimationButton;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi;->touchMeView:Lch/android/api/ui/ChBackAnimationButton;

    .line 225
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 226
    .local v1, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 227
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 228
    iget-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->heightPixels:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 229
    iget-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi;->touchMeView:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {p0, v2, v1}, Lch/kingdoms/android/ui/MainMenuUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi;->touchMeView:Lch/android/api/ui/ChBackAnimationButton;

    new-instance v3, Lch/kingdoms/android/ui/MainMenuUi$4;

    invoke-direct {v3, p0}, Lch/kingdoms/android/ui/MainMenuUi$4;-><init>(Lch/kingdoms/android/ui/MainMenuUi;)V

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChBackAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi;->handler:Landroid/os/Handler;

    new-instance v3, Lch/kingdoms/android/ui/MainMenuUi$5;

    invoke-direct {v3, p0}, Lch/kingdoms/android/ui/MainMenuUi$5;-><init>(Lch/kingdoms/android/ui/MainMenuUi;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v0

    .line 250
    .local v0, "dba":Lch/kingdoms/android/db/DBAdapter;
    invoke-virtual {v0}, Lch/kingdoms/android/db/DBAdapter;->isSoundOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    const/4 v2, 0x1

    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->setSoundOn(Z)V

    .line 252
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->playTitleBgSound()V

    .line 257
    :goto_0
    return-void

    .line 254
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->setSoundOn(Z)V

    goto :goto_0
.end method

.method private settingMain()V
    .locals 18

    .prologue
    .line 132
    const v14, 0x7f0202c7

    move-object/from16 v0, p0

    invoke-super {v0, v14}, Lch/android/api/ui/ChRelativeLayout;->setBackgroundResource(I)V

    .line 133
    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/MainMenuUi;->ACTIVITY:Landroid/app/Activity;

    const v15, 0x7f0202ca

    invoke-static {v14, v15}, Lch/android/api/ui/ChViewGen;->createImageView(Landroid/app/Activity;I)Lch/android/api/ui/ChImageView;

    move-result-object v11

    .line 134
    .local v11, "titleView":Lch/android/api/ui/ChImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/MainMenuUi;->ACTIVITY:Landroid/app/Activity;

    const v15, 0x7f0202cb

    invoke-static {v14, v15}, Lch/android/api/ui/ChViewGen;->createImageView(Landroid/app/Activity;I)Lch/android/api/ui/ChImageView;

    move-result-object v4

    .line 135
    .local v4, "leftChView":Lch/android/api/ui/ChImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/MainMenuUi;->ACTIVITY:Landroid/app/Activity;

    const v15, 0x7f0202cc

    invoke-static {v14, v15}, Lch/android/api/ui/ChViewGen;->createImageView(Landroid/app/Activity;I)Lch/android/api/ui/ChImageView;

    move-result-object v7

    .line 137
    .local v7, "rightChView":Lch/android/api/ui/ChImageView;
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v8, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v8, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xa

    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 139
    const/16 v14, 0xe

    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v8}, Lch/kingdoms/android/ui/MainMenuUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v8    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v8, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 144
    .restart local v8    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xc

    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    const/16 v14, 0x9

    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 146
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lch/kingdoms/android/ui/MainMenuUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v8    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v8, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    .restart local v8    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xc

    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 151
    const/16 v14, 0xb

    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 152
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lch/kingdoms/android/ui/MainMenuUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    const-string v12, "unknown"

    .line 157
    .local v12, "versionName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/MainMenuUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lch/kingdoms/android/ui/MainMenuUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 158
    .local v6, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v12, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v6    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v13, Lch/android/api/ui/ChTextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/MainMenuUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    .line 164
    .local v13, "versionNameView":Lch/android/api/ui/ChTextView;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Ver. "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 167
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v8    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v8, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 168
    .restart local v8    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xc

    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 169
    const/16 v14, 0xb

    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/MainMenuUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v14, v14, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v15, 0x40a00000    # 5.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 171
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Lch/kingdoms/android/ui/MainMenuUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    const v1, 0x1b207

    .line 174
    .local v1, "ID_OPENFEINT":I
    new-instance v5, Lch/android/api/ui/ChImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/MainMenuUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v5, v14}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 175
    .local v5, "openfeintView":Lch/android/api/ui/ChImageView;
    const v14, 0x7f020238

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 176
    invoke-virtual {v5, v1}, Lch/android/api/ui/ChImageView;->setId(I)V

    .line 178
    new-instance v3, Lch/android/api/ui/ChImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/MainMenuUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v3, v14}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 179
    .local v3, "facebookView":Lch/android/api/ui/ChImageView;
    const v14, 0x7f0200a9

    invoke-virtual {v3, v14}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 181
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v9, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 182
    .local v9, "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xc

    invoke-virtual {v9, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 183
    const/16 v14, 0x9

    invoke-virtual {v9, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/MainMenuUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v14, v14, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v15, 0x40a00000    # 5.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/MainMenuUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v14, v14, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v15, 0x40a00000    # 5.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 186
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lch/kingdoms/android/ui/MainMenuUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v10, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 189
    .local v10, "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v14, 0x2

    invoke-virtual {v10, v14, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 190
    const/16 v14, 0x9

    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/MainMenuUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v14, v14, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v15, 0x40a00000    # 5.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/MainMenuUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v14, v14, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v15, 0x40a00000    # 5.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v10, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 193
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lch/kingdoms/android/ui/MainMenuUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    new-instance v14, Lch/kingdoms/android/ui/MainMenuUi$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lch/kingdoms/android/ui/MainMenuUi$2;-><init>(Lch/kingdoms/android/ui/MainMenuUi;)V

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    new-instance v14, Lch/kingdoms/android/ui/MainMenuUi$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lch/kingdoms/android/ui/MainMenuUi$3;-><init>(Lch/kingdoms/android/ui/MainMenuUi;)V

    invoke-virtual {v3, v14}, Lch/android/api/ui/ChImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/MainMenuUi;->banner:Lch/android/api/network/ChBanner;

    if-eqz v14, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/MainMenuUi;->banner:Lch/android/api/network/ChBanner;

    invoke-virtual {v14}, Lch/android/api/network/ChBanner;->removeView()V

    .line 216
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lch/kingdoms/android/ui/MainMenuUi;->banner:Lch/android/api/network/ChBanner;

    .line 218
    :cond_0
    new-instance v14, Lch/android/api/network/ChBanner;

    move-object/from16 v0, p0

    iget-object v15, v0, Lch/kingdoms/android/ui/MainMenuUi;->ACTIVITY:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/MainMenuUi;->handler:Landroid/os/Handler;

    move-object/from16 v16, v0

    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lch/android/api/network/ChBanner;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lch/kingdoms/android/db/DBAdapter;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lch/kingdoms/android/ui/MainMenuUi;->banner:Lch/android/api/network/ChBanner;

    .line 219
    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/MainMenuUi;->banner:Lch/android/api/network/ChBanner;

    invoke-virtual {v14}, Lch/android/api/network/ChBanner;->popUp()V

    .line 220
    return-void

    .line 159
    .end local v1    # "ID_OPENFEINT":I
    .end local v3    # "facebookView":Lch/android/api/ui/ChImageView;
    .end local v5    # "openfeintView":Lch/android/api/ui/ChImageView;
    .end local v9    # "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10    # "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13    # "versionNameView":Lch/android/api/ui/ChTextView;
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private updateLayerLevel(I)V
    .locals 1
    .param p1, "layerLevel"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi;->mainMenu:Lch/kingdoms/android/ui/MainMenuUi$Menu;

    invoke-static {v0, p1}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$2(Lch/kingdoms/android/ui/MainMenuUi$Menu;I)V

    .line 271
    return-void
.end method


# virtual methods
.method public endLogo()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 91
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lch/kingdoms/android/ui/MainMenuUi$1;

    invoke-direct {v1, p0, v0}, Lch/kingdoms/android/ui/MainMenuUi$1;-><init>(Lch/kingdoms/android/ui/MainMenuUi;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChRelativeLayout;->onMeasure(II)V

    .line 129
    return-void
.end method

.method public setToMainMenu(Z)V
    .locals 4
    .param p1, "withAnimation"    # Z

    .prologue
    const/4 v3, -0x2

    .line 260
    new-instance v1, Lch/kingdoms/android/ui/MainMenuUi$Menu;

    iget-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lch/kingdoms/android/ui/MainMenuUi$Menu;-><init>(Lch/kingdoms/android/ui/MainMenuUi;Landroid/content/Context;)V

    iput-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi;->mainMenu:Lch/kingdoms/android/ui/MainMenuUi$Menu;

    .line 261
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 262
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 263
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 265
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->heightPixels:I

    int-to-float v1, v1

    iget-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x432f0000    # 175.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 266
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi;->mainMenu:Lch/kingdoms/android/ui/MainMenuUi$Menu;

    invoke-virtual {p0, v1, v0}, Lch/kingdoms/android/ui/MainMenuUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    return-void
.end method
