.class public Lcom/openfeint/internal/ImagePicker;
.super Ljava/lang/Object;
.source "ImagePicker.java"


# static fields
.field public static final IMAGE_PICKER_REQ_ID:I = 0x2719

.field protected static final TAG:Ljava/lang/String; = "ImagePicker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressAndUpload(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;)V
    .locals 3
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "apiPath"    # Ljava/lang/String;
    .param p2, "delegate"    # Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;

    .prologue
    .line 72
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 74
    invoke-static {p1, v0, p2}, Lcom/openfeint/internal/ImagePicker;->upload(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;)V

    .line 75
    return-void
.end method

.method public static isImagePickerActivityResult(I)Z
    .locals 1
    .param p0, "requestCode"    # I

    .prologue
    .line 41
    const/16 v0, 0x2719

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onImagePickerActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "resultCode"    # I
    .param p2, "maxLength"    # I
    .param p3, "returnedIntent"    # Landroid/content/Intent;

    .prologue
    .line 45
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 46
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 47
    .local v1, "selectedImage":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "orientation"

    aput-object v3, v2, v0

    .line 49
    .local v2, "columns":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 50
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 51
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 53
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 54
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, "filePath":Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 56
    .local v11, "rotation":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 58
    invoke-static {v8, p2, v11}, Lcom/openfeint/internal/ImagePicker;->resize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 59
    .local v9, "image":Landroid/graphics/Bitmap;
    const-string v0, "ImagePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "image! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .end local v1    # "selectedImage":Landroid/net/Uri;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v6    # "columnIndex":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "image":Landroid/graphics/Bitmap;
    .end local v11    # "rotation":I
    :goto_0
    return-object v9

    .line 63
    .restart local v1    # "selectedImage":Landroid/net/Uri;
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    const-string v0, "of_profile_picture_download_failed"

    invoke-static {v0}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v10

    .line 64
    .local v10, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v10, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 68
    .end local v1    # "selectedImage":Landroid/net/Uri;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v10    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private static preScaleImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxLength"    # I

    .prologue
    const/4 v6, 0x0

    .line 100
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "f":Ljava/io/File;
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 105
    .local v3, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 106
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 109
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 110
    .local v2, "minDim":I
    const/4 v5, 0x1

    .line 111
    .local v5, "scale":I
    :goto_0
    div-int/lit8 v7, v2, 0x2

    if-gt v7, p1, :cond_0

    .line 117
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 118
    .local v4, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 119
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v8, 0x0

    invoke-static {v7, v8, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 124
    .end local v2    # "minDim":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scale":I
    :goto_1
    return-object v6

    .line 112
    .restart local v2    # "minDim":I
    .restart local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "scale":I
    :cond_0
    div-int/lit8 v2, v2, 0x2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 121
    .end local v2    # "minDim":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scale":I
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v7, "ImagePicker"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static resize(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxLength"    # I
    .param p2, "rotation"    # I

    .prologue
    const/4 v6, 0x0

    .line 78
    invoke-static {p0, p1}, Lcom/openfeint/internal/ImagePicker;->preScaleImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    .local v0, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 81
    .local v10, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 82
    .local v7, "height":I
    if-le v7, v10, :cond_0

    const/4 v9, 0x1

    .line 85
    .local v9, "tall":Z
    :goto_0
    if-eqz v9, :cond_1

    move v1, v6

    .line 86
    .local v1, "_x":I
    :goto_1
    if-eqz v9, :cond_2

    sub-int v4, v7, v10

    div-int/lit8 v2, v4, 0x2

    .line 87
    .local v2, "_y":I
    :goto_2
    if-eqz v9, :cond_3

    move v3, v10

    .line 89
    .local v3, "_length":I
    :goto_3
    int-to-float v4, p1

    int-to-float v11, v3

    div-float v8, v4, v11

    .line 91
    .local v8, "scale":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 92
    .local v5, "transform":Landroid/graphics/Matrix;
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 93
    int-to-float v4, p2

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    move v4, v3

    .line 95
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .end local v1    # "_x":I
    .end local v2    # "_y":I
    .end local v3    # "_length":I
    .end local v5    # "transform":Landroid/graphics/Matrix;
    .end local v8    # "scale":F
    .end local v9    # "tall":Z
    :cond_0
    move v9, v6

    .line 82
    goto :goto_0

    .line 85
    .restart local v9    # "tall":Z
    :cond_1
    sub-int v4, v10, v7

    div-int/lit8 v1, v4, 0x2

    goto :goto_1

    .restart local v1    # "_x":I
    :cond_2
    move v2, v6

    .line 86
    goto :goto_2

    .restart local v2    # "_y":I
    :cond_3
    move v3, v7

    .line 87
    goto :goto_3
.end method

.method public static show(Landroid/app/Activity;)V
    .locals 5
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 29
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 30
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 31
    .local v2, "mi":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 33
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 34
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const/16 v3, 0x2719

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 36
    return-void
.end method

.method private static upload(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;)V
    .locals 6
    .param p0, "apiPath"    # Ljava/lang/String;
    .param p1, "stream"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "delegate"    # Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;

    .prologue
    .line 128
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    const-string v2, "profile.png"

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "image/png"

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/openfeint/internal/OpenFeintInternal;->uploadFile(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;)V

    .line 129
    return-void
.end method
