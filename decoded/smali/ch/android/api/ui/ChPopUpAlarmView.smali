.class public Lch/android/api/ui/ChPopUpAlarmView;
.super Lch/android/api/ui/ChPopUpView;
.source "ChPopUpAlarmView.java"


# instance fields
.field private final ID_TITLE_VIEW:I

.field private rlayout:Landroid/widget/RelativeLayout;

.field private titleImgView:Lch/android/api/ui/ChImageView;

.field private titleView:Landroid/widget/TextView;

.field private txtView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "_titleResId"    # I
    .param p4, "_titleColor"    # I
    .param p5, "_title"    # Ljava/lang/String;
    .param p6, "_txt"    # Ljava/lang/String;
    .param p7, "isInputOk"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/high16 v6, 0x41700000    # 15.0f

    const/4 v5, 0x0

    .line 21
    const v2, 0x7f020243

    invoke-direct {p0, p1, p2, v2, v5}, Lch/android/api/ui/ChPopUpView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZ)V

    .line 14
    const/16 v2, 0x64

    iput v2, p0, Lch/android/api/ui/ChPopUpAlarmView;->ID_TITLE_VIEW:I

    .line 24
    if-eqz p3, :cond_0

    if-eq p3, v4, :cond_0

    .line 25
    new-instance v2, Lch/android/api/ui/ChImageView;

    invoke-direct {v2, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lch/android/api/ui/ChPopUpAlarmView;->titleImgView:Lch/android/api/ui/ChImageView;

    .line 26
    iget-object v2, p0, Lch/android/api/ui/ChPopUpAlarmView;->titleImgView:Lch/android/api/ui/ChImageView;

    invoke-virtual {v2, p3}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 27
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 28
    .local v1, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 29
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 30
    iget v2, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 31
    iget-object v2, p0, Lch/android/api/ui/ChPopUpAlarmView;->rlayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lch/android/api/ui/ChPopUpAlarmView;->titleImgView:Lch/android/api/ui/ChImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .end local v1    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lch/android/api/ui/ChPopUpAlarmView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v2, p0, Lch/android/api/ui/ChPopUpAlarmView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    iget-object v2, p0, Lch/android/api/ui/ChPopUpAlarmView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 37
    iget-object v2, p0, Lch/android/api/ui/ChPopUpAlarmView;->txtView:Landroid/widget/TextView;

    invoke-virtual {v2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v2, p0, Lch/android/api/ui/ChPopUpAlarmView;->txtView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    iget-object v2, p0, Lch/android/api/ui/ChPopUpAlarmView;->txtView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object v2, p0, Lch/android/api/ui/ChPopUpAlarmView;->txtView:Landroid/widget/TextView;

    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 42
    new-instance v0, Lch/android/api/ui/ChPopUpAlarmView$1;

    invoke-direct {v0, p0, p7}, Lch/android/api/ui/ChPopUpAlarmView$1;-><init>(Lch/android/api/ui/ChPopUpAlarmView;Z)V

    .line 53
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {p0, v0}, Lch/android/api/ui/ChPopUpAlarmView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v2, p0, Lch/android/api/ui/ChPopUpAlarmView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v2, p0, Lch/android/api/ui/ChPopUpAlarmView;->txtView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v2, p0, Lch/android/api/ui/ChPopUpAlarmView;->rlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-super {p0, v0}, Lch/android/api/ui/ChPopUpView;->setOnClickListenerJustAllRegion(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected getBtnsLayout(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .param p1, "_txtViewId"    # I

    .prologue
    .line 92
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpAlarmView;->getBgWidth()I

    move-result v1

    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpAlarmView;->getBgHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    return-object v0
.end method

.method protected getBtnsView(Landroid/content/Context;F)Landroid/view/View;
    .locals 6
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_density"    # F

    .prologue
    const/16 v5, 0x64

    const/16 v4, 0xe

    const/4 v3, -0x2

    .line 63
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lch/android/api/ui/ChPopUpAlarmView;->rlayout:Landroid/widget/RelativeLayout;

    .line 66
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lch/android/api/ui/ChPopUpAlarmView;->titleView:Landroid/widget/TextView;

    .line 67
    iget-object v1, p0, Lch/android/api/ui/ChPopUpAlarmView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setId(I)V

    .line 69
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    const/high16 v1, 0x42280000    # 42.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 74
    iget-object v1, p0, Lch/android/api/ui/ChPopUpAlarmView;->rlayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lch/android/api/ui/ChPopUpAlarmView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lch/android/api/ui/ChPopUpAlarmView;->txtView:Landroid/widget/TextView;

    .line 78
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    .restart local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 82
    iget-object v1, p0, Lch/android/api/ui/ChPopUpAlarmView;->rlayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lch/android/api/ui/ChPopUpAlarmView;->txtView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v1, p0, Lch/android/api/ui/ChPopUpAlarmView;->rlayout:Landroid/widget/RelativeLayout;

    return-object v1
.end method

.method protected isNeedScroll()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method
