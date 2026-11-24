.class Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;
.super Lch/android/api/ui/ChRankView;
.source "NewNetworkUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TotalRankView"
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi;Landroid/content/Context;Lch/android/api/util/DisplayInfo;Z)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "di"    # Lch/android/api/util/DisplayInfo;
    .param p4, "isRegitable"    # Z

    .prologue
    .line 954
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    .line 955
    const/16 v0, 0x75

    invoke-static {v0}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0, p4}, Lch/android/api/ui/ChRankView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Z)V

    .line 957
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->updatePage(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;)V
    .locals 0

    .prologue
    .line 1040
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->updateMyInfo()V

    return-void
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;[II)V
    .locals 0

    .prologue
    .line 1070
    invoke-direct {p0, p1, p2}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->updateMyInfo([II)V

    return-void
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;)Lch/kingdoms/android/ui/network/NewNetworkUi;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    return-object v0
.end method

.method private updateMyInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1058
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1059
    .local v0, "myRankInfos":[I
    aput v2, v0, v3

    .line 1060
    aput v2, v0, v4

    .line 1061
    invoke-direct {p0, v0, v3}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->updateMyInfo([II)V

    .line 1062
    aget v1, v0, v4

    if-eq v1, v2, :cond_0

    .line 1063
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getHeroScore()I

    move-result v1

    aget v2, v0, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$11(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v3

    aget v4, v0, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->updateMyInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->getCurPageNum()I

    move-result v1

    invoke-virtual {p0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->onPageMove(I)V

    .line 1068
    :goto_0
    return-void

    .line 1066
    :cond_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getHeroScore()I

    move-result v1

    const-string v2, ""

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$11(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p0, v1, v2, v3, v4}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->updateMyInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateMyInfo([II)V
    .locals 7
    .param p1, "myRankInfos"    # [I
    .param p2, "job"    # I

    .prologue
    const/4 v3, 0x3

    .line 1071
    if-le p2, v3, :cond_0

    .line 1095
    :goto_0
    return-void

    .line 1074
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v0

    new-instance v1, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$3;

    invoke-direct {v1, p0, p1, p2}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$3;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;[II)V

    .line 1092
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, p2, 0x3

    int-to-byte v5, v4

    move v4, v3

    .line 1074
    invoke-virtual/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory;->createMyRank(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBB)Lch/kingdoms/android/network/ChPacketFactory$InquireRank;

    move-result-object v6

    .line 1093
    .local v6, "myRankPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$5(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v6, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    goto :goto_0
.end method


# virtual methods
.method protected init()V
    .locals 1

    .prologue
    .line 1029
    invoke-direct {p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->updateMyInfo()V

    .line 1030
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->onPageMove(I)V

    .line 1031
    return-void
.end method

.method protected onCloseButton()V
    .locals 1

    .prologue
    .line 1036
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1037
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$10(Lch/kingdoms/android/ui/network/NewNetworkUi;)V

    .line 1038
    return-void
.end method

.method protected onPageMove(I)V
    .locals 12
    .param p1, "toIndex"    # I

    .prologue
    const/16 v5, 0x9

    const/4 v0, 0x1

    const/4 v6, 0x3

    .line 962
    const/16 v10, 0x9

    .line 963
    .local v10, "NUM_RANKS":I
    if-lez p1, :cond_2

    if-eq p1, v0, :cond_1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->getRanksCount()I

    move-result v0

    if-eq v0, v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->getCurPageNum()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 964
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v0

    new-instance v1, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$1;

    invoke-direct {v1, p0, p1}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$1;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;I)V

    .line 988
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    mul-int/lit8 v3, v3, 0x9

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    move v7, v6

    move v8, v6

    move v9, v6

    .line 964
    invoke-virtual/range {v0 .. v9}, Lch/kingdoms/android/network/ChPacketFactory;->createInquireRankList(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;IBBBBBB)Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;

    move-result-object v11

    .line 991
    .local v11, "rankListPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$5(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v11, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 993
    .end local v11    # "rankListPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    :cond_2
    return-void
.end method

.method protected onRegisterRankButton()V
    .locals 9

    .prologue
    .line 998
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v6

    .line 999
    .local v6, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v6}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v7

    .line 1000
    .local v7, "job":I
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getHeroScore()I

    move-result v5

    .line 1001
    .local v5, "score":I
    const/4 v0, 0x4

    if-ge v7, v0, :cond_0

    .line 1002
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v0

    new-instance v1, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$2;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$2;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;)V

    .line 1019
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    add-int/lit8 v4, v7, 0x3

    int-to-byte v4, v4

    .line 1002
    invoke-virtual/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory;->createRegisterRank(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBI)Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;

    move-result-object v8

    .line 1020
    .local v8, "registerRankPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$5(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v8, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 1024
    .end local v8    # "registerRankPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "register rank is disallow"

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
