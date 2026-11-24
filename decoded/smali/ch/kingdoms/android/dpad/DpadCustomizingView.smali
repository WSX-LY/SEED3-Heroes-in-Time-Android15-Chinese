.class public Lch/kingdoms/android/dpad/DpadCustomizingView;
.super Lch/android/api/ui/ChImageView;
.source "DpadCustomizingView.java"


# instance fields
.field private final DIR_BMP:Landroid/graphics/Bitmap;

.field private final DIR_RECT:Landroid/graphics/Rect;

.field private final FIRE_BMP:Landroid/graphics/Bitmap;

.field private final FIRE_RECT:Landroid/graphics/Rect;

.field private final H:I

.field private final ORIGIN_DIR_POSITION:Landroid/graphics/Point;

.field private final ORIGIN_FIRE_POSITION:Landroid/graphics/Point;

.field private final ORIGIN_SLOT_POSITIONS:[Landroid/graphics/Point;

.field private final PAINT:Landroid/graphics/Paint;

.field private final SLOT_BMP:Landroid/graphics/Bitmap;

.field private final SLOT_RECTS:[Landroid/graphics/Rect;

.field private final W:I

.field private previousX:I

.field private previousY:I

.field private selectedRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;IIIILandroid/graphics/Point;ILandroid/graphics/Point;I[Landroid/graphics/Point;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "alpha"    # I
    .param p5, "dirResId"    # I
    .param p6, "dirPosition"    # Landroid/graphics/Point;
    .param p7, "fireResId"    # I
    .param p8, "firePosition"    # Landroid/graphics/Point;
    .param p9, "slotResId"    # I
    .param p10, "slotPositions"    # [Landroid/graphics/Point;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 55
    const v4, 0x7f02023d

    invoke-super {p0, v4}, Lch/android/api/ui/ChImageView;->setBackgroundResource(I)V

    .line 56
    iput p2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->W:I

    .line 57
    iput p3, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->H:I

    .line 58
    invoke-virtual {p0}, Lch/kingdoms/android/dpad/DpadCustomizingView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 59
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {v3, p5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->DIR_BMP:Landroid/graphics/Bitmap;

    .line 60
    invoke-static {v3, p7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->FIRE_BMP:Landroid/graphics/Bitmap;

    .line 61
    move/from16 v0, p9

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->SLOT_BMP:Landroid/graphics/Bitmap;

    .line 63
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p6}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->ORIGIN_DIR_POSITION:Landroid/graphics/Point;

    .line 64
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p8}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->ORIGIN_FIRE_POSITION:Landroid/graphics/Point;

    .line 65
    move-object/from16 v0, p10

    array-length v4, v0

    new-array v4, v4, [Landroid/graphics/Point;

    iput-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->ORIGIN_SLOT_POSITIONS:[Landroid/graphics/Point;

    .line 66
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p10

    array-length v4, v0

    if-lt v2, v4, :cond_0

    .line 70
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->DIR_RECT:Landroid/graphics/Rect;

    .line 71
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->FIRE_RECT:Landroid/graphics/Rect;

    .line 72
    move-object/from16 v0, p10

    array-length v4, v0

    new-array v4, v4, [Landroid/graphics/Rect;

    iput-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->SLOT_RECTS:[Landroid/graphics/Rect;

    .line 73
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p10

    array-length v4, v0

    if-lt v2, v4, :cond_1

    .line 76
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v1

    .line 77
    .local v1, "dba":Lch/kingdoms/android/db/DBAdapter;
    invoke-virtual {v1}, Lch/kingdoms/android/db/DBAdapter;->getDirPosition()Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v1}, Lch/kingdoms/android/db/DBAdapter;->getFirePosition()Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {v1}, Lch/kingdoms/android/db/DBAdapter;->getSlotPositions()[Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lch/kingdoms/android/dpad/DpadCustomizingView;->resetPositions(Landroid/graphics/Point;Landroid/graphics/Point;[Landroid/graphics/Point;)V

    .line 79
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->PAINT:Landroid/graphics/Paint;

    .line 80
    iget-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->PAINT:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lch/kingdoms/android/db/DBAdapter;->getAlpha()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 81
    iget-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->PAINT:Landroid/graphics/Paint;

    const/high16 v5, -0x10000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    const/4 v4, 0x0

    iput-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->selectedRect:Landroid/graphics/Rect;

    .line 84
    return-void

    .line 67
    .end local v1    # "dba":Lch/kingdoms/android/db/DBAdapter;
    :cond_0
    iget-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->ORIGIN_SLOT_POSITIONS:[Landroid/graphics/Point;

    new-instance v5, Landroid/graphics/Point;

    aget-object v6, p10, v2

    invoke-direct {v5, v6}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    aput-object v5, v4, v2

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_1
    iget-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->SLOT_RECTS:[Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v4, v2

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getSelectedRect(II)Landroid/graphics/Rect;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 157
    iget-object v1, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->DIR_RECT:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v0, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->DIR_RECT:Landroid/graphics/Rect;

    .line 169
    :cond_0
    :goto_0
    return-object v0

    .line 159
    :cond_1
    iget-object v1, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->FIRE_RECT:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    iget-object v0, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->FIRE_RECT:Landroid/graphics/Rect;

    goto :goto_0

    .line 162
    :cond_2
    iget-object v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->SLOT_RECTS:[Landroid/graphics/Rect;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_3

    .line 169
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :cond_3
    aget-object v0, v2, v1

    .line 163
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getButtonsAlpha()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getDirPosition()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 194
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->DIR_RECT:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->H:I

    iget-object v3, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->DIR_RECT:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getDirRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->DIR_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFirePosition()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 202
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->FIRE_RECT:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->H:I

    iget-object v3, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->FIRE_RECT:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getFireRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->FIRE_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSlotPositions()[Landroid/graphics/Point;
    .locals 6

    .prologue
    .line 210
    iget-object v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->SLOT_RECTS:[Landroid/graphics/Rect;

    array-length v2, v2

    new-array v1, v2, [Landroid/graphics/Point;

    .line 211
    .local v1, "points":[Landroid/graphics/Point;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 214
    return-object v1

    .line 212
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->SLOT_RECTS:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->H:I

    iget-object v5, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->SLOT_RECTS:[Landroid/graphics/Rect;

    aget-object v5, v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v1, v0

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSlotRects()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->SLOT_RECTS:[Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lch/android/api/ui/ChImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 176
    iget-object v1, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->DIR_BMP:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->DIR_RECT:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->DIR_RECT:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 177
    iget-object v1, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->FIRE_BMP:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->FIRE_RECT:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->FIRE_RECT:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->SLOT_RECTS:[Landroid/graphics/Rect;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 181
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->SLOT_BMP:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->SLOT_RECTS:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->SLOT_RECTS:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChImageView;->onMeasure(II)V

    .line 115
    iget v0, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->W:I

    iget v1, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->H:I

    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChImageView;->setMeasuredDimension(II)V

    .line 116
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->previousX:I

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->previousY:I

    .line 152
    invoke-virtual {p0}, Lch/kingdoms/android/dpad/DpadCustomizingView;->invalidate()V

    .line 153
    const/4 v2, 0x1

    return v2

    .line 123
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->previousX:I

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->previousY:I

    .line 125
    iget v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->previousX:I

    iget v3, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->previousY:I

    invoke-direct {p0, v2, v3}, Lch/kingdoms/android/dpad/DpadCustomizingView;->getSelectedRect(II)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->selectedRect:Landroid/graphics/Rect;

    .line 126
    sget-boolean v2, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 127
    const-string v3, "KD"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "MotionEvent.ACTION_DOWN : "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->selectedRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    const-string v2, "not selected"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "selected"

    goto :goto_1

    .line 131
    :pswitch_1
    iget-object v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->selectedRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->previousX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 133
    .local v0, "dispX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->previousY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 134
    .local v1, "dispY":I
    iget-object v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->selectedRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 135
    iget-object v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->selectedRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 136
    iget-object v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->selectedRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 137
    iget-object v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->selectedRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 138
    sget-boolean v2, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 139
    const-string v2, "KD"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MotionEvent.ACTION_MOVE : MOVE : ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 144
    .end local v0    # "dispX":I
    .end local v1    # "dispY":I
    :pswitch_2
    const/4 v2, 0x0

    iput-object v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->selectedRect:Landroid/graphics/Rect;

    .line 145
    sget-boolean v2, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 146
    const-string v2, "KD"

    const-string v3, "MotionEvent.ACTION_MOVE : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public releaseRsources()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->releaseRsources()V

    .line 187
    return-void
.end method

.method public resetPositions()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->ORIGIN_DIR_POSITION:Landroid/graphics/Point;

    iget-object v1, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->ORIGIN_FIRE_POSITION:Landroid/graphics/Point;

    iget-object v2, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->ORIGIN_SLOT_POSITIONS:[Landroid/graphics/Point;

    invoke-virtual {p0, v0, v1, v2}, Lch/kingdoms/android/dpad/DpadCustomizingView;->resetPositions(Landroid/graphics/Point;Landroid/graphics/Point;[Landroid/graphics/Point;)V

    .line 97
    return-void
.end method

.method public resetPositions(Landroid/graphics/Point;Landroid/graphics/Point;[Landroid/graphics/Point;)V
    .locals 7
    .param p1, "dirPosition"    # Landroid/graphics/Point;
    .param p2, "firePosition"    # Landroid/graphics/Point;
    .param p3, "slotPositions"    # [Landroid/graphics/Point;

    .prologue
    .line 100
    iget-object v1, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->DIR_RECT:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->H:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->DIR_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 101
    iget v4, p1, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->DIR_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->H:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    .line 100
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 102
    iget-object v1, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->FIRE_RECT:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->H:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->FIRE_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 103
    iget v4, p2, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->FIRE_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->H:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    .line 102
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-lt v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lch/kingdoms/android/dpad/DpadCustomizingView;->invalidate()V

    .line 109
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->SLOT_RECTS:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    aget-object v2, p3, v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->H:I

    aget-object v4, p3, v0

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->SLOT_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 106
    aget-object v4, p3, v0

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->SLOT_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->H:I

    aget-object v6, p3, v0

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    .line 105
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setButtonsAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lch/kingdoms/android/dpad/DpadCustomizingView;->PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 92
    invoke-virtual {p0}, Lch/kingdoms/android/dpad/DpadCustomizingView;->invalidate()V

    .line 93
    return-void
.end method
