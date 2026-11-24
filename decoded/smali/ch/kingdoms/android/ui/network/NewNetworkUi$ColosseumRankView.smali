.class Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView;
.super Lch/android/api/ui/ChRankView;
.source "NewNetworkUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColosseumRankView"
.end annotation


# instance fields
.field private final COLOSSEUM_NUM:I

.field final synthetic this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi;Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;IZ)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "di"    # Lch/android/api/util/DisplayInfo;
    .param p4, "colosseumName"    # Ljava/lang/String;
    .param p5, "colosseumNum"    # I
    .param p6, "isRegitable"    # Z

    .prologue
    .line 1102
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    .line 1103
    invoke-direct {p0, p2, p3, p4, p6}, Lch/android/api/ui/ChRankView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Z)V

    .line 1105
    iput p5, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView;->COLOSSEUM_NUM:I

    .line 1106
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView;->updatePage(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView;)Lch/kingdoms/android/ui/network/NewNetworkUi;
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    return-object v0
.end method


# virtual methods
.method protected init()V
    .locals 1

    .prologue
    .line 1112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView;->onPageMove(I)V

    .line 1113
    return-void
.end method

.method protected onCloseButton()V
    .locals 1

    .prologue
    .line 1163
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1164
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$13(Lch/kingdoms/android/ui/network/NewNetworkUi;)V

    .line 1165
    return-void
.end method

.method protected onPageMove(I)V
    .locals 12
    .param p1, "toIndex"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x3

    .line 1118
    const/16 v10, 0x9

    .line 1119
    .local v10, "NUM_RANKS":I
    if-lez p1, :cond_2

    if-eq p1, v0, :cond_1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView;->getRanksCount()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView;->getCurPageNum()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1120
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v0

    new-instance v1, Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView$1;

    invoke-direct {v1, p0, p1}, Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView$1;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView;I)V

    .line 1147
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x9

    iget-object v6, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v6}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$12(Lch/kingdoms/android/ui/network/NewNetworkUi;)I

    move-result v6

    int-to-byte v6, v6

    move v8, v7

    move v9, v7

    .line 1120
    invoke-virtual/range {v0 .. v9}, Lch/kingdoms/android/network/ChPacketFactory;->createInquireRankList(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;IBBBBBB)Lch/kingdoms/android/network/ChPacketFactory$InquireRankList;

    move-result-object v11

    .line 1150
    .local v11, "rankListPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$ColosseumRankView;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$5(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v11, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 1152
    .end local v11    # "rankListPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    :cond_2
    return-void
.end method

.method protected onRegisterRankButton()V
    .locals 0

    .prologue
    .line 1158
    return-void
.end method
