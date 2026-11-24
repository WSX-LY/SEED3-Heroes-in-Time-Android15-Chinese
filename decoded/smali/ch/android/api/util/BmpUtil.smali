.class public Lch/android/api/util/BmpUtil;
.super Ljava/lang/Object;
.source "BmpUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBmpHeight(Landroid/content/res/Resources;I)I
    .locals 4
    .param p0, "_res"    # Landroid/content/res/Resources;
    .param p1, "_resId"    # I

    .prologue
    .line 19
    invoke-static {}, Lch/android/api/util/DisplayInfo;->getInstance()Lch/android/api/util/DisplayInfo;

    move-result-object v0

    .line 20
    .local v0, "di":Lch/android/api/util/DisplayInfo;
    invoke-static {p0, p1}, Lch/android/api/util/BmpUtil;->getBmpOpts(Landroid/content/res/Resources;I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 25
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    invoke-static {v1, v0}, Lch/android/api/util/BmpUtil;->getDensity(Landroid/graphics/BitmapFactory$Options;Lch/android/api/util/DisplayInfo;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method private static getBmpOpts(Landroid/content/res/Resources;I)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .param p0, "_res"    # Landroid/content/res/Resources;
    .param p1, "_resId"    # I

    .prologue
    .line 37
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 39
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 43
    :cond_0
    return-object v1
.end method

.method public static getBmpWidth(Landroid/content/res/Resources;I)I
    .locals 4
    .param p0, "_res"    # Landroid/content/res/Resources;
    .param p1, "_resId"    # I

    .prologue
    .line 9
    invoke-static {}, Lch/android/api/util/DisplayInfo;->getInstance()Lch/android/api/util/DisplayInfo;

    move-result-object v0

    .line 10
    .local v0, "di":Lch/android/api/util/DisplayInfo;
    invoke-static {p0, p1}, Lch/android/api/util/BmpUtil;->getBmpOpts(Landroid/content/res/Resources;I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 15
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    invoke-static {v1, v0}, Lch/android/api/util/BmpUtil;->getDensity(Landroid/graphics/BitmapFactory$Options;Lch/android/api/util/DisplayInfo;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method private static getDensity(Landroid/graphics/BitmapFactory$Options;Lch/android/api/util/DisplayInfo;)F
    .locals 2
    .param p0, "opts"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    .line 29
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v1, p1, Lch/android/api/util/DisplayInfo;->densityDpi:I

    if-ne v0, v1, :cond_1

    .line 30
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    :goto_0
    return v0

    :cond_1
    iget v0, p1, Lch/android/api/util/DisplayInfo;->densityDpi:I

    int-to-float v0, v0

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method
