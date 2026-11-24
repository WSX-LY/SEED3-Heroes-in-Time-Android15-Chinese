.class public Lch/android/api/ui/ChHeroMpHpTpView;
.super Lch/android/api/ui/ChPointView;
.source "ChHeroMpHpTpView.java"


# instance fields
.field private final A_SKILL_POINT:I

.field private final B_SKILL_POINT:I

.field private final FACE_X:I

.field private final FACE_Y:I

.field private final HP_LEFT:I

.field private final HP_TOP:I

.field private final LV_LEFT:I

.field private final LV_TOP:I

.field private final MP_LEFT:I

.field private final MP_TOP:I

.field private final STAT_POINT:I

.field private final STAT_X:I

.field private final STAT_Y:I

.field private final TERM_H:I

.field private final TERM_W:I

.field private final TP_LEFT:I

.field private final TP_TOP:I

.field private final TXT_PAINT:Landroid/graphics/Paint;

.field private buffIndex:I

.field private final charlesFaceBmp:Landroid/graphics/Bitmap;

.field private final f_bgBmp:Landroid/graphics/Bitmap;

.field private final f_density:F

.field private final f_hpBmp:Landroid/graphics/Bitmap;

.field private final f_hpDstRect:Landroid/graphics/Rect;

.field private final f_hpSrcRect:Landroid/graphics/Rect;

.field private final f_mpBmp:Landroid/graphics/Bitmap;

.field private final f_mpDstRect:Landroid/graphics/Rect;

.field private final f_mpSrcRect:Landroid/graphics/Rect;

.field private final f_perHpRect:Landroid/graphics/Rect;

.field private final f_perHpSrcRect:Landroid/graphics/Rect;

.field private final f_perPaint:Landroid/graphics/Paint;

.field private final f_perSpRect:Landroid/graphics/Rect;

.field private final f_perSpSrcRect:Landroid/graphics/Rect;

.field private final f_tpBmp:Landroid/graphics/Bitmap;

.field private final f_tpDstRect:Landroid/graphics/Rect;

.field private final f_tpSrcRect:Landroid/graphics/Rect;

.field private iconBmps:[Landroid/graphics/Bitmap;

.field private icons:[Z

.field private isBlink:Z

.field private isMihael:Z

.field private m_hp:I

.field private m_lv:I

.field private m_maxHp:I

.field private m_maxMp:I

.field private m_maxTp:I

.field private m_mp:I

.field private m_tp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_density"    # F

    .prologue
    const/16 v2, 0x9

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v7, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Lch/android/api/ui/ChPointView;-><init>(Landroid/content/Context;F)V

    .line 55
    invoke-static {}, Lch/android/api/util/TextPaints;->getDefault()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->TXT_PAINT:Landroid/graphics/Paint;

    .line 74
    iput v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->STAT_POINT:I

    .line 75
    iput v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->A_SKILL_POINT:I

    .line 76
    iput v6, p0, Lch/android/api/ui/ChHeroMpHpTpView;->B_SKILL_POINT:I

    .line 77
    new-array v1, v2, [Z

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->icons:[Z

    .line 78
    new-array v1, v2, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->iconBmps:[Landroid/graphics/Bitmap;

    .line 80
    const/4 v1, -0x1

    iput v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->buffIndex:I

    .line 81
    iput-boolean v7, p0, Lch/android/api/ui/ChHeroMpHpTpView;->isBlink:Z

    .line 109
    iput p2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_density:F

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_density:F

    const/high16 v2, 0x42180000    # 38.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->LV_LEFT:I

    .line 113
    iget v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_density:F

    const/high16 v2, 0x42780000    # 62.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->LV_TOP:I

    .line 114
    iget v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_density:F

    const/high16 v2, 0x42680000    # 58.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->HP_LEFT:I

    .line 115
    iget v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_density:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->HP_TOP:I

    .line 116
    iget v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->HP_LEFT:I

    iput v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->MP_LEFT:I

    .line 117
    iget v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_density:F

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->MP_TOP:I

    .line 118
    iget v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->HP_LEFT:I

    iput v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->TP_LEFT:I

    .line 119
    iget v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_density:F

    const/high16 v2, 0x421c0000    # 39.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->TP_TOP:I

    .line 121
    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->iconBmps:[Landroid/graphics/Bitmap;

    const v2, 0x7f02005c

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v7

    .line 122
    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->iconBmps:[Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    const v3, 0x7f02005a

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 123
    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->iconBmps:[Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    const v3, 0x7f02005e

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 124
    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->iconBmps:[Landroid/graphics/Bitmap;

    const/4 v2, 0x3

    const v3, 0x7f02005f

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 125
    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->iconBmps:[Landroid/graphics/Bitmap;

    const/4 v2, 0x4

    const v3, 0x7f02005b

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 126
    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->iconBmps:[Landroid/graphics/Bitmap;

    const/4 v2, 0x5

    const v3, 0x7f02005d

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 128
    iget v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_density:F

    const/high16 v2, 0x428c0000    # 70.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->STAT_X:I

    .line 129
    iget v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_density:F

    const/high16 v2, 0x42580000    # 54.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->STAT_Y:I

    .line 134
    iget v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->TERM_H:I

    iput v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->TERM_W:I

    .line 136
    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->iconBmps:[Landroid/graphics/Bitmap;

    const v2, 0x7f0202af

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    .line 137
    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->iconBmps:[Landroid/graphics/Bitmap;

    const v2, 0x7f02001d

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    .line 138
    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->iconBmps:[Landroid/graphics/Bitmap;

    const v2, 0x7f020059

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v6

    .line 140
    const v1, 0x7f0200d5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_bgBmp:Landroid/graphics/Bitmap;

    .line 141
    const v1, 0x7f0200d6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpBmp:Landroid/graphics/Bitmap;

    .line 142
    const v1, 0x7f02020c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpBmp:Landroid/graphics/Bitmap;

    .line 143
    const v1, 0x7f0202d2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpBmp:Landroid/graphics/Bitmap;

    .line 145
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v7, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpSrcRect:Landroid/graphics/Rect;

    .line 146
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v7, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpSrcRect:Landroid/graphics/Rect;

    .line 147
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v7, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpSrcRect:Landroid/graphics/Rect;

    .line 149
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->HP_LEFT:I

    iget v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->HP_TOP:I

    iget v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->HP_LEFT:I

    iget-object v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->HP_TOP:I

    iget-object v6, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpDstRect:Landroid/graphics/Rect;

    .line 150
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->MP_LEFT:I

    iget v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->MP_TOP:I

    iget v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->MP_LEFT:I

    iget-object v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->MP_TOP:I

    iget-object v6, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpDstRect:Landroid/graphics/Rect;

    .line 151
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->TP_LEFT:I

    iget v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->TP_TOP:I

    iget v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->TP_LEFT:I

    iget-object v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->TP_TOP:I

    iget-object v6, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpDstRect:Landroid/graphics/Rect;

    .line 153
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpSrcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpSrcRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v7, v2, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perHpSrcRect:Landroid/graphics/Rect;

    .line 154
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpSrcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpSrcRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v7, v2, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perSpSrcRect:Landroid/graphics/Rect;

    .line 155
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->HP_TOP:I

    iget v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->HP_TOP:I

    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v1, v7, v2, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perHpRect:Landroid/graphics/Rect;

    .line 156
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->MP_TOP:I

    iget v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->MP_TOP:I

    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v1, v7, v2, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perSpRect:Landroid/graphics/Rect;

    .line 158
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perPaint:Landroid/graphics/Paint;

    .line 159
    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perPaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 161
    iget v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_density:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->FACE_X:I

    .line 162
    iget v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_density:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->FACE_Y:I

    .line 164
    const v1, 0x7f02006d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->charlesFaceBmp:Landroid/graphics/Bitmap;

    .line 166
    return-void
.end method


# virtual methods
.method public checkPointsExisting()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 303
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    .line 304
    .local v0, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->icons:[Z

    const/4 v5, 0x6

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getStatPoints()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    aput-boolean v1, v4, v5

    .line 305
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->icons:[Z

    const/4 v5, 0x7

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getActiveSkillAddPoint()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_1
    aput-boolean v1, v4, v5

    .line 306
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->icons:[Z

    const/16 v5, 0x8

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getBuffSkillAddPoint()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v2

    :goto_2
    aput-boolean v1, v4, v5

    .line 310
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_3

    .line 311
    iput-boolean v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->isMihael:Z

    .line 315
    :goto_3
    return-void

    :cond_0
    move v1, v3

    .line 304
    goto :goto_0

    :cond_1
    move v1, v3

    .line 305
    goto :goto_1

    :cond_2
    move v1, v3

    .line 306
    goto :goto_2

    .line 313
    :cond_3
    iput-boolean v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->isMihael:Z

    goto :goto_3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v9, 0x80

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 229
    invoke-super {p0, p1}, Lch/android/api/ui/ChPointView;->onDraw(Landroid/graphics/Canvas;)V

    .line 230
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v5, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 232
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perHpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perHpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-ge v4, v5, :cond_0

    .line 233
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x10000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 236
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpBmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perHpSrcRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perHpRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 238
    :cond_0
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpBmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpSrcRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 240
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perSpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perSpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-ge v4, v5, :cond_1

    .line 241
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perPaint:Landroid/graphics/Paint;

    const v5, -0xffff01

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 243
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpBmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perSpSrcRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perSpRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 245
    :cond_1
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpBmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpSrcRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 246
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpBmp:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpSrcRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 247
    iget v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_lv:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->LV_LEFT:I

    int-to-float v5, v5

    iget v6, p0, Lch/android/api/ui/ChHeroMpHpTpView;->LV_TOP:I

    int-to-float v6, v6

    iget-object v7, p0, Lch/android/api/ui/ChHeroMpHpTpView;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 249
    iget v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->STAT_X:I

    .line 250
    .local v2, "x":I
    iget v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->STAT_Y:I

    .line 251
    .local v3, "y":I
    const/4 v0, 0x0

    .line 252
    .local v0, "count":I
    iget v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->buffIndex:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_3

    .line 253
    iget-boolean v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->isBlink:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->buffIndex:I

    iget-object v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->iconBmps:[Landroid/graphics/Bitmap;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 254
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->iconBmps:[Landroid/graphics/Bitmap;

    iget v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->buffIndex:I

    aget-object v4, v4, v5

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 256
    :cond_2
    iget v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->TERM_W:I

    add-int/2addr v2, v4

    .line 257
    add-int/lit8 v0, v0, 0x1

    .line 259
    :cond_3
    const/4 v1, 0x6

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->icons:[Z

    array-length v4, v4

    if-lt v1, v4, :cond_5

    .line 279
    iget-boolean v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->isMihael:Z

    if-nez v4, :cond_4

    .line 280
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->charlesFaceBmp:Landroid/graphics/Bitmap;

    iget v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->FACE_X:I

    int-to-float v5, v5

    iget v6, p0, Lch/android/api/ui/ChHeroMpHpTpView;->FACE_Y:I

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 282
    :cond_4
    return-void

    .line 260
    :cond_5
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->icons:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_6

    .line 261
    iget-object v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->iconBmps:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v1

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 262
    iget v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->TERM_W:I

    add-int/2addr v2, v4

    .line 263
    add-int/lit8 v0, v0, 0x1

    .line 265
    :cond_6
    const/4 v4, 0x4

    if-ne v0, v4, :cond_7

    .line 266
    iget v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->TERM_H:I

    add-int/2addr v3, v4

    .line 259
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 171
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChPointView;->onMeasure(II)V

    .line 172
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lch/android/api/ui/ChHeroMpHpTpView;->setMeasuredDimension(II)V

    .line 173
    return-void
.end method

.method public releaseRsources()V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Lch/android/api/ui/ChPointView;->releaseRsources()V

    .line 288
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 291
    :cond_0
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 294
    :cond_1
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 295
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 297
    :cond_2
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 298
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 300
    :cond_3
    return-void
.end method

.method public setBuff(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "isOn"    # Z

    .prologue
    .line 322
    if-eqz p2, :cond_0

    .line 323
    iput p1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->buffIndex:I

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->isBlink:Z

    .line 329
    :goto_0
    return-void

    .line 326
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->buffIndex:I

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->isBlink:Z

    goto :goto_0
.end method

.method public setBuffBlink(IZ)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "isBlink"    # Z

    .prologue
    .line 332
    iput-boolean p2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->isBlink:Z

    .line 333
    return-void
.end method

.method public setMaxPoint(IIII)V
    .locals 6
    .param p1, "_lv"    # I
    .param p2, "_hp"    # I
    .param p3, "_mp"    # I
    .param p4, "_tp"    # I

    .prologue
    .line 176
    iget v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_lv:I

    if-eq v0, p1, :cond_0

    .line 177
    iput p1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_lv:I

    .line 179
    :cond_0
    iget v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_maxHp:I

    if-eq v0, p2, :cond_1

    .line 180
    iput p2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_maxHp:I

    .line 181
    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpBmp:Landroid/graphics/Bitmap;

    iget v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_maxHp:I

    iget v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_hp:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lch/android/api/ui/ChHeroMpHpTpView;->updateRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)V

    .line 183
    :cond_1
    iget v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_maxMp:I

    if-eq v0, p3, :cond_2

    .line 184
    iput p3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_maxMp:I

    .line 185
    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpBmp:Landroid/graphics/Bitmap;

    iget v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_maxMp:I

    iget v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_mp:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lch/android/api/ui/ChHeroMpHpTpView;->updateRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)V

    .line 187
    :cond_2
    iget v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_maxTp:I

    if-eq v0, p4, :cond_3

    .line 188
    iput p4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_maxTp:I

    .line 189
    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpBmp:Landroid/graphics/Bitmap;

    iget v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_maxTp:I

    iget v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_tp:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lch/android/api/ui/ChHeroMpHpTpView;->updateRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)V

    .line 191
    :cond_3
    return-void
.end method

.method public setPoint(IIIII)V
    .locals 7
    .param p1, "_hp"    # I
    .param p2, "perHp"    # I
    .param p3, "_mp"    # I
    .param p4, "perSp"    # I
    .param p5, "_tp"    # I

    .prologue
    .line 194
    iget v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_hp:I

    if-eq v0, p1, :cond_0

    .line 195
    iput p1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_hp:I

    .line 196
    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpBmp:Landroid/graphics/Bitmap;

    iget v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_maxHp:I

    iget v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_hp:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lch/android/api/ui/ChHeroMpHpTpView;->updateRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)V

    .line 198
    :cond_0
    if-lez p2, :cond_3

    .line 199
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/2addr v0, p2

    int-to-float v0, v0

    iget v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_maxHp:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v6, v0

    .line 200
    .local v6, "w":I
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perHpSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpSrcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 201
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perHpSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perHpSrcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 202
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perHpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_hpDstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 203
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perHpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perHpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 207
    .end local v6    # "w":I
    :goto_0
    iget v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_mp:I

    if-eq v0, p3, :cond_1

    .line 208
    iput p3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_mp:I

    .line 209
    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpBmp:Landroid/graphics/Bitmap;

    iget v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_maxMp:I

    iget v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_mp:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lch/android/api/ui/ChHeroMpHpTpView;->updateRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)V

    .line 211
    :cond_1
    if-lez p4, :cond_4

    .line 212
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/2addr v0, p4

    int-to-float v0, v0

    iget v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_maxMp:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v6, v0

    .line 213
    .restart local v6    # "w":I
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perSpSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpSrcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 214
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perSpSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perSpSrcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 215
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perSpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpDstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 216
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perSpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perSpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 220
    .end local v6    # "w":I
    :goto_1
    iget v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_tp:I

    if-eq v0, p5, :cond_2

    .line 221
    iput p5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_tp:I

    .line 222
    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_tpBmp:Landroid/graphics/Bitmap;

    iget v4, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_maxTp:I

    iget v5, p0, Lch/android/api/ui/ChHeroMpHpTpView;->m_tp:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lch/android/api/ui/ChHeroMpHpTpView;->updateRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;II)V

    .line 224
    :cond_2
    return-void

    .line 205
    :cond_3
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perHpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perHpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 218
    :cond_4
    iget-object v0, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_perSpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lch/android/api/ui/ChHeroMpHpTpView;->f_mpDstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1
.end method
