.class public Lch/android/api/ui/ChTableLayout;
.super Landroid/widget/TableLayout;
.source "ChTableLayout.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

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
    .line 22
    invoke-super {p0, p1, p2}, Landroid/widget/TableLayout;->removeDetachedView(Landroid/view/View;Z)V

    .line 23
    instance-of v0, p1, Lch/android/api/ui/IChView;

    if-eqz v0, :cond_0

    .line 24
    check-cast p1, Lch/android/api/ui/IChView;

    .end local p1    # "child":Landroid/view/View;
    invoke-interface {p1}, Lch/android/api/ui/IChView;->releaseRsources()V

    .line 26
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    .line 32
    instance-of v0, p1, Lch/android/api/ui/IChView;

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Lch/android/api/ui/IChView;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Lch/android/api/ui/IChView;->releaseRsources()V

    .line 35
    :cond_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lch/android/api/ui/ChTableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "view":Landroid/view/View;
    invoke-super {p0, p1}, Landroid/widget/TableLayout;->removeViewAt(I)V

    .line 42
    instance-of v1, v0, Lch/android/api/ui/IChView;

    if-eqz v1, :cond_0

    .line 43
    check-cast v0, Lch/android/api/ui/IChView;

    .end local v0    # "view":Landroid/view/View;
    invoke-interface {v0}, Lch/android/api/ui/IChView;->releaseRsources()V

    .line 45
    :cond_0
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/widget/TableLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 51
    instance-of v0, p1, Lch/android/api/ui/IChView;

    if-eqz v0, :cond_0

    .line 52
    check-cast p1, Lch/android/api/ui/IChView;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Lch/android/api/ui/IChView;->releaseRsources()V

    .line 54
    :cond_0
    return-void
.end method
