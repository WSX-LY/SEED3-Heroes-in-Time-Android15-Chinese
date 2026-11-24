.class Lch/android/api/ui/ChPopUpYesNoView;
.super Lch/android/api/ui/ChPopUpView;
.source "ChPopUpYesNoView.java"


# instance fields
.field private m_noBtn:Lch/android/api/ui/ChImageButton;

.field private m_yesBtn:Lch/android/api/ui/ChImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_bgBmpId"    # I

    .prologue
    .line 15
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lch/android/api/ui/ChPopUpView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZ)V

    .line 17
    return-void
.end method


# virtual methods
.method protected getBtnsLayout(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2
    .param p1, "_txtViewId"    # I

    .prologue
    const/4 v1, -0x2

    .line 57
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 59
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61
    return-object v0
.end method

.method protected getBtnsView(Landroid/content/Context;F)Landroid/view/View;
    .locals 9
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_density"    # F

    .prologue
    const/16 v8, 0x11

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    .line 33
    new-instance v3, Lch/android/api/ui/ChImageButton;

    const v4, 0x7f0202e2

    const v5, 0x7f0202e1

    invoke-direct {v3, p1, v4, v5}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lch/android/api/ui/ChPopUpYesNoView;->m_yesBtn:Lch/android/api/ui/ChImageButton;

    .line 34
    new-instance v3, Lch/android/api/ui/ChImageButton;

    const v4, 0x7f020216

    const v5, 0x7f020215

    invoke-direct {v3, p1, v4, v5}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lch/android/api/ui/ChPopUpYesNoView;->m_noBtn:Lch/android/api/ui/ChImageButton;

    .line 36
    iget-object v3, p0, Lch/android/api/ui/ChPopUpYesNoView;->m_yesBtn:Lch/android/api/ui/ChImageButton;

    const/16 v4, 0x2742

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 37
    iget-object v3, p0, Lch/android/api/ui/ChPopUpYesNoView;->m_noBtn:Lch/android/api/ui/ChImageButton;

    const/16 v4, 0x2743

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 39
    new-instance v0, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v0, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "layout":Lch/android/api/ui/ChLinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    .local v1, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 42
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 43
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44
    .local v2, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 45
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 46
    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr v3, p2

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 48
    iget-object v3, p0, Lch/android/api/ui/ChPopUpYesNoView;->m_yesBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v0, v3, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v3, p0, Lch/android/api/ui/ChPopUpYesNoView;->m_noBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v0, v3, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    return-object v0
.end method

.method protected isNeedScroll()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public releaseRsources()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lch/android/api/ui/ChPopUpView;->releaseRsources()V

    .line 28
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 20
    iget-object v0, p0, Lch/android/api/ui/ChPopUpYesNoView;->m_yesBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lch/android/api/ui/ChPopUpYesNoView;->m_noBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method
