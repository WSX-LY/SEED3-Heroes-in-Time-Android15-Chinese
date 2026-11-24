.class public Lch/kingdoms/ndk/data/QuickSlotsData;
.super Ljava/lang/Object;
.source "QuickSlotsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    }
.end annotation


# instance fields
.field private final A_SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

.field private final B_SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

.field private final HERO:Lch/kingdoms/ndk/data/HeroStatus;

.field private final ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-array v0, v1, [Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    iput-object v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData;->A_SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    .line 12
    new-array v0, v1, [Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    iput-object v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData;->B_SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    .line 14
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData;->ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

    .line 15
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData;->HERO:Lch/kingdoms/ndk/data/HeroStatus;

    .line 10
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/ndk/data/QuickSlotsData;)[Lch/kingdoms/ndk/data/Inven$Item;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData;->ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

    return-object v0
.end method


# virtual methods
.method public addInA(IBBSSZII)V
    .locals 10
    .param p1, "_index"    # I
    .param p2, "_slotState"    # B
    .param p3, "_type"    # B
    .param p4, "_chkNum"    # S
    .param p5, "_resTargetNum"    # S
    .param p6, "_use"    # Z
    .param p7, "_coolTimeFrm"    # I
    .param p8, "_coolTimeMaxFrm"    # I

    .prologue
    .line 19
    iget-object v9, p0, Lch/kingdoms/ndk/data/QuickSlotsData;->A_SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    new-instance v0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;-><init>(Lch/kingdoms/ndk/data/QuickSlotsData;BBSSZII)V

    aput-object v0, v9, p1

    .line 20
    return-void
.end method

.method public addInB(IBBSSZII)V
    .locals 10
    .param p1, "_index"    # I
    .param p2, "_slotState"    # B
    .param p3, "_type"    # B
    .param p4, "_chkNum"    # S
    .param p5, "_resTargetNum"    # S
    .param p6, "_use"    # Z
    .param p7, "_coolTimeFrm"    # I
    .param p8, "_coolTimeMaxFrm"    # I

    .prologue
    .line 24
    iget-object v9, p0, Lch/kingdoms/ndk/data/QuickSlotsData;->B_SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    new-instance v0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;-><init>(Lch/kingdoms/ndk/data/QuickSlotsData;BBSSZII)V

    aput-object v0, v9, p1

    .line 25
    return-void
.end method

.method public final getCount(Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;)I
    .locals 2
    .param p1, "slot"    # Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    .prologue
    .line 66
    iget-short v0, p1, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->chkNum:S

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-byte v0, p1, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->type:B

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData;->ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

    iget-short v1, p1, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->chkNum:S

    aget-object v0, v0, v1

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->count:I

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getIconResId(Landroid/content/res/Resources;Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;)I
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "slot"    # Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    .prologue
    const/4 v1, -0x1

    .line 44
    iget-short v2, p2, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->chkNum:S

    if-le v2, v1, :cond_2

    .line 45
    iget-byte v2, p2, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->type:B

    packed-switch v2, :pswitch_data_0

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 48
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "itemimg_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lch/kingdoms/ndk/data/QuickSlotsData;->ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

    iget-short v3, p2, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->chkNum:S

    aget-object v2, v2, v3

    invoke-static {v2}, Lch/android/api/ui/ChItemButton;->getItemNum(Lch/kingdoms/ndk/data/Inven$Item;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "ch.kingdoms.market.compat"

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 51
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sicon_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p2, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->chkNum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "ch.kingdoms.market.compat"

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v1, p0, Lch/kingdoms/ndk/data/QuickSlotsData;->HERO:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lch/kingdoms/ndk/data/QuickSlotsData;->HERO:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getTmpJob()I

    move-result v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x6

    iget-short v2, p2, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->chkNum:S

    add-int v0, v1, v2

    .line 55
    .local v0, "iconIndex":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sicon_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "ch.kingdoms.market.compat"

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 53
    .end local v0    # "iconIndex":I
    :cond_1
    iget-object v1, p0, Lch/kingdoms/ndk/data/QuickSlotsData;->HERO:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v1

    goto :goto_1

    .line 57
    :cond_2
    iget-short v2, p2, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->chkNum:S

    if-ne v2, v1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "itemimg_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p2, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->resTargetNum:S

    iget-short v3, p2, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->resTargetNum:S

    invoke-static {v3}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetItemRes(I)Lch/kingdoms/ndk/data/ItemRes;

    move-result-object v3

    invoke-static {v2, v3}, Lch/android/api/ui/ChItemButton;->getItemNum(ILch/kingdoms/ndk/data/ItemRes;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v2, "drawable"

    const-string v3, "ch.kingdoms.market.compat"

    .line 58
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSlotA()[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData;->A_SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    return-object v0
.end method

.method public getSlotB()[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData;->B_SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    return-object v0
.end method

.method public getSlotInA(I)Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    .locals 1
    .param p1, "_index"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData;->A_SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSlotInB(I)Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    .locals 1
    .param p1, "_index"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData;->B_SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    aget-object v0, v0, p1

    return-object v0
.end method
