.class public Lch/android/api/ui/ChInvenAndInfoView;
.super Lch/android/api/ui/ChLinearLayout;
.source "ChInvenAndInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;
    }
.end annotation


# instance fields
.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;

.field private final INVEN_VIEW:Lch/android/api/ui/ChInvenView;

.field private final STORE_TYPE:I

.field private selectedItem:Lch/kingdoms/ndk/data/Inven$Item;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;ILandroid/view/View$OnClickListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "_storeType"    # I
    .param p4, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x41700000    # 15.0f

    .line 21
    invoke-direct {p0, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-super {p0, v7}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 24
    iput-object p2, p0, Lch/android/api/ui/ChInvenAndInfoView;->DI:Lch/android/api/util/DisplayInfo;

    .line 25
    iput p3, p0, Lch/android/api/ui/ChInvenAndInfoView;->STORE_TYPE:I

    .line 28
    new-instance v1, Lch/android/api/ui/ChInvenView;

    invoke-virtual {p0}, Lch/android/api/ui/ChInvenAndInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 29
    iget-object v3, p0, Lch/android/api/ui/ChInvenAndInfoView;->DI:Lch/android/api/util/DisplayInfo;

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    invoke-direct {v1, v2, v4, v4, v3}, Lch/android/api/ui/ChInvenView;-><init>(Landroid/content/Context;[S[Lch/kingdoms/ndk/data/Inven$Item;F)V

    .line 28
    iput-object v1, p0, Lch/android/api/ui/ChInvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    .line 30
    iget-object v1, p0, Lch/android/api/ui/ChInvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v1, p0}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v1, p0, Lch/android/api/ui/ChInvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    iget-object v2, p0, Lch/android/api/ui/ChInvenAndInfoView;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    const/high16 v3, 0x41400000    # 12.0f

    iget-object v4, p0, Lch/android/api/ui/ChInvenAndInfoView;->DI:Lch/android/api/util/DisplayInfo;

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    iget-object v5, p0, Lch/android/api/ui/ChInvenAndInfoView;->DI:Lch/android/api/util/DisplayInfo;

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4, v7}, Lch/android/api/ui/ChInvenView;->setPadding(IIII)V

    .line 32
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x432c0000    # 172.0f

    iget-object v2, p0, Lch/android/api/ui/ChInvenAndInfoView;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 34
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lch/android/api/ui/ChInvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {p0, v1, v0}, Lch/android/api/ui/ChInvenAndInfoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    new-instance v1, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;

    invoke-virtual {p0}, Lch/android/api/ui/ChInvenAndInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;-><init>(Lch/android/api/ui/ChInvenAndInfoView;Landroid/content/Context;)V

    iput-object v1, p0, Lch/android/api/ui/ChInvenAndInfoView;->INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;

    .line 38
    iget-object v1, p0, Lch/android/api/ui/ChInvenAndInfoView;->INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;

    iget-object v2, p0, Lch/android/api/ui/ChInvenAndInfoView;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChInvenAndInfoView;->DI:Lch/android/api/util/DisplayInfo;

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget-object v4, p0, Lch/android/api/ui/ChInvenAndInfoView;->DI:Lch/android/api/util/DisplayInfo;

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4, v7}, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->setPadding(IIII)V

    .line 39
    iget-object v1, p0, Lch/android/api/ui/ChInvenAndInfoView;->INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;

    invoke-virtual {v1, p4}, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x435c0000    # 220.0f

    iget-object v2, p0, Lch/android/api/ui/ChInvenAndInfoView;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x43140000    # 148.0f

    iget-object v3, p0, Lch/android/api/ui/ChInvenAndInfoView;->DI:Lch/android/api/util/DisplayInfo;

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43
    .restart local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lch/android/api/ui/ChInvenAndInfoView;->INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;

    invoke-virtual {p0, v1, v0}, Lch/android/api/ui/ChInvenAndInfoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method

.method static synthetic access$0(Lch/android/api/ui/ChInvenAndInfoView;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v0}, Lch/android/api/ui/ChInvenView;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getSelectedItem()Lch/kingdoms/ndk/data/Inven$Item;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 95
    .local v0, "index":I
    iget-object v1, p0, Lch/android/api/ui/ChInvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v1, v0}, Lch/android/api/ui/ChInvenView;->getFilteredItem(I)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChInvenAndInfoView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 96
    iget-object v1, p0, Lch/android/api/ui/ChInvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v1, v0}, Lch/android/api/ui/ChInvenView;->setToSelect(I)V

    .line 97
    iget-object v1, p0, Lch/android/api/ui/ChInvenAndInfoView;->INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;

    iget-object v2, p0, Lch/android/api/ui/ChInvenAndInfoView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    iget v3, p0, Lch/android/api/ui/ChInvenAndInfoView;->STORE_TYPE:I

    invoke-virtual {v1, v2, v3}, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->setItem(Lch/kingdoms/ndk/data/Inven$Item;I)V

    .line 98
    return-void
.end method

.method public selectItem(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 3
    .param p1, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 82
    iput-object p1, p0, Lch/android/api/ui/ChInvenAndInfoView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 83
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    iget-object v1, p0, Lch/android/api/ui/ChInvenAndInfoView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChInvenView;->setToSelect(Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 84
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;

    iget-object v1, p0, Lch/android/api/ui/ChInvenAndInfoView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    iget v2, p0, Lch/android/api/ui/ChInvenAndInfoView;->STORE_TYPE:I

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->setItem(Lch/kingdoms/ndk/data/Inven$Item;I)V

    .line 85
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetEquipItems()[S

    move-result-object v1

    .line 74
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChInvenView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)Z

    .line 75
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;

    invoke-virtual {v0}, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->empty()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 77
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v0, p0}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public update(I)V
    .locals 2
    .param p1, "_flag"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lch/android/api/ui/ChInvenView;->update(II)Z

    .line 67
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;

    invoke-virtual {v0}, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->empty()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 69
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v0, p0}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public update([Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 1
    .param p1, "items"    # [Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 52
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChInvenView;->update([Lch/kingdoms/ndk/data/Inven$Item;)Z

    .line 53
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;

    invoke-virtual {v0}, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->empty()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 55
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v0, p0}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public update([S[Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 1
    .param p1, "equipedItemIndices"    # [S
    .param p2, "items"    # [Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 59
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v0, p1, p2}, Lch/android/api/ui/ChInvenView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)Z

    .line 60
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;

    invoke-virtual {v0}, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->empty()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 62
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v0, p0}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method
