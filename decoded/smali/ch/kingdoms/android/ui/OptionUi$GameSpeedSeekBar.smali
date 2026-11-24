.class Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;
.super Landroid/widget/SeekBar;
.source "OptionUi.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/OptionUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameSpeedSeekBar"
.end annotation


# instance fields
.field private progressBmp:Landroid/graphics/Bitmap;

.field private progressDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic this$0:Lch/kingdoms/android/ui/OptionUi;

.field private thumbBmp:Landroid/graphics/Bitmap;

.field private thumbDrawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/OptionUi;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    iput-object p1, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->this$0:Lch/kingdoms/android/ui/OptionUi;

    .line 259
    invoke-direct {p0, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 261
    invoke-virtual {p0}, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->progressBmp:Landroid/graphics/Bitmap;

    .line 262
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->progressBmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->progressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 263
    invoke-virtual {p0}, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->thumbBmp:Landroid/graphics/Bitmap;

    .line 264
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->thumbBmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->thumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 266
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->progressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->thumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 269
    invoke-static {p1}, Lch/kingdoms/android/ui/OptionUi;->access$0(Lch/kingdoms/android/ui/OptionUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->setThumbOffset(I)V

    .line 270
    return-void
.end method


# virtual methods
.method protected declared-synchronized onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 277
    invoke-virtual {p0}, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c5

    invoke-static {v0, v1}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    .line 278
    invoke-virtual {p0}, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c5

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    .line 277
    invoke-super {p0, v0, v1}, Landroid/widget/SeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseRsources()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->progressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->progressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->progressBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->progressBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->progressBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 291
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->thumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->thumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 294
    :cond_2
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->thumbBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->thumbBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->thumbBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 297
    :cond_3
    return-void
.end method
