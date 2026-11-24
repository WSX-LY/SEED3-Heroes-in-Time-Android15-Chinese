.class public Lch/kingdoms/android/ui/MainStateUi;
.super Ljava/lang/Object;
.source "MainStateUi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ShowBlackSmithUi(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
    .locals 21
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    .line 482
    const/4 v13, 0x0

    .line 483
    .local v13, "ID_UPGRADE_BTN":I
    const/4 v12, 0x1

    .line 484
    .local v12, "ID_SOCKET_BTN":I
    const/4 v11, 0x2

    .line 485
    .local v11, "ID_REPOWER_BTN":I
    const/4 v10, 0x3

    .line 487
    .local v10, "ID_MIX_BTN":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 488
    .local v4, "context":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 489
    .local v17, "res":Landroid/content/res/Resources;
    new-instance v19, Lch/android/api/ui/ChTextSlimButton;

    const v5, 0x7f0201fc

    const v6, 0x7f0201fb

    const v7, 0x7f050049

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5, v6, v7}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 490
    .local v19, "upgradeBtn":Lch/android/api/ui/ChTextSlimButton;
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 491
    new-instance v18, Lch/android/api/ui/ChTextSlimButton;

    const v5, 0x7f0201fc

    const v6, 0x7f0201fb

    const v7, 0x7f05004a

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5, v6, v7}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 492
    .local v18, "socketBtn":Lch/android/api/ui/ChTextSlimButton;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 493
    new-instance v16, Lch/android/api/ui/ChTextSlimButton;

    const v5, 0x7f0201fc

    const v6, 0x7f0201fb

    const v7, 0x7f05004b

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5, v6, v7}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 494
    .local v16, "repowerBtn":Lch/android/api/ui/ChTextSlimButton;
    const/4 v5, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 495
    new-instance v14, Lch/android/api/ui/ChTextSlimButton;

    const v5, 0x7f0201fc

    const v6, 0x7f0201fb

    const v7, 0x7f05004c

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v14, v4, v5, v6, v7}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 496
    .local v14, "mixBtn":Lch/android/api/ui/ChTextSlimButton;
    const/4 v5, 0x3

    invoke-virtual {v14, v5}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 497
    const/4 v5, 0x4

    new-array v8, v5, [Landroid/view/View;

    const/4 v5, 0x0

    aput-object v19, v8, v5

    const/4 v5, 0x1

    aput-object v18, v8, v5

    const/4 v5, 0x2

    aput-object v16, v8, v5

    const/4 v5, 0x3

    aput-object v14, v8, v5

    .line 501
    .local v8, "views":[Landroid/view/View;
    new-instance v15, Lch/kingdoms/android/ui/MainStateUi$18;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v15, v0, v1, v2}, Lch/kingdoms/android/ui/MainStateUi$18;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Landroid/content/res/Resources;)V

    .line 545
    .local v15, "ocl":Landroid/view/View$OnClickListener;
    array-length v6, v8

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 548
    new-instance v3, Lch/android/api/ui/ChPopUpMenuView;

    const v6, 0x7f020277

    const v7, 0x7f020245

    .line 549
    new-instance v9, Lch/kingdoms/android/ui/MainStateUi$19;

    invoke-direct {v9}, Lch/kingdoms/android/ui/MainStateUi$19;-><init>()V

    move-object/from16 v5, p1

    .line 548
    invoke-direct/range {v3 .. v9}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 565
    .local v3, "menuView":Lch/android/api/ui/ChPopUpMenuView;
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 567
    return-void

    .line 545
    .end local v3    # "menuView":Lch/android/api/ui/ChPopUpMenuView;
    :cond_0
    aget-object v20, v8, v5

    .line 546
    .local v20, "view":Landroid/view/View;
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 92
    invoke-static {p0}, Lch/kingdoms/android/ui/MainStateUi;->popUpSelectPortal(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 239
    invoke-static {p0}, Lch/kingdoms/android/ui/MainStateUi;->popUpColosseum(Landroid/app/Activity;)V

    return-void
.end method

.method private static popUpColosseum(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa1

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getColosseumInMoney()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    const/16 v1, 0xa2

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getColosseumInLimitLv()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v1, Lch/kingdoms/android/ui/MainStateUi$9;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/MainStateUi$9;-><init>(Landroid/app/Activity;)V

    .line 240
    invoke-static {p0, v0, v1}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 265
    return-void
.end method

.method private static popUpColosseumOrDungeon(Landroid/app/Activity;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const v4, 0x7f0201fc

    const v3, 0x7f0201fb

    .line 194
    const/16 v7, 0x64

    .line 195
    .local v7, "ID_COLOSSEUM":I
    const/16 v8, 0x65

    .line 196
    .local v8, "ID_DUNGEON":I
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 197
    .local v1, "appContext":Landroid/content/Context;
    new-instance v9, Lch/android/api/ui/ChTextSlimButton;

    .line 198
    const/16 v2, 0x9f

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-direct {v9, v1, v4, v3, v2}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 199
    .local v9, "colosseumBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v2, 0x64

    invoke-virtual {v9, v2}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 200
    new-instance v10, Lch/android/api/ui/ChTextSlimButton;

    .line 201
    const/16 v2, 0xa0

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-direct {v10, v1, v4, v3, v2}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 202
    .local v10, "dungeonBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v2, 0x65

    invoke-virtual {v10, v2}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 203
    const/4 v2, 0x2

    new-array v5, v2, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v9, v5, v2

    const/4 v2, 0x1

    aput-object v10, v5, v2

    .line 204
    .local v5, "views":[Landroid/view/View;
    new-instance v6, Lch/kingdoms/android/ui/MainStateUi$8;

    invoke-direct {v6, p0}, Lch/kingdoms/android/ui/MainStateUi$8;-><init>(Landroid/app/Activity;)V

    .line 232
    .local v6, "ocl":Landroid/view/View$OnClickListener;
    invoke-virtual {v9, v6}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-virtual {v10, v6}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    new-instance v0, Lch/android/api/ui/ChPopUpMenuView;

    invoke-static {}, Lch/android/api/util/DisplayInfo;->getInstance()Lch/android/api/util/DisplayInfo;

    move-result-object v2

    const v3, 0x7f02002e

    const v4, 0x7f020248

    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 236
    .local v0, "menu":Lch/android/api/ui/ChPopUpMenuView;
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 237
    return-void
.end method

.method public static popUpColosseumUi(Landroid/app/Activity;Z)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isColosseum"    # Z

    .prologue
    .line 135
    const/4 v3, 0x1

    .line 136
    .local v3, "SS_COLO_NO_MONEY":I
    const/4 v2, 0x2

    .line 137
    .local v2, "SS_COLO_NO_INVEN":I
    const/4 v1, 0x3

    .line 138
    .local v1, "SS_COLO_LEVEL_OVER":I
    const/4 v0, 0x4

    .line 139
    .local v0, "SS_COLO_ENTER":I
    invoke-static {p1}, Lch/kingdoms/ndk/NdkUiEventManager;->isColosseumUsable(Z)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 141
    :pswitch_0
    const/16 v4, 0xa3

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lch/kingdoms/android/ui/MainStateUi$5;

    invoke-direct {v5}, Lch/kingdoms/android/ui/MainStateUi$5;-><init>()V

    invoke-static {p0, v4, v5}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0

    .line 154
    :pswitch_1
    const/16 v4, 0xa4

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lch/kingdoms/android/ui/MainStateUi$6;

    invoke-direct {v5}, Lch/kingdoms/android/ui/MainStateUi$6;-><init>()V

    invoke-static {p0, v4, v5}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0

    .line 167
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getColosseumInLimitLv()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xa5

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lch/kingdoms/android/ui/MainStateUi$7;

    invoke-direct {v5, p0}, Lch/kingdoms/android/ui/MainStateUi$7;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v4, v5}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0

    .line 184
    :pswitch_3
    if-eqz p1, :cond_0

    .line 185
    invoke-static {p0}, Lch/kingdoms/android/ui/MainStateUi;->popUpColosseum(Landroid/app/Activity;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {p0}, Lch/kingdoms/android/ui/MainStateUi;->popUpDungeon(Landroid/app/Activity;)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static popUpDungeon(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 268
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v1

    .line 269
    .local v1, "dba":Lch/kingdoms/android/db/DBAdapter;
    const-string v2, "MYSTERYDUNGEON_LAST_DAY"

    invoke-virtual {v1, v2}, Lch/kingdoms/android/db/DBAdapter;->getData(Ljava/lang/String;)[B

    move-result-object v0

    .line 271
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 272
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xa1

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 273
    const/16 v3, 0xa2

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xe6

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    new-instance v3, Lch/kingdoms/android/ui/MainStateUi$10;

    invoke-direct {v3, p0, v1}, Lch/kingdoms/android/ui/MainStateUi$10;-><init>(Landroid/app/Activity;Lch/kingdoms/android/db/DBAdapter;)V

    .line 272
    invoke-static {p0, v2, v3}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 339
    :goto_0
    return-void

    .line 301
    :cond_1
    const/16 v2, 0x11a

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    .line 302
    new-instance v3, Lch/kingdoms/android/ui/MainStateUi$11;

    invoke-direct {v3, p0}, Lch/kingdoms/android/ui/MainStateUi$11;-><init>(Landroid/app/Activity;)V

    .line 301
    invoke-static {p0, v2, v3}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0
.end method

.method private static popUpSelectPortal(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 93
    const/16 v0, 0xad

    invoke-static {v0}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lch/kingdoms/android/ui/MainStateUi$3;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/MainStateUi$3;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0, v1}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 113
    return-void
.end method

.method public static showColosseumUi(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 116
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v0

    .line 117
    .local v0, "dba":Lch/kingdoms/android/db/DBAdapter;
    const-string v1, "COLOSSEUM"

    invoke-virtual {v0, v1}, Lch/kingdoms/android/db/DBAdapter;->isPurchased(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-static {p0}, Lch/kingdoms/android/ui/MainStateUi;->popUpColosseumOrDungeon(Landroid/app/Activity;)V

    .line 132
    :goto_0
    return-void

    .line 120
    :cond_0
    const/16 v1, 0x118

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    new-instance v2, Lch/kingdoms/android/ui/MainStateUi$4;

    invoke-direct {v2}, Lch/kingdoms/android/ui/MainStateUi$4;-><init>()V

    .line 120
    invoke-static {p0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0
.end method

.method public static showMainMenuUi(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Z)Lch/kingdoms/android/ui/MainMenuUi;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "di"    # Lch/android/api/util/DisplayInfo;
    .param p2, "isTitle"    # Z

    .prologue
    .line 363
    new-instance v0, Lch/kingdoms/android/ui/MainMenuUi;

    invoke-direct {v0, p0, p1, p2}, Lch/kingdoms/android/ui/MainMenuUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Z)V

    .line 364
    .local v0, "mainMenuUi":Lch/kingdoms/android/ui/MainMenuUi;
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 367
    return-object v0
.end method

.method public static showSelectJobUi(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
    .locals 1
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    .line 371
    new-instance v0, Lch/kingdoms/android/ui/SelectJobUi;

    invoke-direct {v0, p0, p1}, Lch/kingdoms/android/ui/SelectJobUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V

    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 372
    return-void
.end method

.method public static showStoreUi(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
    .locals 11
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    const/4 v2, 0x0

    .line 413
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 414
    .local v1, "context":Landroid/content/Context;
    new-instance v7, Lch/android/api/ui/ChSlimImageButton;

    const v3, 0x7f020067

    const v4, 0x7f020063

    invoke-direct {v7, v1, v3, v4}, Lch/android/api/ui/ChSlimImageButton;-><init>(Landroid/content/Context;II)V

    .line 415
    .local v7, "buyBtn":Lch/android/api/ui/ChSlimImageButton;
    const/16 v3, 0x2745

    invoke-virtual {v7, v3}, Lch/android/api/ui/ChSlimImageButton;->setId(I)V

    .line 416
    new-instance v9, Lch/android/api/ui/ChSlimImageButton;

    const v3, 0x7f020274

    const v4, 0x7f020273

    invoke-direct {v9, v1, v3, v4}, Lch/android/api/ui/ChSlimImageButton;-><init>(Landroid/content/Context;II)V

    .line 417
    .local v9, "sellBtn":Lch/android/api/ui/ChSlimImageButton;
    const/16 v3, 0x2746

    invoke-virtual {v9, v3}, Lch/android/api/ui/ChSlimImageButton;->setId(I)V

    .line 419
    new-instance v8, Lch/kingdoms/android/ui/MainStateUi$16;

    invoke-direct {v8, p0, p1}, Lch/kingdoms/android/ui/MainStateUi$16;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V

    .line 439
    .local v8, "ocl":Landroid/view/View$OnClickListener;
    const/4 v3, 0x2

    new-array v5, v3, [Landroid/view/View;

    aput-object v7, v5, v2

    const/4 v3, 0x1

    aput-object v9, v5, v3

    .line 440
    .local v5, "views":[Landroid/view/View;
    array-length v3, v5

    :goto_0
    if-lt v2, v3, :cond_0

    .line 443
    new-instance v0, Lch/android/api/ui/ChPopUpMenuView;

    const v3, 0x7f020277

    const v4, 0x7f020248

    new-instance v6, Lch/kingdoms/android/ui/MainStateUi$17;

    invoke-direct {v6}, Lch/kingdoms/android/ui/MainStateUi$17;-><init>()V

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 454
    .local v0, "menuView":Lch/android/api/ui/ChPopUpMenuView;
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 479
    return-void

    .line 440
    .end local v0    # "menuView":Lch/android/api/ui/ChPopUpMenuView;
    :cond_0
    aget-object v10, v5, v2

    .line 441
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v10, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static showTownPortalUi(Landroid/app/Activity;)V
    .locals 15
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const v14, 0x7f020205

    const v6, 0x7f020204

    const/4 v3, 0x0

    .line 30
    const/16 v8, 0x64

    .line 31
    .local v8, "ID_SETPORTAL":I
    const/16 v7, 0x65

    .line 32
    .local v7, "ID_SECONDPLAY":I
    invoke-static {}, Lch/android/api/util/DisplayInfo;->getInstance()Lch/android/api/util/DisplayInfo;

    move-result-object v2

    .line 33
    .local v2, "di":Lch/android/api/util/DisplayInfo;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 34
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getTownPortalState()I

    move-result v4

    if-nez v4, :cond_1

    .line 35
    new-instance v12, Lch/android/api/ui/ChTextSlimButton;

    const/16 v4, 0xb8

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v1, v14, v6, v4}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 36
    .local v12, "setPortalBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v4, 0x64

    invoke-virtual {v12, v4}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 37
    new-instance v11, Lch/android/api/ui/ChTextSlimButton;

    const/16 v4, 0xb9

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v1, v14, v6, v4}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 38
    .local v11, "secondPlaylBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v4, 0x65

    invoke-virtual {v11, v4}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 39
    const/4 v4, 0x2

    new-array v5, v4, [Landroid/view/View;

    aput-object v12, v5, v3

    const/4 v4, 0x1

    aput-object v11, v5, v4

    .line 40
    .local v5, "views":[Landroid/view/View;
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v4

    add-int/lit8 v9, v4, 0x1

    .line 41
    .local v9, "layerLevel":I
    new-instance v10, Lch/kingdoms/android/ui/MainStateUi$1;

    invoke-direct {v10, v9, p0, v2}, Lch/kingdoms/android/ui/MainStateUi$1;-><init>(ILandroid/app/Activity;Lch/android/api/util/DisplayInfo;)V

    .line 75
    .local v10, "ocl":Landroid/view/View$OnClickListener;
    array-length v4, v5

    :goto_0
    if-lt v3, v4, :cond_0

    .line 78
    new-instance v0, Lch/android/api/ui/ChPopUpMenuView;

    const/4 v3, -0x1

    const v4, 0x7f020248

    .line 79
    new-instance v6, Lch/kingdoms/android/ui/MainStateUi$2;

    invoke-direct {v6}, Lch/kingdoms/android/ui/MainStateUi$2;-><init>()V

    .line 78
    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 86
    .local v0, "menuView":Lch/android/api/ui/ChPopUpMenuView;
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 90
    .end local v0    # "menuView":Lch/android/api/ui/ChPopUpMenuView;
    .end local v5    # "views":[Landroid/view/View;
    .end local v9    # "layerLevel":I
    .end local v10    # "ocl":Landroid/view/View$OnClickListener;
    .end local v11    # "secondPlaylBtn":Lch/android/api/ui/ChTextSlimButton;
    .end local v12    # "setPortalBtn":Lch/android/api/ui/ChTextSlimButton;
    :goto_1
    return-void

    .line 75
    .restart local v5    # "views":[Landroid/view/View;
    .restart local v9    # "layerLevel":I
    .restart local v10    # "ocl":Landroid/view/View$OnClickListener;
    .restart local v11    # "secondPlaylBtn":Lch/android/api/ui/ChTextSlimButton;
    .restart local v12    # "setPortalBtn":Lch/android/api/ui/ChTextSlimButton;
    :cond_0
    aget-object v13, v5, v3

    .line 76
    .local v13, "view":Landroid/view/View;
    invoke-virtual {v13, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    .end local v5    # "views":[Landroid/view/View;
    .end local v9    # "layerLevel":I
    .end local v10    # "ocl":Landroid/view/View$OnClickListener;
    .end local v11    # "secondPlaylBtn":Lch/android/api/ui/ChTextSlimButton;
    .end local v12    # "setPortalBtn":Lch/android/api/ui/ChTextSlimButton;
    .end local v13    # "view":Landroid/view/View;
    :cond_1
    invoke-static {p0}, Lch/kingdoms/android/ui/MainStateUi;->popUpSelectPortal(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method public static showWareHouseUi(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
    .locals 9
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    const v4, 0x7f0201fc

    const v3, 0x7f0201fb

    .line 375
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 376
    .local v1, "context":Landroid/content/Context;
    new-instance v7, Lch/android/api/ui/ChTextSlimButton;

    const/16 v2, 0x63

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v4, v3, v2}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 377
    .local v7, "positBtn":Lch/android/api/ui/ChTextSlimButton;
    new-instance v8, Lch/android/api/ui/ChTextSlimButton;

    const/16 v2, 0x64

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v1, v4, v3, v2}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 378
    .local v8, "withdrawBtn":Lch/android/api/ui/ChTextSlimButton;
    const/4 v2, 0x2

    new-array v5, v2, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v7, v5, v2

    const/4 v2, 0x1

    aput-object v8, v5, v2

    .line 379
    .local v5, "views":[Landroid/view/View;
    new-instance v0, Lch/android/api/ui/ChPopUpMenuView;

    const v3, 0x7f0202ba

    const v4, 0x7f020248

    .line 380
    new-instance v6, Lch/kingdoms/android/ui/MainStateUi$13;

    invoke-direct {v6}, Lch/kingdoms/android/ui/MainStateUi$13;-><init>()V

    move-object v2, p1

    .line 379
    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 391
    .local v0, "popUpView":Landroid/view/View;
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 392
    new-instance v2, Lch/kingdoms/android/ui/MainStateUi$14;

    invoke-direct {v2, p0, p1}, Lch/kingdoms/android/ui/MainStateUi$14;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V

    invoke-virtual {v7, v2}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    new-instance v2, Lch/kingdoms/android/ui/MainStateUi$15;

    invoke-direct {v2, p0, p1}, Lch/kingdoms/android/ui/MainStateUi$15;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V

    invoke-virtual {v8, v2}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    return-void
.end method

.method public static showWarpGateUi(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 342
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v0

    .line 343
    .local v0, "dba":Lch/kingdoms/android/db/DBAdapter;
    const-string v2, "WARPGATE"

    invoke-virtual {v0, v2}, Lch/kingdoms/android/db/DBAdapter;->isPurchased(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    new-instance v1, Lch/kingdoms/android/ui/WarpGateUi;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/WarpGateUi;-><init>(Landroid/app/Activity;)V

    .line 345
    .local v1, "warpGateUi":Lch/kingdoms/android/ui/WarpGateUi;
    invoke-virtual {v1}, Lch/kingdoms/android/ui/WarpGateUi;->popUp()V

    .line 360
    .end local v1    # "warpGateUi":Lch/kingdoms/android/ui/WarpGateUi;
    :goto_0
    return-void

    .line 347
    :cond_0
    const/16 v2, 0x115

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lch/kingdoms/android/ui/MainStateUi$12;

    invoke-direct {v3}, Lch/kingdoms/android/ui/MainStateUi$12;-><init>()V

    invoke-static {p0, v2, v3}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0
.end method
