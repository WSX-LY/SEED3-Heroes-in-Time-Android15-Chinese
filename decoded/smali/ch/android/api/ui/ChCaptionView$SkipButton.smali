.class Lch/android/api/ui/ChCaptionView$SkipButton;
.super Lch/android/api/ui/ChImageView;
.source "ChCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/ui/ChCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkipButton"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private isOnBmp:Z

.field private isRun:Z

.field private final offBmp:Landroid/graphics/Bitmap;

.field private final onBmp:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lch/android/api/ui/ChCaptionView;


# direct methods
.method public constructor <init>(Lch/android/api/ui/ChCaptionView;Landroid/content/Context;II)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "onResId"    # I
    .param p4, "offResId"    # I

    .prologue
    .line 310
    iput-object p1, p0, Lch/android/api/ui/ChCaptionView$SkipButton;->this$0:Lch/android/api/ui/ChCaptionView;

    .line 311
    invoke-direct {p0, p2}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 313
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lch/android/api/ui/ChCaptionView$SkipButton;->handler:Landroid/os/Handler;

    .line 315
    invoke-virtual {p0}, Lch/android/api/ui/ChCaptionView$SkipButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 316
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChCaptionView$SkipButton;->onBmp:Landroid/graphics/Bitmap;

    .line 317
    invoke-static {v0, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChCaptionView$SkipButton;->offBmp:Landroid/graphics/Bitmap;

    .line 318
    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/android/api/ui/ChCaptionView$SkipButton;->isRun:Z

    .line 333
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 350
    invoke-super {p0, p1}, Lch/android/api/ui/ChImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 351
    iget-boolean v0, p0, Lch/android/api/ui/ChCaptionView$SkipButton;->isOnBmp:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$SkipButton;->onBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$SkipButton;->offBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 361
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChImageView;->onMeasure(II)V

    .line 362
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$SkipButton;->onBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView$SkipButton;->offBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChImageView;->setMeasuredDimension(II)V

    .line 363
    return-void
.end method

.method public releaseRsources()V
    .locals 0

    .prologue
    .line 338
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->releaseRsources()V

    .line 345
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 368
    iget-boolean v0, p0, Lch/android/api/ui/ChCaptionView$SkipButton;->isOnBmp:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lch/android/api/ui/ChCaptionView$SkipButton;->isOnBmp:Z

    .line 369
    iget-boolean v0, p0, Lch/android/api/ui/ChCaptionView$SkipButton;->isRun:Z

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lch/android/api/ui/ChCaptionView$SkipButton;->invalidate()V

    .line 371
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$SkipButton;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 373
    :cond_0
    return-void

    .line 368
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lch/android/api/ui/ChCaptionView$SkipButton;->isRun:Z

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$SkipButton;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/android/api/ui/ChCaptionView$SkipButton;->isRun:Z

    .line 329
    :cond_0
    return-void
.end method
