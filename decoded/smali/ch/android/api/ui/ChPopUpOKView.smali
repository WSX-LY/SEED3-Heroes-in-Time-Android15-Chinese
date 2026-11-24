.class public Lch/android/api/ui/ChPopUpOKView;
.super Lch/android/api/ui/ChPopUpView;
.source "ChPopUpOKView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_bgBmpId"    # I

    .prologue
    .line 10
    invoke-static {}, Lch/android/api/util/DisplayInfo;->getInstance()Lch/android/api/util/DisplayInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lch/android/api/ui/ChPopUpView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZ)V

    .line 12
    return-void
.end method


# virtual methods
.method protected getBtnsLayout(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .param p1, "_txtViewId"    # I

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBtnsView(Landroid/content/Context;F)Landroid/view/View;
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_density"    # F

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isNeedScroll()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lch/android/api/ui/ChPopUpView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lch/android/api/ui/ChPopUpOKView;->TEXT_VIEW:Lch/android/api/ui/ChButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-super {p0, p1}, Lch/android/api/ui/ChPopUpView;->setOnClickListenerJustAllRegion(Landroid/view/View$OnClickListener;)V

    .line 21
    return-void
.end method
