.class public Lch/kingdoms/android/dpad/BoundedDpadLayout;
.super Lch/android/api/ui/ChRelativeLayout;
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    invoke-direct {p0, p1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V
    return-void
.end method
.method protected onLayout(ZIIII)V
    .locals 8
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I
    move-result v0
    const/4 v1, 0x0
    const/4 v2, 0x0
    :scan
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I
    move-result v3
    if-ge v2, v3, :scanned
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
    instance-of v4, v3, Lch/kingdoms/android/dpad/DButton;
    if-eqz v4, :next
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v4
    if-eqz v4, :next
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v4
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I
    move-result v5
    add-int/2addr v5, v4
    sub-int/2addr v5, v0
    add-int/lit8 v5, v5, 0xc
    if-le v5, v1, :next
    move v1, v5
    :next
    add-int/lit8 v2, v2, 0x1
    goto :scan
    :scanned
    if-lez v1, :done
    const/4 v2, 0x0
    :shift
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I
    move-result v3
    if-ge v2, v3, :done
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
    instance-of v4, v3, Lch/kingdoms/android/dpad/DButton;
    if-eqz v4, :shift_next
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v4
    if-eqz v4, :shift_next
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    move-result v4
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I
    move-result v5
    sub-int/2addr v5, v1
    add-int/2addr v4, v5
    invoke-virtual {v3}, Landroid/view/View;->getTop()I
    move-result v6
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I
    move-result v7
    invoke-virtual {v3, v5, v6, v4, v7}, Landroid/view/View;->layout(IIII)V
    :shift_next
    add-int/lit8 v2, v2, 0x1
    goto :shift
    :done
    return-void
.end method
