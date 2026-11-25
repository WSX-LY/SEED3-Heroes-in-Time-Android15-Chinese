.class public final Lch/android/api/util/HdResources;
.super Ljava/lang/Object;

# Legacy equipment layouts use unscaled source bounds as mdpi coordinates.
# Keep those logical bounds while BitmapFactory returns the density-scaled bitmap.
.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    move-result-object v0
    if-eqz p2, :done
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I
    const/16 v2, 0x140
    if-ne v1, v2, :done
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    if-lez v1, :done
    div-int/lit8 v1, v1, 0x2
    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    div-int/lit8 v1, v1, 0x2
    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :done
    return-object v0
.end method
