.class public Lch/android/api/ui/ChPopUpQuickSlot;
.super Lch/android/api/ui/ChPopUpView;
.source "ChPopUpQuickSlot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;
    }
.end annotation


# instance fields
.field private final A_SLOT:Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;

.field private final B_SLOT:Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;

.field private final CLOSE_BTN:Lch/android/api/ui/ChImageButton;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final HERO:Lch/kingdoms/ndk/data/HeroStatus;

.field private final ITEMNS:[Lch/kingdoms/ndk/data/Inven$Item;

.field private final NUM:I

.field private final QUICK_SLOTS_DATA:Lch/kingdoms/ndk/data/QuickSlotsData;

.field private final TYPE:I

.field private m_layout:Lch/android/api/ui/ChRelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;III)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "_bgBmpId"    # I
    .param p4, "_type"    # I
    .param p5, "_num"    # I

    .prologue
    .line 40
    const/4 v5, 0x1

    invoke-direct {p0, p1, p2, p3, v5}, Lch/android/api/ui/ChPopUpView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZ)V

    .line 26
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v5

    iput-object v5, p0, Lch/android/api/ui/ChPopUpQuickSlot;->HERO:Lch/kingdoms/ndk/data/HeroStatus;

    .line 27
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v5

    invoke-virtual {v5}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    iput-object v5, p0, Lch/android/api/ui/ChPopUpQuickSlot;->ITEMNS:[Lch/kingdoms/ndk/data/Inven$Item;

    .line 28
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetQuickSlotsData()Lch/kingdoms/ndk/data/QuickSlotsData;

    move-result-object v5

    iput-object v5, p0, Lch/android/api/ui/ChPopUpQuickSlot;->QUICK_SLOTS_DATA:Lch/kingdoms/ndk/data/QuickSlotsData;

    .line 42
    iput-object p2, p0, Lch/android/api/ui/ChPopUpQuickSlot;->DI:Lch/android/api/util/DisplayInfo;

    .line 43
    invoke-super {p0, p3}, Lch/android/api/ui/ChPopUpView;->setBackgroundResource(I)V

    .line 45
    iput p4, p0, Lch/android/api/ui/ChPopUpQuickSlot;->TYPE:I

    .line 46
    iput p5, p0, Lch/android/api/ui/ChPopUpQuickSlot;->NUM:I

    .line 48
    new-instance v5, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;

    iget-object v6, p0, Lch/android/api/ui/ChPopUpQuickSlot;->QUICK_SLOTS_DATA:Lch/kingdoms/ndk/data/QuickSlotsData;

    invoke-virtual {v6}, Lch/kingdoms/ndk/data/QuickSlotsData;->getSlotA()[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    move-result-object v6

    const v7, 0x7f020006

    invoke-direct {v5, p0, p1, v6, v7}, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;-><init>(Lch/android/api/ui/ChPopUpQuickSlot;Landroid/content/Context;[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;I)V

    iput-object v5, p0, Lch/android/api/ui/ChPopUpQuickSlot;->A_SLOT:Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;

    .line 49
    new-instance v5, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;

    iget-object v6, p0, Lch/android/api/ui/ChPopUpQuickSlot;->QUICK_SLOTS_DATA:Lch/kingdoms/ndk/data/QuickSlotsData;

    invoke-virtual {v6}, Lch/kingdoms/ndk/data/QuickSlotsData;->getSlotB()[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    move-result-object v6

    const v7, 0x7f02002c

    invoke-direct {v5, p0, p1, v6, v7}, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;-><init>(Lch/android/api/ui/ChPopUpQuickSlot;Landroid/content/Context;[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;I)V

    iput-object v5, p0, Lch/android/api/ui/ChPopUpQuickSlot;->B_SLOT:Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;

    .line 50
    new-instance v5, Lch/android/api/ui/ChImageButton;

    const v6, 0x7f02007a

    const v7, 0x7f02007a

    invoke-direct {v5, p1, v6, v7}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lch/android/api/ui/ChPopUpQuickSlot;->CLOSE_BTN:Lch/android/api/ui/ChImageButton;

    .line 51
    iget-object v5, p0, Lch/android/api/ui/ChPopUpQuickSlot;->CLOSE_BTN:Lch/android/api/ui/ChImageButton;

    const/16 v6, 0x2744

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 52
    iget-object v5, p0, Lch/android/api/ui/ChPopUpQuickSlot;->CLOSE_BTN:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v5, p0}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-super {p0, p0}, Lch/android/api/ui/ChPopUpView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v5, p0, Lch/android/api/ui/ChPopUpQuickSlot;->m_layout:Lch/android/api/ui/ChRelativeLayout;

    if-eqz v5, :cond_0

    .line 57
    new-instance v0, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v0, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "llayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 59
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v1, "llp1":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x0

    iget-object v6, p0, Lch/android/api/ui/ChPopUpQuickSlot;->DI:Lch/android/api/util/DisplayInfo;

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v7, 0x40e00000    # 7.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x0

    iget-object v8, p0, Lch/android/api/ui/ChPopUpQuickSlot;->DI:Lch/android/api/util/DisplayInfo;

    iget v8, v8, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v9, 0x40e00000    # 7.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 61
    iget-object v5, p0, Lch/android/api/ui/ChPopUpQuickSlot;->A_SLOT:Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;

    invoke-virtual {v0, v5, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v2, "llp2":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x0

    iget-object v6, p0, Lch/android/api/ui/ChPopUpQuickSlot;->DI:Lch/android/api/util/DisplayInfo;

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 64
    iget-object v5, p0, Lch/android/api/ui/ChPopUpQuickSlot;->B_SLOT:Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;

    invoke-virtual {v0, v5, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v3, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lch/android/api/ui/ChPopUpQuickSlot;->DI:Lch/android/api/util/DisplayInfo;

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x420c0000    # 35.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 67
    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    iget-object v5, p0, Lch/android/api/ui/ChPopUpQuickSlot;->m_layout:Lch/android/api/ui/ChRelativeLayout;

    invoke-virtual {v5, v0, v3}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v4, "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    iget v5, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x41600000    # 14.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 75
    iget v5, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x41400000    # 12.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 76
    iget-object v5, p0, Lch/android/api/ui/ChPopUpQuickSlot;->m_layout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v6, p0, Lch/android/api/ui/ChPopUpQuickSlot;->CLOSE_BTN:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v5, v6, v4}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .end local v0    # "llayout":Lch/android/api/ui/ChLinearLayout;
    .end local v1    # "llp1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "llp2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lch/android/api/ui/ChPopUpQuickSlot;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$1(Lch/android/api/ui/ChPopUpQuickSlot;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lch/android/api/ui/ChPopUpQuickSlot;->TYPE:I

    return v0
.end method

.method static synthetic access$2(Lch/android/api/ui/ChPopUpQuickSlot;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lch/android/api/ui/ChPopUpQuickSlot;->NUM:I

    return v0
.end method

.method static synthetic access$3(Lch/android/api/ui/ChPopUpQuickSlot;)[Lch/kingdoms/ndk/data/Inven$Item;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot;->ITEMNS:[Lch/kingdoms/ndk/data/Inven$Item;

    return-object v0
.end method

.method static synthetic access$4(Lch/android/api/ui/ChPopUpQuickSlot;)Lch/kingdoms/ndk/data/HeroStatus;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot;->HERO:Lch/kingdoms/ndk/data/HeroStatus;

    return-object v0
.end method


# virtual methods
.method protected getBtnsLayout(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .param p1, "_txtViewId"    # I

    .prologue
    .line 117
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 119
    const/4 v1, -0x2

    const/4 v2, -0x1

    .line 117
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 120
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    return-object v0
.end method

.method protected getBtnsView(Landroid/content/Context;F)Landroid/view/View;
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_density"    # F

    .prologue
    .line 109
    new-instance v0, Lch/android/api/ui/ChRelativeLayout;

    invoke-direct {v0, p1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot;->m_layout:Lch/android/api/ui/ChRelativeLayout;

    .line 111
    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot;->m_layout:Lch/android/api/ui/ChRelativeLayout;

    return-object v0
.end method

.method protected isNeedScroll()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x1

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const/16 v5, 0x2744

    if-ne v4, v5, :cond_0

    .line 84
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 85
    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot;->QUICK_SLOTS_DATA:Lch/kingdoms/ndk/data/QuickSlotsData;

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/QuickSlotsData;->getSlotA()[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    move-result-object v0

    .line 86
    .local v0, "aslots":[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v8, :cond_1

    .line 94
    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot;->QUICK_SLOTS_DATA:Lch/kingdoms/ndk/data/QuickSlotsData;

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/QuickSlotsData;->getSlotB()[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    move-result-object v1

    .line 95
    .local v1, "bslots":[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v8, :cond_4

    .line 104
    .end local v0    # "aslots":[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    .end local v1    # "bslots":[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 87
    .restart local v0    # "aslots":[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    .restart local v2    # "i":I
    :cond_1
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getSlotState()B

    move-result v3

    .line 88
    .local v3, "state":B
    if-ne v3, v7, :cond_3

    .line 89
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getType()B

    move-result v4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getChkNum()S

    move-result v5

    invoke-static {v2, v4, v5}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeSetQuickSlot(IIS)V

    .line 86
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_3
    if-nez v3, :cond_2

    .line 91
    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeSetCleanQuickSlot(I)V

    goto :goto_2

    .line 96
    .end local v3    # "state":B
    .restart local v1    # "bslots":[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    :cond_4
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getSlotState()B

    move-result v3

    .line 97
    .restart local v3    # "state":B
    if-ne v3, v7, :cond_6

    .line 98
    add-int/lit8 v4, v2, 0x6

    aget-object v5, v1, v2

    invoke-virtual {v5}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getType()B

    move-result v5

    aget-object v6, v1, v2

    invoke-virtual {v6}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getChkNum()S

    move-result v6

    invoke-static {v4, v5, v6}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeSetQuickSlot(IIS)V

    .line 95
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    :cond_6
    if-nez v3, :cond_5

    .line 100
    add-int/lit8 v4, v2, 0x6

    invoke-static {v4}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeSetCleanQuickSlot(I)V

    goto :goto_3
.end method
