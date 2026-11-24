.class public Lch/android/api/ui/ChPopUpItemInfoView;
.super Lch/android/api/ui/ChPopUpView;
.source "ChPopUpItemInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/android/api/ui/ChPopUpItemInfoView$CloseButton;
    }
.end annotation


# instance fields
.field private CLOSE_BTN:Lch/android/api/ui/ChImageButton;

.field private final ITEM:Lch/kingdoms/ndk/data/Inven$Item;

.field private ITEM_INFO_VIEW:Lch/android/api/ui/ChItemInfoView;

.field private m_layout:Lch/android/api/ui/ChRelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/util/DisplayInfo;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;
    .param p3, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p4, "isOnlyView"    # Z

    .prologue
    const/16 v7, 0xa

    const/4 v5, -0x2

    const v9, 0x3d8f5c29    # 0.07f

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v8, 0x0

    .line 19
    const/4 v3, 0x0

    const v4, 0x7f0200d9

    invoke-direct {p0, p1, v3, v4, v8}, Lch/android/api/ui/ChPopUpView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZ)V

    .line 21
    iput-object p2, p0, Lch/android/api/ui/ChPopUpItemInfoView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    .line 22
    iget-object v3, p0, Lch/android/api/ui/ChPopUpItemInfoView;->m_layout:Lch/android/api/ui/ChRelativeLayout;

    if-eqz v3, :cond_0

    .line 24
    if-eqz p4, :cond_1

    .line 25
    const/16 v2, 0x8

    .line 29
    .local v2, "type":I
    :goto_0
    new-instance v3, Lch/android/api/ui/ChItemInfoView;

    iget-object v4, p0, Lch/android/api/ui/ChPopUpItemInfoView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-direct {v3, p1, v4, v2}, Lch/android/api/ui/ChItemInfoView;-><init>(Landroid/content/Context;Lch/kingdoms/ndk/data/Inven$Item;I)V

    iput-object v3, p0, Lch/android/api/ui/ChPopUpItemInfoView;->ITEM_INFO_VIEW:Lch/android/api/ui/ChItemInfoView;

    .line 30
    new-instance v3, Lch/android/api/ui/ChPopUpItemInfoView$CloseButton;

    invoke-direct {v3, p0, p1}, Lch/android/api/ui/ChPopUpItemInfoView$CloseButton;-><init>(Lch/android/api/ui/ChPopUpItemInfoView;Landroid/content/Context;)V

    iput-object v3, p0, Lch/android/api/ui/ChPopUpItemInfoView;->CLOSE_BTN:Lch/android/api/ui/ChImageButton;

    .line 31
    iget-object v3, p0, Lch/android/api/ui/ChPopUpItemInfoView;->CLOSE_BTN:Lch/android/api/ui/ChImageButton;

    const/16 v4, 0x2750

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 33
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 34
    .local v0, "lp0":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 35
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 36
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 37
    iget v3, p3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 38
    iget v3, p3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 40
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x435f0000    # 223.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v5, 0x43340000    # 180.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 41
    .local v1, "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 42
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 43
    iget v3, p3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, p3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v5, 0x41900000    # 18.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v7, 0x41700000    # 15.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44
    iget-object v3, p0, Lch/android/api/ui/ChPopUpItemInfoView;->ITEM_INFO_VIEW:Lch/android/api/ui/ChItemInfoView;

    invoke-super {p0}, Lch/android/api/ui/ChPopUpView;->getBgWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    float-to-int v4, v4

    invoke-super {p0}, Lch/android/api/ui/ChPopUpView;->getBgWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {v3, v4, v8, v5, v8}, Lch/android/api/ui/ChItemInfoView;->setPadding(IIII)V

    .line 46
    iget-object v3, p0, Lch/android/api/ui/ChPopUpItemInfoView;->m_layout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v4, p0, Lch/android/api/ui/ChPopUpItemInfoView;->CLOSE_BTN:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v3, v4, v0}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v3, p0, Lch/android/api/ui/ChPopUpItemInfoView;->m_layout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v4, p0, Lch/android/api/ui/ChPopUpItemInfoView;->ITEM_INFO_VIEW:Lch/android/api/ui/ChItemInfoView;

    invoke-virtual {v3, v4, v1}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .end local v0    # "lp0":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "type":I
    :cond_0
    return-void

    .line 27
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "type":I
    goto/16 :goto_0
.end method


# virtual methods
.method protected getBtnsLayout(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2
    .param p1, "_txtViewId"    # I

    .prologue
    const/4 v1, -0x1

    .line 67
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    return-object v0
.end method

.method protected getBtnsView(Landroid/content/Context;F)Landroid/view/View;
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_density"    # F

    .prologue
    .line 60
    new-instance v0, Lch/android/api/ui/ChRelativeLayout;

    invoke-direct {v0, p1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lch/android/api/ui/ChPopUpItemInfoView;->m_layout:Lch/android/api/ui/ChRelativeLayout;

    .line 61
    iget-object v0, p0, Lch/android/api/ui/ChPopUpItemInfoView;->m_layout:Lch/android/api/ui/ChRelativeLayout;

    return-object v0
.end method

.method protected isNeedScroll()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public releaseRsources()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lch/android/api/ui/ChPopUpView;->releaseRsources()V

    .line 76
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lch/android/api/ui/ChPopUpView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lch/android/api/ui/ChPopUpItemInfoView;->ITEM_INFO_VIEW:Lch/android/api/ui/ChItemInfoView;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChItemInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lch/android/api/ui/ChPopUpItemInfoView;->CLOSE_BTN:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method
