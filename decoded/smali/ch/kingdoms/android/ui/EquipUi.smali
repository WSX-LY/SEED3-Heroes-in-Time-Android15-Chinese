.class public Lch/kingdoms/android/ui/EquipUi;
.super Ljava/lang/Object;
.source "EquipUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/EquipUi$EquipInfoView;,
        Lch/kingdoms/android/ui/EquipUi$EquipView;
    }
.end annotation


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final EQUIP_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipView;

.field private final INFO_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

.field private LAYER_LEVEL:I

.field private final LAYOUT:Lch/android/api/ui/ChLinearLayout;

.field private m_confirmOkView:Landroid/view/View;

.field private m_equipedItemIndices:[S

.field private m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
    .locals 6
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v4, -0x2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lch/kingdoms/android/ui/EquipUi;->ACTIVITY:Landroid/app/Activity;

    .line 49
    iput-object p2, p0, Lch/kingdoms/android/ui/EquipUi;->DI:Lch/android/api/util/DisplayInfo;

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    .local v0, "appContext":Landroid/content/Context;
    new-instance v2, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v2, v0}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    .line 52
    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 54
    new-instance v2, Lch/kingdoms/android/ui/EquipUi$EquipView;

    invoke-direct {v2, p0, v0, p2}, Lch/kingdoms/android/ui/EquipUi$EquipView;-><init>(Lch/kingdoms/android/ui/EquipUi;Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V

    iput-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->EQUIP_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipView;

    .line 55
    new-instance v2, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    invoke-direct {v2, p0, v0, p2}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;-><init>(Lch/kingdoms/android/ui/EquipUi;Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V

    iput-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->INFO_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    .line 59
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 61
    iget v2, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 62
    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi;->EQUIP_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipView;

    invoke-virtual {v2, v3, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi;->INFO_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    invoke-virtual {v2, v3, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/EquipUi;)[S
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi;->m_equipedItemIndices:[S

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/EquipUi;)[Lch/kingdoms/ndk/data/Inven$Item;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/EquipUi;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/EquipUi;[S)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lch/kingdoms/android/ui/EquipUi;->m_equipedItemIndices:[S

    return-void
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/EquipUi;[Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lch/kingdoms/android/ui/EquipUi;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    return-void
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/EquipUi;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lch/kingdoms/android/ui/EquipUi;->LAYER_LEVEL:I

    return v0
.end method

.method static synthetic access$6(Lch/kingdoms/android/ui/EquipUi;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi;->ACTIVITY:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$7(Lch/kingdoms/android/ui/EquipUi;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lch/kingdoms/android/ui/EquipUi;->refreshEquipedItems()V

    return-void
.end method

.method static synthetic access$8(Lch/kingdoms/android/ui/EquipUi;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lch/kingdoms/android/ui/EquipUi;->refreshInvenItems()V

    return-void
.end method

.method private refreshEquipedItems()V
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetEquipItems()[S

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/EquipUi;->m_equipedItemIndices:[S

    .line 83
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi;->EQUIP_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/EquipUi$EquipView;->refresh()V

    .line 84
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi;->INFO_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetEquipItems()[S

    move-result-object v1

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->updateInven([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 85
    return-void
.end method

.method private refreshInvenItems()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/EquipUi;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    .line 89
    return-void
.end method


# virtual methods
.method public closeConfirmOk()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi;->m_confirmOkView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 169
    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 103
    .local v0, "id":I
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    .line 104
    .local v1, "layerLevel":I
    iget v2, p0, Lch/kingdoms/android/ui/EquipUi;->LAYER_LEVEL:I

    if-ne v1, v2, :cond_1

    .line 105
    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->EQUIP_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipView;

    invoke-static {v2, v0}, Lch/kingdoms/android/ui/EquipUi$EquipView;->access$0(Lch/kingdoms/android/ui/EquipUi$EquipView;I)V

    .line 106
    packed-switch v0, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 108
    :pswitch_0
    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->INFO_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->clickEquipedItem(I)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->INFO_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->clickEquipedItem(I)V

    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->INFO_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->clickEquipedItem(I)V

    goto :goto_0

    .line 117
    :pswitch_3
    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->INFO_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->clickEquipedItem(I)V

    goto :goto_0

    .line 120
    :pswitch_4
    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->INFO_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->clickEquipedItem(I)V

    goto :goto_0

    .line 123
    :pswitch_5
    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->INFO_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->clickEquipedItem(I)V

    goto :goto_0

    .line 126
    :pswitch_6
    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->INFO_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->clickEquipedItem(I)V

    goto :goto_0

    .line 130
    :cond_1
    iget v2, p0, Lch/kingdoms/android/ui/EquipUi;->LAYER_LEVEL:I

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_0

    .line 131
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 133
    :sswitch_1
    invoke-virtual {p0}, Lch/kingdoms/android/ui/EquipUi;->closeConfirmOk()V

    goto :goto_0

    .line 136
    :sswitch_2
    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->INFO_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    invoke-virtual {v2}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->closePopUpItemInfoView()V

    goto :goto_0

    .line 139
    :sswitch_3
    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->INFO_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    invoke-virtual {v2}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->deleteItem()V

    goto :goto_0

    .line 145
    :sswitch_4
    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->INFO_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    invoke-virtual {v2}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->equip()V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 131
    :sswitch_data_0
    .sparse-switch
        0x2744 -> :sswitch_1
        0x274c -> :sswitch_0
        0x274d -> :sswitch_4
        0x274f -> :sswitch_3
        0x2750 -> :sswitch_2
    .end sparse-switch
.end method

.method public popUpConfirmOk()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi;->ACTIVITY:Landroid/app/Activity;

    const v1, 0x7f050037

    new-instance v2, Lch/kingdoms/android/ui/EquipUi$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/EquipUi$1;-><init>(Lch/kingdoms/android/ui/EquipUi;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/EquipUi;->m_confirmOkView:Landroid/view/View;

    .line 163
    return-void
.end method

.method public updateLayerLevel()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v0

    iput v0, p0, Lch/kingdoms/android/ui/EquipUi;->LAYER_LEVEL:I

    .line 97
    return-void
.end method

.method public updateQquip([S[Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 3
    .param p1, "equipedItemIndices"    # [S
    .param p2, "invenItems"    # [Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 73
    iput-object p1, p0, Lch/kingdoms/android/ui/EquipUi;->m_equipedItemIndices:[S

    .line 74
    iput-object p2, p0, Lch/kingdoms/android/ui/EquipUi;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    .line 75
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi;->EQUIP_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/EquipUi$EquipView;->refresh()V

    .line 76
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi;->INFO_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->init()V

    .line 77
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi;->INFO_VIEW:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi;->m_equipedItemIndices:[S

    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    invoke-virtual {v0, v1, v2}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->updateInven([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 79
    return-void
.end method
