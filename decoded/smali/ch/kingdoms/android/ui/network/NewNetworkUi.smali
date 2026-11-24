.class public Lch/kingdoms/android/ui/network/NewNetworkUi;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView;,
        Lch/kingdoms/android/ui/network/NewNetworkUi$NetworkUiRunnable;,
        Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;
    }
.end annotation


# static fields
.field private static isPopUped:Z


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

.field private final NETWORK:Lch/android/api/network/ChNetwork;

.field private final PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

.field private final PHONE_NUMBER:Ljava/lang/String;

.field private final TIME_OUT:J

.field private VERSION:I

.field private auctionInven:Lch/kingdoms/android/ui/network/ProcessablaResultPacket;

.field private colosseumNumber:I

.field final handler:Landroid/os/Handler;

.field private mainType:I

.field private messageHandler:Lch/android/api/pipelinethread/MessageHandlable;

.field private myAuctionInven:Lch/kingdoms/android/ui/network/ProcessablaResultPacket;

.field private myInven:Lch/kingdoms/android/ui/network/ProcessablaResultPacket;

.field private netInven:Lch/kingdoms/android/ui/network/ProcessablaResultPacket;

.field private final networkThread:Lch/android/api/pipelinethread/PipelineThread;

.field private numOfMsg:I

.field private progressDialog:Landroid/app/ProgressDialog;

.field private sortType:I

.field private subType:I

.field private timeOutRunnable:Ljava/lang/Runnable;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/IGameMenu;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "gameMenuUi"    # Lch/kingdoms/android/ui/IGameMenu;

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->handler:Landroid/os/Handler;

    .line 63
    iput v5, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->numOfMsg:I

    .line 67
    const-wide/16 v2, 0x7530

    iput-wide v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->TIME_OUT:J

    .line 230
    new-instance v2, Lch/kingdoms/android/ui/network/NewNetworkUi$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$1;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;)V

    iput-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->timeOutRunnable:Ljava/lang/Runnable;

    .line 281
    new-instance v2, Lch/kingdoms/android/ui/network/NewNetworkUi$2;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$2;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;)V

    iput-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->messageHandler:Lch/android/api/pipelinethread/MessageHandlable;

    .line 75
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    .line 76
    iput-object p2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->DI:Lch/android/api/util/DisplayInfo;

    .line 77
    iput-object p3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

    .line 79
    invoke-static {}, Lch/android/lib/openfeint/ChOpenFeint;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->PHONE_NUMBER:Ljava/lang/String;

    .line 80
    new-instance v2, Lch/android/api/network/ChNetwork;

    const-string v3, "chseed.co.kr"

    const/16 v4, 0x27e9

    invoke-direct {v2, v3, v4}, Lch/android/api/network/ChNetwork;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->NETWORK:Lch/android/api/network/ChNetwork;

    .line 81
    new-instance v2, Lch/kingdoms/android/network/ChPacketFactory;

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    .line 83
    iput v5, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->VERSION:I

    .line 85
    :try_start_0
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 86
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->VERSION:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v2, Lch/android/api/pipelinethread/PipelineThread;

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->messageHandler:Lch/android/api/pipelinethread/MessageHandlable;

    invoke-direct {v2, v3}, Lch/android/api/pipelinethread/PipelineThread;-><init>(Lch/android/api/pipelinethread/MessageHandlable;)V

    iput-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->networkThread:Lch/android/api/pipelinethread/PipelineThread;

    .line 93
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/pipelinethread/PipelineThread;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->networkThread:Lch/android/api/pipelinethread/PipelineThread;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10(Lch/kingdoms/android/ui/network/NewNetworkUi;)V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkMenu()V

    return-void
.end method

.method static synthetic access$11(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lch/kingdoms/android/ui/network/NewNetworkUi;)I
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->colosseumNumber:I

    return v0
.end method

.method static synthetic access$13(Lch/kingdoms/android/ui/network/NewNetworkUi;)V
    .locals 0

    .prologue
    .line 894
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpColosseumMenu()V

    return-void
.end method

.method static synthetic access$14(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$15(Lch/kingdoms/android/ui/network/NewNetworkUi;Lch/kingdoms/android/ui/network/ProcessablaResultPacket;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->myInven:Lch/kingdoms/android/ui/network/ProcessablaResultPacket;

    return-void
.end method

.method static synthetic access$16(Lch/kingdoms/android/ui/network/NewNetworkUi;Lch/kingdoms/android/ui/network/ProcessablaResultPacket;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->netInven:Lch/kingdoms/android/ui/network/ProcessablaResultPacket;

    return-void
.end method

.method static synthetic access$17(Lch/kingdoms/android/ui/network/NewNetworkUi;)V
    .locals 0

    .prologue
    .line 834
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpMyAuction()V

    return-void
.end method

.method static synthetic access$18(Lch/kingdoms/android/ui/network/NewNetworkUi;)V
    .locals 0

    .prologue
    .line 845
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpMainTypeMenu()V

    return-void
.end method

.method static synthetic access$19(Lch/kingdoms/android/ui/network/NewNetworkUi;IILch/android/api/network/ChResultPacket;)V
    .locals 0

    .prologue
    .line 762
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpGiftFencePopUp(IILch/android/api/network/ChResultPacket;)V

    return-void
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/network/NewNetworkUi;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$20(Lch/kingdoms/android/ui/network/NewNetworkUi;IILch/android/api/network/ChResultPacket;)V
    .locals 0

    .prologue
    .line 794
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpGiftItemPopUp(IILch/android/api/network/ChResultPacket;)V

    return-void
.end method

.method static synthetic access$21(Z)V
    .locals 0

    .prologue
    .line 61
    sput-boolean p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped:Z

    return-void
.end method

.method static synthetic access$22(Lch/kingdoms/android/ui/network/NewNetworkUi;I)V
    .locals 0

    .prologue
    .line 842
    iput p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->mainType:I

    return-void
.end method

.method static synthetic access$23(Lch/kingdoms/android/ui/network/NewNetworkUi;I)V
    .locals 0

    .prologue
    .line 843
    iput p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->subType:I

    return-void
.end method

.method static synthetic access$24(Lch/kingdoms/android/ui/network/NewNetworkUi;I)V
    .locals 0

    .prologue
    .line 844
    iput p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->sortType:I

    return-void
.end method

.method static synthetic access$25(Lch/kingdoms/android/ui/network/NewNetworkUi;I)V
    .locals 0

    .prologue
    .line 893
    iput p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->colosseumNumber:I

    return-void
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/ui/IGameMenu;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

    return-object v0
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/network/ChNetwork;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->NETWORK:Lch/android/api/network/ChNetwork;

    return-object v0
.end method

.method static synthetic access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    return-object v0
.end method

.method static synthetic access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->PHONE_NUMBER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lch/kingdoms/android/ui/network/NewNetworkUi;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->VERSION:I

    return v0
.end method

.method static synthetic access$9(Lch/kingdoms/android/ui/network/NewNetworkUi;ILch/android/api/network/ChResultPacket;)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0, p1, p2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->processResultPacketOnUi(ILch/android/api/network/ChResultPacket;)V

    return-void
.end method

.method private createNoticeData(IILch/android/api/network/ChResultPacket;)Lch/android/api/ui/ChNetworkNoticeView$NoticeData;
    .locals 6
    .param p1, "pageNum"    # I
    .param p2, "size"    # I
    .param p3, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 752
    if-lez p2, :cond_0

    .line 753
    mul-int/lit8 v4, p1, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p3, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 754
    .local v1, "noticeIndex":I
    mul-int/lit8 v4, p1, 0x3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p3, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v3

    .line 755
    .local v3, "title":Ljava/lang/String;
    mul-int/lit8 v4, p1, 0x3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p3, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "contents":Ljava/lang/String;
    invoke-virtual {p3, p1}, Lch/android/api/network/ChResultPacket;->getTime(I)Lch/android/api/network/ChTime;

    move-result-object v2

    .line 757
    .local v2, "time":Lch/android/api/network/ChTime;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lch/android/api/network/ChTime;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lch/android/api/ui/ChNetworkNoticeView;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lch/android/api/ui/ChNetworkNoticeView$NoticeData;

    move-result-object v4

    .line 759
    .end local v0    # "contents":Ljava/lang/String;
    .end local v1    # "noticeIndex":I
    .end local v2    # "time":Lch/android/api/network/ChTime;
    .end local v3    # "title":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isPopUped()Z
    .locals 1

    .prologue
    .line 885
    sget-boolean v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped:Z

    return v0
.end method

.method private popUpColosseumMenu()V
    .locals 23

    .prologue
    .line 895
    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 896
    .local v11, "appContext":Landroid/content/Context;
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 897
    .local v20, "colosseumWords":Ljava/lang/String;
    new-instance v12, Lch/android/api/ui/ChTextSlimButton;

    .line 898
    const v4, 0x7f0201fc

    const v5, 0x7f0201fb

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0xbe

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 897
    invoke-direct {v12, v11, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 899
    .local v12, "colosseum1":Lch/android/api/ui/ChTextSlimButton;
    new-instance v13, Lch/android/api/ui/ChTextSlimButton;

    .line 900
    const v4, 0x7f0201fc

    const v5, 0x7f0201fb

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0xbf

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 899
    invoke-direct {v13, v11, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 901
    .local v13, "colosseum2":Lch/android/api/ui/ChTextSlimButton;
    new-instance v14, Lch/android/api/ui/ChTextSlimButton;

    .line 902
    const v4, 0x7f0201fc

    const v5, 0x7f0201fb

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0xc0

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 901
    invoke-direct {v14, v11, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 903
    .local v14, "colosseum3":Lch/android/api/ui/ChTextSlimButton;
    new-instance v15, Lch/android/api/ui/ChTextSlimButton;

    .line 904
    const v4, 0x7f0201fc

    const v5, 0x7f0201fb

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0xc1

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 903
    invoke-direct {v15, v11, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 905
    .local v15, "colosseum4":Lch/android/api/ui/ChTextSlimButton;
    new-instance v16, Lch/android/api/ui/ChTextSlimButton;

    .line 906
    const v4, 0x7f0201fc

    const v5, 0x7f0201fb

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0xc2

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 905
    move-object/from16 v0, v16

    invoke-direct {v0, v11, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 907
    .local v16, "colosseum5":Lch/android/api/ui/ChTextSlimButton;
    new-instance v17, Lch/android/api/ui/ChTextSlimButton;

    .line 908
    const v4, 0x7f0201fc

    const v5, 0x7f0201fb

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0xc3

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 907
    move-object/from16 v0, v17

    invoke-direct {v0, v11, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 909
    .local v17, "colosseum6":Lch/android/api/ui/ChTextSlimButton;
    new-instance v18, Lch/android/api/ui/ChTextSlimButton;

    .line 910
    const v4, 0x7f0201fc

    const v5, 0x7f0201fb

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0xc4

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 909
    move-object/from16 v0, v18

    invoke-direct {v0, v11, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 911
    .local v18, "colosseum7":Lch/android/api/ui/ChTextSlimButton;
    new-instance v19, Lch/android/api/ui/ChTextSlimButton;

    .line 912
    const v4, 0x7f0201fc

    const v5, 0x7f0201fb

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0xc5

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 911
    move-object/from16 v0, v19

    invoke-direct {v0, v11, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 913
    .local v19, "colosseum8":Lch/android/api/ui/ChTextSlimButton;
    const/4 v4, 0x4

    new-array v8, v4, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v12, v8, v4

    const/4 v4, 0x1

    aput-object v13, v8, v4

    const/4 v4, 0x2

    aput-object v14, v8, v4

    const/4 v4, 0x3

    aput-object v15, v8, v4

    .line 914
    .local v8, "views1":[Landroid/view/View;
    const/4 v4, 0x4

    new-array v9, v4, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v16, v9, v4

    const/4 v4, 0x1

    aput-object v17, v9, v4

    const/4 v4, 0x2

    aput-object v18, v9, v4

    const/4 v4, 0x3

    aput-object v19, v9, v4

    .line 915
    .local v9, "views2":[Landroid/view/View;
    new-instance v3, Lch/android/api/ui/ChPopUpMenuView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->DI:Lch/android/api/util/DisplayInfo;

    const/4 v6, 0x0

    const v7, 0x7f020249

    new-instance v10, Lch/kingdoms/android/ui/network/NewNetworkUi$13;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$13;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;)V

    invoke-direct/range {v3 .. v10}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 928
    .local v3, "popUpMenuView":Lch/android/api/ui/ChPopUpMenuView;
    new-instance v22, Lch/kingdoms/android/ui/network/NewNetworkUi$14;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v11, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi$14;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;Landroid/content/Context;Ljava/lang/String;)V

    .line 938
    .local v22, "ocl":Landroid/view/View$OnClickListener;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    array-length v4, v8

    move/from16 v0, v21

    if-lt v0, v4, :cond_0

    .line 942
    const/16 v21, 0x0

    :goto_1
    array-length v4, v9

    move/from16 v0, v21

    if-lt v0, v4, :cond_1

    .line 946
    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v4, v3}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 947
    return-void

    .line 939
    :cond_0
    aget-object v4, v8, v21

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->setId(I)V

    .line 940
    aget-object v4, v8, v21

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 938
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 943
    :cond_1
    aget-object v4, v9, v21

    array-length v5, v8

    add-int v5, v5, v21

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 944
    aget-object v4, v9, v21

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 942
    add-int/lit8 v21, v21, 0x1

    goto :goto_1
.end method

.method private popUpGiftFencePopUp(IILch/android/api/network/ChResultPacket;)V
    .locals 5
    .param p1, "pageNum"    # I
    .param p2, "size"    # I
    .param p3, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 763
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 764
    .local v1, "txtBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {p3, p1}, Lch/android/api/network/ChResultPacket;->getTime(I)Lch/android/api/network/ChTime;

    move-result-object v0

    .line 765
    .local v0, "time":Lch/android/api/network/ChTime;
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p1, 0x2

    invoke-virtual {p3, v3}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x61

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 766
    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p3, v3}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x63

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lch/android/api/network/ChTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 765
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 767
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lch/kingdoms/android/ui/network/NewNetworkUi$8;

    invoke-direct {v4, p0, p1, p2, p3}, Lch/kingdoms/android/ui/network/NewNetworkUi$8;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;IILch/android/api/network/ChResultPacket;)V

    invoke-static {v2, v3, v4}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 776
    return-void
.end method

.method private popUpGiftItemPopUp(IILch/android/api/network/ChResultPacket;)V
    .locals 7
    .param p1, "pageNum"    # I
    .param p2, "size"    # I
    .param p3, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 795
    new-instance v0, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v0}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    .line 796
    .local v0, "inven":Lch/kingdoms/ndk/data/Inven;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 797
    .local v3, "txtBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {p3, p1}, Lch/android/api/network/ChResultPacket;->getItemData(I)Lch/android/api/network/ChNetworkItemData;

    move-result-object v4

    invoke-virtual {v0, v4, p1}, Lch/kingdoms/ndk/data/Inven;->getItem(Lch/android/api/network/ChNetworkItemData;I)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    .line 798
    .local v1, "item":Lch/kingdoms/ndk/data/Inven$Item;
    invoke-virtual {p3, p1}, Lch/android/api/network/ChResultPacket;->getTime(I)Lch/android/api/network/ChTime;

    move-result-object v2

    .line 799
    .local v2, "time":Lch/android/api/network/ChTime;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x61

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 800
    iget-object v5, v1, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x62

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lch/android/api/network/ChTime;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 799
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 801
    iget-object v4, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lch/kingdoms/android/ui/network/NewNetworkUi$10;

    invoke-direct {v6, p0, p1, p2, p3}, Lch/kingdoms/android/ui/network/NewNetworkUi$10;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;IILch/android/api/network/ChResultPacket;)V

    invoke-static {v4, v5, v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 810
    return-void
.end method

.method private popUpGiftPointPopUp(IILch/android/api/network/ChResultPacket;)V
    .locals 5
    .param p1, "pageNum"    # I
    .param p2, "size"    # I
    .param p3, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 779
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 780
    .local v1, "txtBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {p3, p1}, Lch/android/api/network/ChResultPacket;->getTime(I)Lch/android/api/network/ChTime;

    move-result-object v0

    .line 781
    .local v0, "time":Lch/android/api/network/ChTime;
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p1, 0x2

    invoke-virtual {p3, v3}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x61

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 782
    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p3, v3}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x8b

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lch/android/api/network/ChTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 781
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 783
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lch/kingdoms/android/ui/network/NewNetworkUi$9;

    invoke-direct {v4, p0, p1, p2, p3}, Lch/kingdoms/android/ui/network/NewNetworkUi$9;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;IILch/android/api/network/ChResultPacket;)V

    invoke-static {v2, v3, v4}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 792
    return-void
.end method

.method private popUpMainTypeMenu()V
    .locals 2

    .prologue
    .line 846
    new-instance v0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;-><init>(Landroid/content/Context;)V

    .line 847
    .local v0, "assv":Lch/kingdoms/android/ui/network/AuctionSearchSettingView;
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 848
    new-instance v1, Lch/kingdoms/android/ui/network/NewNetworkUi$12;

    invoke-direct {v1, p0, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$12;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;Lch/kingdoms/android/ui/network/AuctionSearchSettingView;)V

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 872
    return-void
.end method

.method private popUpMainTypeMenu(Ljava/lang/String;)V
    .locals 10
    .param p1, "money"    # Ljava/lang/String;

    .prologue
    .line 875
    new-instance v0, Lch/kingdoms/android/ui/network/AuctionView;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->DI:Lch/android/api/util/DisplayInfo;

    iget-object v4, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    iget-object v5, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->PHONE_NUMBER:Ljava/lang/String;

    iget v6, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->mainType:I

    iget v7, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->subType:I

    iget v8, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->sortType:I

    move-object v3, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lch/kingdoms/android/ui/network/AuctionView;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/network/NewNetworkUi;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;IIILjava/lang/String;)V

    .line 876
    .local v0, "auctionView":Lch/kingdoms/android/ui/network/AuctionView;
    iput-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->auctionInven:Lch/kingdoms/android/ui/network/ProcessablaResultPacket;

    .line 877
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 878
    return-void
.end method

.method private popUpMyAuction()V
    .locals 10

    .prologue
    .line 835
    new-instance v0, Lch/kingdoms/android/ui/network/MyAuctionView;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->DI:Lch/android/api/util/DisplayInfo;

    iget-object v4, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    iget-object v5, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->PHONE_NUMBER:Ljava/lang/String;

    const/16 v3, 0x1e

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    .line 836
    const-string v7, "0"

    const/4 v8, 0x7

    const v9, 0x7f0202bb

    move-object v3, p0

    .line 835
    invoke-direct/range {v0 .. v9}, Lch/kingdoms/android/ui/network/MyAuctionView;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/network/NewNetworkUi;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 837
    .local v0, "myAuctionView":Lch/kingdoms/android/ui/network/MyAuctionView;
    iput-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->myAuctionInven:Lch/kingdoms/android/ui/network/ProcessablaResultPacket;

    .line 838
    invoke-virtual {v0}, Lch/kingdoms/android/ui/network/MyAuctionView;->start()V

    .line 839
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 840
    return-void
.end method

.method private popUpNetworkMenu()V
    .locals 0

    .prologue
    .line 616
    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpItemManageMenu()V

    .line 617
    return-void
.end method

.method public static popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 748
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 749
    return-void
.end method

.method public static popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 813
    sget-boolean v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped:Z

    .line 814
    .local v0, "isAlreadyPopUped":Z
    const/4 v1, 0x1

    sput-boolean v1, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped:Z

    .line 815
    new-instance v1, Lch/kingdoms/android/ui/network/NewNetworkUi$11;

    invoke-direct {v1, v0, p2}, Lch/kingdoms/android/ui/network/NewNetworkUi$11;-><init>(ZLandroid/view/View$OnClickListener;)V

    invoke-static {p0, p1, v1}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 832
    return-void
.end method

.method private popUpRank()V
    .locals 5

    .prologue
    .line 950
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    new-instance v1, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;

    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->DI:Lch/android/api/util/DisplayInfo;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;Landroid/content/Context;Lch/android/api/util/DisplayInfo;Z)V

    invoke-static {v0, v1}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 951
    return-void
.end method

.method private popUpRegisterId(Lch/android/api/ui/ChPopUpEditTextView;)V
    .locals 7
    .param p1, "editTxtPopUp"    # Lch/android/api/ui/ChPopUpEditTextView;

    .prologue
    .line 1234
    invoke-virtual {p1}, Lch/android/api/ui/ChPopUpEditTextView;->getEditText()Ljava/lang/String;

    move-result-object v3

    .line 1235
    .local v3, "idStr":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1236
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    const/16 v1, 0xda

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/network/NewNetworkUi$16;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$16;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;)V

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1272
    :goto_0
    return-void

    .line 1243
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_2

    .line 1244
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    const/16 v1, 0xdd

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1246
    :cond_2
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    new-instance v1, Lch/kingdoms/android/ui/network/NewNetworkUi$17;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$17;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;)V

    .line 1269
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->PHONE_NUMBER:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget v5, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->VERSION:I

    .line 1246
    invoke-virtual/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory;->createRegisterMember(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;

    move-result-object v6

    .line 1270
    .local v6, "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->NETWORK:Lch/android/api/network/ChNetwork;

    invoke-virtual {v6, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    goto :goto_0
.end method

.method private popUpRegisterNewMember()V
    .locals 2

    .prologue
    .line 1169
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/android/ui/network/NewNetworkUi$15;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$15;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1231
    return-void
.end method

.method private processCheckNotice()V
    .locals 2

    .prologue
    .line 733
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->networkThread:Lch/android/api/pipelinethread/PipelineThread;

    invoke-virtual {v1}, Lch/android/api/pipelinethread/PipelineThread;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 734
    .local v0, "sendMsg":Landroid/os/Message;
    const/16 v1, 0x4a43

    iput v1, v0, Landroid/os/Message;->what:I

    .line 735
    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    .line 736
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->networkThread:Lch/android/api/pipelinethread/PipelineThread;

    invoke-virtual {v1}, Lch/android/api/pipelinethread/PipelineThread;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 737
    const/16 v1, 0x4a44

    iput v1, v0, Landroid/os/Message;->what:I

    .line 738
    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    .line 739
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->networkThread:Lch/android/api/pipelinethread/PipelineThread;

    invoke-virtual {v1}, Lch/android/api/pipelinethread/PipelineThread;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 740
    const/16 v1, 0x4a45

    iput v1, v0, Landroid/os/Message;->what:I

    .line 741
    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    .line 742
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->networkThread:Lch/android/api/pipelinethread/PipelineThread;

    invoke-virtual {v1}, Lch/android/api/pipelinethread/PipelineThread;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 743
    const/16 v1, 0x4a46

    iput v1, v0, Landroid/os/Message;->what:I

    .line 744
    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    .line 745
    return-void
.end method

.method private processCheckSync(ILch/android/api/network/ChResultPacket;)V
    .locals 8
    .param p1, "resultValue"    # I
    .param p2, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    const/4 v7, 0x0

    .line 712
    packed-switch p1, :pswitch_data_0

    .line 726
    invoke-virtual {p0, p1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    .line 729
    :goto_0
    return-void

    .line 714
    :pswitch_0
    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0500a0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 715
    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, "model":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-virtual {p2, v3}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 717
    .local v0, "gameVersion":I
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->VERSION:I

    if-eq v0, v3, :cond_1

    .line 718
    :cond_0
    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->networkThread:Lch/android/api/pipelinethread/PipelineThread;

    invoke-virtual {v3}, Lch/android/api/pipelinethread/PipelineThread;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 719
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x4a3c

    iput v3, v2, Landroid/os/Message;->what:I

    .line 720
    invoke-virtual {p0, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 722
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->processCheckNotice()V

    goto :goto_0

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processResultPacketOnUi(ILch/android/api/network/ChResultPacket;)V
    .locals 20
    .param p1, "what"    # I
    .param p2, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 420
    if-eqz p2, :cond_2

    .line 421
    invoke-virtual/range {p2 .. p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v16

    .line 425
    .local v16, "result":I
    :goto_0
    const-string v3, "NETWORK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "response from msg : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", result : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    packed-switch p1, :pswitch_data_0

    .line 606
    :cond_0
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->numOfMsg:I

    add-int/lit8 v3, v3, -0x1

    .line 608
    move-object/from16 v0, p0

    iput v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->numOfMsg:I

    .line 609
    move-object/from16 v0, p0

    iget v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->numOfMsg:I

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 611
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->progressDialog:Landroid/app/ProgressDialog;

    .line 613
    :cond_1
    return-void

    .line 423
    .end local v16    # "result":I
    :cond_2
    const/16 v16, 0x272d

    .restart local v16    # "result":I
    goto :goto_0

    .line 429
    :pswitch_1
    packed-switch v16, :pswitch_data_1

    .line 447
    :pswitch_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto :goto_1

    .line 431
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpRegisterNewMember()V

    goto :goto_1

    .line 434
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->networkThread:Lch/android/api/pipelinethread/PipelineThread;

    invoke-virtual {v3}, Lch/android/api/pipelinethread/PipelineThread;->obtainMessage()Landroid/os/Message;

    move-result-object v17

    .line 435
    .local v17, "sendMsg":Landroid/os/Message;
    const/16 v3, 0x4a3b

    move-object/from16 v0, v17

    iput v3, v0, Landroid/os/Message;->what:I

    .line 436
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    .line 437
    invoke-direct/range {p0 .. p0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkMenu()V

    goto :goto_1

    .line 440
    .end local v17    # "sendMsg":Landroid/os/Message;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

    invoke-interface {v3}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    .line 441
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto :goto_1

    .line 444
    :pswitch_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto :goto_1

    .line 452
    :pswitch_7
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->processCheckSync(ILch/android/api/network/ChResultPacket;)V

    goto :goto_1

    .line 457
    :pswitch_8
    packed-switch v16, :pswitch_data_2

    .line 462
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto/16 :goto_1

    .line 459
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->processCheckNotice()V

    goto/16 :goto_1

    .line 469
    :pswitch_a
    packed-switch v16, :pswitch_data_3

    .line 492
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto/16 :goto_1

    .line 471
    :pswitch_b
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 472
    .local v18, "size":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v13, "notices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lch/android/api/ui/ChNetworkNoticeView$NoticeData;>;"
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v3, v1, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->createNoticeData(IILch/android/api/network/ChResultPacket;)Lch/android/api/ui/ChNetworkNoticeView$NoticeData;

    .line 475
    add-int/lit8 v11, v18, -0x1

    .local v11, "i":I
    :goto_2
    const/4 v3, -0x1

    if-gt v11, v3, :cond_3

    .line 478
    if-lez v18, :cond_0

    .line 479
    new-instance v12, Lch/android/api/ui/ChNetworkNoticeView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->DI:Lch/android/api/util/DisplayInfo;

    const v6, 0x7f020247

    const/4 v7, 0x0

    invoke-direct {v12, v3, v4, v6, v7}, Lch/android/api/ui/ChNetworkNoticeView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZ)V

    .line 480
    .local v12, "noticeView":Lch/android/api/ui/ChNetworkNoticeView;
    invoke-virtual {v12, v13}, Lch/android/api/ui/ChNetworkNoticeView;->addNotices(Ljava/util/Collection;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v3, v12}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 482
    new-instance v3, Lch/kingdoms/android/ui/network/NewNetworkUi$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$4;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;)V

    invoke-virtual {v12, v3}, Lch/android/api/ui/ChNetworkNoticeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 476
    .end local v12    # "noticeView":Lch/android/api/ui/ChNetworkNoticeView;
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v11, v1, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->createNoticeData(IILch/android/api/network/ChResultPacket;)Lch/android/api/ui/ChNetworkNoticeView$NoticeData;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 497
    .end local v11    # "i":I
    .end local v13    # "notices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lch/android/api/ui/ChNetworkNoticeView$NoticeData;>;"
    .end local v18    # "size":I
    :pswitch_c
    packed-switch v16, :pswitch_data_4

    .line 505
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto/16 :goto_1

    .line 499
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Lch/android/api/network/ChResultPacket;->getTimeCount()I

    move-result v18

    .line 500
    .restart local v18    # "size":I
    if-lez v18, :cond_0

    .line 501
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v3, v1, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpGiftItemPopUp(IILch/android/api/network/ChResultPacket;)V

    goto/16 :goto_1

    .line 510
    .end local v18    # "size":I
    :pswitch_e
    packed-switch v16, :pswitch_data_5

    .line 518
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto/16 :goto_1

    .line 512
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Lch/android/api/network/ChResultPacket;->getTimeCount()I

    move-result v18

    .line 513
    .restart local v18    # "size":I
    if-lez v18, :cond_0

    .line 514
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v3, v1, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpGiftFencePopUp(IILch/android/api/network/ChResultPacket;)V

    goto/16 :goto_1

    .line 523
    .end local v18    # "size":I
    :pswitch_10
    packed-switch v16, :pswitch_data_6

    .line 531
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto/16 :goto_1

    .line 525
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Lch/android/api/network/ChResultPacket;->getTimeCount()I

    move-result v18

    .line 526
    .restart local v18    # "size":I
    if-lez v18, :cond_0

    .line 527
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v3, v1, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpGiftPointPopUp(IILch/android/api/network/ChResultPacket;)V

    goto/16 :goto_1

    .line 536
    .end local v18    # "size":I
    :pswitch_12
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 537
    .local v5, "networkCahsPoint":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->DI:Lch/android/api/util/DisplayInfo;

    const/16 v6, 0x10

    .line 538
    new-instance v7, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v7}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/Inven;->getNullItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 537
    invoke-static/range {v3 .. v9}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v19

    .line 539
    .local v19, "tradePopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    new-instance v14, Lch/kingdoms/android/ui/network/NewNetworkUi$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi$5;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;Lch/android/api/ui/ChPopUpTradeItemView;)V

    .line 557
    .local v14, "ocl":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 560
    .end local v5    # "networkCahsPoint":I
    .end local v14    # "ocl":Landroid/view/View$OnClickListener;
    .end local v19    # "tradePopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    :pswitch_13
    const/16 v3, 0x2710

    move/from16 v0, v16

    if-ne v0, v3, :cond_4

    .line 561
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 562
    .local v15, "point":I
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v10

    .line 563
    .local v10, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v10}, Lch/kingdoms/ndk/data/HeroStatus;->getCashPoints()I

    move-result v3

    add-int/2addr v3, v15

    invoke-virtual {v10, v3}, Lch/kingdoms/ndk/data/HeroStatus;->setCashPoins(I)V

    .line 564
    invoke-static {v10}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 565
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    .line 566
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    const/16 v4, 0x8c

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 567
    .end local v10    # "hero":Lch/kingdoms/ndk/data/HeroStatus;
    .end local v15    # "point":I
    :cond_4
    const/16 v3, 0x2734

    move/from16 v0, v16

    if-ne v0, v3, :cond_5

    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    const/16 v4, 0x87

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 570
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto/16 :goto_1

    .line 575
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->myInven:Lch/kingdoms/android/ui/network/ProcessablaResultPacket;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v3, v0, v1}, Lch/kingdoms/android/ui/network/ProcessablaResultPacket;->processResultPacketOnUi(ILch/android/api/network/ChResultPacket;)V

    goto/16 :goto_1

    .line 583
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->netInven:Lch/kingdoms/android/ui/network/ProcessablaResultPacket;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v3, v0, v1}, Lch/kingdoms/android/ui/network/ProcessablaResultPacket;->processResultPacketOnUi(ILch/android/api/network/ChResultPacket;)V

    goto/16 :goto_1

    .line 588
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->myAuctionInven:Lch/kingdoms/android/ui/network/ProcessablaResultPacket;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v3, v0, v1}, Lch/kingdoms/android/ui/network/ProcessablaResultPacket;->processResultPacketOnUi(ILch/android/api/network/ChResultPacket;)V

    goto/16 :goto_1

    .line 592
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v3

    packed-switch v3, :pswitch_data_7

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

    invoke-interface {v3}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 604
    :goto_3
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->auctionInven:Lch/kingdoms/android/ui/network/ProcessablaResultPacket;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v3, v0, v1}, Lch/kingdoms/android/ui/network/ProcessablaResultPacket;->processResultPacketOnUi(ILch/android/api/network/ChResultPacket;)V

    goto/16 :goto_1

    .line 594
    :pswitch_19
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 595
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpMainTypeMenu(Ljava/lang/String;)V

    goto :goto_3

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x4a38
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_e
        :pswitch_10
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_0
        :pswitch_13
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_18
        :pswitch_17
    .end packed-switch

    .line 429
    :pswitch_data_1
    .packed-switch 0x2711
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 457
    :pswitch_data_2
    .packed-switch 0x2710
        :pswitch_9
    .end packed-switch

    .line 469
    :pswitch_data_3
    .packed-switch 0x2710
        :pswitch_b
    .end packed-switch

    .line 497
    :pswitch_data_4
    .packed-switch 0x2710
        :pswitch_d
    .end packed-switch

    .line 510
    :pswitch_data_5
    .packed-switch 0x2710
        :pswitch_f
    .end packed-switch

    .line 523
    :pswitch_data_6
    .packed-switch 0x2710
        :pswitch_11
    .end packed-switch

    .line 592
    :pswitch_data_7
    .packed-switch 0x2710
        :pswitch_19
    .end packed-switch
.end method

.method public static setIsPopUped(Z)V
    .locals 0
    .param p0, "isPopuped"    # Z

    .prologue
    .line 881
    sput-boolean p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped:Z

    .line 882
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 6

    .prologue
    .line 216
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->networkThread:Lch/android/api/pipelinethread/PipelineThread;

    invoke-virtual {v2}, Lch/android/api/pipelinethread/PipelineThread;->start()V

    .line 218
    const-wide/16 v2, 0x6f

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->networkThread:Lch/android/api/pipelinethread/PipelineThread;

    invoke-virtual {v2}, Lch/android/api/pipelinethread/PipelineThread;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 224
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4a38

    iput v2, v1, Landroid/os/Message;->what:I

    .line 225
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->timeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->timeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    invoke-virtual {p0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    .line 228
    return-void

    .line 219
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public obtainMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->networkThread:Lch/android/api/pipelinethread/PipelineThread;

    invoke-virtual {v0}, Lch/android/api/pipelinethread/PipelineThread;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public popUpItemManageMenu()V
    .locals 21

    .prologue
    .line 620
    const/16 v10, 0x64

    .line 621
    .local v10, "ID_DEPOSIT":I
    const/16 v12, 0x65

    .line 622
    .local v12, "ID_NETWORK_INVEN":I
    const/16 v11, 0x66

    .line 623
    .local v11, "ID_MY_AUCTION":I
    const/16 v9, 0x67

    .line 624
    .local v9, "ID_AUCTION":I
    const/16 v13, 0x68

    .line 625
    .local v13, "ID_WITHDRAW_POINT":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 626
    .local v3, "appContext":Landroid/content/Context;
    new-instance v15, Lch/android/api/ui/ChTextSlimButton;

    const v4, 0x7f020205

    const v5, 0x7f020204

    const/16 v6, 0x12

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v15, v3, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 627
    .local v15, "depositBtn":Landroid/view/View;
    const/16 v4, 0x64

    invoke-virtual {v15, v4}, Landroid/view/View;->setId(I)V

    .line 628
    new-instance v17, Lch/android/api/ui/ChTextSlimButton;

    const v4, 0x7f020205

    const v5, 0x7f020204

    const/16 v6, 0xc

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 629
    .local v17, "networkInvenBtn":Landroid/view/View;
    const/16 v4, 0x65

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    .line 630
    new-instance v16, Lch/android/api/ui/ChTextSlimButton;

    const v4, 0x7f020205

    const v5, 0x7f020204

    const/16 v6, 0x3b

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 631
    .local v16, "myAuctionBtn":Landroid/view/View;
    const/16 v4, 0x66

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    .line 632
    new-instance v14, Lch/android/api/ui/ChTextSlimButton;

    const v4, 0x7f020205

    const v5, 0x7f020204

    const/16 v6, 0xd

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v3, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 633
    .local v14, "auctionBtn":Landroid/view/View;
    const/16 v4, 0x67

    invoke-virtual {v14, v4}, Landroid/view/View;->setId(I)V

    .line 634
    new-instance v20, Lch/android/api/ui/ChTextSlimButton;

    const v4, 0x7f020205

    const v5, 0x7f020204

    const/16 v6, 0x10

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 635
    .local v20, "withDrawPointBtn":Landroid/view/View;
    const/16 v4, 0x68

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    .line 636
    const/4 v4, 0x5

    new-array v7, v4, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v15, v7, v4

    const/4 v4, 0x1

    aput-object v17, v7, v4

    const/4 v4, 0x2

    aput-object v16, v7, v4

    const/4 v4, 0x3

    aput-object v14, v7, v4

    const/4 v4, 0x4

    aput-object v20, v7, v4

    .line 638
    .local v7, "views":[Landroid/view/View;
    new-instance v18, Lch/kingdoms/android/ui/network/NewNetworkUi$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi$6;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;)V

    .line 692
    .local v18, "ocl":Landroid/view/View$OnClickListener;
    array-length v5, v7

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 695
    new-instance v2, Lch/android/api/ui/ChPopUpMenuView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->DI:Lch/android/api/util/DisplayInfo;

    const/4 v5, 0x0

    const v6, 0x7f020244

    .line 696
    new-instance v8, Lch/kingdoms/android/ui/network/NewNetworkUi$7;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$7;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;)V

    .line 695
    invoke-direct/range {v2 .. v8}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 708
    .local v2, "itemManagePopUpView":Lch/android/api/ui/ChPopUpMenuView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v4, v2}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 709
    return-void

    .line 692
    .end local v2    # "itemManagePopUpView":Lch/android/api/ui/ChPopUpMenuView;
    :cond_0
    aget-object v19, v7, v4

    .line 693
    .local v19, "view":Landroid/view/View;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public popUpNetworkError(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/android/ui/network/NewNetworkUi$3;

    invoke-direct {v1, p0, p1}, Lch/kingdoms/android/ui/network/NewNetworkUi$3;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 263
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->progressDialog:Landroid/app/ProgressDialog;

    .line 265
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->progressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0xbd

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->progressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0xcc

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 269
    :cond_1
    const-string v0, "NETWORK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send msg : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->numOfMsg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->numOfMsg:I

    .line 271
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->networkThread:Lch/android/api/pipelinethread/PipelineThread;

    invoke-virtual {v0, p1}, Lch/android/api/pipelinethread/PipelineThread;->sendMessage(Landroid/os/Message;)V

    .line 272
    return-void
.end method

.method public showViewInCenter()V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi;->GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

    invoke-interface {v0}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    .line 891
    return-void
.end method
