.class public abstract Lch/android/api/ui/ChPopUpView;
.super Lch/android/api/ui/ChLinearLayout;
.source "ChPopUpView.java"


# instance fields
.field private final BG_HEIGHT:I

.field private final BG_WIDTH:I

.field protected final CLOSE_BTN:Lch/android/api/ui/ChImageButton;

.field protected final SCROLL_VIEW:Landroid/widget/ScrollView;

.field protected final TEXT_VIEW:Lch/android/api/ui/ChButton;

.field protected final TEXT_VIEW_ID:I

.field layout:Lch/android/api/ui/ChRelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "_bgBmpId"    # I
    .param p4, "isExistCloseBtn"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const v5, 0x186a0

    iput v5, p0, Lch/android/api/ui/ChPopUpView;->TEXT_VIEW_ID:I

    .line 30
    if-eqz p3, :cond_0

    .line 31
    invoke-super {p0, p3}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 33
    :cond_0
    if-nez p2, :cond_1

    .line 34
    invoke-static {}, Lch/android/api/util/DisplayInfo;->getInstance()Lch/android/api/util/DisplayInfo;

    move-result-object p2

    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 38
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {v3, p3}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v5

    iput v5, p0, Lch/android/api/ui/ChPopUpView;->BG_WIDTH:I

    .line 39
    invoke-static {v3, p3}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v5

    iput v5, p0, Lch/android/api/ui/ChPopUpView;->BG_HEIGHT:I

    .line 41
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lch/android/api/ui/ChPopUpView;->BG_WIDTH:I

    int-to-double v5, v5

    const-wide v7, 0x3feb333333333333L    # 0.85

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iget v6, p0, Lch/android/api/ui/ChPopUpView;->BG_HEIGHT:I

    int-to-float v6, v6

    iget v7, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v8, 0x42a80000    # 84.0f

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 42
    .local v1, "lp0":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xe

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 43
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44
    iget v5, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x42200000    # 40.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 46
    new-instance v5, Lch/android/api/ui/ChButton;

    invoke-direct {v5, p1}, Lch/android/api/ui/ChButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lch/android/api/ui/ChPopUpView;->TEXT_VIEW:Lch/android/api/ui/ChButton;

    .line 47
    iget-object v5, p0, Lch/android/api/ui/ChPopUpView;->TEXT_VIEW:Lch/android/api/ui/ChButton;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChButton;->setTextColor(I)V

    .line 48
    iget-object v5, p0, Lch/android/api/ui/ChPopUpView;->TEXT_VIEW:Lch/android/api/ui/ChButton;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChButton;->setGravity(I)V

    .line 49
    iget-object v5, p0, Lch/android/api/ui/ChPopUpView;->TEXT_VIEW:Lch/android/api/ui/ChButton;

    invoke-virtual {v5}, Lch/android/api/ui/ChButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 50
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 51
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 54
    :cond_2
    new-instance v5, Lch/android/api/ui/ChRelativeLayout;

    invoke-direct {v5, p1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lch/android/api/ui/ChPopUpView;->layout:Lch/android/api/ui/ChRelativeLayout;

    .line 55
    if-nez p2, :cond_3

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0, p1, v5}, Lch/android/api/ui/ChPopUpView;->getBtnsView(Landroid/content/Context;F)Landroid/view/View;

    move-result-object v4

    .line 56
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 57
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lch/android/api/ui/ChPopUpView;->SCROLL_VIEW:Landroid/widget/ScrollView;

    .line 58
    iget-object v5, p0, Lch/android/api/ui/ChPopUpView;->SCROLL_VIEW:Landroid/widget/ScrollView;

    iget-object v6, p0, Lch/android/api/ui/ChPopUpView;->TEXT_VIEW:Lch/android/api/ui/ChButton;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v5, p0, Lch/android/api/ui/ChPopUpView;->SCROLL_VIEW:Landroid/widget/ScrollView;

    const v6, 0x186a0

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->setId(I)V

    .line 60
    iget-object v5, p0, Lch/android/api/ui/ChPopUpView;->SCROLL_VIEW:Landroid/widget/ScrollView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 61
    iget-object v5, p0, Lch/android/api/ui/ChPopUpView;->SCROLL_VIEW:Landroid/widget/ScrollView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->setClickable(Z)V

    .line 62
    iget-object v5, p0, Lch/android/api/ui/ChPopUpView;->layout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v6, p0, Lch/android/api/ui/ChPopUpView;->SCROLL_VIEW:Landroid/widget/ScrollView;

    invoke-virtual {v5, v6, v1}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v5, p0, Lch/android/api/ui/ChPopUpView;->layout:Lch/android/api/ui/ChRelativeLayout;

    const v6, 0x186a0

    invoke-virtual {p0, v6}, Lch/android/api/ui/ChPopUpView;->getBtnsLayout(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :goto_1
    if-eqz p4, :cond_5

    .line 71
    const/4 v5, 0x0

    iput-object v5, p0, Lch/android/api/ui/ChPopUpView;->CLOSE_BTN:Lch/android/api/ui/ChImageButton;

    .line 84
    :goto_2
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v2, "lp4":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lch/android/api/ui/ChPopUpView;->layout:Lch/android/api/ui/ChRelativeLayout;

    invoke-virtual {p0, v5, v2}, Lch/android/api/ui/ChPopUpView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void

    .line 55
    .end local v2    # "lp4":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    iget v5, p2, Lch/android/api/util/DisplayInfo;->density:F

    goto :goto_0

    .line 66
    .restart local v4    # "view":Landroid/view/View;
    :cond_4
    const/4 v5, 0x0

    iput-object v5, p0, Lch/android/api/ui/ChPopUpView;->SCROLL_VIEW:Landroid/widget/ScrollView;

    .line 67
    iget-object v5, p0, Lch/android/api/ui/ChPopUpView;->layout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v6, p0, Lch/android/api/ui/ChPopUpView;->TEXT_VIEW:Lch/android/api/ui/ChButton;

    invoke-virtual {v5, v6, v1}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 81
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Lch/android/api/ui/ChPopUpView;->CLOSE_BTN:Lch/android/api/ui/ChImageButton;

    goto :goto_2
.end method


# virtual methods
.method protected final getBgHeight()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lch/android/api/ui/ChPopUpView;->BG_HEIGHT:I

    return v0
.end method

.method protected final getBgWidth()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lch/android/api/ui/ChPopUpView;->BG_WIDTH:I

    return v0
.end method

.method protected abstract getBtnsLayout(I)Landroid/widget/RelativeLayout$LayoutParams;
.end method

.method protected abstract getBtnsView(Landroid/content/Context;F)Landroid/view/View;
.end method

.method protected abstract isNeedScroll()Z
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChLinearLayout;->onMeasure(II)V

    .line 95
    iget v0, p0, Lch/android/api/ui/ChPopUpView;->BG_WIDTH:I

    iget v1, p0, Lch/android/api/ui/ChPopUpView;->BG_HEIGHT:I

    invoke-virtual {p0, v0, v1}, Lch/android/api/ui/ChPopUpView;->setMeasuredDimension(II)V

    .line 96
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 101
    iget-object v0, p0, Lch/android/api/ui/ChPopUpView;->CLOSE_BTN:Lch/android/api/ui/ChImageButton;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lch/android/api/ui/ChPopUpView;->CLOSE_BTN:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_0
    return-void
.end method

.method public setOnClickListenerJustAllRegion(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lch/android/api/ui/ChLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lch/android/api/ui/ChPopUpView;->layout:Lch/android/api/ui/ChRelativeLayout;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "_id"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lch/android/api/ui/ChPopUpView;->TEXT_VIEW:Lch/android/api/ui/ChButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChButton;->setText(I)V

    .line 113
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 120
    iget-object v0, p0, Lch/android/api/ui/ChPopUpView;->TEXT_VIEW:Lch/android/api/ui/ChButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChButton;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "_text"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lch/android/api/ui/ChPopUpView;->TEXT_VIEW:Lch/android/api/ui/ChButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChButton;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method public setTextOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 124
    iget-object v0, p0, Lch/android/api/ui/ChPopUpView;->TEXT_VIEW:Lch/android/api/ui/ChButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method
