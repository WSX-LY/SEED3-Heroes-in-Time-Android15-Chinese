.class public Lch/android/api/ui/ChLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ChLinearLayout.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public releaseRsources()V
    .locals 0

    .prologue
    .line 34
    invoke-static {p0}, Lch/android/api/ui/ChViewGen;->releaseResourcesInViewGroup(Landroid/view/ViewGroup;)V

    .line 35
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->removeDetachedView(Landroid/view/View;Z)V

    .line 41
    instance-of v0, p1, Lch/android/api/ui/IChView;

    if-eqz v0, :cond_0

    .line 42
    check-cast p1, Lch/android/api/ui/IChView;

    .end local p1    # "child":Landroid/view/View;
    invoke-interface {p1}, Lch/android/api/ui/IChView;->releaseRsources()V

    .line 44
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 50
    instance-of v0, p1, Lch/android/api/ui/IChView;

    if-eqz v0, :cond_0

    .line 51
    check-cast p1, Lch/android/api/ui/IChView;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Lch/android/api/ui/IChView;->releaseRsources()V

    .line 53
    :cond_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lch/android/api/ui/ChLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 60
    instance-of v1, v0, Lch/android/api/ui/IChView;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Lch/android/api/ui/IChView;

    .end local v0    # "view":Landroid/view/View;
    invoke-interface {v0}, Lch/android/api/ui/IChView;->releaseRsources()V

    .line 63
    :cond_0
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 69
    instance-of v0, p1, Lch/android/api/ui/IChView;

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Lch/android/api/ui/IChView;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Lch/android/api/ui/IChView;->releaseRsources()V

    .line 72
    :cond_0
    return-void
.end method
