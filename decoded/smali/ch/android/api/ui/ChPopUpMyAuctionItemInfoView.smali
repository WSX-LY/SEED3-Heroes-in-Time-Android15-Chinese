.class public Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;
.super Lch/android/api/ui/ChPopUpView;
.source "ChPopUpMyAuctionItemInfoView.java"


# static fields
.field public static final ID_CANCEL:I = 0x2712

.field public static final ID_EXTEND:I = 0x2711


# instance fields
.field private cancelBtn:Lch/android/api/ui/ChTextSlimButton;

.field private closeBtn:Lch/android/api/ui/ChImageButton;

.field private extendBtn:Lch/android/api/ui/ChTextSlimButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZLjava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "_bgBmpId"    # I
    .param p4, "isExistCloseBtn"    # Z
    .param p5, "date"    # Ljava/lang/String;
    .param p6, "state"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lch/android/api/ui/ChPopUpView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZ)V

    .line 25
    packed-switch p6, :pswitch_data_0

    .line 33
    const/16 v1, 0x48

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "stateStr":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<font color=\'#ffffff\'>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x45

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 37
    const/16 v2, 0x43

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-void

    .line 27
    .end local v0    # "stateStr":Ljava/lang/String;
    :pswitch_0
    const/16 v1, 0x46

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    .restart local v0    # "stateStr":Ljava/lang/String;
    goto :goto_0

    .line 30
    .end local v0    # "stateStr":Ljava/lang/String;
    :pswitch_1
    const/16 v1, 0x47

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    .restart local v0    # "stateStr":Ljava/lang/String;
    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getBtnsLayout(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2
    .param p1, "_txtViewId"    # I

    .prologue
    const/4 v1, -0x1

    .line 91
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 93
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    return-object v0
.end method

.method protected getBtnsView(Landroid/content/Context;F)Landroid/view/View;
    .locals 13
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_density"    # F

    .prologue
    const v12, 0x7f020205

    const v11, 0x7f020204

    const v10, 0x7f02007a

    const/16 v9, 0xa

    const/4 v8, -0x2

    .line 50
    new-instance v5, Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 51
    const/16 v7, 0x49

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v12, v11, v7}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 50
    iput-object v5, p0, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->extendBtn:Lch/android/api/ui/ChTextSlimButton;

    .line 52
    iget-object v5, p0, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->extendBtn:Lch/android/api/ui/ChTextSlimButton;

    const/16 v6, 0x2711

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 53
    new-instance v5, Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 54
    const/16 v7, 0x48

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v12, v11, v7}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 53
    iput-object v5, p0, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->cancelBtn:Lch/android/api/ui/ChTextSlimButton;

    .line 55
    iget-object v5, p0, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->cancelBtn:Lch/android/api/ui/ChTextSlimButton;

    const/16 v6, 0x2712

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 57
    new-instance v3, Lch/android/api/ui/ChRelativeLayout;

    invoke-direct {v3, p1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .local v3, "rLayout":Lch/android/api/ui/ChRelativeLayout;
    new-instance v0, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v0, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, "layout":Lch/android/api/ui/ChLinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v1, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v2, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x41700000    # 15.0f

    mul-float/2addr v5, p2

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 63
    iget-object v5, p0, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->extendBtn:Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual {v0, v5, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v5, p0, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->cancelBtn:Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual {v0, v5, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v4, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70
    const/high16 v5, 0x42e60000    # 115.0f

    mul-float/2addr v5, p2

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 71
    invoke-virtual {v3, v0, v4}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v5, Lch/android/api/ui/ChImageButton;

    invoke-direct {v5, p1, v10, v10}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->closeBtn:Lch/android/api/ui/ChImageButton;

    .line 75
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v4    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 76
    .restart local v4    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    const/high16 v5, 0x41600000    # 14.0f

    mul-float/2addr v5, p2

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 79
    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->getBgWidth()I

    move-result v5

    const/high16 v6, 0x42480000    # 50.0f

    mul-float/2addr v6, p2

    float-to-int v6, v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 80
    iget-object v5, p0, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->closeBtn:Lch/android/api/ui/ChImageButton;

    const/16 v6, 0x2744

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 81
    iget-object v5, p0, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->closeBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v3, v5, v4}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    return-object v3
.end method

.method protected isNeedScroll()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 41
    iget-object v0, p0, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->extendBtn:Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->cancelBtn:Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lch/android/api/ui/ChPopUpMyAuctionItemInfoView;->closeBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method
