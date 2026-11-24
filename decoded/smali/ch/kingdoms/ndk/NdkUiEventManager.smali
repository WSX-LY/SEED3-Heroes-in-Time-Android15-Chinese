.class public Lch/kingdoms/ndk/NdkUiEventManager;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;,
        Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;
    }
.end annotation


# static fields
.field public static final ID_COLOSSEUM_LAYOUT:I = 0x4e21

.field public static final ID_COLOSSEUM_RESULT_LAYOUT:I = 0x4e22

.field public static final ID_HUNTING_LAYOUT:I = 0x2711

.field public static final ID_PRISONBREAK_TIME_LAYOUT:I = 0x2712

.field private static final ID_RACE_UI:I = 0xc350

.field private static hideRaceBtnsRunnable:Ljava/lang/Runnable;

.field private static invalidateColosseumResultView:Ljava/lang/Runnable;

.field private static invalidateColosseumView:Ljava/lang/Runnable;

.field private static invalidateHuntingViewRunnable:Ljava/lang/Runnable;

.field private static invalidatePrisionBreakTimeViewRunnable:Ljava/lang/Runnable;

.field private static invalidateRaceUiRunnable:Ljava/lang/Runnable;

.field private static invalidateStaffRollUiRunnable:Ljava/lang/Runnable;

.field private static m_invisibleMonsterHp:Ljava/lang/Runnable;

.field private static m_updateExp:Ljava/lang/Runnable;

.field private static m_updateHeroHpSpTp:Ljava/lang/Runnable;

.field private static m_updateMonsterHp:Ljava/lang/Runnable;

.field private static m_visibleMonsterHp:Ljava/lang/Runnable;

.field private static raceCountNum:I

.field private static raceCountRunnable:Ljava/lang/Runnable;

.field private static s_activity:Lch/kingdoms/kor/KingdomsActivity;

.field private static s_captionUi:Lch/kingdoms/android/ui/CaptionUi;

.field private static s_colosseumResultView:Lch/android/api/ui/ChColosseumResultView;

.field private static s_colosseumView:Lch/android/api/ui/ChColosseumView;

.field private static s_di:Lch/android/api/util/DisplayInfo;

.field private static s_dpad:Lch/kingdoms/android/dpad/Dpad;

.field private static s_dungeonResultView:Lch/android/api/ui/ChDungeonResultView;

.field private static s_handler:Landroid/os/Handler;

.field public static s_huntingView:Lch/android/api/ui/ChHuntingView;

.field private static s_isRun:Z

.field public static s_prisonBreakTimeView:Lch/android/api/ui/ChPrisonBreakTimeView;

.field private static s_raceContView:Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;

.field private static s_raceResultView:Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;

.field private static s_raceUi:Lch/kingdoms/android/ui/RaceUi;

.field private static s_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

.field private static s_score:I

.field private static s_staffRollUi:Lch/android/api/ui/ChStaffRollView;

.field private static s_surfaceView:Lch/kingdoms/android/ChGLSurfaceView;

.field private static s_typingAndScrollTextView:Lch/android/api/ui/ChTypingAndScrollTextView;

.field private static showRaceLeftBtnRunnable:Ljava/lang/Runnable;

.field private static showRaceRightBtnRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    .line 253
    const/4 v0, 0x0

    sput-boolean v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_isRun:Z

    .line 513
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$1;

    invoke-direct {v0}, Lch/kingdoms/ndk/NdkUiEventManager$1;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->m_updateHeroHpSpTp:Ljava/lang/Runnable;

    .line 521
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$2;

    invoke-direct {v0}, Lch/kingdoms/ndk/NdkUiEventManager$2;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->m_updateMonsterHp:Ljava/lang/Runnable;

    .line 529
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$3;

    invoke-direct {v0}, Lch/kingdoms/ndk/NdkUiEventManager$3;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->m_updateExp:Ljava/lang/Runnable;

    .line 537
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$4;

    invoke-direct {v0}, Lch/kingdoms/ndk/NdkUiEventManager$4;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->m_invisibleMonsterHp:Ljava/lang/Runnable;

    .line 545
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$5;

    invoke-direct {v0}, Lch/kingdoms/ndk/NdkUiEventManager$5;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->m_visibleMonsterHp:Ljava/lang/Runnable;

    .line 950
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$6;

    invoke-direct {v0}, Lch/kingdoms/ndk/NdkUiEventManager$6;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->invalidateColosseumView:Ljava/lang/Runnable;

    .line 960
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$7;

    invoke-direct {v0}, Lch/kingdoms/ndk/NdkUiEventManager$7;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->invalidateColosseumResultView:Ljava/lang/Runnable;

    .line 1017
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$8;

    invoke-direct {v0}, Lch/kingdoms/ndk/NdkUiEventManager$8;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->hideRaceBtnsRunnable:Ljava/lang/Runnable;

    .line 1025
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$9;

    invoke-direct {v0}, Lch/kingdoms/ndk/NdkUiEventManager$9;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->showRaceRightBtnRunnable:Ljava/lang/Runnable;

    .line 1033
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$10;

    invoke-direct {v0}, Lch/kingdoms/ndk/NdkUiEventManager$10;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->showRaceLeftBtnRunnable:Ljava/lang/Runnable;

    .line 1041
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$11;

    invoke-direct {v0}, Lch/kingdoms/ndk/NdkUiEventManager$11;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->invalidateRaceUiRunnable:Ljava/lang/Runnable;

    .line 1080
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$12;

    invoke-direct {v0}, Lch/kingdoms/ndk/NdkUiEventManager$12;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->invalidateStaffRollUiRunnable:Ljava/lang/Runnable;

    .line 1141
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$13;

    invoke-direct {v0}, Lch/kingdoms/ndk/NdkUiEventManager$13;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->invalidateHuntingViewRunnable:Ljava/lang/Runnable;

    .line 1203
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$14;

    invoke-direct {v0}, Lch/kingdoms/ndk/NdkUiEventManager$14;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->invalidatePrisionBreakTimeViewRunnable:Ljava/lang/Runnable;

    .line 1305
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$15;

    invoke-direct {v0}, Lch/kingdoms/ndk/NdkUiEventManager$15;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->raceCountRunnable:Ljava/lang/Runnable;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lch/kingdoms/android/ui/RealTimeUpdateUi;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    return-object v0
.end method

.method static synthetic access$1()Lch/android/api/ui/ChColosseumView;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumView:Lch/android/api/ui/ChColosseumView;

    return-object v0
.end method

.method static synthetic access$10(Lch/android/api/ui/ChColosseumView;)V
    .locals 0

    .prologue
    .line 239
    sput-object p0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumView:Lch/android/api/ui/ChColosseumView;

    return-void
.end method

.method static synthetic access$11(Lch/android/api/ui/ChColosseumResultView;)V
    .locals 0

    .prologue
    .line 240
    sput-object p0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumResultView:Lch/android/api/ui/ChColosseumResultView;

    return-void
.end method

.method static synthetic access$12()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$13()V
    .locals 0

    .prologue
    .line 875
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->popUpErrorInRegisterColosseumRank()V

    return-void
.end method

.method static synthetic access$14(Lch/android/api/ui/ChPopUpEditTextView;Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 785
    invoke-static {p0, p1, p2, p3}, Lch/kingdoms/ndk/NdkUiEventManager;->popUpRegisterId(Lch/android/api/ui/ChPopUpEditTextView;Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15(Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 716
    invoke-static {p0, p1, p2, p3}, Lch/kingdoms/ndk/NdkUiEventManager;->registerRank(Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    return-void
.end method

.method static synthetic access$16(Lch/kingdoms/android/ui/RaceUi;)V
    .locals 0

    .prologue
    .line 249
    sput-object p0, Lch/kingdoms/ndk/NdkUiEventManager;->s_raceUi:Lch/kingdoms/android/ui/RaceUi;

    return-void
.end method

.method static synthetic access$17(Lch/android/api/ui/ChStaffRollView;)V
    .locals 0

    .prologue
    .line 241
    sput-object p0, Lch/kingdoms/ndk/NdkUiEventManager;->s_staffRollUi:Lch/android/api/ui/ChStaffRollView;

    return-void
.end method

.method static synthetic access$18()Lch/kingdoms/android/ui/CaptionUi;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_captionUi:Lch/kingdoms/android/ui/CaptionUi;

    return-object v0
.end method

.method static synthetic access$19()Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_raceResultView:Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;

    return-object v0
.end method

.method static synthetic access$2()Lch/android/api/ui/ChColosseumResultView;
    .locals 1

    .prologue
    .line 240
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumResultView:Lch/android/api/ui/ChColosseumResultView;

    return-object v0
.end method

.method static synthetic access$20(Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;)V
    .locals 0

    .prologue
    .line 261
    sput-object p0, Lch/kingdoms/ndk/NdkUiEventManager;->s_raceResultView:Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;

    return-void
.end method

.method static synthetic access$21()Lch/android/api/ui/ChTypingAndScrollTextView;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_typingAndScrollTextView:Lch/android/api/ui/ChTypingAndScrollTextView;

    return-object v0
.end method

.method static synthetic access$22()Lch/android/api/ui/ChDungeonResultView;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_dungeonResultView:Lch/android/api/ui/ChDungeonResultView;

    return-object v0
.end method

.method static synthetic access$23(Lch/android/api/ui/ChDungeonResultView;)V
    .locals 0

    .prologue
    .line 263
    sput-object p0, Lch/kingdoms/ndk/NdkUiEventManager;->s_dungeonResultView:Lch/android/api/ui/ChDungeonResultView;

    return-void
.end method

.method static synthetic access$3()Lch/kingdoms/android/ui/RaceUi;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_raceUi:Lch/kingdoms/android/ui/RaceUi;

    return-object v0
.end method

.method static synthetic access$4()Lch/android/api/ui/ChStaffRollView;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_staffRollUi:Lch/android/api/ui/ChStaffRollView;

    return-object v0
.end method

.method static synthetic access$5()Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_raceContView:Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;

    return-object v0
.end method

.method static synthetic access$6()I
    .locals 1

    .prologue
    .line 1287
    sget v0, Lch/kingdoms/ndk/NdkUiEventManager;->raceCountNum:I

    return v0
.end method

.method static synthetic access$7(Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;)V
    .locals 0

    .prologue
    .line 260
    sput-object p0, Lch/kingdoms/ndk/NdkUiEventManager;->s_raceContView:Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;

    return-void
.end method

.method static synthetic access$8()Lch/kingdoms/kor/KingdomsActivity;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_activity:Lch/kingdoms/kor/KingdomsActivity;

    return-object v0
.end method

.method static synthetic access$9()Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_di:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method public static native buyItem(II)I
.end method

.method public static native callNativeBrandShopInven()Lch/kingdoms/ndk/data/Inven;
.end method

.method public static native callNativeBuyBrandItem(II)I
.end method

.method public static native callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V
.end method

.method public static native callNativeCheckUseItem(I)Z
.end method

.method public static native callNativeDeleteItem(II)Z
.end method

.method public static native callNativeDeleteWareHouseItem(II)I
.end method

.method public static native callNativeEquipItem(II)V
.end method

.method public static native callNativeGameTip()[S
.end method

.method public static native callNativeGetBlackSmithResult(III)I
.end method

.method public static native callNativeGetEquipItems()[S
.end method

.method public static native callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;
.end method

.method public static native callNativeGetInven()Lch/kingdoms/ndk/data/Inven;
.end method

.method public static native callNativeGetItemRes(I)Lch/kingdoms/ndk/data/ItemRes;
.end method

.method public static native callNativeGetQuestDatas()Lch/kingdoms/ndk/data/QuestDatas;
.end method

.method public static native callNativeGetQuickSlotsData()Lch/kingdoms/ndk/data/QuickSlotsData;
.end method

.method private static native callNativeGetSaveSlotInfo(I)Lch/kingdoms/ndk/data/SaveSlotInfo;
.end method

.method public static native callNativeGetSkills()Lch/kingdoms/ndk/data/HeroSkill;
.end method

.method public static native callNativeGetTempHeroInfo(II)Lch/kingdoms/ndk/data/HeroStatus;
.end method

.method public static native callNativeGetWareHouseMoney()I
.end method

.method public static native callNativeInWareHouseItem(II)I
.end method

.method public static native callNativeIsBlackSmithAvailable(I)I
.end method

.method public static native callNativeIsSlotA()Z
.end method

.method public static native callNativeNP_setGetNetItem([B)V
.end method

.method public static native callNativeNpcName(I)[S
.end method

.method public static native callNativeOutWareHouseItem(II)I
.end method

.method private static native callNativePauseGamePlay()V
.end method

.method public static native callNativePositMoney(I)I
.end method

.method public static native callNativeQuestGiveUp(I)V
.end method

.method public static native callNativeQuestName()[S
.end method

.method public static native callNativeQuestTxt()[S
.end method

.method private static native callNativeResumeGamePlay()V
.end method

.method private static native callNativeScrTxt(I)[S
.end method

.method public static native callNativeSetCleanQuickSlot(I)V
.end method

.method public static native callNativeSetQuickSlot(IIS)V
.end method

.method public static native callNativeSetSkills(Lch/kingdoms/ndk/data/HeroSkill;)V
.end method

.method public static native callNativeStoreInven()Lch/kingdoms/ndk/data/Inven;
.end method

.method public static native callNativeUnsetBrandShopInven()V
.end method

.method public static native callNativeUseItem(I)Z
.end method

.method public static native callNativeWareHouseInven()Lch/kingdoms/ndk/data/Inven;
.end method

.method public static native callNativeWithdrawItem(II)I
.end method

.method public static native callNativeWithdrawMoney(I)I
.end method

.method public static native checkSocketResetable(I)Z
.end method

.method public static closeCaption()V
    .locals 2

    .prologue
    .line 1251
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$45;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$45;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1258
    return-void
.end method

.method public static closeColosseumView()V
    .locals 2

    .prologue
    .line 569
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$17;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$17;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 579
    return-void
.end method

.method public static closeHuntingView()V
    .locals 2

    .prologue
    .line 1120
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_huntingView:Lch/android/api/ui/ChHuntingView;

    if-eqz v0, :cond_0

    .line 1121
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$39;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$39;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1131
    :cond_0
    return-void
.end method

.method public static closeNpcName()V
    .locals 2

    .prologue
    .line 1278
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$47;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$47;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1285
    return-void
.end method

.method public static closePopUp()V
    .locals 2

    .prologue
    .line 1224
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$44;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$44;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1231
    return-void
.end method

.method public static closePrisonBreakTimeView()V
    .locals 2

    .prologue
    .line 1181
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_prisonBreakTimeView:Lch/android/api/ui/ChPrisonBreakTimeView;

    if-eqz v0, :cond_0

    .line 1182
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$42;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$42;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1192
    :cond_0
    return-void
.end method

.method public static closeRaceUi()V
    .locals 2

    .prologue
    .line 985
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$34;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$34;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 998
    return-void
.end method

.method public static closeStaffRollUi()V
    .locals 2

    .prologue
    .line 1062
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_staffRollUi:Lch/android/api/ui/ChStaffRollView;

    if-eqz v0, :cond_0

    .line 1064
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$36;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$36;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1073
    :cond_0
    return-void
.end method

.method public static decodeUnicodeBytes([B)Ljava/lang/String;
    .locals 1
    .param p0, "_bytes"    # [B

    .prologue
    .line 342
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static deleteItem(Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Z
    .locals 2
    .param p0, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;
    .param p1, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 371
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_activity:Lch/kingdoms/kor/KingdomsActivity;

    const v1, 0x7f050039

    invoke-static {v0, v1, p1}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public static endBuff(I)V
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lch/kingdoms/ndk/NdkUiEventManager;->setBuff(IZ)V

    .line 417
    return-void
.end method

.method public static endBuffBlink(I)V
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lch/kingdoms/ndk/NdkUiEventManager;->setBuffBlink(IZ)V

    .line 425
    return-void
.end method

.method public static native endShowDungeonReward()V
.end method

.method public static native endTypingAndScrollText()V
.end method

.method public static native enterDungeon()V
.end method

.method public static equipItem(Lch/kingdoms/ndk/data/Inven$Item;ILandroid/view/View$OnClickListener;)Z
    .locals 7
    .param p0, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;
    .param p1, "_itemType"    # I
    .param p2, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 346
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    .line 347
    .local v0, "heroStatus":Lch/kingdoms/ndk/data/HeroStatus;
    iget-short v1, p0, Lch/kingdoms/ndk/data/Inven$Item;->limitLv:S

    .line 348
    .local v1, "tmpLimitLv":I
    iget v2, p0, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-nez v2, :cond_1

    .line 349
    iget-object v2, p0, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v2, v2, v6

    if-lez v2, :cond_0

    iget-object v2, p0, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v2, v2, v6

    .line 350
    :goto_0
    sub-int/2addr v1, v2

    .line 358
    :goto_1
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getLevel()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 360
    sget-object v2, Lch/kingdoms/ndk/NdkUiEventManager;->s_activity:Lch/kingdoms/kor/KingdomsActivity;

    const v4, 0x7f050038

    invoke-static {v2, v4, p2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 366
    :goto_2
    return v3

    :cond_0
    move v2, v3

    .line 350
    goto :goto_0

    .line 351
    :cond_1
    iget v2, p0, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-ne v2, v4, :cond_3

    .line 352
    iget-object v2, p0, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v2, v2, v5

    if-lez v2, :cond_2

    iget-object v2, p0, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v2, v2, v5

    :goto_3
    sub-int/2addr v1, v2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_3

    .line 353
    :cond_3
    iget v2, p0, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    .line 354
    iget-short v1, p0, Lch/kingdoms/ndk/data/Inven$Item;->limitLv:S

    goto :goto_1

    .line 356
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 364
    :cond_5
    iget v2, p0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v2, p1}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeEquipItem(II)V

    move v3, v4

    .line 366
    goto :goto_2
.end method

.method public static native gameOverDead()V
.end method

.method public static native getAreaName(I)[S
.end method

.method public static getCaptionName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 326
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getCharacterName()[S

    move-result-object v1

    .line 328
    .local v1, "shorts":[S
    if-eqz v1, :cond_0

    .line 329
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v4

    const-string v5, "UTF-16"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    .line 332
    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v2, v3

    .line 338
    goto :goto_0
.end method

.method public static getCaptionTxt(I)Ljava/lang/String;
    .locals 6
    .param p0, "_index"    # I

    .prologue
    const/4 v3, 0x0

    .line 310
    invoke-static {p0}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeScrTxt(I)[S

    move-result-object v1

    .line 312
    .local v1, "shorts":[S
    if-eqz v1, :cond_0

    .line 313
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v4

    const-string v5, "UTF-16"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    .line 316
    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v2, v3

    .line 322
    goto :goto_0
.end method

.method private static native getCharacterName()[S
.end method

.method public static native getColosseumInLimitLv()I
.end method

.method public static native getColosseumInMoney()I
.end method

.method public static native getColosseumNum()I
.end method

.method public static native getColosseumScore()I
.end method

.method public static native getCurrentSaveSlotIndex()I
.end method

.method public static native getEmptyInvenCount()I
.end method

.method public static native getGameSpeedLevel()I
.end method

.method public static getGameTipTxt()Ljava/lang/String;
    .locals 6

    .prologue
    .line 400
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGameTip()[S

    move-result-object v1

    .line 401
    .local v1, "shorts":[S
    const-string v2, ""

    .line 403
    .local v2, "txt":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v4

    const-string v5, "UTF-16"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "txt":Ljava/lang/String;
    .local v3, "txt":Ljava/lang/String;
    move-object v2, v3

    .line 408
    .end local v3    # "txt":Ljava/lang/String;
    .restart local v2    # "txt":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 404
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static native getHeroPosInArea()S
.end method

.method public static native getHeroPosInWorldMap()S
.end method

.method public static native getHeroScore()I
.end method

.method public static native getInvenCount()I
.end method

.method public static native getInvenItemNameColor(I)I
.end method

.method public static native getMainState()I
.end method

.method public static native getMaxGameSpeedLevel()I
.end method

.method public static native getQuestFlagPosInArea()S
.end method

.method public static native getQuestFlagPosInWorldMap()S
.end method

.method public static getQuestName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 376
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeQuestName()[S

    move-result-object v3

    .line 377
    .local v3, "shorts":[S
    const-string v1, ""

    .line 379
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v4

    const-string v5, "UTF-16"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    move-object v1, v2

    .line 384
    .end local v2    # "name":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 380
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getQuestTxt()Ljava/lang/String;
    .locals 6

    .prologue
    .line 388
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeQuestTxt()[S

    move-result-object v1

    .line 389
    .local v1, "shorts":[S
    const-string v2, ""

    .line 391
    .local v2, "txt":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v4

    const-string v5, "UTF-16"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "txt":Ljava/lang/String;
    .local v3, "txt":Ljava/lang/String;
    move-object v2, v3

    .line 396
    .end local v3    # "txt":Ljava/lang/String;
    .restart local v2    # "txt":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 392
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSaveSlotInfos()[Lch/kingdoms/ndk/data/SaveSlotInfo;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 280
    const/4 v1, 0x4

    new-array v0, v1, [Lch/kingdoms/ndk/data/SaveSlotInfo;

    .line 281
    .local v0, "ssis":[Lch/kingdoms/ndk/data/SaveSlotInfo;
    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetSaveSlotInfo(I)Lch/kingdoms/ndk/data/SaveSlotInfo;

    move-result-object v1

    aput-object v1, v0, v2

    .line 282
    invoke-static {v3}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetSaveSlotInfo(I)Lch/kingdoms/ndk/data/SaveSlotInfo;

    move-result-object v1

    aput-object v1, v0, v3

    .line 283
    invoke-static {v4}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetSaveSlotInfo(I)Lch/kingdoms/ndk/data/SaveSlotInfo;

    move-result-object v1

    aput-object v1, v0, v4

    .line 284
    invoke-static {v5}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetSaveSlotInfo(I)Lch/kingdoms/ndk/data/SaveSlotInfo;

    move-result-object v1

    aput-object v1, v0, v5

    .line 286
    return-object v0
.end method

.method public static native getScriptGetItemCnt()I
.end method

.method public static native getScriptGetItemNum()I
.end method

.method public static native getSkillSp(II)I
.end method

.method public static native getStoreInvenItemNameColor(I)I
.end method

.method public static native getSubAreaName(I)[S
.end method

.method public static native getTownPortalState()I
.end method

.method public static native getVibration()I
.end method

.method public static native getWarpGateNum()I
.end method

.method public static hideColosseumUi()V
    .locals 1

    .prologue
    .line 889
    const/4 v0, 0x4

    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->setColosseumVisibility(I)V

    .line 890
    return-void
.end method

.method public static hideRaceDirBtns()V
    .locals 2

    .prologue
    .line 1014
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->hideRaceBtnsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1015
    return-void
.end method

.method public static native identifyItem(II)Z
.end method

.method public static init(Lch/kingdoms/kor/KingdomsActivity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ChGLSurfaceView;Lch/kingdoms/android/ui/RealTimeUpdateUi;Lch/kingdoms/android/dpad/Dpad;Lch/kingdoms/android/ui/CaptionUi;Lch/android/api/ui/ChTypingAndScrollTextView;)V
    .locals 1
    .param p0, "_activity"    # Lch/kingdoms/kor/KingdomsActivity;
    .param p1, "di"    # Lch/android/api/util/DisplayInfo;
    .param p2, "_chGlSurfaceView"    # Lch/kingdoms/android/ChGLSurfaceView;
    .param p3, "_realTimeUpdateUi"    # Lch/kingdoms/android/ui/RealTimeUpdateUi;
    .param p4, "_dpad"    # Lch/kingdoms/android/dpad/Dpad;
    .param p5, "_captionUi"    # Lch/kingdoms/android/ui/CaptionUi;
    .param p6, "typingAndScrollTextView"    # Lch/android/api/ui/ChTypingAndScrollTextView;

    .prologue
    .line 268
    sput-object p0, Lch/kingdoms/ndk/NdkUiEventManager;->s_activity:Lch/kingdoms/kor/KingdomsActivity;

    .line 269
    sput-object p1, Lch/kingdoms/ndk/NdkUiEventManager;->s_di:Lch/android/api/util/DisplayInfo;

    .line 270
    sput-object p2, Lch/kingdoms/ndk/NdkUiEventManager;->s_surfaceView:Lch/kingdoms/android/ChGLSurfaceView;

    .line 271
    sput-object p3, Lch/kingdoms/ndk/NdkUiEventManager;->s_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    .line 272
    sput-object p4, Lch/kingdoms/ndk/NdkUiEventManager;->s_dpad:Lch/kingdoms/android/dpad/Dpad;

    .line 273
    const/4 v0, 0x1

    sput-boolean v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_isRun:Z

    .line 275
    sput-object p5, Lch/kingdoms/ndk/NdkUiEventManager;->s_captionUi:Lch/kingdoms/android/ui/CaptionUi;

    .line 276
    sput-object p6, Lch/kingdoms/ndk/NdkUiEventManager;->s_typingAndScrollTextView:Lch/android/api/ui/ChTypingAndScrollTextView;

    .line 277
    return-void
.end method

.method public static native initMonHp()V
.end method

.method public static native inputCancelable()Z
.end method

.method public static native isAutoRoutingOn()Z
.end method

.method public static native isBuyableBrandItem(II)Z
.end method

.method public static native isColosseumUsable(Z)I
.end method

.method public static native isDeletable(I)Z
.end method

.method public static native isExistAngryRing()Z
.end method

.method public static native isIdentityUsable()Z
.end method

.method public static native isItemExist(I)Z
.end method

.method public static native isMainQuest()Z
.end method

.method public static native isPurcahsableBag()Z
.end method

.method public static native isSaveAvailable()Z
.end method

.method public static native isSocketOpenable()Z
.end method

.method public static isSurfaceViewRun()Z
    .locals 1

    .prologue
    .line 290
    sget-boolean v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_isRun:Z

    return v0
.end method

.method public static native isWarpGateUsable(I)Z
.end method

.method public static loadPoint()I
    .locals 5

    .prologue
    .line 1489
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v2

    .line 1490
    .local v2, "dba":Lch/kingdoms/android/db/DBAdapter;
    const-string v4, "seedpoints"

    invoke-virtual {v2, v4}, Lch/kingdoms/android/db/DBAdapter;->getData(Ljava/lang/String;)[B

    move-result-object v1

    .line 1492
    .local v1, "bytes":[B
    if-nez v1, :cond_0

    .line 1493
    const/4 v3, 0x0

    .line 1499
    .local v3, "point":I
    :goto_0
    return v3

    .line 1495
    .end local v3    # "point":I
    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1496
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .restart local v3    # "point":I
    goto :goto_0
.end method

.method public static pauseGamePlay()V
    .locals 1

    .prologue
    .line 295
    sget-boolean v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_isRun:Z

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_surfaceView:Lch/kingdoms/android/ChGLSurfaceView;

    invoke-virtual {v0}, Lch/kingdoms/android/ChGLSurfaceView;->onPause()V

    .line 297
    const/4 v0, 0x0

    sput-boolean v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_isRun:Z

    .line 299
    :cond_0
    return-void
.end method

.method public static native playResultGameEffSound()V
.end method

.method public static native playTitleBgSound()V
.end method

.method private static popUpErrorInRegisterColosseumRank()V
    .locals 3

    .prologue
    .line 876
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_activity:Lch/kingdoms/kor/KingdomsActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/ndk/NdkUiEventManager$30;

    invoke-direct {v2}, Lch/kingdoms/ndk/NdkUiEventManager$30;-><init>()V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 886
    return-void
.end method

.method private static popUpRegisterId(Lch/android/api/ui/ChPopUpEditTextView;Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V
    .locals 9
    .param p0, "editTxtPopUp"    # Lch/android/api/ui/ChPopUpEditTextView;
    .param p1, "network"    # Lch/android/api/network/ChNetwork;
    .param p2, "packetFac"    # Lch/kingdoms/android/network/ChPacketFactory;
    .param p3, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 786
    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpEditTextView;->getEditText()Ljava/lang/String;

    move-result-object v3

    .line 787
    .local v3, "idStr":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 788
    :cond_0
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_activity:Lch/kingdoms/kor/KingdomsActivity;

    const/16 v1, 0xda

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/ndk/NdkUiEventManager$27;

    invoke-direct {v2}, Lch/kingdoms/ndk/NdkUiEventManager$27;-><init>()V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 873
    :goto_0
    return-void

    .line 799
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_2

    .line 800
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_activity:Lch/kingdoms/kor/KingdomsActivity;

    const/16 v1, 0xdd

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/ndk/NdkUiEventManager$28;

    invoke-direct {v2}, Lch/kingdoms/ndk/NdkUiEventManager$28;-><init>()V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0

    .line 812
    :cond_2
    const/4 v5, 0x0

    .line 814
    .local v5, "VERSION":I
    :try_start_0
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_activity:Lch/kingdoms/kor/KingdomsActivity;

    invoke-virtual {v0}, Lch/kingdoms/kor/KingdomsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->s_activity:Lch/kingdoms/kor/KingdomsActivity;

    invoke-virtual {v1}, Lch/kingdoms/kor/KingdomsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 815
    .local v7, "pInfo":Landroid/content/pm/PackageInfo;
    iget v5, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    .end local v7    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$29;

    invoke-direct {v1, p1, p2, p3}, Lch/kingdoms/ndk/NdkUiEventManager$29;-><init>(Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V

    .line 870
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object v0, p2

    move-object v2, p3

    .line 820
    invoke-virtual/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory;->createRegisterMember(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;

    move-result-object v8

    .line 871
    .local v8, "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    invoke-virtual {v8, p1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    goto :goto_0

    .line 816
    .end local v8    # "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    :catch_0
    move-exception v6

    .line 818
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private static popUpRegisterNewMember(Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 2
    .param p0, "network"    # Lch/android/api/network/ChNetwork;
    .param p1, "packetFac"    # Lch/kingdoms/android/network/ChPacketFactory;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "pd"    # Landroid/app/ProgressDialog;

    .prologue
    .line 756
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$26;

    invoke-direct {v1, p3, p0, p1, p2}, Lch/kingdoms/ndk/NdkUiEventManager$26;-><init>(Landroid/app/ProgressDialog;Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 783
    return-void
.end method

.method public static postUnSetGame()V
    .locals 2

    .prologue
    .line 1247
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 1248
    return-void
.end method

.method public static native purchaseBrandItem(I)Z
.end method

.method public static putString([S)V
    .locals 5
    .param p0, "text"    # [S

    .prologue
    .line 1405
    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->s_typingAndScrollTextView:Lch/android/api/ui/ChTypingAndScrollTextView;

    if-eqz v1, :cond_0

    .line 1407
    :try_start_0
    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->s_typingAndScrollTextView:Lch/android/api/ui/ChTypingAndScrollTextView;

    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v3

    const-string v4, "UTF-16"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChTypingAndScrollTextView;->putString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1408
    :catch_0
    move-exception v0

    .line 1410
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static raceCountUpdate(I)V
    .locals 2
    .param p0, "count"    # I

    .prologue
    .line 1289
    sput p0, Lch/kingdoms/ndk/NdkUiEventManager;->raceCountNum:I

    .line 1290
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_raceContView:Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;

    if-nez v0, :cond_0

    .line 1291
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$48;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$48;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1303
    :goto_0
    return-void

    .line 1301
    :cond_0
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->raceCountRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static registerRank(Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 8
    .param p0, "network"    # Lch/android/api/network/ChNetwork;
    .param p1, "packetFac"    # Lch/kingdoms/android/network/ChPacketFactory;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "pd"    # Landroid/app/ProgressDialog;

    .prologue
    .line 717
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v6

    .line 718
    .local v6, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$25;

    invoke-direct {v1, p3}, Lch/kingdoms/ndk/NdkUiEventManager$25;-><init>(Landroid/app/ProgressDialog;)V

    .line 749
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getColosseumNum()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-byte v3, v0

    invoke-virtual {v6}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    int-to-byte v4, v0

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getColosseumScore()I

    move-result v5

    move-object v0, p1

    move-object v2, p2

    .line 718
    invoke-virtual/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory;->createRegisterRank(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBI)Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;

    move-result-object v7

    .line 751
    .local v7, "registerRank":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    invoke-virtual {v7, p0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 753
    return-void
.end method

.method public static resumeGamePlay()V
    .locals 1

    .prologue
    .line 303
    sget-boolean v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_isRun:Z

    if-nez v0, :cond_0

    .line 304
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_surfaceView:Lch/kingdoms/android/ChGLSurfaceView;

    invoke-virtual {v0}, Lch/kingdoms/android/ChGLSurfaceView;->onResume()V

    .line 305
    const/4 v0, 0x1

    sput-boolean v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_isRun:Z

    .line 307
    :cond_0
    return-void
.end method

.method public static native reviveHero(Z)V
.end method

.method public static native saveGame()Z
.end method

.method public static native saveOptions()V
.end method

.method public static savePoint(I)V
    .locals 4
    .param p0, "point"    # I

    .prologue
    .line 1482
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v1

    .line 1483
    .local v1, "dba":Lch/kingdoms/android/db/DBAdapter;
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1484
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1485
    const-string v2, "seedpoints"

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/db/DBAdapter;->setData(Ljava/lang/String;[B)Z

    .line 1486
    return-void
.end method

.method public static native selectArea(I)I
.end method

.method public static native selectSubArea(I)I
.end method

.method public static native sellItem(II)Z
.end method

.method public static native setAutoRouting(Z)V
.end method

.method public static setBuff(IZ)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "isOn"    # Z

    .prologue
    .line 428
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    if-eqz v0, :cond_0

    .line 429
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    invoke-virtual {v0, p0, p1}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->setBuff(IZ)V

    .line 430
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->m_updateHeroHpSpTp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    :cond_0
    return-void
.end method

.method public static setBuffBlink(IZ)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "isOn"    # Z

    .prologue
    .line 435
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    if-eqz v0, :cond_0

    .line 436
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    invoke-virtual {v0, p0, p1}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->setBuffBlink(IZ)V

    .line 437
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->m_updateHeroHpSpTp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    :cond_0
    return-void
.end method

.method private static setColosseumVisibility(I)V
    .locals 2
    .param p0, "visible"    # I

    .prologue
    .line 897
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumView:Lch/android/api/ui/ChColosseumView;

    if-eqz v0, :cond_0

    .line 898
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$31;

    invoke-direct {v1, p0}, Lch/kingdoms/ndk/NdkUiEventManager$31;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 908
    :cond_0
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumResultView:Lch/android/api/ui/ChColosseumResultView;

    if-eqz v0, :cond_1

    .line 909
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$32;

    invoke-direct {v1, p0}, Lch/kingdoms/ndk/NdkUiEventManager$32;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 919
    :cond_1
    return-void
.end method

.method public static native setGameSpeedLevel(I)V
.end method

.method public static native setGameSpeedUp()V
.end method

.method public static native setGmaeSpeedDown()V
.end method

.method public static setHuntingViewVisibility(I)V
    .locals 2
    .param p0, "visibility"    # I

    .prologue
    .line 1091
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_huntingView:Lch/android/api/ui/ChHuntingView;

    if-eqz v0, :cond_0

    .line 1092
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$37;

    invoke-direct {v1, p0}, Lch/kingdoms/ndk/NdkUiEventManager$37;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1100
    :cond_0
    return-void
.end method

.method public static setMonster([SII)V
    .locals 5
    .param p0, "shorts"    # [S
    .param p1, "_level"    # I
    .param p2, "_maxHp"    # I

    .prologue
    .line 502
    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->s_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    if-eqz v1, :cond_0

    .line 504
    :try_start_0
    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->s_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v3

    const-string v4, "UTF-16"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2, p1, p2}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->setMonster(Ljava/lang/String;II)V

    .line 505
    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v2, Lch/kingdoms/ndk/NdkUiEventManager;->m_visibleMonsterHp:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setPrisonBreakTimeViewVisibility(I)V
    .locals 2
    .param p0, "visibility"    # I

    .prologue
    .line 1152
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_prisonBreakTimeView:Lch/android/api/ui/ChPrisonBreakTimeView;

    if-eqz v0, :cond_0

    .line 1153
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$40;

    invoke-direct {v1, p0}, Lch/kingdoms/ndk/NdkUiEventManager$40;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1161
    :cond_0
    return-void
.end method

.method public static setRaceResult(Z)V
    .locals 2
    .param p0, "isWin"    # Z

    .prologue
    .line 1322
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_raceResultView:Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;

    if-nez v0, :cond_0

    .line 1323
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$49;

    invoke-direct {v1, p0}, Lch/kingdoms/ndk/NdkUiEventManager$49;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1346
    :cond_0
    return-void
.end method

.method public static setScrollText()V
    .locals 2

    .prologue
    .line 1399
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_typingAndScrollTextView:Lch/android/api/ui/ChTypingAndScrollTextView;

    if-eqz v0, :cond_0

    .line 1400
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_typingAndScrollTextView:Lch/android/api/ui/ChTypingAndScrollTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTypingAndScrollTextView;->setTextType(Z)V

    .line 1402
    :cond_0
    return-void
.end method

.method public static native setSecondPlay()V
.end method

.method public static native setSoundOn(Z)V
.end method

.method public static native setToGamePlayFromBlacksmith()V
.end method

.method public static native setTownPortal()V
.end method

.method public static setTypingText()V
    .locals 2

    .prologue
    .line 1393
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_typingAndScrollTextView:Lch/android/api/ui/ChTypingAndScrollTextView;

    if-eqz v0, :cond_0

    .line 1394
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_typingAndScrollTextView:Lch/android/api/ui/ChTypingAndScrollTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTypingAndScrollTextView;->setTextType(Z)V

    .line 1396
    :cond_0
    return-void
.end method

.method public static native setVibration(I)V
.end method

.method public static showColosseumUi()V
    .locals 1

    .prologue
    .line 893
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->setColosseumVisibility(I)V

    .line 894
    return-void
.end method

.method public static showColosseumView()V
    .locals 2

    .prologue
    .line 555
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$16;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$16;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 566
    return-void
.end method

.method public static showDungeonReward(IIII)V
    .locals 6
    .param p0, "dungeonRewardNum"    # I
    .param p1, "itemNum"    # I
    .param p2, "cnt"    # I
    .param p3, "dungeonScore"    # I

    .prologue
    .line 1442
    new-instance v0, Lch/android/api/ui/ChDungeonResultView;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->s_activity:Lch/kingdoms/kor/KingdomsActivity;

    invoke-virtual {v1}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lch/kingdoms/ndk/NdkUiEventManager;->s_di:Lch/android/api/util/DisplayInfo;

    move v3, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lch/android/api/ui/ChDungeonResultView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;III)V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_dungeonResultView:Lch/android/api/ui/ChDungeonResultView;

    .line 1444
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$52;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$52;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1455
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$53;

    invoke-direct {v1, p3}, Lch/kingdoms/ndk/NdkUiEventManager$53;-><init>(I)V

    .line 1478
    const-wide/16 v2, 0x5dc

    .line 1455
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1479
    return-void
.end method

.method public static showGameTipPopUp()V
    .locals 2

    .prologue
    .line 1214
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$43;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$43;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1221
    return-void
.end method

.method public static showHuntingView()V
    .locals 4

    .prologue
    .line 1104
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_huntingView:Lch/android/api/ui/ChHuntingView;

    if-eqz v0, :cond_0

    .line 1105
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->closeHuntingView()V

    .line 1117
    :goto_0
    return-void

    .line 1107
    :cond_0
    new-instance v0, Lch/android/api/ui/ChHuntingView;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->s_activity:Lch/kingdoms/kor/KingdomsActivity;

    invoke-virtual {v1}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lch/kingdoms/ndk/NdkUiEventManager;->s_di:Lch/android/api/util/DisplayInfo;

    invoke-direct {v0, v1, v2}, Lch/android/api/ui/ChHuntingView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_huntingView:Lch/android/api/ui/ChHuntingView;

    .line 1108
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$38;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$38;-><init>()V

    .line 1115
    const-wide/16 v2, 0xbb8

    .line 1108
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static showNpcName(III)V
    .locals 3
    .param p0, "maxIndex"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1261
    invoke-static {p0}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeNpcName(I)[S

    move-result-object v0

    .line 1262
    .local v0, "strShorts":[S
    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/ndk/NdkUiEventManager$46;

    invoke-direct {v2, v0, p1, p2}, Lch/kingdoms/ndk/NdkUiEventManager$46;-><init>([SII)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1275
    return-void
.end method

.method public static showPrisonBreakTimeView()V
    .locals 3

    .prologue
    .line 1164
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_prisonBreakTimeView:Lch/android/api/ui/ChPrisonBreakTimeView;

    if-eqz v0, :cond_0

    .line 1165
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->closePrisonBreakTimeView()V

    .line 1178
    :goto_0
    return-void

    .line 1167
    :cond_0
    new-instance v0, Lch/android/api/ui/ChPrisonBreakTimeView;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->s_activity:Lch/kingdoms/kor/KingdomsActivity;

    invoke-virtual {v1}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lch/kingdoms/ndk/NdkUiEventManager;->s_di:Lch/android/api/util/DisplayInfo;

    invoke-direct {v0, v1, v2}, Lch/android/api/ui/ChPrisonBreakTimeView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_prisonBreakTimeView:Lch/android/api/ui/ChPrisonBreakTimeView;

    .line 1168
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$41;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$41;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static showRaceLeftBtn()V
    .locals 2

    .prologue
    .line 1010
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->showRaceLeftBtnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1011
    return-void
.end method

.method public static showRaceRightBtn()V
    .locals 2

    .prologue
    .line 1006
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->showRaceRightBtnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1007
    return-void
.end method

.method public static showRaceUi()V
    .locals 3

    .prologue
    .line 971
    new-instance v0, Lch/kingdoms/android/ui/RaceUi;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->s_activity:Lch/kingdoms/kor/KingdomsActivity;

    invoke-virtual {v1}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lch/kingdoms/ndk/NdkUiEventManager;->s_di:Lch/android/api/util/DisplayInfo;

    invoke-direct {v0, v1, v2}, Lch/kingdoms/android/ui/RaceUi;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_raceUi:Lch/kingdoms/android/ui/RaceUi;

    .line 973
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$33;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 982
    return-void
.end method

.method public static showStaffRollUi()V
    .locals 4

    .prologue
    .line 1051
    new-instance v0, Lch/android/api/ui/ChStaffRollView;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->s_activity:Lch/kingdoms/kor/KingdomsActivity;

    invoke-virtual {v1}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lch/kingdoms/ndk/NdkUiEventManager;->s_di:Lch/android/api/util/DisplayInfo;

    const/16 v3, 0x320

    invoke-direct {v0, v1, v2, v3}, Lch/android/api/ui/ChStaffRollView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;I)V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_staffRollUi:Lch/android/api/ui/ChStaffRollView;

    .line 1052
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$35;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$35;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1059
    return-void
.end method

.method public static skipTypingAndScrollText()V
    .locals 2

    .prologue
    .line 1429
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$51;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$51;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1439
    return-void
.end method

.method public static startBuff(I)V
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 412
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lch/kingdoms/ndk/NdkUiEventManager;->setBuff(IZ)V

    .line 413
    return-void
.end method

.method public static startBuffBlink(I)V
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 420
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lch/kingdoms/ndk/NdkUiEventManager;->setBuffBlink(IZ)V

    .line 421
    return-void
.end method

.method public static native startLoadGame(I)V
.end method

.method public static native startNewGame(I)V
.end method

.method public static startTypingAndScrollText()V
    .locals 2

    .prologue
    .line 1416
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$50;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$50;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1426
    return-void
.end method

.method public static native townScroll()V
.end method

.method public static native unSet_Game()V
.end method

.method public static updateColosseumFightScoreFrm(III)V
    .locals 2
    .param p0, "frm"    # I
    .param p1, "lvBonus"    # I
    .param p2, "score"    # I

    .prologue
    .line 936
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumResultView:Lch/android/api/ui/ChColosseumResultView;

    if-eqz v0, :cond_0

    .line 937
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumResultView:Lch/android/api/ui/ChColosseumResultView;

    invoke-virtual {v0, p0, p1, p2}, Lch/android/api/ui/ChColosseumResultView;->updateFightingScoreFrm(III)V

    .line 938
    sput p2, Lch/kingdoms/ndk/NdkUiEventManager;->s_score:I

    .line 939
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->invalidateColosseumResultView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 941
    :cond_0
    return-void
.end method

.method public static updateColosseumFightWaitFrm(II)V
    .locals 2
    .param p0, "stageNum"    # I
    .param p1, "fightWiatFrm"    # I

    .prologue
    .line 922
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumView:Lch/android/api/ui/ChColosseumView;

    if-eqz v0, :cond_0

    .line 923
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumView:Lch/android/api/ui/ChColosseumView;

    invoke-virtual {v0, p0, p1}, Lch/android/api/ui/ChColosseumView;->updateFightingWaitFrm(II)V

    .line 924
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->invalidateColosseumView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 926
    :cond_0
    return-void
.end method

.method public static updateColosseumScore(III)V
    .locals 2
    .param p0, "rewardExp"    # I
    .param p1, "invenNum"    # I
    .param p2, "rewardFence"    # I

    .prologue
    .line 944
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumResultView:Lch/android/api/ui/ChColosseumResultView;

    if-eqz v0, :cond_0

    .line 945
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumResultView:Lch/android/api/ui/ChColosseumResultView;

    invoke-virtual {v0, p0, p1, p2}, Lch/android/api/ui/ChColosseumResultView;->updateScore(III)V

    .line 946
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->invalidateColosseumResultView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 948
    :cond_0
    return-void
.end method

.method public static updateColosseumState(I)V
    .locals 4
    .param p0, "state"    # I

    .prologue
    .line 582
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumView:Lch/android/api/ui/ChColosseumView;

    if-eqz v0, :cond_0

    .line 583
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumView:Lch/android/api/ui/ChColosseumView;

    invoke-virtual {v0, p0}, Lch/android/api/ui/ChColosseumView;->update(I)V

    .line 584
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->invalidateColosseumView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 586
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 714
    :cond_1
    :goto_0
    return-void

    .line 588
    :pswitch_0
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$18;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$18;-><init>()V

    .line 597
    const-wide/16 v2, 0x1388

    .line 588
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 600
    :pswitch_1
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumResultView:Lch/android/api/ui/ChColosseumResultView;

    if-eqz v0, :cond_2

    .line 601
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$19;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$19;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 611
    :cond_2
    new-instance v0, Lch/android/api/ui/ChColosseumResultView;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->s_activity:Lch/kingdoms/kor/KingdomsActivity;

    invoke-virtual {v1}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lch/kingdoms/ndk/NdkUiEventManager;->s_di:Lch/android/api/util/DisplayInfo;

    invoke-direct {v0, v1, v2}, Lch/android/api/ui/ChColosseumResultView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumResultView:Lch/android/api/ui/ChColosseumResultView;

    goto :goto_0

    .line 614
    :pswitch_2
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumResultView:Lch/android/api/ui/ChColosseumResultView;

    if-eqz v0, :cond_1

    .line 615
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$20;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$20;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 661
    :pswitch_3
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumResultView:Lch/android/api/ui/ChColosseumResultView;

    if-eqz v0, :cond_3

    .line 663
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$21;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$21;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 673
    :cond_3
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$22;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$22;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 694
    :pswitch_4
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumResultView:Lch/android/api/ui/ChColosseumResultView;

    if-eqz v0, :cond_4

    .line 696
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$23;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$23;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 705
    :cond_4
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$24;

    invoke-direct {v1}, Lch/kingdoms/ndk/NdkUiEventManager$24;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 586
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static updateColosseumTimeAndScore(II)V
    .locals 2
    .param p0, "time"    # I
    .param p1, "score"    # I

    .prologue
    .line 929
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumView:Lch/android/api/ui/ChColosseumView;

    if-eqz v0, :cond_0

    .line 930
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_colosseumView:Lch/android/api/ui/ChColosseumView;

    invoke-virtual {v0, p0, p1}, Lch/android/api/ui/ChColosseumView;->update(II)V

    .line 931
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->invalidateColosseumView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 933
    :cond_0
    return-void
.end method

.method public static updateHeroExp(II)V
    .locals 2
    .param p0, "_maxExp"    # I
    .param p1, "_exp"    # I

    .prologue
    .line 475
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    if-eqz v0, :cond_0

    .line 476
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    invoke-virtual {v0, p0, p1}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->updateHeroExp(II)V

    .line 477
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->m_updateExp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 479
    :cond_0
    return-void
.end method

.method public static updateHeroHpSpTp(IIIII)V
    .locals 6
    .param p0, "_hp"    # I
    .param p1, "perHp"    # I
    .param p2, "_sp"    # I
    .param p3, "perSp"    # I
    .param p4, "_tp"    # I

    .prologue
    .line 463
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    if-eqz v0, :cond_0

    .line 464
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->updateHeroHpSpTp(IIIII)V

    .line 465
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->m_updateHeroHpSpTp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 467
    :cond_0
    return-void
.end method

.method public static updateHeroMaxHpSpTp(IIII)V
    .locals 2
    .param p0, "_lv"    # I
    .param p1, "_hp"    # I
    .param p2, "_sp"    # I
    .param p3, "_tp"    # I

    .prologue
    .line 449
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    if-eqz v0, :cond_0

    .line 450
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    invoke-virtual {v0, p0, p1, p2, p3}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->updateHeroMaxHpSpTp(IIII)V

    .line 451
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->m_updateHeroHpSpTp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 454
    :cond_0
    return-void
.end method

.method public static updateHuntingView(III)V
    .locals 2
    .param p0, "heroCnt"    # I
    .param p1, "cramerCnt"    # I
    .param p2, "totalCnt"    # I

    .prologue
    .line 1135
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_huntingView:Lch/android/api/ui/ChHuntingView;

    if-eqz v0, :cond_0

    .line 1136
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_huntingView:Lch/android/api/ui/ChHuntingView;

    invoke-virtual {v0, p0, p1, p2}, Lch/android/api/ui/ChHuntingView;->updateCnt(III)V

    .line 1137
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->invalidateHuntingViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1139
    :cond_0
    return-void
.end method

.method public static updateMonsterHp(I)V
    .locals 4
    .param p0, "_hp"    # I

    .prologue
    .line 486
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    if-eqz v0, :cond_0

    .line 487
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    invoke-virtual {v0, p0}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->updateMonsterHp(I)V

    .line 488
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->m_updateMonsterHp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 489
    if-nez p0, :cond_0

    .line 490
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->m_invisibleMonsterHp:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 493
    :cond_0
    return-void
.end method

.method public static updatePrisionBreakTime(II)V
    .locals 2
    .param p0, "time"    # I
    .param p1, "maxTime"    # I

    .prologue
    .line 1195
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_prisonBreakTimeView:Lch/android/api/ui/ChPrisonBreakTimeView;

    if-nez v0, :cond_0

    .line 1196
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->showPrisonBreakTimeView()V

    .line 1201
    :goto_0
    return-void

    .line 1198
    :cond_0
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_prisonBreakTimeView:Lch/android/api/ui/ChPrisonBreakTimeView;

    invoke-virtual {v0, p0, p1}, Lch/android/api/ui/ChPrisonBreakTimeView;->updateTime(II)V

    .line 1199
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->invalidatePrisionBreakTimeViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static updateQuickSlotCoolTime(III)V
    .locals 1
    .param p0, "index"    # I
    .param p1, "maxCoolTime"    # I
    .param p2, "coolTime"    # I

    .prologue
    .line 1234
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_dpad:Lch/kingdoms/android/dpad/Dpad;

    invoke-virtual {v0, p0, p1, p2}, Lch/kingdoms/android/dpad/Dpad;->updateQuickSlotCoolTime(III)V

    .line 1235
    return-void
.end method

.method public static updateQuickSlotItem(Ljava/lang/String;I)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "cnt"    # I

    .prologue
    .line 1243
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_dpad:Lch/kingdoms/android/dpad/Dpad;

    invoke-virtual {v0, p0, p1}, Lch/kingdoms/android/dpad/Dpad;->updateQuickSlotItem(Ljava/lang/String;I)V

    .line 1244
    return-void
.end method

.method public static updateQuickSlotItems()V
    .locals 1

    .prologue
    .line 1239
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_dpad:Lch/kingdoms/android/dpad/Dpad;

    invoke-virtual {v0}, Lch/kingdoms/android/dpad/Dpad;->updateQuickSlotItems()V

    .line 1240
    return-void
.end method

.method public static updateSpeed(I)V
    .locals 2
    .param p0, "speed"    # I

    .prologue
    .line 1001
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_raceUi:Lch/kingdoms/android/ui/RaceUi;

    invoke-virtual {v0, p0}, Lch/kingdoms/android/ui/RaceUi;->updateSpeed(I)V

    .line 1002
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->invalidateRaceUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1003
    return-void
.end method

.method public static updateStaffRollUi()V
    .locals 2

    .prologue
    .line 1077
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_handler:Landroid/os/Handler;

    sget-object v1, Lch/kingdoms/ndk/NdkUiEventManager;->invalidateStaffRollUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1078
    return-void
.end method

.method public static native useCallWhale()Z
.end method

.method public static native useGambleRing(I)Z
.end method

.method public static native useSaveItem(I)Z
.end method

.method public static native useSetGamble(I)Z
.end method

.method public static native useSetGambleAll(I)Z
.end method

.method public static native useSocketOpen(I)Z
.end method

.method public static native useSocketReset(I)Z
.end method

.method public static native useWarpGate(I)V
.end method
