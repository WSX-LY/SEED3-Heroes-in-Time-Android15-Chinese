.class public Lch/android/api/ui/ChNetworkNoticeView;
.super Lch/android/api/ui/ChPopUpView;
.source "ChNetworkNoticeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/android/api/ui/ChNetworkNoticeView$NoticeData;,
        Lch/android/api/ui/ChNetworkNoticeView$NoticeView;
    }
.end annotation


# instance fields
.field private density:F

.field private layout:Lch/android/api/ui/ChLinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "bgBmpId"    # I
    .param p4, "isExistCloseBtn"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lch/android/api/ui/ChPopUpView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZ)V

    .line 21
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lch/android/api/ui/ChNetworkNoticeView$NoticeData;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Lch/android/api/ui/ChNetworkNoticeView$NoticeData;

    invoke-direct {v0, p0, p1, p2}, Lch/android/api/ui/ChNetworkNoticeView$NoticeData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addNotices(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lch/android/api/ui/ChNetworkNoticeView$NoticeData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "noticeDatas":Ljava/util/Collection;, "Ljava/util/Collection<Lch/android/api/ui/ChNetworkNoticeView$NoticeData;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    return-void

    .line 63
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lch/android/api/ui/ChNetworkNoticeView$NoticeData;

    .line 64
    .local v6, "data":Lch/android/api/ui/ChNetworkNoticeView$NoticeData;
    iget-object v8, p0, Lch/android/api/ui/ChNetworkNoticeView;->layout:Lch/android/api/ui/ChLinearLayout;

    new-instance v0, Lch/android/api/ui/ChNetworkNoticeView$NoticeView;

    invoke-virtual {p0}, Lch/android/api/ui/ChNetworkNoticeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v6}, Lch/android/api/ui/ChNetworkNoticeView$NoticeData;->access$0(Lch/android/api/ui/ChNetworkNoticeView$NoticeData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lch/android/api/ui/ChNetworkNoticeView$NoticeData;->access$1(Lch/android/api/ui/ChNetworkNoticeView$NoticeData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lch/android/api/ui/ChNetworkNoticeView$NoticeData;->access$2(Lch/android/api/ui/ChNetworkNoticeView$NoticeData;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lch/android/api/ui/ChNetworkNoticeView$NoticeView;-><init>(Lch/android/api/ui/ChNetworkNoticeView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected getBtnsLayout(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5
    .param p1, "txtViewId"    # I

    .prologue
    .line 54
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lch/android/api/ui/ChNetworkNoticeView;->getBgWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3feb333333333333L    # 0.85

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p0}, Lch/android/api/ui/ChNetworkNoticeView;->getBgHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lch/android/api/ui/ChNetworkNoticeView;->density:F

    const/high16 v4, 0x42a80000    # 84.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v0, "lp0":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 56
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57
    iget v1, p0, Lch/android/api/ui/ChNetworkNoticeView;->density:F

    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 59
    return-object v0
.end method

.method protected getBtnsView(Landroid/content/Context;F)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "density"    # F

    .prologue
    .line 26
    iput p2, p0, Lch/android/api/ui/ChNetworkNoticeView;->density:F

    .line 27
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, "scrollView":Landroid/widget/ScrollView;
    new-instance v1, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v1, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lch/android/api/ui/ChNetworkNoticeView;->layout:Lch/android/api/ui/ChLinearLayout;

    .line 29
    iget-object v1, p0, Lch/android/api/ui/ChNetworkNoticeView;->layout:Lch/android/api/ui/ChLinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 30
    iget-object v1, p0, Lch/android/api/ui/ChNetworkNoticeView;->layout:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 31
    return-object v0
.end method

.method protected isNeedScroll()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lch/android/api/ui/ChPopUpView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lch/android/api/ui/ChNetworkNoticeView;->layout:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-super {p0, p1}, Lch/android/api/ui/ChPopUpView;->setOnClickListenerJustAllRegion(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method
