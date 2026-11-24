.class public Lch/android/api/ui/ChPopUpGameTipView;
.super Lch/android/api/ui/ChPopUpView;
.source "ChPopUpGameTipView.java"


# instance fields
.field private txtView:Lch/android/api/ui/ChTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "_txt"    # Ljava/lang/String;
    .param p4, "_isAutoClick"    # Z

    .prologue
    const/high16 v6, 0x41880000    # 17.0f

    .line 13
    const v1, 0x7f0200d9

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v1, v2}, Lch/android/api/ui/ChPopUpView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZ)V

    .line 15
    iget-object v1, p0, Lch/android/api/ui/ChPopUpGameTipView;->txtView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v1, p3}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v1, p0, Lch/android/api/ui/ChPopUpGameTipView;->txtView:Lch/android/api/ui/ChTextView;

    iget v2, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v5, 0x41700000    # 15.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lch/android/api/ui/ChTextView;->setPadding(IIII)V

    .line 18
    new-instance v0, Lch/android/api/ui/ChPopUpGameTipView$1;

    invoke-direct {v0, p0, p4}, Lch/android/api/ui/ChPopUpGameTipView$1;-><init>(Lch/android/api/ui/ChPopUpGameTipView;Z)V

    .line 29
    .local v0, "ocl":Landroid/view/View$OnClickListener;
    invoke-virtual {p0, v0}, Lch/android/api/ui/ChPopUpGameTipView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v1, p0, Lch/android/api/ui/ChPopUpGameTipView;->txtView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v1, v0}, Lch/android/api/ui/ChTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected getBtnsLayout(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2
    .param p1, "_txtViewId"    # I

    .prologue
    const/4 v1, -0x1

    .line 43
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46
    return-object v0
.end method

.method protected getBtnsView(Landroid/content/Context;F)Landroid/view/View;
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_density"    # F

    .prologue
    .line 36
    new-instance v0, Lch/android/api/ui/ChTextView;

    invoke-direct {v0, p1}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lch/android/api/ui/ChPopUpGameTipView;->txtView:Lch/android/api/ui/ChTextView;

    .line 37
    iget-object v0, p0, Lch/android/api/ui/ChPopUpGameTipView;->txtView:Lch/android/api/ui/ChTextView;

    return-object v0
.end method

.method protected isNeedScroll()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method
