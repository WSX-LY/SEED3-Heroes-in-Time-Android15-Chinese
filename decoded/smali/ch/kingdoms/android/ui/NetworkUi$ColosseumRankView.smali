.class Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;
.super Lch/android/api/ui/ChRankView;
.source "NetworkUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/NetworkUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColosseumRankView"
.end annotation


# instance fields
.field private final COLOSSEUM_NUM:I

.field final synthetic this$0:Lch/kingdoms/android/ui/NetworkUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/NetworkUi;Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;IZ)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "di"    # Lch/android/api/util/DisplayInfo;
    .param p4, "colosseumName"    # Ljava/lang/String;
    .param p5, "colosseumNum"    # I
    .param p6, "isRegitable"    # Z

    .prologue
    .line 926
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    .line 927
    invoke-direct {p0, p2, p3, p4, p6}, Lch/android/api/ui/ChRankView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Z)V

    .line 929
    iput p5, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->COLOSSEUM_NUM:I

    .line 930
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->updatePage(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->updateMyInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;)Lch/kingdoms/android/ui/NetworkUi;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    return-object v0
.end method

.method private updateMyInfo()V
    .locals 7

    .prologue
    const/4 v4, 0x3

    .line 992
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v0

    new-instance v1, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$2;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$2;-><init>(Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;)V

    .line 1006
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->COLOSSEUM_NUM:I

    int-to-byte v3, v3

    move v5, v4

    .line 992
    invoke-virtual/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory;->createInquireRank(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBB)Lch/kingdoms/android/network/ChPacketFactory$InquireRank;

    move-result-object v6

    .line 1007
    .local v6, "myRankPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v6, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 1008
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .prologue
    .line 936
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->onPageMove(I)V

    .line 937
    return-void
.end method

.method protected onCloseButton()V
    .locals 1

    .prologue
    .line 987
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 988
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$9(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 989
    return-void
.end method

.method protected onPageMove(I)V
    .locals 12
    .param p1, "toIndex"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x3

    .line 942
    const/16 v10, 0x9

    .line 943
    .local v10, "NUM_RANKS":I
    if-lez p1, :cond_2

    if-eq p1, v0, :cond_1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->getRanksCount()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->getCurPageNum()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 944
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v0

    new-instance v1, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$1;

    invoke-direct {v1, p0, p1}, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;I)V

    .line 971
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x9

    iget-object v6, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v6}, Lch/kingdoms/android/ui/NetworkUi;->access$8(Lch/kingdoms/android/ui/NetworkUi;)I

    move-result v6

    int-to-byte v6, v6

    move v8, v7

    move v9, v7

    .line 944
    invoke-virtual/range {v0 .. v9}, Lch/kingdoms/android/network/ChPacketFactory;->createInquireRankList(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;IBBBBBB)Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;

    move-result-object v11

    .line 974
    .local v11, "rankListPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v11, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 976
    .end local v11    # "rankListPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    :cond_2
    return-void
.end method

.method protected onRegisterRankButton()V
    .locals 0

    .prologue
    .line 982
    return-void
.end method
