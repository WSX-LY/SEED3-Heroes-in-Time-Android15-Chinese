.class Lch/kingdoms/android/ui/NetworkUi$TotalRankView;
.super Lch/android/api/ui/ChRankView;
.source "NetworkUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/NetworkUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TotalRankView"
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/NetworkUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/NetworkUi;Landroid/content/Context;Lch/android/api/util/DisplayInfo;Z)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "di"    # Lch/android/api/util/DisplayInfo;
    .param p4, "isRegitable"    # Z

    .prologue
    .line 778
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    .line 779
    const/16 v0, 0x75

    invoke-static {v0}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0, p4}, Lch/android/api/ui/ChRankView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Z)V

    .line 781
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$TotalRankView;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->updatePage(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/NetworkUi$TotalRankView;)V
    .locals 0

    .prologue
    .line 864
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->updateMyInfo()V

    return-void
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/NetworkUi$TotalRankView;[II)V
    .locals 0

    .prologue
    .line 894
    invoke-direct {p0, p1, p2}, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->updateMyInfo([II)V

    return-void
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/NetworkUi$TotalRankView;)Lch/kingdoms/android/ui/NetworkUi;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    return-object v0
.end method

.method private updateMyInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 882
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 883
    .local v0, "myRankInfos":[I
    aput v2, v0, v3

    .line 884
    aput v2, v0, v4

    .line 885
    invoke-direct {p0, v0, v3}, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->updateMyInfo([II)V

    .line 886
    aget v1, v0, v4

    if-eq v1, v2, :cond_0

    .line 887
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getHeroScore()I

    move-result v1

    aget v2, v0, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$7(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v3

    aget v4, v0, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->updateMyInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-virtual {p0}, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->getCurPageNum()I

    move-result v1

    invoke-virtual {p0, v1}, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->onPageMove(I)V

    .line 892
    :goto_0
    return-void

    .line 890
    :cond_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getHeroScore()I

    move-result v1

    const-string v2, ""

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$7(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p0, v1, v2, v3, v4}, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->updateMyInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateMyInfo([II)V
    .locals 7
    .param p1, "myRankInfos"    # [I
    .param p2, "job"    # I

    .prologue
    const/4 v3, 0x3

    .line 895
    if-le p2, v3, :cond_0

    .line 919
    :goto_0
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v0

    new-instance v1, Lch/kingdoms/android/ui/NetworkUi$TotalRankView$3;

    invoke-direct {v1, p0, p1, p2}, Lch/kingdoms/android/ui/NetworkUi$TotalRankView$3;-><init>(Lch/kingdoms/android/ui/NetworkUi$TotalRankView;[II)V

    .line 916
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, p2, 0x3

    int-to-byte v5, v4

    move v4, v3

    .line 898
    invoke-virtual/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory;->createMyRank(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBB)Lch/kingdoms/android/network/ChPacketFactory$InquireRank;

    move-result-object v6

    .line 917
    .local v6, "myRankPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v6, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    goto :goto_0
.end method


# virtual methods
.method protected init()V
    .locals 1

    .prologue
    .line 853
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->updateMyInfo()V

    .line 854
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->onPageMove(I)V

    .line 855
    return-void
.end method

.method protected onCloseButton()V
    .locals 1

    .prologue
    .line 860
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 861
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$6(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 862
    return-void
.end method

.method protected onPageMove(I)V
    .locals 12
    .param p1, "toIndex"    # I

    .prologue
    const/16 v5, 0x9

    const/4 v0, 0x1

    const/4 v6, 0x3

    .line 786
    const/16 v10, 0x9

    .line 787
    .local v10, "NUM_RANKS":I
    if-lez p1, :cond_2

    if-eq p1, v0, :cond_1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->getRanksCount()I

    move-result v0

    if-eq v0, v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->getCurPageNum()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 788
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v0

    new-instance v1, Lch/kingdoms/android/ui/NetworkUi$TotalRankView$1;

    invoke-direct {v1, p0, p1}, Lch/kingdoms/android/ui/NetworkUi$TotalRankView$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$TotalRankView;I)V

    .line 812
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    mul-int/lit8 v3, v3, 0x9

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    move v7, v6

    move v8, v6

    move v9, v6

    .line 788
    invoke-virtual/range {v0 .. v9}, Lch/kingdoms/android/network/ChPacketFactory;->createInquireRankList(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;IBBBBBB)Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;

    move-result-object v11

    .line 815
    .local v11, "rankListPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v11, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 817
    .end local v11    # "rankListPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    :cond_2
    return-void
.end method

.method protected onRegisterRankButton()V
    .locals 9

    .prologue
    .line 822
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v6

    .line 823
    .local v6, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v6}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v7

    .line 824
    .local v7, "job":I
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getHeroScore()I

    move-result v5

    .line 825
    .local v5, "score":I
    const/4 v0, 0x4

    if-ge v7, v0, :cond_0

    .line 826
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v0

    new-instance v1, Lch/kingdoms/android/ui/NetworkUi$TotalRankView$2;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/NetworkUi$TotalRankView$2;-><init>(Lch/kingdoms/android/ui/NetworkUi$TotalRankView;)V

    .line 843
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    add-int/lit8 v4, v7, 0x3

    int-to-byte v4, v4

    .line 826
    invoke-virtual/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory;->createRegisterRank(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBI)Lch/kingdoms/android/network/ChPacketFactory$RegisterRank;

    move-result-object v8

    .line 844
    .local v8, "registerRankPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v8, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 848
    .end local v8    # "registerRankPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "register rank is disallow"

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
