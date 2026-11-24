.class public Lch/kingdoms/kor/KingdomsActivity;
.super Landroid/app/Activity;
.source "KingdomsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final APP_ID:Ljava/lang/String; = "4454"

.field private static final SECURITY_TOKEN:Ljava/lang/String; = "seed120321"

.field private static final basicMhas:[Ljava/lang/String;

.field private static isFirst:Z

.field public static m_MainState:I


# instance fields
.field private D_PAD_ON:Z

.field private final IS_DEBUG:Z

.field private finishDialog:Landroid/app/AlertDialog$Builder;

.field private gamePlayMessageLayout:Landroid/view/View;

.field private isLogo:Z

.field private isShowFinishDialog:Z

.field private line1Number:Ljava/lang/String;

.field private m_captionUi:Lch/kingdoms/android/ui/CaptionUi;

.field private m_di:Lch/android/api/util/DisplayInfo;

.field private m_dpad:Lch/kingdoms/android/dpad/Dpad;

.field private m_gameMenuUi:Lch/kingdoms/android/ui/GameMenuUi;

.field private m_glSurfaceView:Lch/kingdoms/android/ChGLSurfaceView;

.field private m_handler:Landroid/os/Handler;

.field private m_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

.field private m_scriptMainState:I

.field private m_scriptSubState:I

.field private m_typingAndScrollTextView:Lch/android/api/ui/ChTypingAndScrollTextView;

.field private m_uiLayout:Lch/android/api/ui/ChRelativeLayout;

.field private mainMenuUi:Lch/kingdoms/android/ui/MainMenuUi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 94
    const-string v0, "ndk_kingdoms"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 120
    sput-boolean v3, Lch/kingdoms/kor/KingdomsActivity;->isFirst:Z

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.cih.gamecih2"

    aput-object v2, v0, v1

    const-string v1, "cn.luomao.gamekiller"

    aput-object v1, v0, v3

    sput-object v0, Lch/kingdoms/kor/KingdomsActivity;->basicMhas:[Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 113
    iput-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity;->D_PAD_ON:Z

    .line 122
    iput-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity;->isShowFinishDialog:Z

    .line 145
    iput-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity;->IS_DEBUG:Z

    .line 91
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/kor/KingdomsActivity;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_di:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/kor/KingdomsActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ChGLSurfaceView;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_glSurfaceView:Lch/kingdoms/android/ChGLSurfaceView;

    return-object v0
.end method

.method static synthetic access$11()V
    .locals 0

    .prologue
    .line 99
    invoke-static {}, Lch/kingdoms/kor/KingdomsActivity;->onResumeKingdoms()V

    return-void
.end method

.method static synthetic access$12(Lch/kingdoms/kor/KingdomsActivity;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity;->finishDialog:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method static synthetic access$2(Lch/kingdoms/kor/KingdomsActivity;)Lch/android/api/ui/ChTypingAndScrollTextView;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_typingAndScrollTextView:Lch/android/api/ui/ChTypingAndScrollTextView;

    return-object v0
.end method

.method static synthetic access$3(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ui/GameMenuUi;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_gameMenuUi:Lch/kingdoms/android/ui/GameMenuUi;

    return-object v0
.end method

.method static synthetic access$4(Lch/kingdoms/kor/KingdomsActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->gamePlayMessageLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ui/MainMenuUi;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->mainMenuUi:Lch/kingdoms/android/ui/MainMenuUi;

    return-object v0
.end method

.method static synthetic access$6(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ui/CaptionUi;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_captionUi:Lch/kingdoms/android/ui/CaptionUi;

    return-object v0
.end method

.method static synthetic access$7(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/dpad/Dpad;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_dpad:Lch/kingdoms/android/dpad/Dpad;

    return-object v0
.end method

.method static synthetic access$8(Lch/kingdoms/kor/KingdomsActivity;Z)V
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lch/kingdoms/kor/KingdomsActivity;->D_PAD_ON:Z

    return-void
.end method

.method static synthetic access$9(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ui/RealTimeUpdateUi;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    return-object v0
.end method

.method private static native getBustNum()I
.end method

.method private static native getNextScrTxt()I
.end method

.method private static native getScrTxtTargetState()I
.end method

.method private static native getcScrTxtNum()I
.end method

.method private static native isCharacterLeft()Z
.end method

.method private static native onDestroyKingdoms()V
.end method

.method private static native onPauseKingdoms()V
.end method

.method private static native onResumeKingdoms()V
.end method

.method private static native setScriptState(II)V
.end method

.method private showConfirmDialog()V
    .locals 0

    .prologue
    .line 202
    invoke-virtual {p0}, Lch/kingdoms/kor/KingdomsActivity;->initGame()V

    .line 204
    return-void
.end method

.method private showDpad()V
    .locals 2

    .prologue
    .line 833
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/kor/KingdomsActivity$26;

    invoke-direct {v1, p0}, Lch/kingdoms/kor/KingdomsActivity$26;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 848
    return-void
.end method

.method private showFinishDialog()V
    .locals 3

    .prologue
    .line 1227
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_glSurfaceView:Lch/kingdoms/android/ChGLSurfaceView;

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_glSurfaceView:Lch/kingdoms/android/ChGLSurfaceView;

    invoke-virtual {v0}, Lch/kingdoms/android/ChGLSurfaceView;->onPause()V

    .line 1230
    :cond_0
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_dpad:Lch/kingdoms/android/dpad/Dpad;

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_dpad:Lch/kingdoms/android/dpad/Dpad;

    invoke-virtual {v0}, Lch/kingdoms/android/dpad/Dpad;->allBtnUp()V

    .line 1233
    :cond_1
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->finishDialog:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_2

    .line 1235
    invoke-static {}, Lch/kingdoms/kor/KingdomsActivity;->onPauseKingdoms()V

    .line 1236
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->finishDialog:Landroid/app/AlertDialog$Builder;

    .line 1237
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->finishDialog:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1238
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->finishDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f05002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1239
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->finishDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f05002f

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$40;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$40;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1245
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->finishDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f050030

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$41;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$41;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1256
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->finishDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1258
    :cond_2
    return-void
.end method

.method private showUi()V
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/kor/KingdomsActivity$27;

    invoke-direct {v1, p0}, Lch/kingdoms/kor/KingdomsActivity$27;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 864
    return-void
.end method

.method private static native startKingdoms(Lch/kingdoms/kor/KingdomsActivity;)V
.end method


# virtual methods
.method public checkHacks([Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-static {p1}, Lch/android/api/util/InstalledAppChecker;->isExistAtLeastOne([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lch/android/api/util/InstalledAppChecker;->toStringIntalledApps()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p1}, Lch/android/api/util/InstalledAppChecker;->toStringExistedPackageNames([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 269
    const v2, 0x7f05009e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 270
    const v2, 0x7f05009f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 271
    const v2, 0x7f05002f

    new-instance v3, Lch/kingdoms/kor/KingdomsActivity$3;

    invoke-direct {v3, p0}, Lch/kingdoms/kor/KingdomsActivity$3;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$4;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$4;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 284
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 287
    .end local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hideDpad()V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/kor/KingdomsActivity$25;

    invoke-direct {v1, p0}, Lch/kingdoms/kor/KingdomsActivity$25;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 830
    return-void
.end method

.method public hideUi()V
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/kor/KingdomsActivity$28;

    invoke-direct {v1, p0}, Lch/kingdoms/kor/KingdomsActivity$28;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 880
    return-void
.end method

.method public initGame()V
    .locals 10

    .prologue
    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity;->D_PAD_ON:Z

    .line 293
    invoke-virtual {p0}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 294
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lch/kingdoms/kor/KingdomsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 295
    .local v5, "res":Landroid/content/res/Resources;
    const v0, 0x7f050044

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f050045

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v4

    .line 296
    .local v4, "pd":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/db/DBAdapter;->getInstance(Landroid/content/Context;)Lch/kingdoms/android/db/DBAdapter;

    move-result-object v3

    .line 298
    .local v3, "dba":Lch/kingdoms/android/db/DBAdapter;
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lch/kingdoms/kor/KingdomsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 299
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_1

    .line 300
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->line1Number:Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->line1Number:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 302
    const-string v0, "unavailable"

    iput-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->line1Number:Ljava/lang/String;

    .line 308
    :cond_0
    :goto_0
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->line1Number:Ljava/lang/String;

    invoke-static {p0, v0, v3, v1}, Lch/android/lib/sponsorpay/ChSponsorPay;->init(Landroid/app/Activity;Landroid/os/Handler;Lch/kingdoms/android/db/DBAdapter;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->line1Number:Ljava/lang/String;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v8, Lch/android/lib/iab/ChInAppBilling;

    iget-object v9, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    invoke-direct {v8, p0, v9}, Lch/android/lib/iab/ChInAppBilling;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    invoke-static {p0, v0, v1, v3, v8}, Lch/android/api/iap/ChAndroidIab;->init(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;Lch/kingdoms/android/db/DBAdapter;Lch/android/lib/iab/ChInAppBilling;)V

    .line 310
    invoke-static {p0}, Lch/kingdoms/android/ui/BrandShopUi;->init(Landroid/app/Activity;)V

    .line 311
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lch/kingdoms/kor/KingdomsActivity$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lch/kingdoms/kor/KingdomsActivity$5;-><init>(Lch/kingdoms/kor/KingdomsActivity;Landroid/content/Context;Lch/kingdoms/android/db/DBAdapter;Landroid/app/ProgressDialog;Landroid/content/res/Resources;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 329
    .local v6, "initThread":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 330
    return-void

    .line 305
    .end local v6    # "initThread":Ljava/lang/Thread;
    :cond_1
    const-string v0, "TM unavailable"

    iput-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->line1Number:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1289
    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    .line 1290
    invoke-static {}, Lch/android/lib/sponsorpay/ChSponsorPay;->requestSponsorPayPoints()V

    .line 1291
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/kor/KingdomsActivity$42;

    invoke-direct {v1, p0}, Lch/kingdoms/kor/KingdomsActivity$42;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    .line 1297
    const-wide/32 v2, 0x2bf20

    .line 1291
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1299
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1124
    invoke-static {}, Lch/kingdoms/ndk/NdkSoundManager;->onPause()V

    .line 1125
    invoke-direct {p0}, Lch/kingdoms/kor/KingdomsActivity;->showFinishDialog()V

    .line 1126
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1263
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_glSurfaceView:Lch/kingdoms/android/ChGLSurfaceView;

    if-eqz v0, :cond_0

    .line 1264
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->isSurfaceViewRun()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1265
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->pauseGamePlay()V

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1268
    :cond_1
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->resumeGamePlay()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 154
    invoke-static {p0}, Lch/android/api/util/InstalledAppChecker;->init(Landroid/app/Activity;)V

    .line 155
    invoke-virtual {p0}, Lch/kingdoms/kor/KingdomsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-static {v4}, Lch/android/api/util/DisplayInfo;->getInstance(Landroid/view/WindowManager;)Lch/android/api/util/DisplayInfo;

    move-result-object v4

    iput-object v4, p0, Lch/kingdoms/kor/KingdomsActivity;->m_di:Lch/android/api/util/DisplayInfo;

    .line 156
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    .line 157
    invoke-static {}, Lch/kingdoms/ndk/NdkLocale;->init()V

    .line 159
    invoke-virtual {p0}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lch/kingdoms/android/db/DBAdapter;->getInstance(Landroid/content/Context;)Lch/kingdoms/android/db/DBAdapter;

    move-result-object v1

    .line 162
    .local v1, "dba":Lch/kingdoms/android/db/DBAdapter;
    const-string v4, "memoryhackapps"

    invoke-virtual {v1, v4}, Lch/kingdoms/android/db/DBAdapter;->getData(Ljava/lang/String;)[B

    move-result-object v0

    .line 163
    .local v0, "dataBytes":[B
    const/4 v3, 0x0

    .line 164
    .local v3, "mhas":Lch/lib/gsonobjects/MemoryHackApplications;
    if-eqz v0, :cond_0

    .line 165
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 166
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    const-class v5, Lch/lib/gsonobjects/MemoryHackApplications;

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mhas":Lch/lib/gsonobjects/MemoryHackApplications;
    check-cast v3, Lch/lib/gsonobjects/MemoryHackApplications;

    .line 169
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v3    # "mhas":Lch/lib/gsonobjects/MemoryHackApplications;
    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lch/lib/gsonobjects/MemoryHackApplications;->getPackageNames()[Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {p0, v4}, Lch/kingdoms/kor/KingdomsActivity;->checkHacks([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    const/4 v4, 0x0

    iput-boolean v4, p0, Lch/kingdoms/kor/KingdomsActivity;->isLogo:Z

    .line 172
    invoke-direct {p0}, Lch/kingdoms/kor/KingdomsActivity;->showConfirmDialog()V

    .line 175
    :cond_1
    invoke-virtual {p0}, Lch/kingdoms/kor/KingdomsActivity;->updateHackApps()V

    .line 176
    return-void

    .line 169
    :cond_2
    sget-object v4, Lch/kingdoms/kor/KingdomsActivity;->basicMhas:[Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 1217
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1218
    sget-boolean v1, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1219
    const-string v1, "KD"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_0
    invoke-static {}, Lch/kingdoms/kor/KingdomsActivity;->onDestroyKingdoms()V

    .line 1222
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lch/kingdoms/kor/KingdomsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1223
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {p0}, Lch/kingdoms/kor/KingdomsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 1224
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1131
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1132
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1133
    const-string v0, "KD"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_0
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_dpad:Lch/kingdoms/android/dpad/Dpad;

    if-eqz v0, :cond_1

    .line 1139
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_dpad:Lch/kingdoms/android/dpad/Dpad;

    invoke-virtual {v0}, Lch/kingdoms/android/dpad/Dpad;->allBtnUp()V

    .line 1142
    :cond_1
    invoke-static {}, Lch/kingdoms/ndk/NdkSoundManager;->onPause()V

    .line 1143
    sget v0, Lch/kingdoms/kor/KingdomsActivity;->m_MainState:I

    if-eq v0, v2, :cond_4

    sget v0, Lch/kingdoms/kor/KingdomsActivity;->m_MainState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 1144
    sget v0, Lch/kingdoms/kor/KingdomsActivity;->m_MainState:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    sget v0, Lch/kingdoms/kor/KingdomsActivity;->m_MainState:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    .line 1145
    sget v0, Lch/kingdoms/kor/KingdomsActivity;->m_MainState:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    sget v0, Lch/kingdoms/kor/KingdomsActivity;->m_MainState:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_4

    .line 1146
    iput-boolean v2, p0, Lch/kingdoms/kor/KingdomsActivity;->isShowFinishDialog:Z

    .line 1148
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_glSurfaceView:Lch/kingdoms/android/ChGLSurfaceView;

    if-eqz v0, :cond_2

    .line 1149
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_glSurfaceView:Lch/kingdoms/android/ChGLSurfaceView;

    invoke-virtual {v0}, Lch/kingdoms/android/ChGLSurfaceView;->onPause()V

    .line 1151
    :cond_2
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_dpad:Lch/kingdoms/android/dpad/Dpad;

    if-eqz v0, :cond_3

    .line 1152
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_dpad:Lch/kingdoms/android/dpad/Dpad;

    invoke-virtual {v0}, Lch/kingdoms/android/dpad/Dpad;->allBtnUp()V

    .line 1157
    :cond_3
    :goto_0
    return-void

    .line 1155
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->finishDialog:Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1082
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1084
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 1162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1163
    invoke-virtual {p0}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lch/kingdoms/android/db/DBAdapter;->getInstance(Landroid/content/Context;)Lch/kingdoms/android/db/DBAdapter;

    move-result-object v1

    .line 1164
    .local v1, "dba":Lch/kingdoms/android/db/DBAdapter;
    const-string v4, "memoryhackapps"

    invoke-virtual {v1, v4}, Lch/kingdoms/android/db/DBAdapter;->getData(Ljava/lang/String;)[B

    move-result-object v0

    .line 1166
    .local v0, "data":[B
    if-nez v0, :cond_3

    .line 1167
    sget-object v3, Lch/kingdoms/kor/KingdomsActivity;->basicMhas:[Ljava/lang/String;

    .line 1177
    .local v3, "packageNames":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v3}, Lch/kingdoms/kor/KingdomsActivity;->checkHacks([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1178
    sget-boolean v4, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1179
    const-string v4, "KD"

    const-string v5, "onResume"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_0
    iget-boolean v4, p0, Lch/kingdoms/kor/KingdomsActivity;->isLogo:Z

    if-eqz v4, :cond_1

    .line 1187
    const/4 v4, 0x0

    iput-boolean v4, p0, Lch/kingdoms/kor/KingdomsActivity;->isLogo:Z

    .line 1190
    :cond_1
    iget-boolean v4, p0, Lch/kingdoms/kor/KingdomsActivity;->isShowFinishDialog:Z

    if-eqz v4, :cond_5

    .line 1191
    invoke-direct {p0}, Lch/kingdoms/kor/KingdomsActivity;->showFinishDialog()V

    .line 1196
    :cond_2
    :goto_1
    return-void

    .line 1169
    .end local v3    # "packageNames":[Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    const-class v6, Lch/lib/gsonobjects/MemoryHackApplications;

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/lib/gsonobjects/MemoryHackApplications;

    .line 1170
    .local v2, "mhas":Lch/lib/gsonobjects/MemoryHackApplications;
    if-eqz v2, :cond_4

    .line 1171
    invoke-virtual {v2}, Lch/lib/gsonobjects/MemoryHackApplications;->getPackageNames()[Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "packageNames":[Ljava/lang/String;
    goto :goto_0

    .line 1173
    .end local v3    # "packageNames":[Ljava/lang/String;
    :cond_4
    sget-object v3, Lch/kingdoms/kor/KingdomsActivity;->basicMhas:[Ljava/lang/String;

    .restart local v3    # "packageNames":[Ljava/lang/String;
    goto :goto_0

    .line 1193
    .end local v2    # "mhas":Lch/lib/gsonobjects/MemoryHackApplications;
    :cond_5
    invoke-static {}, Lch/kingdoms/ndk/NdkSoundManager;->onResume()V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1089
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1090
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 1201
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1202
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1203
    const-string v0, "KD"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1209
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1210
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1211
    const-string v0, "KD"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1098
    iget-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity;->D_PAD_ON:Z

    if-eqz v0, :cond_1

    sget v0, Lch/kingdoms/kor/KingdomsActivity;->m_MainState:I

    if-eq v0, v2, :cond_1

    .line 1099
    sget v0, Lch/kingdoms/kor/KingdomsActivity;->m_MainState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1100
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_dpad:Lch/kingdoms/android/dpad/Dpad;

    invoke-virtual {v0, p1}, Lch/kingdoms/android/dpad/Dpad;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1117
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1101
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1102
    sget v0, Lch/kingdoms/kor/KingdomsActivity;->m_MainState:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 1103
    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    .line 1104
    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    .line 1105
    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 1106
    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptSubState:I

    if-eq v0, v2, :cond_2

    .line 1107
    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptSubState:I

    if-nez v0, :cond_0

    .line 1109
    :cond_2
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1110
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputOk()V

    goto :goto_0
.end method

.method public setMainState(I)V
    .locals 7
    .param p1, "_state"    # I

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 401
    sget-boolean v1, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 402
    const-string v1, "KD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "State : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    sget v0, Lch/kingdoms/kor/KingdomsActivity;->m_MainState:I

    .line 405
    .local v0, "preMainState":I
    sput p1, Lch/kingdoms/kor/KingdomsActivity;->m_MainState:I

    .line 406
    packed-switch p1, :pswitch_data_0

    .line 771
    :pswitch_0
    invoke-static {v4}, Lch/kingdoms/ndk/NdkUiEventManager;->setHuntingViewVisibility(I)V

    .line 772
    invoke-static {v4}, Lch/kingdoms/ndk/NdkUiEventManager;->setPrisonBreakTimeViewVisibility(I)V

    .line 773
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_gameMenuUi:Lch/kingdoms/android/ui/GameMenuUi;

    sget v2, Lch/kingdoms/kor/KingdomsActivity;->m_MainState:I

    invoke-virtual {v1, v2}, Lch/kingdoms/android/ui/GameMenuUi;->setMainState(I)V

    .line 774
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$23;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$23;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 790
    invoke-direct {p0}, Lch/kingdoms/kor/KingdomsActivity;->showUi()V

    .line 791
    invoke-direct {p0}, Lch/kingdoms/kor/KingdomsActivity;->showDpad()V

    .line 792
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_captionUi:Lch/kingdoms/android/ui/CaptionUi;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/CaptionUi;->closeCaption()V

    .line 793
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_captionUi:Lch/kingdoms/android/ui/CaptionUi;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/CaptionUi;->visibleNpcName()V

    .line 797
    :goto_0
    :pswitch_1
    const/16 v1, 0x14

    if-eq p1, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    .line 799
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$24;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$24;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 808
    :cond_1
    if-eq p1, v6, :cond_2

    const/16 v1, 0x19

    if-eq p1, v1, :cond_2

    const/16 v1, 0x29

    if-eq p1, v1, :cond_2

    .line 809
    invoke-virtual {p0}, Lch/kingdoms/kor/KingdomsActivity;->hideUi()V

    .line 810
    invoke-virtual {p0}, Lch/kingdoms/kor/KingdomsActivity;->hideDpad()V

    .line 812
    :cond_2
    if-eq p1, v6, :cond_3

    .line 814
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_captionUi:Lch/kingdoms/android/ui/CaptionUi;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/CaptionUi;->invisibleNpcName()V

    .line 816
    :cond_3
    return-void

    .line 422
    :pswitch_2
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$7;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$7;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 439
    :pswitch_3
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$8;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$8;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 447
    :pswitch_4
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$9;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$9;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 455
    :pswitch_5
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$10;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$10;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 463
    :pswitch_6
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->hideColosseumUi()V

    .line 464
    invoke-static {v5}, Lch/kingdoms/ndk/NdkUiEventManager;->setHuntingViewVisibility(I)V

    .line 465
    invoke-static {v5}, Lch/kingdoms/ndk/NdkUiEventManager;->setPrisonBreakTimeViewVisibility(I)V

    .line 466
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$11;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$11;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 476
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 479
    :pswitch_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/kingdoms/kor/KingdomsActivity;->isLogo:Z

    goto :goto_0

    .line 491
    :pswitch_8
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$12;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$12;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 500
    :pswitch_9
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$13;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$13;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 512
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0

    .line 515
    :pswitch_a
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v1

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getCurrentSaveSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lch/kingdoms/android/db/DBAdapter;->isAutoRoutingOn(I)Z

    move-result v1

    invoke-static {v1}, Lch/kingdoms/ndk/NdkUiEventManager;->setAutoRouting(Z)V

    goto/16 :goto_0

    .line 518
    :pswitch_b
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$14;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$14;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 526
    :pswitch_c
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$15;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$15;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 535
    :pswitch_d
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_gameMenuUi:Lch/kingdoms/android/ui/GameMenuUi;

    sget v2, Lch/kingdoms/kor/KingdomsActivity;->m_MainState:I

    invoke-virtual {v1, v2}, Lch/kingdoms/android/ui/GameMenuUi;->setMainState(I)V

    .line 536
    invoke-direct {p0}, Lch/kingdoms/kor/KingdomsActivity;->showUi()V

    .line 537
    invoke-direct {p0}, Lch/kingdoms/kor/KingdomsActivity;->showDpad()V

    .line 538
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->showColosseumUi()V

    .line 539
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$16;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$16;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 552
    :pswitch_e
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$17;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$17;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 560
    :pswitch_f
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$18;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$18;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 580
    :pswitch_10
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$19;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$19;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 589
    :pswitch_11
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$20;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$20;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 649
    :pswitch_12
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$21;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$21;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 669
    :pswitch_13
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$22;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$22;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 766
    :pswitch_14
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_captionUi:Lch/kingdoms/android/ui/CaptionUi;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/CaptionUi;->closeCaption()V

    goto/16 :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_13
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_1
        :pswitch_11
        :pswitch_10
        :pswitch_12
        :pswitch_e
        :pswitch_14
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method

.method public setScriptMainState(I)V
    .locals 3
    .param p1, "_MainState"    # I

    .prologue
    const/4 v2, 0x1

    .line 883
    iput p1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    .line 884
    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 885
    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 886
    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 887
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/kor/KingdomsActivity$29;

    invoke-direct {v1, p0}, Lch/kingdoms/kor/KingdomsActivity$29;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 895
    :cond_0
    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_typingAndScrollTextView:Lch/android/api/ui/ChTypingAndScrollTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_typingAndScrollTextView:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-virtual {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 896
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/kor/KingdomsActivity$30;

    invoke-direct {v1, p0}, Lch/kingdoms/kor/KingdomsActivity$30;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 903
    :cond_1
    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    if-ne v0, v2, :cond_2

    invoke-static {}, Lch/kingdoms/kor/KingdomsActivity;->getNextScrTxt()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 904
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_captionUi:Lch/kingdoms/android/ui/CaptionUi;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/CaptionUi;->closeCaption()V

    .line 1027
    :goto_0
    return-void

    .line 906
    :cond_2
    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 969
    :pswitch_1
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/kor/KingdomsActivity$35;

    invoke-direct {v1, p0}, Lch/kingdoms/kor/KingdomsActivity$35;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 909
    :pswitch_2
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/kor/KingdomsActivity$31;

    invoke-direct {v1, p0}, Lch/kingdoms/kor/KingdomsActivity$31;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 931
    :pswitch_3
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/kor/KingdomsActivity$32;

    invoke-direct {v1, p0}, Lch/kingdoms/kor/KingdomsActivity$32;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 942
    :pswitch_4
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/kor/KingdomsActivity$33;

    invoke-direct {v1, p0}, Lch/kingdoms/kor/KingdomsActivity$33;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 961
    :pswitch_5
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/kor/KingdomsActivity$34;

    invoke-direct {v1, p0}, Lch/kingdoms/kor/KingdomsActivity$34;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 987
    :pswitch_6
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/kor/KingdomsActivity$36;

    invoke-direct {v1, p0}, Lch/kingdoms/kor/KingdomsActivity$36;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1013
    :pswitch_7
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/kor/KingdomsActivity$37;

    invoke-direct {v1, p0}, Lch/kingdoms/kor/KingdomsActivity$37;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 906
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setScriptSubState(I)V
    .locals 8
    .param p1, "_subState"    # I

    .prologue
    const/16 v7, 0xd

    const/4 v6, 0x1

    .line 1030
    iput p1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptSubState:I

    .line 1031
    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    if-ne v0, v6, :cond_3

    .line 1032
    :cond_0
    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptSubState:I

    if-ne v0, v6, :cond_3

    .line 1039
    invoke-static {}, Lch/kingdoms/kor/KingdomsActivity;->isCharacterLeft()Z

    move-result v1

    .line 1040
    .local v1, "isLeft":Z
    invoke-static {}, Lch/kingdoms/kor/KingdomsActivity;->getScrTxtTargetState()I

    move-result v2

    .line 1041
    .local v2, "scrTargetState":I
    invoke-static {}, Lch/kingdoms/kor/KingdomsActivity;->getcScrTxtNum()I

    move-result v3

    .line 1042
    .local v3, "cScrTxtNum":I
    invoke-static {}, Lch/kingdoms/kor/KingdomsActivity;->getNextScrTxt()I

    move-result v4

    .line 1043
    .local v4, "nextScrTxt":I
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1044
    const-string v0, "KD"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "scrTargetState["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], cScrTxtNum["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], nextScrTxt["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_1
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_captionUi:Lch/kingdoms/android/ui/CaptionUi;

    invoke-static {}, Lch/kingdoms/kor/KingdomsActivity;->getBustNum()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lch/kingdoms/android/ui/CaptionUi;->updateCaption(ZIIII)V

    .line 1077
    .end local v1    # "isLeft":Z
    .end local v2    # "scrTargetState":I
    .end local v3    # "cScrTxtNum":I
    .end local v4    # "nextScrTxt":I
    :cond_2
    :goto_0
    return-void

    .line 1048
    :cond_3
    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptSubState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1063
    :pswitch_0
    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    if-ne v0, v7, :cond_2

    .line 1064
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v5, Lch/kingdoms/kor/KingdomsActivity$39;

    invoke-direct {v5, p0}, Lch/kingdoms/kor/KingdomsActivity$39;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1050
    :pswitch_1
    iget v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_scriptMainState:I

    if-ne v0, v7, :cond_2

    .line 1051
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v5, Lch/kingdoms/kor/KingdomsActivity$38;

    invoke-direct {v5, p0}, Lch/kingdoms/kor/KingdomsActivity$38;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1048
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startGame()V
    .locals 13

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I
    move-result v1
    if-lez v1, :bounds_done
    iget-object v2, p0, Lch/kingdoms/kor/KingdomsActivity;->m_di:Lch/android/api/util/DisplayInfo;
    iput v1, v2, Lch/android/api/util/DisplayInfo;->widthPixels:I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I
    move-result v1
    iput v1, v2, Lch/android/api/util/DisplayInfo;->heightPixels:I
    :bounds_done

    .prologue
    const-string v0, "startGame build=diagnostic-v1"
    invoke-static {v0}, Lch/android/api/util/Seed3Diag;->event(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v12, -0x1

    .line 334
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 335
    .local v9, "key":Landroid/graphics/Point;
    new-instance v10, Ljava/util/concurrent/Semaphore;

    invoke-direct {v10, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 336
    .local v10, "keySema":Ljava/util/concurrent/Semaphore;
    invoke-virtual {p0}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 337
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/db/DBAdapter;->getInstance(Landroid/content/Context;)Lch/kingdoms/android/db/DBAdapter;

    move-result-object v8

    .line 338
    .local v8, "dba":Lch/kingdoms/android/db/DBAdapter;
    invoke-static {v8}, Lch/kingdoms/ndk/NdkFileManager;->init(Lch/kingdoms/android/db/DBAdapter;)V

    .line 339
    invoke-static {p0}, Lch/kingdoms/ndk/NdkGraphicManager;->init(Landroid/app/Activity;)V

    .line 340
    invoke-static {v7}, Lch/kingdoms/ndk/NdkVibManager;->init(Landroid/content/Context;)V

    .line 341
    invoke-static {v7}, Lch/kingdoms/ndk/NdkSoundManager;->init(Landroid/content/Context;)V

    .line 342
    invoke-static {v9, v10}, Lch/kingdoms/ndk/NdkInputManager;->init(Landroid/graphics/Point;Ljava/util/concurrent/Semaphore;)V

    .line 344
    new-instance v0, Lch/kingdoms/android/ui/CaptionUi;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_di:Lch/android/api/util/DisplayInfo;

    invoke-direct {v0, p0, v1}, Lch/kingdoms/android/ui/CaptionUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V

    iput-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_captionUi:Lch/kingdoms/android/ui/CaptionUi;

    .line 346
    invoke-static {p0}, Lch/kingdoms/kor/KingdomsActivity;->startKingdoms(Lch/kingdoms/kor/KingdomsActivity;)V

    .line 348
    invoke-static {}, Lch/kingdoms/ndk/NdkTextLoader;->init()V

    .line 350
    new-instance v0, Lch/kingdoms/android/ChGLSurfaceView;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_di:Lch/android/api/util/DisplayInfo;

    invoke-direct {v0, v7, v1, v9, v10}, Lch/kingdoms/android/ChGLSurfaceView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Landroid/graphics/Point;Ljava/util/concurrent/Semaphore;)V

    iput-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_glSurfaceView:Lch/kingdoms/android/ChGLSurfaceView;

    .line 351
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_glSurfaceView:Lch/kingdoms/android/ChGLSurfaceView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lch/kingdoms/kor/KingdomsActivity;->m_di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->widthPixels:I

    iget-object v3, p0, Lch/kingdoms/kor/KingdomsActivity;->m_di:Lch/android/api/util/DisplayInfo;

    iget v3, v3, Lch/android/api/util/DisplayInfo;->heightPixels:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lch/kingdoms/kor/KingdomsActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_di:Lch/android/api/util/DisplayInfo;

    invoke-static {p0, v0, v4}, Lch/kingdoms/android/ui/MainStateUi;->showMainMenuUi(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Z)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->mainMenuUi:Lch/kingdoms/android/ui/MainMenuUi;

    .line 355
    new-instance v0, Lch/kingdoms/android/ui/RealTimeUpdateUi;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_di:Lch/android/api/util/DisplayInfo;

    invoke-direct {v0, p0, v1}, Lch/kingdoms/android/ui/RealTimeUpdateUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V

    iput-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    .line 358
    iget-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity;->D_PAD_ON:Z

    if-eqz v0, :cond_0

    .line 359
    new-instance v11, Lch/kingdoms/market/KeyTranslator;

    invoke-direct {v11}, Lch/kingdoms/market/KeyTranslator;-><init>()V

    .line 360
    .local v11, "keyTranslator":Lch/kingdoms/market/KeyTranslator;
    new-instance v0, Lch/kingdoms/android/dpad/Dpad;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_di:Lch/android/api/util/DisplayInfo;

    invoke-direct {v0, v7, v1, v11}, Lch/kingdoms/android/dpad/Dpad;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Lch/kingdoms/market/KeyTranslator;)V

    iput-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_dpad:Lch/kingdoms/android/dpad/Dpad;

    .line 363
    .end local v11    # "keyTranslator":Lch/kingdoms/market/KeyTranslator;
    :cond_0
    new-instance v0, Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-virtual {p0}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/kor/KingdomsActivity;->m_di:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->widthPixels:I

    iget-object v3, p0, Lch/kingdoms/kor/KingdomsActivity;->m_di:Lch/android/api/util/DisplayInfo;

    iget v3, v3, Lch/android/api/util/DisplayInfo;->heightPixels:I

    new-instance v4, Lch/kingdoms/kor/KingdomsActivity$6;

    invoke-direct {v4, p0}, Lch/kingdoms/kor/KingdomsActivity$6;-><init>(Lch/kingdoms/kor/KingdomsActivity;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lch/android/api/ui/ChTypingAndScrollTextView;-><init>(Landroid/content/Context;IILjava/lang/Runnable;)V

    iput-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_typingAndScrollTextView:Lch/android/api/ui/ChTypingAndScrollTextView;

    .line 373
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_di:Lch/android/api/util/DisplayInfo;

    iget-object v2, p0, Lch/kingdoms/kor/KingdomsActivity;->m_glSurfaceView:Lch/kingdoms/android/ChGLSurfaceView;

    iget-object v3, p0, Lch/kingdoms/kor/KingdomsActivity;->m_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    iget-object v4, p0, Lch/kingdoms/kor/KingdomsActivity;->m_dpad:Lch/kingdoms/android/dpad/Dpad;

    iget-object v5, p0, Lch/kingdoms/kor/KingdomsActivity;->m_captionUi:Lch/kingdoms/android/ui/CaptionUi;

    iget-object v6, p0, Lch/kingdoms/kor/KingdomsActivity;->m_typingAndScrollTextView:Lch/android/api/ui/ChTypingAndScrollTextView;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lch/kingdoms/ndk/NdkUiEventManager;->init(Lch/kingdoms/kor/KingdomsActivity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ChGLSurfaceView;Lch/kingdoms/android/ui/RealTimeUpdateUi;Lch/kingdoms/android/dpad/Dpad;Lch/kingdoms/android/ui/CaptionUi;Lch/android/api/ui/ChTypingAndScrollTextView;)V

    .line 375
    new-instance v0, Lch/android/api/ui/ChRelativeLayout;

    invoke-direct {v0, p0}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_uiLayout:Lch/android/api/ui/ChRelativeLayout;

    .line 377
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_uiLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_uiLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_dpad:Lch/kingdoms/android/dpad/Dpad;

    invoke-virtual {v1}, Lch/kingdoms/android/dpad/Dpad;->getDpadViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    new-instance v0, Lch/kingdoms/android/ui/GameMenuUi;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_di:Lch/android/api/util/DisplayInfo;

    invoke-direct {v0, p0, v1}, Lch/kingdoms/android/ui/GameMenuUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V

    iput-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_gameMenuUi:Lch/kingdoms/android/ui/GameMenuUi;

    .line 382
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_uiLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_gameMenuUi:Lch/kingdoms/android/ui/GameMenuUi;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/GameMenuUi;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_realTimeUpdateUi:Lch/kingdoms/android/ui/RealTimeUpdateUi;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity;->m_gameMenuUi:Lch/kingdoms/android/ui/GameMenuUi;

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->setOnClickListenerToHeroHpMpView(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_uiLayout:Lch/android/api/ui/ChRelativeLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lch/kingdoms/kor/KingdomsActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_typingAndScrollTextView:Lch/android/api/ui/ChTypingAndScrollTextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lch/kingdoms/kor/KingdomsActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_typingAndScrollTextView:Lch/android/api/ui/ChTypingAndScrollTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTypingAndScrollTextView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_captionUi:Lch/kingdoms/android/ui/CaptionUi;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/CaptionUi;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lch/kingdoms/kor/KingdomsActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->m_di:Lch/android/api/util/DisplayInfo;

    invoke-static {p0, v0}, Lch/android/api/ui/ChGamePlayMessage;->init(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->gamePlayMessageLayout:Landroid/view/View;

    .line 395
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity;->gamePlayMessageLayout:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lch/kingdoms/kor/KingdomsActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    invoke-static {}, Lch/android/api/util/NativeHeapChecker;->log()V

    .line 398
    return-void
.end method

.method public updateHackApps()V
    .locals 12

    .prologue
    .line 207
    invoke-virtual {p0}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lch/kingdoms/android/db/DBAdapter;->getInstance(Landroid/content/Context;)Lch/kingdoms/android/db/DBAdapter;

    move-result-object v3

    .line 208
    .local v3, "dba":Lch/kingdoms/android/db/DBAdapter;
    const-string v8, "memoryhackapps"

    invoke-virtual {v3, v8}, Lch/kingdoms/android/db/DBAdapter;->getData(Ljava/lang/String;)[B

    move-result-object v2

    .line 209
    .local v2, "dataBytes":[B
    const/4 v5, 0x0

    .line 210
    .local v5, "isNeedMhaListUpdate":Z
    if-eqz v2, :cond_2

    .line 211
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 212
    .local v4, "gson":Lcom/google/gson/Gson;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    const-class v9, Lch/lib/gsonobjects/MemoryHackApplications;

    invoke-virtual {v4, v8, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lch/lib/gsonobjects/MemoryHackApplications;

    .line 214
    .local v7, "mhas":Lch/lib/gsonobjects/MemoryHackApplications;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 217
    .local v0, "current":J
    if-eqz v7, :cond_0

    iget-wide v8, v7, Lch/lib/gsonobjects/MemoryHackApplications;->timeMills:J

    sub-long v8, v0, v8

    const-wide/32 v10, 0x240c8400

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 218
    const/4 v5, 0x1

    .line 224
    .end local v0    # "current":J
    .end local v4    # "gson":Lcom/google/gson/Gson;
    .end local v7    # "mhas":Lch/lib/gsonobjects/MemoryHackApplications;
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 226
    const-string v8, "KD"

    const-string v9, "need memory hack app list"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v6, Lch/android/api/pipelinethread/PipelineThread;

    new-instance v8, Lch/kingdoms/kor/KingdomsActivity$1;

    invoke-direct {v8, p0, v3}, Lch/kingdoms/kor/KingdomsActivity$1;-><init>(Lch/kingdoms/kor/KingdomsActivity;Lch/kingdoms/android/db/DBAdapter;)V

    invoke-direct {v6, v8}, Lch/android/api/pipelinethread/PipelineThread;-><init>(Lch/android/api/pipelinethread/MessageHandlable;)V

    .line 251
    .local v6, "memoryHackCheckingThread":Lch/android/api/pipelinethread/PipelineThread;
    invoke-virtual {v6}, Lch/android/api/pipelinethread/PipelineThread;->start()V

    .line 252
    iget-object v8, p0, Lch/kingdoms/kor/KingdomsActivity;->m_handler:Landroid/os/Handler;

    new-instance v9, Lch/kingdoms/kor/KingdomsActivity$2;

    invoke-direct {v9, p0, v6}, Lch/kingdoms/kor/KingdomsActivity$2;-><init>(Lch/kingdoms/kor/KingdomsActivity;Lch/android/api/pipelinethread/PipelineThread;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    .end local v6    # "memoryHackCheckingThread":Lch/android/api/pipelinethread/PipelineThread;
    :cond_1
    return-void

    .line 221
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method
