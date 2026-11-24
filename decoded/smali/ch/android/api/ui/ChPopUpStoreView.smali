.class public Lch/android/api/ui/ChPopUpStoreView;
.super Lch/android/api/ui/ChPopUpView;
.source "ChPopUpStoreView.java"


# instance fields
.field private buyBtn:Lch/android/api/ui/ChSlimImageButton;

.field private closeBtn:Lch/android/api/ui/ChSlimImageButton;

.field private sellBtn:Lch/android/api/ui/ChSlimImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_bgBmpId"    # I

    .prologue
    .line 17
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lch/android/api/ui/ChPopUpView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZ)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getBtnsLayout(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2
    .param p1, "_txtViewId"    # I

    .prologue
    const/4 v1, -0x1

    .line 76
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    return-object v0
.end method

.method protected getBtnsView(Landroid/content/Context;F)Landroid/view/View;
    .locals 10
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_density"    # F

    .prologue
    .line 32
    new-instance v1, Lch/android/api/ui/ChRelativeLayout;

    invoke-direct {v1, p1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    .local v1, "layout":Lch/android/api/ui/ChRelativeLayout;
    new-instance v5, Lch/android/api/ui/ChSlimImageButton;

    const v6, 0x7f020067

    const v7, 0x7f020063

    invoke-direct {v5, p1, v6, v7}, Lch/android/api/ui/ChSlimImageButton;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lch/android/api/ui/ChPopUpStoreView;->buyBtn:Lch/android/api/ui/ChSlimImageButton;

    .line 34
    iget-object v5, p0, Lch/android/api/ui/ChPopUpStoreView;->buyBtn:Lch/android/api/ui/ChSlimImageButton;

    const/16 v6, 0x2745

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChSlimImageButton;->setId(I)V

    .line 35
    new-instance v5, Lch/android/api/ui/ChSlimImageButton;

    const v6, 0x7f020274

    const v7, 0x7f020273

    invoke-direct {v5, p1, v6, v7}, Lch/android/api/ui/ChSlimImageButton;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lch/android/api/ui/ChPopUpStoreView;->sellBtn:Lch/android/api/ui/ChSlimImageButton;

    .line 37
    iget-object v5, p0, Lch/android/api/ui/ChPopUpStoreView;->sellBtn:Lch/android/api/ui/ChSlimImageButton;

    const/16 v6, 0x2746

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChSlimImageButton;->setId(I)V

    .line 38
    new-instance v5, Lch/android/api/ui/ChSlimImageButton;

    const v6, 0x7f02007a

    const v7, 0x7f02007a

    invoke-direct {v5, p1, v6, v7}, Lch/android/api/ui/ChSlimImageButton;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lch/android/api/ui/ChPopUpStoreView;->closeBtn:Lch/android/api/ui/ChSlimImageButton;

    .line 39
    iget-object v5, p0, Lch/android/api/ui/ChPopUpStoreView;->closeBtn:Lch/android/api/ui/ChSlimImageButton;

    const/16 v6, 0x2744

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChSlimImageButton;->setId(I)V

    .line 42
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpStoreView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "lLayout":Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x42a00000    # 80.0f

    mul-float/2addr v6, p2

    float-to-int v6, v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    .local v2, "llp1":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 47
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 48
    const/high16 v5, 0x41700000    # 15.0f

    mul-float/2addr v5, p2

    float-to-int v5, v5

    const/high16 v6, 0x41700000    # 15.0f

    mul-float/2addr v6, p2

    float-to-int v6, v6

    const/high16 v7, 0x41700000    # 15.0f

    mul-float/2addr v7, p2

    float-to-int v7, v7

    const/high16 v8, 0x41700000    # 15.0f

    mul-float/2addr v8, p2

    float-to-int v8, v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 49
    iget-object v5, p0, Lch/android/api/ui/ChPopUpStoreView;->buyBtn:Lch/android/api/ui/ChSlimImageButton;

    const/4 v6, 0x0

    const/high16 v7, 0x41700000    # 15.0f

    mul-float/2addr v7, p2

    float-to-int v7, v7

    const/4 v8, 0x0

    const/high16 v9, 0x41700000    # 15.0f

    mul-float/2addr v9, p2

    float-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lch/android/api/ui/ChSlimImageButton;->setPadding(IIII)V

    .line 50
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x42a00000    # 80.0f

    mul-float/2addr v6, p2

    float-to-int v6, v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51
    .local v3, "llp2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 52
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 53
    const/high16 v5, 0x41700000    # 15.0f

    mul-float/2addr v5, p2

    float-to-int v5, v5

    const/high16 v6, 0x41700000    # 15.0f

    mul-float/2addr v6, p2

    float-to-int v6, v6

    const/high16 v7, 0x41700000    # 15.0f

    mul-float/2addr v7, p2

    float-to-int v7, v7

    const/high16 v8, 0x41700000    # 15.0f

    mul-float/2addr v8, p2

    float-to-int v8, v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 54
    iget-object v5, p0, Lch/android/api/ui/ChPopUpStoreView;->sellBtn:Lch/android/api/ui/ChSlimImageButton;

    const/4 v6, 0x0

    const/high16 v7, 0x41700000    # 15.0f

    mul-float/2addr v7, p2

    float-to-int v7, v7

    const/4 v8, 0x0

    const/high16 v9, 0x41700000    # 15.0f

    mul-float/2addr v9, p2

    float-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lch/android/api/ui/ChSlimImageButton;->setPadding(IIII)V

    .line 55
    iget-object v5, p0, Lch/android/api/ui/ChPopUpStoreView;->buyBtn:Lch/android/api/ui/ChSlimImageButton;

    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v5, p0, Lch/android/api/ui/ChPopUpStoreView;->sellBtn:Lch/android/api/ui/ChSlimImageButton;

    invoke-virtual {v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v4, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61
    invoke-virtual {v1, v0, v4}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v4    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 65
    .restart local v4    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67
    iget-object v5, p0, Lch/android/api/ui/ChPopUpStoreView;->closeBtn:Lch/android/api/ui/ChSlimImageButton;

    invoke-virtual {v1, v5, v4}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    return-object v1
.end method

.method protected isNeedScroll()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 24
    iget-object v0, p0, Lch/android/api/ui/ChPopUpStoreView;->buyBtn:Lch/android/api/ui/ChSlimImageButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChSlimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lch/android/api/ui/ChPopUpStoreView;->sellBtn:Lch/android/api/ui/ChSlimImageButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChSlimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Lch/android/api/ui/ChPopUpStoreView;->closeBtn:Lch/android/api/ui/ChSlimImageButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChSlimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    return-void
.end method
