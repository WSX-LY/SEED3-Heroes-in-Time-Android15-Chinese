.class Lch/kingdoms/android/ui/RaceUi$SpeedBar;
.super Lch/android/api/ui/ChImageView;
.source "RaceUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/RaceUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedBar"
.end annotation


# instance fields
.field private final dstRect:Landroid/graphics/Rect;

.field private final speedBmp:Landroid/graphics/Bitmap;

.field private final srcRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lch/kingdoms/android/ui/RaceUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/RaceUi;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    iput-object p1, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->this$0:Lch/kingdoms/android/ui/RaceUi;

    .line 123
    invoke-direct {p0, p2}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 125
    const v0, 0x7f020259

    invoke-super {p0, v0}, Lch/android/api/ui/ChImageView;->setBackgroundResource(I)V

    .line 126
    invoke-virtual {p0}, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020258

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->speedBmp:Landroid/graphics/Bitmap;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->srcRect:Landroid/graphics/Rect;

    .line 128
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->srcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->srcRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 129
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->srcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->speedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->dstRect:Landroid/graphics/Rect;

    .line 131
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->dstRect:Landroid/graphics/Rect;

    invoke-static {p1}, Lch/kingdoms/android/ui/RaceUi;->access$0(Lch/kingdoms/android/ui/RaceUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 132
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->dstRect:Landroid/graphics/Rect;

    invoke-static {p1}, Lch/kingdoms/android/ui/RaceUi;->access$0(Lch/kingdoms/android/ui/RaceUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x401e000000000000L    # 7.5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 133
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->dstRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->dstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->speedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 134
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lch/android/api/ui/ChImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->srcRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_0

    .line 147
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->speedBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->srcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->dstRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 149
    :cond_0
    return-void
.end method

.method public releaseRsources()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->releaseRsources()V

    .line 155
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->speedBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->speedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->speedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 158
    :cond_0
    return-void
.end method

.method public updateSpeed(I)V
    .locals 3
    .param p1, "speed"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->srcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->speedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x19

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 139
    iget-object v0, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->dstRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->dstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lch/kingdoms/android/ui/RaceUi$SpeedBar;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 140
    return-void
.end method
