.class public Lch/kingdoms/android/ui/StoreUi;
.super Ljava/lang/Object;
.source "StoreUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/StoreUi$StoreView;
    }
.end annotation


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private HERO:Lch/kingdoms/ndk/data/HeroStatus;

.field private INVEN_ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

.field private final LAYOUT:Lch/android/api/ui/ChRelativeLayout;

.field private final STORE_ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

.field private final STORE_VIEW:Lch/kingdoms/android/ui/StoreUi$StoreView;

.field private isBuy:Z

.field private isPopUp:Z

.field private selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

.field private tradeItemView:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "_name"    # Ljava/lang/String;
    .param p4, "_isBuy"    # Z

    .prologue
    const/4 v3, -0x2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v2

    iput-object v2, p0, Lch/kingdoms/android/ui/StoreUi;->HERO:Lch/kingdoms/ndk/data/HeroStatus;

    .line 36
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeStoreInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    iput-object v2, p0, Lch/kingdoms/android/ui/StoreUi;->STORE_ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

    .line 37
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    iput-object v2, p0, Lch/kingdoms/android/ui/StoreUi;->INVEN_ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

    .line 47
    const/4 v2, 0x0

    iput-boolean v2, p0, Lch/kingdoms/android/ui/StoreUi;->isPopUp:Z

    .line 50
    iput-object p1, p0, Lch/kingdoms/android/ui/StoreUi;->ACTIVITY:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lch/kingdoms/android/ui/StoreUi;->DI:Lch/android/api/util/DisplayInfo;

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    .local v0, "appContext":Landroid/content/Context;
    new-instance v2, Lch/android/api/ui/ChRelativeLayout;

    invoke-direct {v2, v0}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lch/kingdoms/android/ui/StoreUi;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    .line 55
    new-instance v2, Lch/kingdoms/android/ui/StoreUi$StoreView;

    invoke-direct {v2, p0, v0, p3, p4}, Lch/kingdoms/android/ui/StoreUi$StoreView;-><init>(Lch/kingdoms/android/ui/StoreUi;Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v2, p0, Lch/kingdoms/android/ui/StoreUi;->STORE_VIEW:Lch/kingdoms/android/ui/StoreUi$StoreView;

    .line 56
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v1, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 59
    iget-object v2, p0, Lch/kingdoms/android/ui/StoreUi;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v3, p0, Lch/kingdoms/android/ui/StoreUi;->STORE_VIEW:Lch/kingdoms/android/ui/StoreUi$StoreView;

    invoke-virtual {v2, v3, v1}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/StoreUi;)[Lch/kingdoms/ndk/data/Inven$Item;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->STORE_ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/StoreUi;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/StoreUi;)[Lch/kingdoms/ndk/data/Inven$Item;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->INVEN_ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

    return-object v0
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/StoreUi;)Lch/kingdoms/ndk/data/HeroStatus;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->HERO:Lch/kingdoms/ndk/data/HeroStatus;

    return-object v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/StoreUi;[Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lch/kingdoms/android/ui/StoreUi;->INVEN_ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

    return-void
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/StoreUi;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lch/kingdoms/android/ui/StoreUi;->isPopUp:Z

    return-void
.end method


# virtual methods
.method public existItem(I)Z
    .locals 6
    .param p1, "_num"    # I

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v3, p0, Lch/kingdoms/android/ui/StoreUi;->INVEN_ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 197
    :goto_1
    return v1

    .line 191
    :cond_0
    aget-object v0, v3, v2

    .line 192
    .local v0, "item":Lch/kingdoms/ndk/data/Inven$Item;
    iget v5, v0, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    if-ne v5, p1, :cond_1

    .line 193
    const/4 v1, 0x1

    goto :goto_1

    .line 191
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 71
    .local v7, "id":I
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-boolean v0, p0, Lch/kingdoms/android/ui/StoreUi;->isPopUp:Z

    if-nez v0, :cond_0

    .line 74
    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    .line 77
    :sswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    invoke-virtual {v0}, Lch/android/api/ui/ChRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 78
    .local v9, "vg":Landroid/view/ViewGroup;
    if-eqz v9, :cond_1

    .line 79
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 81
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->ACTIVITY:Landroid/app/Activity;

    iget-object v1, p0, Lch/kingdoms/android/ui/StoreUi;->DI:Lch/android/api/util/DisplayInfo;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/MainStateUi;->showStoreUi(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V

    goto :goto_0

    .line 84
    .end local v9    # "vg":Landroid/view/ViewGroup;
    :sswitch_1
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->STORE_VIEW:Lch/kingdoms/android/ui/StoreUi$StoreView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/StoreUi$StoreView;->getSelectedItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 85
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    if-eqz v0, :cond_0

    .line 86
    iput-boolean v10, p0, Lch/kingdoms/android/ui/StoreUi;->isBuy:Z

    .line 87
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->ACTIVITY:Landroid/app/Activity;

    iget-object v1, p0, Lch/kingdoms/android/ui/StoreUi;->DI:Lch/android/api/util/DisplayInfo;

    iget-object v2, p0, Lch/kingdoms/android/ui/StoreUi;->HERO:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v2

    iget-boolean v3, p0, Lch/kingdoms/android/ui/StoreUi;->isBuy:Z

    iget-object v4, p0, Lch/kingdoms/android/ui/StoreUi;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    iget-object v5, p0, Lch/kingdoms/android/ui/StoreUi;->INVEN_ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IZLch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->tradeItemView:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 88
    iput-boolean v10, p0, Lch/kingdoms/android/ui/StoreUi;->isPopUp:Z

    goto :goto_0

    .line 92
    :sswitch_2
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->STORE_VIEW:Lch/kingdoms/android/ui/StoreUi$StoreView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/StoreUi$StoreView;->getSelectedItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 93
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    iget-boolean v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->equiped:Z

    if-nez v0, :cond_2

    .line 95
    iput-boolean v2, p0, Lch/kingdoms/android/ui/StoreUi;->isBuy:Z

    .line 96
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->ACTIVITY:Landroid/app/Activity;

    iget-object v1, p0, Lch/kingdoms/android/ui/StoreUi;->DI:Lch/android/api/util/DisplayInfo;

    iget-object v2, p0, Lch/kingdoms/android/ui/StoreUi;->HERO:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v2

    iget-boolean v3, p0, Lch/kingdoms/android/ui/StoreUi;->isBuy:Z

    iget-object v4, p0, Lch/kingdoms/android/ui/StoreUi;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    iget-object v5, p0, Lch/kingdoms/android/ui/StoreUi;->INVEN_ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IZLch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->tradeItemView:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 97
    iput-boolean v10, p0, Lch/kingdoms/android/ui/StoreUi;->isPopUp:Z

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->ACTIVITY:Landroid/app/Activity;

    const/16 v1, 0x56

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/StoreUi$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/StoreUi$1;-><init>(Lch/kingdoms/android/ui/StoreUi;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 111
    iput-boolean v10, p0, Lch/kingdoms/android/ui/StoreUi;->isPopUp:Z

    goto/16 :goto_0

    .line 119
    :pswitch_1
    iget-boolean v0, p0, Lch/kingdoms/android/ui/StoreUi;->isPopUp:Z

    if-eqz v0, :cond_0

    .line 120
    packed-switch v7, :pswitch_data_1

    goto/16 :goto_0

    .line 122
    :pswitch_2
    iget-boolean v0, p0, Lch/kingdoms/android/ui/StoreUi;->isBuy:Z

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    iget-object v1, p0, Lch/kingdoms/android/ui/StoreUi;->tradeItemView:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v1}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v1

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkUiEventManager;->buyItem(II)I

    move-result v8

    .line 124
    .local v8, "result":I
    packed-switch v8, :pswitch_data_2

    goto/16 :goto_0

    .line 126
    :pswitch_3
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 127
    invoke-virtual {p0}, Lch/kingdoms/android/ui/StoreUi;->refresh()V

    .line 128
    iput-boolean v2, p0, Lch/kingdoms/android/ui/StoreUi;->isPopUp:Z

    goto/16 :goto_0

    .line 131
    :pswitch_4
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->ACTIVITY:Landroid/app/Activity;

    const v1, 0x7f050036

    new-instance v2, Lch/kingdoms/android/ui/StoreUi$2;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/StoreUi$2;-><init>(Lch/kingdoms/android/ui/StoreUi;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    goto/16 :goto_0

    .line 142
    :pswitch_5
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->ACTIVITY:Landroid/app/Activity;

    const v1, 0x7f050048

    new-instance v2, Lch/kingdoms/android/ui/StoreUi$3;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/StoreUi$3;-><init>(Lch/kingdoms/android/ui/StoreUi;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    goto/16 :goto_0

    .line 153
    :pswitch_6
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->ACTIVITY:Landroid/app/Activity;

    const v1, 0x7f05003c

    new-instance v2, Lch/kingdoms/android/ui/StoreUi$4;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/StoreUi$4;-><init>(Lch/kingdoms/android/ui/StoreUi;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    goto/16 :goto_0

    .line 165
    .end local v8    # "result":I
    :cond_3
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    iget-object v1, p0, Lch/kingdoms/android/ui/StoreUi;->tradeItemView:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v1}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v1

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkUiEventManager;->sellItem(II)Z

    move-result v8

    .line 166
    .local v8, "result":Z
    if-eqz v8, :cond_4

    .line 167
    invoke-virtual {p0}, Lch/kingdoms/android/ui/StoreUi;->refresh()V

    .line 168
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->STORE_VIEW:Lch/kingdoms/android/ui/StoreUi$StoreView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/StoreUi$StoreView;->refreshInven()V

    .line 172
    :cond_4
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 173
    iput-boolean v2, p0, Lch/kingdoms/android/ui/StoreUi;->isPopUp:Z

    goto/16 :goto_0

    .line 177
    .end local v8    # "result":Z
    :pswitch_7
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 178
    iput-boolean v2, p0, Lch/kingdoms/android/ui/StoreUi;->isPopUp:Z

    goto/16 :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x2744 -> :sswitch_0
        0x2751 -> :sswitch_1
        0x2752 -> :sswitch_2
    .end sparse-switch

    .line 120
    :pswitch_data_1
    .packed-switch 0x2742
        :pswitch_2
        :pswitch_7
    .end packed-switch

    .line 124
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->HERO:Lch/kingdoms/ndk/data/HeroStatus;

    .line 202
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi;->STORE_VIEW:Lch/kingdoms/android/ui/StoreUi$StoreView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/StoreUi$StoreView;->refreshMoney()V

    .line 203
    return-void
.end method
