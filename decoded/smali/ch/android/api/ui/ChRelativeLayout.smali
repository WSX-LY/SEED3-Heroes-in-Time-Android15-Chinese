.class public Lch/android/api/ui/ChRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ChRelativeLayout.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public releaseRsources()V
    .locals 0

    .prologue
    .line 16
    invoke-static {p0}, Lch/android/api/ui/ChViewGen;->releaseResourcesInViewGroup(Landroid/view/ViewGroup;)V

    .line 17
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->removeDetachedView(Landroid/view/View;Z)V

    .line 24
    instance-of v0, p1, Lch/android/api/ui/IChView;

    if-eqz v0, :cond_0

    .line 25
    check-cast p1, Lch/android/api/ui/IChView;

    .end local p1    # "child":Landroid/view/View;
    invoke-interface {p1}, Lch/android/api/ui/IChView;->releaseRsources()V

    .line 27
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 33
    instance-of v0, p1, Lch/android/api/ui/IChView;

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Lch/android/api/ui/IChView;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Lch/android/api/ui/IChView;->releaseRsources()V

    .line 36
    :cond_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lch/android/api/ui/ChRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "view":Landroid/view/View;
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    .line 43
    instance-of v1, v0, Lch/android/api/ui/IChView;

    if-eqz v1, :cond_0

    .line 44
    check-cast v0, Lch/android/api/ui/IChView;

    .end local v0    # "view":Landroid/view/View;
    invoke-interface {v0}, Lch/android/api/ui/IChView;->releaseRsources()V

    .line 46
    :cond_0
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 52
    instance-of v0, p1, Lch/android/api/ui/IChView;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lch/android/api/ui/IChView;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Lch/android/api/ui/IChView;->releaseRsources()V

    .line 55
    :cond_0
    return-void
.end method
