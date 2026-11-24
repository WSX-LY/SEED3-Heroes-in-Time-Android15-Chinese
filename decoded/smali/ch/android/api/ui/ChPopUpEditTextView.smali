.class public Lch/android/api/ui/ChPopUpEditTextView;
.super Lch/android/api/ui/ChPopUpView;
.source "ChPopUpEditTextView.java"


# instance fields
.field private editText:Landroid/widget/EditText;

.field private okBtn:Lch/android/api/ui/ChImageButton;

.field private txtView:Lch/android/api/ui/ChTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "_bgBmpId"    # I
    .param p4, "txt"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lch/android/api/ui/ChPopUpView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZ)V

    .line 21
    iget-object v0, p0, Lch/android/api/ui/ChPopUpEditTextView;->txtView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, p4}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected getBtnsLayout(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .param p1, "_txtViewId"    # I

    .prologue
    .line 64
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67
    return-object v0
.end method

.method protected getBtnsView(Landroid/content/Context;F)Landroid/view/View;
    .locals 12
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_density"    # F

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, -0x1

    const/high16 v9, 0x41c80000    # 25.0f

    const/4 v8, -0x2

    .line 27
    new-instance v0, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v0, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, "lLayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 30
    new-instance v4, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v4, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    .local v4, "teLayout":Lch/android/api/ui/ChLinearLayout;
    new-instance v5, Lch/android/api/ui/ChTextView;

    invoke-direct {v5, p1}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lch/android/api/ui/ChPopUpEditTextView;->txtView:Lch/android/api/ui/ChTextView;

    .line 33
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lch/android/api/ui/ChPopUpEditTextView;->editText:Landroid/widget/EditText;

    .line 34
    new-instance v5, Lch/android/api/ui/ChImageButton;

    const v6, 0x7f020235

    const v7, 0x7f020234

    invoke-direct {v5, p1, v6, v7}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lch/android/api/ui/ChPopUpEditTextView;->okBtn:Lch/android/api/ui/ChImageButton;

    .line 35
    iget-object v5, p0, Lch/android/api/ui/ChPopUpEditTextView;->okBtn:Lch/android/api/ui/ChImageButton;

    const/16 v6, 0x2742

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 38
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    .local v2, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 40
    mul-float v5, p2, v9

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 41
    iget-object v5, p0, Lch/android/api/ui/ChPopUpEditTextView;->txtView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v4, v5, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44
    .local v3, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 45
    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v5, p2

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 46
    mul-float v5, p2, v9

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 47
    iget-object v5, p0, Lch/android/api/ui/ChPopUpEditTextView;->editText:Landroid/widget/EditText;

    invoke-virtual {v4, v5, v3}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 53
    const/high16 v5, 0x41f00000    # 30.0f

    mul-float/2addr v5, p2

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 54
    mul-float v5, p2, v9

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 55
    iget-object v5, p0, Lch/android/api/ui/ChPopUpEditTextView;->okBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v0, v5, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    return-object v0
.end method

.method public getEditText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lch/android/api/ui/ChPopUpEditTextView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isNeedScroll()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lch/android/api/ui/ChPopUpView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lch/android/api/ui/ChPopUpEditTextView;->okBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lch/android/api/ui/ChPopUpEditTextView;->txtView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method
