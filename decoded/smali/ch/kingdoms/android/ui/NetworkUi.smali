.class public Lch/kingdoms/android/ui/NetworkUi;
.super Ljava/lang/Object;
.source "NetworkUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/NetworkUi$AuctionView;,
        Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;,
        Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;,
        Lch/kingdoms/android/ui/NetworkUi$MyInvenView;,
        Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;,
        Lch/kingdoms/android/ui/NetworkUi$TotalRankView;
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

.field private VERSION:I

.field private colosseumNumber:I

.field final handler:Landroid/os/Handler;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/IGameMenu;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "gameMenuUi"    # Lch/kingdoms/android/ui/IGameMenu;

    .prologue
    const/4 v5, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lch/kingdoms/android/ui/NetworkUi;->handler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    .line 64
    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi;->DI:Lch/android/api/util/DisplayInfo;

    .line 66
    iput-object p3, p0, Lch/kingdoms/android/ui/NetworkUi;->GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

    .line 68
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lch/kingdoms/android/ui/NetworkUi;->PHONE_NUMBER:Ljava/lang/String;

    .line 69
    new-instance v2, Lch/android/api/network/ChNetwork;

    const-string v3, "chseed.co.kr"

    const/16 v4, 0x27e9

    invoke-direct {v2, v3, v4}, Lch/android/api/network/ChNetwork;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lch/kingdoms/android/ui/NetworkUi;->NETWORK:Lch/android/api/network/ChNetwork;

    .line 70
    new-instance v2, Lch/kingdoms/android/network/ChPacketFactory;

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lch/kingdoms/android/ui/NetworkUi;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    .line 72
    iput v5, p0, Lch/kingdoms/android/ui/NetworkUi;->VERSION:I

    .line 74
    :try_start_0
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 75
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p0, Lch/kingdoms/android/ui/NetworkUi;->VERSION:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/NetworkUi;I)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/NetworkUi;->popUpNetworkError(I)V

    return-void
.end method

.method static synthetic access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$11(Z)V
    .locals 0

    .prologue
    .line 60
    sput-boolean p0, Lch/kingdoms/android/ui/NetworkUi;->isPopUped:Z

    return-void
.end method

.method static synthetic access$12()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lch/kingdoms/android/ui/NetworkUi;->isPopUped:Z

    return v0
.end method

.method static synthetic access$13(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/ui/IGameMenu;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi;->GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

    return-object v0
.end method

.method static synthetic access$14(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 0

    .prologue
    .line 1011
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi;->popUpItemManageMenu()V

    return-void
.end method

.method static synthetic access$15(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 2497
    invoke-static {p0, p1, p2}, Lch/kingdoms/android/ui/NetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$16(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi;->popUpRegisterNewMember()V

    return-void
.end method

.method static synthetic access$17(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi;->checkSync()V

    return-void
.end method

.method static synthetic access$18(Lch/kingdoms/android/ui/NetworkUi;Lch/android/api/ui/ChPopUpEditTextView;)V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/NetworkUi;->popUpRegisterId(Lch/android/api/ui/ChPopUpEditTextView;)V

    return-void
.end method

.method static synthetic access$19(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 0

    .prologue
    .line 773
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi;->popUpRank()V

    return-void
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi;->PHONE_NUMBER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lch/kingdoms/android/ui/NetworkUi;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lch/kingdoms/android/ui/NetworkUi;->VERSION:I

    return v0
.end method

.method static synthetic access$21(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi;->checkNotice()V

    return-void
.end method

.method static synthetic access$22(Lch/kingdoms/android/ui/NetworkUi;IILch/android/api/network/ChResultPacket;)Lch/android/api/ui/ChNetworkNoticeView$NoticeData;
    .locals 1

    .prologue
    .line 519
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/ui/NetworkUi;->createNoticeData(IILch/android/api/network/ChResultPacket;)Lch/android/api/ui/ChNetworkNoticeView$NoticeData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi;->checkGift()V

    return-void
.end method

.method static synthetic access$24(Lch/kingdoms/android/ui/NetworkUi;IILch/android/api/network/ChResultPacket;)V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/ui/NetworkUi;->popUpGiftFencePopUp(IILch/android/api/network/ChResultPacket;)V

    return-void
.end method

.method static synthetic access$25(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 0

    .prologue
    .line 591
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi;->checkGiftItem()V

    return-void
.end method

.method static synthetic access$26(Lch/kingdoms/android/ui/NetworkUi;IILch/android/api/network/ChResultPacket;)V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/ui/NetworkUi;->popUpGiftItemPopUp(IILch/android/api/network/ChResultPacket;)V

    return-void
.end method

.method static synthetic access$27(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 0

    .prologue
    .line 659
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi;->checkAuction()V

    return-void
.end method

.method static synthetic access$28(Lch/kingdoms/android/ui/NetworkUi;IILch/android/api/network/ChResultPacket;)V
    .locals 0

    .prologue
    .line 681
    invoke-direct {p0, p1, p2, p3}, Lch/kingdoms/android/ui/NetworkUi;->popUpAuctionCheck(IILch/android/api/network/ChResultPacket;)V

    return-void
.end method

.method static synthetic access$29(Lch/kingdoms/android/ui/NetworkUi;I)V
    .locals 0

    .prologue
    .line 717
    iput p1, p0, Lch/kingdoms/android/ui/NetworkUi;->colosseumNumber:I

    return-void
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi;->NETWORK:Lch/android/api/network/ChNetwork;

    return-object v0
.end method

.method static synthetic access$30(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 0

    .prologue
    .line 2231
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi;->popUpMyAuction()V

    return-void
.end method

.method static synthetic access$31(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 0

    .prologue
    .line 1751
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi;->popUpMainTypeMenu()V

    return-void
.end method

.method static synthetic access$32(Lch/kingdoms/android/ui/NetworkUi;I)V
    .locals 0

    .prologue
    .line 1790
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/NetworkUi;->popUpSubTypeMenu(I)V

    return-void
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$5(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2493
    invoke-static {p0, p1}, Lch/kingdoms/android/ui/NetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi;->popUpNetworkMenu()V

    return-void
.end method

.method static synthetic access$7(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lch/kingdoms/android/ui/NetworkUi;)I
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lch/kingdoms/android/ui/NetworkUi;->colosseumNumber:I

    return v0
.end method

.method static synthetic access$9(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0}, Lch/kingdoms/android/ui/NetworkUi;->popUpColosseumMenu()V

    return-void
.end method

.method private checkAuction()V
    .locals 4

    .prologue
    .line 660
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$14;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/NetworkUi$14;-><init>(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 674
    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi;->PHONE_NUMBER:Ljava/lang/String;

    .line 660
    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createCheckSaleItems(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$CheckSaleItems;

    move-result-object v0

    .line 677
    .local v0, "auctionPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi;->NETWORK:Lch/android/api/network/ChNetwork;

    invoke-virtual {v0, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 679
    return-void
.end method

.method private checkGift()V
    .locals 4

    .prologue
    .line 531
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$10;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/NetworkUi$10;-><init>(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 568
    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi;->PHONE_NUMBER:Ljava/lang/String;

    .line 531
    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createReceivedFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$CheckReceivedFence;

    move-result-object v0

    .line 571
    .local v0, "giftFencePacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi;->NETWORK:Lch/android/api/network/ChNetwork;

    invoke-virtual {v0, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 573
    return-void
.end method

.method private checkGiftItem()V
    .locals 4

    .prologue
    .line 593
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$12;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/NetworkUi$12;-><init>(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 632
    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi;->PHONE_NUMBER:Ljava/lang/String;

    .line 593
    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createReceivedItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$CheckReceivedItem;

    move-result-object v0

    .line 635
    .local v0, "giftItemPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi;->NETWORK:Lch/android/api/network/ChNetwork;

    invoke-virtual {v0, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 637
    return-void
.end method

.method private checkNotice()V
    .locals 5

    .prologue
    .line 452
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$9;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/NetworkUi$9;-><init>(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 502
    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi;->PHONE_NUMBER:Ljava/lang/String;

    const/4 v4, 0x2

    .line 452
    invoke-virtual {v1, v2, v3, v4}, Lch/kingdoms/android/network/ChPacketFactory;->createShowNotice(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B)Lch/kingdoms/android/network/ChPacketFactory$ShowNotice;

    move-result-object v0

    .line 505
    .local v0, "noticePacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi;->NETWORK:Lch/android/api/network/ChNetwork;

    invoke-virtual {v0, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 507
    return-void
.end method

.method private checkSync()V
    .locals 4

    .prologue
    .line 411
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$8;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/NetworkUi$8;-><init>(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 446
    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi;->PHONE_NUMBER:Ljava/lang/String;

    .line 411
    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createSynchronize(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$Synchronize;

    move-result-object v0

    .line 448
    .local v0, "syncPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi;->NETWORK:Lch/android/api/network/ChNetwork;

    invoke-virtual {v0, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 449
    return-void
.end method

.method private createNoticeData(IILch/android/api/network/ChResultPacket;)Lch/android/api/ui/ChNetworkNoticeView$NoticeData;
    .locals 6
    .param p1, "pageNum"    # I
    .param p2, "size"    # I
    .param p3, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 520
    if-lez p2, :cond_0

    .line 521
    mul-int/lit8 v4, p1, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p3, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 522
    .local v1, "noticeIndex":I
    mul-int/lit8 v4, p1, 0x3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p3, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v3

    .line 523
    .local v3, "title":Ljava/lang/String;
    mul-int/lit8 v4, p1, 0x3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p3, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "contents":Ljava/lang/String;
    invoke-virtual {p3, p1}, Lch/android/api/network/ChResultPacket;->getTime(I)Lch/android/api/network/ChTime;

    move-result-object v2

    .line 525
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

    .line 527
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

.method private popUpAuctionCheck(IILch/android/api/network/ChResultPacket;)V
    .locals 8
    .param p1, "pageNum"    # I
    .param p2, "size"    # I
    .param p3, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 682
    if-lez p2, :cond_0

    .line 683
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 684
    .local v4, "txtBuffer":Ljava/lang/StringBuffer;
    new-instance v0, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v0}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    .line 686
    .local v0, "inven":Lch/kingdoms/ndk/data/Inven;
    invoke-virtual {p3, p1}, Lch/android/api/network/ChResultPacket;->getItemData(I)Lch/android/api/network/ChNetworkItemData;

    move-result-object v5

    invoke-virtual {v0, v5, p1}, Lch/kingdoms/ndk/data/Inven;->getItem(Lch/android/api/network/ChNetworkItemData;I)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    .line 687
    .local v1, "item":Lch/kingdoms/ndk/data/Inven$Item;
    invoke-virtual {p3, p1}, Lch/android/api/network/ChResultPacket;->getTime(I)Lch/android/api/network/ChTime;

    move-result-object v3

    .line 689
    .local v3, "time":Lch/android/api/network/ChTime;
    const/16 v5, 0x56

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    iget-object v5, v1, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    invoke-virtual {p3, p1}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 692
    .local v2, "result":I
    packed-switch v2, :pswitch_data_0

    .line 703
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lch/android/api/network/ChTime;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 705
    iget-object v5, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lch/kingdoms/android/ui/NetworkUi$15;

    invoke-direct {v7, p0, p1, p2, p3}, Lch/kingdoms/android/ui/NetworkUi$15;-><init>(Lch/kingdoms/android/ui/NetworkUi;IILch/android/api/network/ChResultPacket;)V

    invoke-static {v5, v6, v7}, Lch/kingdoms/android/ui/NetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 715
    .end local v0    # "inven":Lch/kingdoms/ndk/data/Inven;
    .end local v1    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    .end local v2    # "result":I
    .end local v3    # "time":Lch/android/api/network/ChTime;
    .end local v4    # "txtBuffer":Ljava/lang/StringBuffer;
    :cond_0
    return-void

    .line 694
    .restart local v0    # "inven":Lch/kingdoms/ndk/data/Inven;
    .restart local v1    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    .restart local v2    # "result":I
    .restart local v3    # "time":Lch/android/api/network/ChTime;
    .restart local v4    # "txtBuffer":Ljava/lang/StringBuffer;
    :pswitch_0
    const/16 v5, 0x58

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 697
    :pswitch_1
    const/16 v5, 0x57

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 700
    :pswitch_2
    const/16 v5, 0x59

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 692
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private popUpColosseumMenu()V
    .locals 23

    .prologue
    .line 719
    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 720
    .local v11, "appContext":Landroid/content/Context;
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 721
    .local v20, "colosseumWords":Ljava/lang/String;
    new-instance v12, Lch/android/api/ui/ChTextSlimButton;

    .line 722
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

    .line 721
    invoke-direct {v12, v11, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 723
    .local v12, "colosseum1":Lch/android/api/ui/ChTextSlimButton;
    new-instance v13, Lch/android/api/ui/ChTextSlimButton;

    .line 724
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

    .line 723
    invoke-direct {v13, v11, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 725
    .local v13, "colosseum2":Lch/android/api/ui/ChTextSlimButton;
    new-instance v14, Lch/android/api/ui/ChTextSlimButton;

    .line 726
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

    .line 725
    invoke-direct {v14, v11, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 727
    .local v14, "colosseum3":Lch/android/api/ui/ChTextSlimButton;
    new-instance v15, Lch/android/api/ui/ChTextSlimButton;

    .line 728
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

    .line 727
    invoke-direct {v15, v11, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 729
    .local v15, "colosseum4":Lch/android/api/ui/ChTextSlimButton;
    new-instance v16, Lch/android/api/ui/ChTextSlimButton;

    .line 730
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

    .line 729
    move-object/from16 v0, v16

    invoke-direct {v0, v11, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 731
    .local v16, "colosseum5":Lch/android/api/ui/ChTextSlimButton;
    new-instance v17, Lch/android/api/ui/ChTextSlimButton;

    .line 732
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

    .line 731
    move-object/from16 v0, v17

    invoke-direct {v0, v11, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 733
    .local v17, "colosseum6":Lch/android/api/ui/ChTextSlimButton;
    new-instance v18, Lch/android/api/ui/ChTextSlimButton;

    .line 734
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

    .line 733
    move-object/from16 v0, v18

    invoke-direct {v0, v11, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 735
    .local v18, "colosseum7":Lch/android/api/ui/ChTextSlimButton;
    new-instance v19, Lch/android/api/ui/ChTextSlimButton;

    .line 736
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

    .line 735
    move-object/from16 v0, v19

    invoke-direct {v0, v11, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 737
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

    .line 738
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

    .line 739
    .local v9, "views2":[Landroid/view/View;
    new-instance v3, Lch/android/api/ui/ChPopUpMenuView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lch/kingdoms/android/ui/NetworkUi;->DI:Lch/android/api/util/DisplayInfo;

    const/4 v6, 0x0

    const v7, 0x7f020249

    new-instance v10, Lch/kingdoms/android/ui/NetworkUi$16;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lch/kingdoms/android/ui/NetworkUi$16;-><init>(Lch/kingdoms/android/ui/NetworkUi;)V

    invoke-direct/range {v3 .. v10}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 752
    .local v3, "popUpMenuView":Lch/android/api/ui/ChPopUpMenuView;
    new-instance v22, Lch/kingdoms/android/ui/NetworkUi$17;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v11, v2}, Lch/kingdoms/android/ui/NetworkUi$17;-><init>(Lch/kingdoms/android/ui/NetworkUi;Landroid/content/Context;Ljava/lang/String;)V

    .line 762
    .local v22, "ocl":Landroid/view/View$OnClickListener;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    array-length v4, v8

    move/from16 v0, v21

    if-lt v0, v4, :cond_0

    .line 766
    const/16 v21, 0x0

    :goto_1
    array-length v4, v9

    move/from16 v0, v21

    if-lt v0, v4, :cond_1

    .line 770
    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v4, v3}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 771
    return-void

    .line 763
    :cond_0
    aget-object v4, v8, v21

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->setId(I)V

    .line 764
    aget-object v4, v8, v21

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 767
    :cond_1
    aget-object v4, v9, v21

    array-length v5, v8

    add-int v5, v5, v21

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 768
    aget-object v4, v9, v21

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    add-int/lit8 v21, v21, 0x1

    goto :goto_1
.end method

.method private popUpGiftFencePopUp(IILch/android/api/network/ChResultPacket;)V
    .locals 5
    .param p1, "pageNum"    # I
    .param p2, "size"    # I
    .param p3, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 576
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 577
    .local v1, "txtBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {p3, p1}, Lch/android/api/network/ChResultPacket;->getTime(I)Lch/android/api/network/ChTime;

    move-result-object v0

    .line 578
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

    .line 579
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

    .line 578
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lch/kingdoms/android/ui/NetworkUi$11;

    invoke-direct {v4, p0, p1, p2, p3}, Lch/kingdoms/android/ui/NetworkUi$11;-><init>(Lch/kingdoms/android/ui/NetworkUi;IILch/android/api/network/ChResultPacket;)V

    invoke-static {v2, v3, v4}, Lch/kingdoms/android/ui/NetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 589
    return-void
.end method

.method private popUpGiftItemPopUp(IILch/android/api/network/ChResultPacket;)V
    .locals 7
    .param p1, "pageNum"    # I
    .param p2, "size"    # I
    .param p3, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 642
    new-instance v0, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v0}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    .line 643
    .local v0, "inven":Lch/kingdoms/ndk/data/Inven;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 644
    .local v3, "txtBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {p3, p1}, Lch/android/api/network/ChResultPacket;->getItemData(I)Lch/android/api/network/ChNetworkItemData;

    move-result-object v4

    invoke-virtual {v0, v4, p1}, Lch/kingdoms/ndk/data/Inven;->getItem(Lch/android/api/network/ChNetworkItemData;I)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    .line 645
    .local v1, "item":Lch/kingdoms/ndk/data/Inven$Item;
    invoke-virtual {p3, p1}, Lch/android/api/network/ChResultPacket;->getTime(I)Lch/android/api/network/ChTime;

    move-result-object v2

    .line 646
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

    .line 647
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

    .line 646
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 648
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lch/kingdoms/android/ui/NetworkUi$13;

    invoke-direct {v6, p0, p1, p2, p3}, Lch/kingdoms/android/ui/NetworkUi$13;-><init>(Lch/kingdoms/android/ui/NetworkUi;IILch/android/api/network/ChResultPacket;)V

    invoke-static {v4, v5, v6}, Lch/kingdoms/android/ui/NetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 657
    return-void
.end method

.method private popUpItemManageMenu()V
    .locals 19

    .prologue
    .line 1012
    const/16 v10, 0x64

    .line 1013
    .local v10, "ID_DEPOSIT":I
    const/16 v12, 0x65

    .line 1014
    .local v12, "ID_NETWORK_INVEN":I
    const/16 v11, 0x66

    .line 1015
    .local v11, "ID_MY_AUCTION":I
    const/16 v9, 0x67

    .line 1016
    .local v9, "ID_AUCTION":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1017
    .local v3, "appContext":Landroid/content/Context;
    new-instance v14, Lch/android/api/ui/ChTextSlimButton;

    const v4, 0x7f020205

    const v5, 0x7f020204

    const/16 v6, 0x12

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v3, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1018
    .local v14, "depositBtn":Landroid/view/View;
    const/16 v4, 0x64

    invoke-virtual {v14, v4}, Landroid/view/View;->setId(I)V

    .line 1019
    new-instance v16, Lch/android/api/ui/ChTextSlimButton;

    const v4, 0x7f020205

    const v5, 0x7f020204

    const/16 v6, 0xc

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1020
    .local v16, "networkInvenBtn":Landroid/view/View;
    const/16 v4, 0x65

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    .line 1021
    new-instance v15, Lch/android/api/ui/ChTextSlimButton;

    const v4, 0x7f020205

    const v5, 0x7f020204

    const/16 v6, 0x3b

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v15, v3, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1022
    .local v15, "myAuctionBtn":Landroid/view/View;
    const/16 v4, 0x66

    invoke-virtual {v15, v4}, Landroid/view/View;->setId(I)V

    .line 1023
    new-instance v13, Lch/android/api/ui/ChTextSlimButton;

    const v4, 0x7f020205

    const v5, 0x7f020204

    const/16 v6, 0xd

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v13, v3, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1024
    .local v13, "auctionBtn":Landroid/view/View;
    const/16 v4, 0x67

    invoke-virtual {v13, v4}, Landroid/view/View;->setId(I)V

    .line 1025
    const/4 v4, 0x4

    new-array v7, v4, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v14, v7, v4

    const/4 v4, 0x1

    aput-object v16, v7, v4

    const/4 v4, 0x2

    aput-object v15, v7, v4

    const/4 v4, 0x3

    aput-object v13, v7, v4

    .line 1027
    .local v7, "views":[Landroid/view/View;
    new-instance v17, Lch/kingdoms/android/ui/NetworkUi$18;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lch/kingdoms/android/ui/NetworkUi$18;-><init>(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 1067
    .local v17, "ocl":Landroid/view/View$OnClickListener;
    array-length v5, v7

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 1070
    new-instance v2, Lch/android/api/ui/ChPopUpMenuView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/NetworkUi;->DI:Lch/android/api/util/DisplayInfo;

    const/4 v5, 0x0

    const v6, 0x7f020244

    .line 1071
    new-instance v8, Lch/kingdoms/android/ui/NetworkUi$19;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lch/kingdoms/android/ui/NetworkUi$19;-><init>(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 1070
    invoke-direct/range {v2 .. v8}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1079
    .local v2, "itemManagePopUpView":Lch/android/api/ui/ChPopUpMenuView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v4, v2}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 1080
    return-void

    .line 1067
    .end local v2    # "itemManagePopUpView":Lch/android/api/ui/ChPopUpMenuView;
    :cond_0
    aget-object v18, v7, v4

    .line 1068
    .local v18, "view":Landroid/view/View;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private popUpMainTypeMenu()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const v6, 0x7f020205

    const v4, 0x7f020204

    .line 1752
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1753
    .local v1, "appContext":Landroid/content/Context;
    new-instance v12, Lch/android/api/ui/ChTextSlimButton;

    const/16 v2, 0x23

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v1, v6, v4, v2}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1754
    .local v12, "weaponBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v2, 0x64

    invoke-virtual {v12, v2}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1755
    new-instance v7, Lch/android/api/ui/ChTextSlimButton;

    const/16 v2, 0x24

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v6, v4, v2}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1756
    .local v7, "armorBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v2, 0x65

    invoke-virtual {v7, v2}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1757
    new-instance v9, Lch/android/api/ui/ChTextSlimButton;

    const/16 v2, 0x25

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v1, v6, v4, v2}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1758
    .local v9, "ringBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v2, 0x66

    invoke-virtual {v9, v2}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1759
    new-instance v10, Lch/android/api/ui/ChTextSlimButton;

    const/16 v2, 0x26

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v1, v6, v4, v2}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1760
    .local v10, "useBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v2, 0x67

    invoke-virtual {v10, v2}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1762
    const/4 v2, 0x4

    new-array v5, v2, [Landroid/view/View;

    aput-object v12, v5, v3

    const/4 v2, 0x1

    aput-object v7, v5, v2

    const/4 v2, 0x2

    aput-object v9, v5, v2

    const/4 v2, 0x3

    aput-object v10, v5, v2

    .line 1763
    .local v5, "views":[Landroid/view/View;
    new-instance v8, Lch/kingdoms/android/ui/NetworkUi$20;

    invoke-direct {v8, p0}, Lch/kingdoms/android/ui/NetworkUi$20;-><init>(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 1772
    .local v8, "ocl":Landroid/view/View$OnClickListener;
    array-length v4, v5

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 1775
    new-instance v0, Lch/android/api/ui/ChPopUpMenuView;

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi;->DI:Lch/android/api/util/DisplayInfo;

    const v4, 0x7f020244

    new-instance v6, Lch/kingdoms/android/ui/NetworkUi$21;

    invoke-direct {v6, p0}, Lch/kingdoms/android/ui/NetworkUi$21;-><init>(Lch/kingdoms/android/ui/NetworkUi;)V

    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1787
    .local v0, "mainTypeMenuView":Lch/android/api/ui/ChPopUpMenuView;
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v2, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 1788
    return-void

    .line 1772
    .end local v0    # "mainTypeMenuView":Lch/android/api/ui/ChPopUpMenuView;
    :cond_0
    aget-object v11, v5, v2

    .line 1773
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1772
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private popUpMyAuction()V
    .locals 8

    .prologue
    .line 2232
    new-instance v0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi;->DI:Lch/android/api/util/DisplayInfo;

    const/16 v1, 0x1e

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v4

    .line 2233
    const-string v5, "0"

    const/4 v6, 0x7

    const v7, 0x7f0202bb

    move-object v1, p0

    .line 2232
    invoke-direct/range {v0 .. v7}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;-><init>(Lch/kingdoms/android/ui/NetworkUi;Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2234
    .local v0, "myAuctionView":Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 2235
    return-void
.end method

.method private popUpNetworkError(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi;->handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/android/ui/NetworkUi$1;

    invoke-direct {v1, p0, p1}, Lch/kingdoms/android/ui/NetworkUi$1;-><init>(Lch/kingdoms/android/ui/NetworkUi;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    return-void
.end method

.method private popUpNetworkMenu()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi;->handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/android/ui/NetworkUi$7;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/NetworkUi$7;-><init>(Lch/kingdoms/android/ui/NetworkUi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    return-void
.end method

.method private static popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2494
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lch/kingdoms/android/ui/NetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 2495
    return-void
.end method

.method private static popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 2498
    sget-boolean v0, Lch/kingdoms/android/ui/NetworkUi;->isPopUped:Z

    .line 2499
    .local v0, "isAlreadyPopUped":Z
    const/4 v1, 0x1

    sput-boolean v1, Lch/kingdoms/android/ui/NetworkUi;->isPopUped:Z

    .line 2500
    new-instance v1, Lch/kingdoms/android/ui/NetworkUi$25;

    invoke-direct {v1, v0, p2}, Lch/kingdoms/android/ui/NetworkUi$25;-><init>(ZLandroid/view/View$OnClickListener;)V

    invoke-static {p0, p1, v1}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 2517
    return-void
.end method

.method private popUpRank()V
    .locals 5

    .prologue
    .line 774
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    new-instance v1, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi;->DI:Lch/android/api/util/DisplayInfo;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;-><init>(Lch/kingdoms/android/ui/NetworkUi;Landroid/content/Context;Lch/android/api/util/DisplayInfo;Z)V

    invoke-static {v0, v1}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 775
    return-void
.end method

.method private popUpRegisterId(Lch/android/api/ui/ChPopUpEditTextView;)V
    .locals 7
    .param p1, "editTxtPopUp"    # Lch/android/api/ui/ChPopUpEditTextView;

    .prologue
    .line 317
    invoke-virtual {p1}, Lch/android/api/ui/ChPopUpEditTextView;->getEditText()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "idStr":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 319
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    const/16 v1, 0xda

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$5;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/NetworkUi$5;-><init>(Lch/kingdoms/android/ui/NetworkUi;)V

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/NetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 355
    :goto_0
    return-void

    .line 326
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_2

    .line 327
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    const/16 v1, 0xdd

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_2
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    new-instance v1, Lch/kingdoms/android/ui/NetworkUi$6;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/NetworkUi$6;-><init>(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 352
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi;->PHONE_NUMBER:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget v5, p0, Lch/kingdoms/android/ui/NetworkUi;->VERSION:I

    .line 329
    invoke-virtual/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory;->createRegisterMember(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;

    move-result-object v6

    .line 353
    .local v6, "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi;->NETWORK:Lch/android/api/network/ChNetwork;

    invoke-virtual {v6, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    goto :goto_0
.end method

.method private popUpRegisterNewMember()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi;->handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/android/ui/NetworkUi$4;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/NetworkUi$4;-><init>(Lch/kingdoms/android/ui/NetworkUi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    return-void
.end method

.method private popUpSubTypeMenu(I)V
    .locals 21
    .param p1, "mainType"    # I

    .prologue
    .line 1791
    move-object/from16 v0, p0

    iget-object v5, v0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1792
    .local v4, "appContext":Landroid/content/Context;
    const/4 v8, 0x0

    check-cast v8, [Landroid/view/View;

    .line 1793
    .local v8, "views":[Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 1832
    :goto_0
    if-eqz v8, :cond_1

    .line 1833
    new-instance v3, Lch/android/api/ui/ChPopUpMenuView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lch/kingdoms/android/ui/NetworkUi;->DI:Lch/android/api/util/DisplayInfo;

    const/4 v6, 0x0

    const v7, 0x7f020244

    new-instance v9, Lch/kingdoms/android/ui/NetworkUi$22;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lch/kingdoms/android/ui/NetworkUi$22;-><init>(Lch/kingdoms/android/ui/NetworkUi;)V

    invoke-direct/range {v3 .. v9}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1847
    .local v3, "subTypeMenuView":Lch/android/api/ui/ChPopUpMenuView;
    new-instance v17, Lch/kingdoms/android/ui/NetworkUi$23;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lch/kingdoms/android/ui/NetworkUi$23;-><init>(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 1875
    .local v17, "ocl":Landroid/view/View$OnClickListener;
    array-length v6, v8

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v6, :cond_0

    .line 1878
    move-object/from16 v0, p0

    iget-object v5, v0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v5, v3}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 1900
    .end local v3    # "subTypeMenuView":Lch/android/api/ui/ChPopUpMenuView;
    .end local v17    # "ocl":Landroid/view/View$OnClickListener;
    :goto_2
    return-void

    .line 1795
    :pswitch_0
    new-instance v18, Lch/android/api/ui/ChTextSlimButton;

    const v5, 0x7f020205

    const v6, 0x7f020204

    const/16 v7, 0x28

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5, v6, v7}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1796
    .local v18, "swordBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v5, 0xc8

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1797
    new-instance v13, Lch/android/api/ui/ChTextSlimButton;

    const v5, 0x7f020205

    const v6, 0x7f020204

    const/16 v7, 0x29

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v13, v4, v5, v6, v7}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1798
    .local v13, "chakramBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v5, 0xc9

    invoke-virtual {v13, v5}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1799
    new-instance v12, Lch/android/api/ui/ChTextSlimButton;

    const v5, 0x7f020205

    const v6, 0x7f020204

    const/16 v7, 0x2a

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v12, v4, v5, v6, v7}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1800
    .local v12, "bowBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v5, 0xca

    invoke-virtual {v12, v5}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1801
    new-instance v20, Lch/android/api/ui/ChTextSlimButton;

    const v5, 0x7f020205

    const v6, 0x7f020204

    const/16 v7, 0x2b

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5, v6, v7}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1802
    .local v20, "wandBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v5, 0xcb

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1803
    const/4 v5, 0x4

    new-array v8, v5, [Landroid/view/View;

    .line 1804
    const/4 v5, 0x0

    aput-object v18, v8, v5

    .line 1805
    const/4 v5, 0x1

    aput-object v13, v8, v5

    .line 1806
    const/4 v5, 0x2

    aput-object v12, v8, v5

    .line 1807
    const/4 v5, 0x3

    aput-object v20, v8, v5

    goto/16 :goto_0

    .line 1810
    .end local v12    # "bowBtn":Lch/android/api/ui/ChTextSlimButton;
    .end local v13    # "chakramBtn":Lch/android/api/ui/ChTextSlimButton;
    .end local v18    # "swordBtn":Lch/android/api/ui/ChTextSlimButton;
    .end local v20    # "wandBtn":Lch/android/api/ui/ChTextSlimButton;
    :pswitch_1
    new-instance v16, Lch/android/api/ui/ChTextSlimButton;

    const v5, 0x7f020205

    const v6, 0x7f020204

    const/16 v7, 0x2c

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5, v6, v7}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1811
    .local v16, "helmetBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v5, 0xd2

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1812
    new-instance v10, Lch/android/api/ui/ChTextSlimButton;

    const v5, 0x7f020205

    const v6, 0x7f020204

    const/16 v7, 0x2d

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v4, v5, v6, v7}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1813
    .local v10, "armorBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v5, 0xd3

    invoke-virtual {v10, v5}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1814
    new-instance v15, Lch/android/api/ui/ChTextSlimButton;

    const v5, 0x7f020205

    const v6, 0x7f020204

    const/16 v7, 0x2e

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v4, v5, v6, v7}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1815
    .local v15, "glovesBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v5, 0xd4

    invoke-virtual {v15, v5}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1816
    new-instance v11, Lch/android/api/ui/ChTextSlimButton;

    const v5, 0x7f020205

    const v6, 0x7f020204

    const/16 v7, 0x2f

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v11, v4, v5, v6, v7}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1817
    .local v11, "bootsBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v5, 0xd5

    invoke-virtual {v11, v5}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 1818
    const/4 v5, 0x4

    new-array v8, v5, [Landroid/view/View;

    .line 1819
    const/4 v5, 0x0

    aput-object v16, v8, v5

    .line 1820
    const/4 v5, 0x1

    aput-object v10, v8, v5

    .line 1821
    const/4 v5, 0x2

    aput-object v15, v8, v5

    .line 1822
    const/4 v5, 0x3

    aput-object v11, v8, v5

    goto/16 :goto_0

    .line 1825
    .end local v10    # "armorBtn":Lch/android/api/ui/ChTextSlimButton;
    .end local v11    # "bootsBtn":Lch/android/api/ui/ChTextSlimButton;
    .end local v15    # "glovesBtn":Lch/android/api/ui/ChTextSlimButton;
    .end local v16    # "helmetBtn":Lch/android/api/ui/ChTextSlimButton;
    :pswitch_2
    const/4 v8, 0x0

    check-cast v8, [Landroid/view/View;

    .line 1826
    goto/16 :goto_0

    .line 1828
    :pswitch_3
    const/4 v8, 0x0

    check-cast v8, [Landroid/view/View;

    goto/16 :goto_0

    .line 1875
    .restart local v3    # "subTypeMenuView":Lch/android/api/ui/ChPopUpMenuView;
    .restart local v17    # "ocl":Landroid/view/View$OnClickListener;
    :cond_0
    aget-object v19, v8, v5

    .line 1876
    .local v19, "view":Landroid/view/View;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1875
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1880
    .end local v3    # "subTypeMenuView":Lch/android/api/ui/ChPopUpMenuView;
    .end local v17    # "ocl":Landroid/view/View$OnClickListener;
    .end local v19    # "view":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lch/kingdoms/android/ui/NetworkUi;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    new-instance v6, Lch/kingdoms/android/ui/NetworkUi$24;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v6, v0, v1}, Lch/kingdoms/android/ui/NetworkUi$24;-><init>(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 1896
    move-object/from16 v0, p0

    iget-object v7, v0, Lch/kingdoms/android/ui/NetworkUi;->PHONE_NUMBER:Ljava/lang/String;

    .line 1880
    invoke-virtual {v5, v6, v7}, Lch/kingdoms/android/network/ChPacketFactory;->createShowFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$ShowFence;

    move-result-object v14

    .line 1897
    .local v14, "fencePacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    move-object/from16 v0, p0

    iget-object v5, v0, Lch/kingdoms/android/ui/NetworkUi;->NETWORK:Lch/android/api/network/ChNetwork;

    invoke-virtual {v14, v5}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    goto/16 :goto_2

    .line 1793
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public popUpNetworkView()V
    .locals 6

    .prologue
    .line 201
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi;->GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

    invoke-interface {v2}, Lch/kingdoms/android/ui/IGameMenu;->hideViewInCenter()V

    .line 202
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi;->ACTIVITY:Landroid/app/Activity;

    const/16 v3, 0xbd

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 203
    .local v1, "pd":Landroid/app/ProgressDialog;
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 204
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$2;

    invoke-direct {v2, p0, v1}, Lch/kingdoms/android/ui/NetworkUi$2;-><init>(Lch/kingdoms/android/ui/NetworkUi;Landroid/app/ProgressDialog;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 257
    .local v0, "connectThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 259
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi;->handler:Landroid/os/Handler;

    new-instance v3, Lch/kingdoms/android/ui/NetworkUi$3;

    invoke-direct {v3, p0, v0, v1}, Lch/kingdoms/android/ui/NetworkUi$3;-><init>(Lch/kingdoms/android/ui/NetworkUi;Ljava/lang/Thread;Landroid/app/ProgressDialog;)V

    .line 283
    const-wide/16 v4, 0x7530

    .line 259
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    return-void
.end method
