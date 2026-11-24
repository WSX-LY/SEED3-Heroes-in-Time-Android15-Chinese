.class abstract Lch/android/api/ui/ChPointView;
.super Lch/android/api/ui/ChImageView;
.source "ChPointView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_density"    # F

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected updateRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p1, "_srcRect"    # Landroid/graphics/Rect;
    .param p2, "_dstRect"    # Landroid/graphics/Rect;
    .param p3, "_bmp"    # Landroid/graphics/Bitmap;
    .param p4, "_maxPoint"    # I
    .param p5, "_point"    # I

    .prologue
    .line 15
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p5

    mul-float/2addr v0, v1

    int-to-float v1, p4

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 16
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 17
    return-void
.end method
