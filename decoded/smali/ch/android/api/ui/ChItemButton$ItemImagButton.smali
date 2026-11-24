.class Lch/android/api/ui/ChItemButton$ItemImagButton;
.super Landroid/widget/ImageButton;
.source "ChItemButton.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/ui/ChItemButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemImagButton"
.end annotation


# instance fields
.field private itemBmp:Landroid/graphics/Bitmap;

.field private final margin:F

.field final synthetic this$0:Lch/android/api/ui/ChItemButton;


# direct methods
.method public constructor <init>(Lch/android/api/ui/ChItemButton;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    iput-object p1, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->this$0:Lch/android/api/ui/ChItemButton;

    .line 315
    invoke-direct {p0, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 317
    invoke-static {}, Lch/android/api/util/DisplayInfo;->getInstance()Lch/android/api/util/DisplayInfo;

    move-result-object v0

    .line 318
    .local v0, "di":Lch/android/api/util/DisplayInfo;
    iget v1, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->margin:F

    .line 319
    return-void
.end method

.method private recycleItemBmp()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->itemBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->itemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->itemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 325
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->itemBmp:Landroid/graphics/Bitmap;

    .line 326
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 342
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 343
    iget-object v0, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->itemBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->itemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->itemBmp:Landroid/graphics/Bitmap;

    iget v1, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->margin:F

    iget v2, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->margin:F

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 346
    :cond_0
    iget-object v0, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->this$0:Lch/android/api/ui/ChItemButton;

    invoke-static {v0}, Lch/android/api/ui/ChItemButton;->access$1(Lch/android/api/ui/ChItemButton;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->this$0:Lch/android/api/ui/ChItemButton;

    invoke-static {v0}, Lch/android/api/ui/ChItemButton;->access$2(Lch/android/api/ui/ChItemButton;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->this$0:Lch/android/api/ui/ChItemButton;

    iget-object v1, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->this$0:Lch/android/api/ui/ChItemButton;

    invoke-static {v1}, Lch/android/api/ui/ChItemButton;->access$0(Lch/android/api/ui/ChItemButton;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lch/android/api/ui/ChItemButton;->access$3(Lch/android/api/ui/ChItemButton;Landroid/graphics/Bitmap;)V

    .line 350
    :cond_1
    iget-object v0, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->this$0:Lch/android/api/ui/ChItemButton;

    invoke-static {v0}, Lch/android/api/ui/ChItemButton;->access$2(Lch/android/api/ui/ChItemButton;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 352
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 357
    iget-object v0, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->this$0:Lch/android/api/ui/ChItemButton;

    invoke-static {v0}, Lch/android/api/ui/ChItemButton;->access$4(Lch/android/api/ui/ChItemButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lch/android/api/ui/ChItemButton$ItemImagButton;->setImage(I)V

    .line 360
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public releaseRsources()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Lch/android/api/ui/ChItemButton$ItemImagButton;->recycleItemBmp()V

    .line 379
    return-void
.end method

.method protected setImage(I)V
    .locals 1
    .param p1, "_action"    # I

    .prologue
    .line 364
    packed-switch p1, :pswitch_data_0

    .line 371
    :pswitch_0
    const v0, 0x7f0201ef

    invoke-virtual {p0, v0}, Lch/android/api/ui/ChItemButton$ItemImagButton;->setBackgroundResource(I)V

    .line 373
    :goto_0
    return-void

    .line 367
    :pswitch_1
    const v0, 0x7f0200e1

    invoke-virtual {p0, v0}, Lch/android/api/ui/ChItemButton$ItemImagButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setItem(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->itemBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0}, Lch/android/api/ui/ChItemButton$ItemImagButton;->recycleItemBmp()V

    .line 332
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->itemBmp:Landroid/graphics/Bitmap;

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->this$0:Lch/android/api/ui/ChItemButton;

    invoke-static {v0}, Lch/android/api/ui/ChItemButton;->access$0(Lch/android/api/ui/ChItemButton;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChItemButton$ItemImagButton;->itemBmp:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
