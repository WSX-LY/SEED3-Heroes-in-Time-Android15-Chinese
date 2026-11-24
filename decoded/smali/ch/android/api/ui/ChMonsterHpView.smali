.class public Lch/android/api/ui/ChMonsterHpView;
.super Lch/android/api/ui/ChPointView;
.source "ChMonsterHpView.java"


# instance fields
.field private final HP_LEFT:I

.field private final HP_TOP:I

.field private final LV_LEFT:I

.field private final LV_TOP:I

.field private final NAME_LEFT:I

.field private final NAME_TOP:I

.field private final TXT_PAINT:Landroid/graphics/Paint;

.field private final f_bgBmp:Landroid/graphics/Bitmap;

.field private final f_density:F

.field private final f_hpBmp:Landroid/graphics/Bitmap;

.field private final f_hpDstRect:Landroid/graphics/Rect;

.field private final f_hpSrcRect:Landroid/graphics/Rect;

.field private isVisible:Z

.field private m_hp:I

.field private m_level:I

.field private m_maxHp:I

.field private m_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_density"    # F

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Lch/android/api/ui/ChPointView;-><init>(Landroid/content/Context;F)V

    .line 34
    invoke-static {}, Lch/android/api/util/TextPaints;->getDefault()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChMonsterHpView;->TXT_PAINT:Landroid/graphics/Paint;

    .line 41
    iput p2, p0, Lch/android/api/ui/ChMonsterHpView;->f_density:F

    .line 43
    iget v1, p0, Lch/android/api/ui/ChMonsterHpView;->f_density:F

    const/high16 v2, 0x429e0000    # 79.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChMonsterHpView;->NAME_LEFT:I

    .line 44
    iget v1, p0, Lch/android/api/ui/ChMonsterHpView;->f_density:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChMonsterHpView;->NAME_TOP:I

    .line 45
    iget v1, p0, Lch/android/api/ui/ChMonsterHpView;->f_density:F

    const/high16 v2, 0x42100000    # 36.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChMonsterHpView;->LV_LEFT:I

    .line 46
    iget v1, p0, Lch/android/api/ui/ChMonsterHpView;->f_density:F

    const/high16 v2, 0x42000000    # 32.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChMonsterHpView;->LV_TOP:I

    .line 47
    iget v1, p0, Lch/android/api/ui/ChMonsterHpView;->f_density:F

    const/high16 v2, 0x42500000    # 52.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChMonsterHpView;->HP_LEFT:I

    .line 48
    iget v1, p0, Lch/android/api/ui/ChMonsterHpView;->f_density:F

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChMonsterHpView;->HP_TOP:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f020209

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChMonsterHpView;->f_bgBmp:Landroid/graphics/Bitmap;

    .line 53
    const v1, 0x7f0200d6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChMonsterHpView;->f_hpBmp:Landroid/graphics/Bitmap;

    .line 54
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChMonsterHpView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lch/android/api/ui/ChMonsterHpView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChMonsterHpView;->f_hpSrcRect:Landroid/graphics/Rect;

    .line 55
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lch/android/api/ui/ChMonsterHpView;->HP_LEFT:I

    iget v3, p0, Lch/android/api/ui/ChMonsterHpView;->HP_TOP:I

    iget v4, p0, Lch/android/api/ui/ChMonsterHpView;->HP_LEFT:I

    iget-object v5, p0, Lch/android/api/ui/ChMonsterHpView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lch/android/api/ui/ChMonsterHpView;->HP_TOP:I

    iget-object v6, p0, Lch/android/api/ui/ChMonsterHpView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChMonsterHpView;->f_hpDstRect:Landroid/graphics/Rect;

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/android/api/ui/ChMonsterHpView;->isVisible:Z

    .line 58
    return-void
.end method


# virtual methods
.method public isMonHpVisible()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lch/android/api/ui/ChMonsterHpView;->isVisible:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-super {p0, p1}, Lch/android/api/ui/ChPointView;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    iget-boolean v0, p0, Lch/android/api/ui/ChMonsterHpView;->isVisible:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lch/android/api/ui/ChMonsterHpView;->m_hp:I

    if-lez v0, :cond_1

    .line 112
    iget-object v0, p0, Lch/android/api/ui/ChMonsterHpView;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 113
    iget-object v0, p0, Lch/android/api/ui/ChMonsterHpView;->f_hpBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lch/android/api/ui/ChMonsterHpView;->f_hpSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChMonsterHpView;->f_hpDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 114
    iget-object v0, p0, Lch/android/api/ui/ChMonsterHpView;->m_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lch/android/api/ui/ChMonsterHpView;->m_name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChMonsterHpView;->NAME_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChMonsterHpView;->NAME_TOP:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChMonsterHpView;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 117
    :cond_0
    iget v0, p0, Lch/android/api/ui/ChMonsterHpView;->m_level:I

    if-lez v0, :cond_1

    .line 118
    iget v0, p0, Lch/android/api/ui/ChMonsterHpView;->m_level:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChMonsterHpView;->LV_LEFT:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChMonsterHpView;->LV_TOP:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChMonsterHpView;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 121
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v2, 0x7f020209

    .line 71
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChPointView;->onMeasure(II)V

    .line 73
    invoke-virtual {p0}, Lch/android/api/ui/ChMonsterHpView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {p0}, Lch/android/api/ui/ChMonsterHpView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lch/android/api/ui/ChMonsterHpView;->setMeasuredDimension(II)V

    .line 74
    return-void
.end method

.method public releaseRsources()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lch/android/api/ui/ChPointView;->releaseRsources()V

    .line 127
    iget-object v1, p0, Lch/android/api/ui/ChMonsterHpView;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lch/android/api/ui/ChMonsterHpView;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    :cond_0
    iget-object v1, p0, Lch/android/api/ui/ChMonsterHpView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    iget-object v1, p0, Lch/android/api/ui/ChMonsterHpView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    :cond_1
    invoke-virtual {p0}, Lch/android/api/ui/ChMonsterHpView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 137
    :cond_2
    return-void
.end method

.method public setHp(I)V
    .locals 6
    .param p1, "_hp"    # I

    .prologue
    .line 84
    iget v0, p0, Lch/android/api/ui/ChMonsterHpView;->m_hp:I

    if-eq v0, p1, :cond_0

    .line 85
    iput p1, p0, Lch/android/api/ui/ChMonsterHpView;->m_hp:I

    .line 86
    iget-object v1, p0, Lch/android/api/ui/ChMonsterHpView;->f_hpSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChMonsterHpView;->f_hpDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lch/android/api/ui/ChMonsterHpView;->f_hpBmp:Landroid/graphics/Bitmap;

    iget v4, p0, Lch/android/api/ui/ChMonsterHpView;->m_maxHp:I

    iget v5, p0, Lch/android/api/ui/ChMonsterHpView;->m_hp:I

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lch/android/api/ui/ChPointView;->updateRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)V

    .line 87
    iget v0, p0, Lch/android/api/ui/ChMonsterHpView;->m_hp:I

    if-lez v0, :cond_0

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/android/api/ui/ChMonsterHpView;->isVisible:Z

    .line 91
    :cond_0
    return-void
.end method

.method public setMonHpVisible(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lch/android/api/ui/ChMonsterHpView;->isVisible:Z

    .line 66
    return-void
.end method

.method public setMonster(Ljava/lang/String;II)V
    .locals 0
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_level"    # I
    .param p3, "_maxHp"    # I

    .prologue
    .line 77
    iput-object p1, p0, Lch/android/api/ui/ChMonsterHpView;->m_name:Ljava/lang/String;

    .line 78
    iput p2, p0, Lch/android/api/ui/ChMonsterHpView;->m_level:I

    .line 79
    iput p3, p0, Lch/android/api/ui/ChMonsterHpView;->m_maxHp:I

    .line 80
    invoke-virtual {p0, p3}, Lch/android/api/ui/ChMonsterHpView;->setHp(I)V

    .line 81
    return-void
.end method
