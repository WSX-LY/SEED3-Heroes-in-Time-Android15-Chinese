.class public Lch/android/api/ui/ChImageTextView;
.super Lch/android/api/ui/ChLinearLayout;
.source "ChImageTextView.java"


# instance fields
.field private IMG_VIEW:Lch/android/api/ui/ChImageView;

.field private TEXT_VIEW:Lch/android/api/ui/ChTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_imgId"    # I
    .param p3, "_txt"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v5, 0x0

    invoke-super {p0, v5}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 20
    invoke-static {}, Lch/android/api/util/DisplayInfo;->getInstance()Lch/android/api/util/DisplayInfo;

    move-result-object v0

    .line 22
    .local v0, "di":Lch/android/api/util/DisplayInfo;
    new-instance v5, Lch/android/api/ui/ChImageView;

    invoke-direct {v5, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lch/android/api/ui/ChImageTextView;->IMG_VIEW:Lch/android/api/ui/ChImageView;

    .line 23
    iget-object v5, p0, Lch/android/api/ui/ChImageTextView;->IMG_VIEW:Lch/android/api/ui/ChImageView;

    invoke-virtual {v5, p2}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 24
    iget-object v5, p0, Lch/android/api/ui/ChImageTextView;->IMG_VIEW:Lch/android/api/ui/ChImageView;

    iget v6, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lch/android/api/ui/ChImageView;->setPadding(IIII)V

    .line 25
    new-instance v5, Lch/android/api/ui/ChTextView;

    invoke-direct {v5, p1}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lch/android/api/ui/ChImageTextView;->TEXT_VIEW:Lch/android/api/ui/ChTextView;

    .line 26
    iget-object v5, p0, Lch/android/api/ui/ChImageTextView;->TEXT_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v5, p3}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v5, p0, Lch/android/api/ui/ChImageTextView;->TEXT_VIEW:Lch/android/api/ui/ChTextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 28
    iget-object v5, p0, Lch/android/api/ui/ChImageTextView;->TEXT_VIEW:Lch/android/api/ui/ChTextView;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 29
    iget-object v5, p0, Lch/android/api/ui/ChImageTextView;->TEXT_VIEW:Lch/android/api/ui/ChTextView;

    sget-object v6, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 30
    iget-object v5, p0, Lch/android/api/ui/ChImageTextView;->TEXT_VIEW:Lch/android/api/ui/ChTextView;

    invoke-static {}, Lch/android/api/util/TextPaints;->getSmallSize()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Lch/android/api/util/PixelText;->setSize(Landroid/widget/TextView;F)V

    .line 31
    iget-object v5, p0, Lch/android/api/ui/ChImageTextView;->TEXT_VIEW:Lch/android/api/ui/ChTextView;

    iget v6, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x0

    iget v8, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lch/android/api/ui/ChTextView;->setPadding(IIII)V

    .line 33
    iget-object v5, p0, Lch/android/api/ui/ChImageTextView;->TEXT_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v5}, Lch/android/api/ui/ChTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 36
    .local v3, "txtPaint":Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 37
    .local v4, "typeFace":Landroid/graphics/Typeface;
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 39
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 40
    .local v1, "lp0":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 41
    const/16 v5, 0x10

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 42
    iget-object v5, p0, Lch/android/api/ui/ChImageTextView;->IMG_VIEW:Lch/android/api/ui/ChImageView;

    invoke-super {p0, v5, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    .local v2, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 46
    const/16 v5, 0x10

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 47
    iget-object v5, p0, Lch/android/api/ui/ChImageTextView;->TEXT_VIEW:Lch/android/api/ui/ChTextView;

    invoke-super {p0, v5, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    return-void
.end method


# virtual methods
.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lch/android/api/ui/ChImageTextView;->IMG_VIEW:Lch/android/api/ui/ChImageView;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 56
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "_txt"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lch/android/api/ui/ChImageTextView;->TEXT_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method
