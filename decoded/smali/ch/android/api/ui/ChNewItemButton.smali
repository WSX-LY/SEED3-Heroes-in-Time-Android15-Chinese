.class public Lch/android/api/ui/ChNewItemButton;
.super Landroid/widget/ImageView;
.source "ChNewItemButton.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;
    }
.end annotation


# instance fields
.field private final density:F

.field private isEquiped:Z

.field private isInteractive:Z

.field private isSelect:Z

.field private item:Lch/kingdoms/ndk/data/Inven$Item;

.field private itemBmp:Landroid/graphics/Bitmap;

.field private final margin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lch/android/api/util/DisplayInfo;->getInstance()Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    iput v0, p0, Lch/android/api/ui/ChNewItemButton;->density:F

    .line 39
    iget v0, p0, Lch/android/api/ui/ChNewItemButton;->density:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lch/android/api/ui/ChNewItemButton;->margin:F

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/android/api/ui/ChNewItemButton;->isInteractive:Z

    .line 41
    return-void
.end method

.method public static getItemNum(ILch/kingdoms/ndk/data/ItemRes;)I
    .locals 4
    .param p0, "itemNum"    # I
    .param p1, "_itemRes"    # Lch/kingdoms/ndk/data/ItemRes;

    .prologue
    const/16 v3, 0xf7

    .line 128
    iget-short v0, p1, Lch/kingdoms/ndk/data/ItemRes;->iconImgNum:S

    .line 129
    .local v0, "iconimgNum":I
    const/16 v1, 0xe2

    .line 130
    .local v1, "newestNum":I
    const/16 v2, 0x74

    if-le p0, v2, :cond_0

    const/16 v2, 0x78

    if-ge p0, v2, :cond_0

    .line 131
    add-int/lit8 v2, p0, -0x75

    add-int/2addr v1, v2

    .line 179
    :goto_0
    return v1

    .line 132
    :cond_0
    const/16 v2, 0x93

    if-le p0, v2, :cond_1

    const/16 v2, 0x98

    if-ge p0, v2, :cond_1

    .line 133
    add-int/lit16 v2, p0, -0x94

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    goto :goto_0

    .line 134
    :cond_1
    const/16 v2, 0xa1

    if-le p0, v2, :cond_2

    const/16 v2, 0xa5

    if-ge p0, v2, :cond_2

    .line 135
    add-int/lit16 v2, p0, -0xa2

    add-int/lit8 v2, v2, 0x7

    add-int/2addr v1, v2

    goto :goto_0

    .line 136
    :cond_2
    const/16 v2, 0xbe

    if-le p0, v2, :cond_3

    const/16 v2, 0xc4

    if-ge p0, v2, :cond_3

    .line 137
    add-int/lit8 v1, v1, 0xa

    goto :goto_0

    .line 138
    :cond_3
    const/16 v2, 0xc3

    if-le p0, v2, :cond_4

    const/16 v2, 0xc9

    if-ge p0, v2, :cond_4

    .line 139
    add-int/lit8 v1, v1, 0xb

    goto :goto_0

    .line 140
    :cond_4
    const/16 v2, 0xc8

    if-le p0, v2, :cond_5

    const/16 v2, 0xce

    if-ge p0, v2, :cond_5

    .line 141
    add-int/lit8 v1, v1, 0xc

    goto :goto_0

    .line 142
    :cond_5
    const/16 v2, 0xd2

    if-le p0, v2, :cond_6

    const/16 v2, 0xd8

    if-ge p0, v2, :cond_6

    .line 143
    add-int/lit8 v1, v1, 0xd

    goto :goto_0

    .line 144
    :cond_6
    const/16 v2, 0xd7

    if-le p0, v2, :cond_7

    const/16 v2, 0xdd

    if-ge p0, v2, :cond_7

    .line 145
    add-int/lit8 v1, v1, 0xe

    goto :goto_0

    .line 146
    :cond_7
    const/16 v2, 0xdc

    if-le p0, v2, :cond_8

    const/16 v2, 0xe2

    if-ge p0, v2, :cond_8

    .line 147
    add-int/lit8 v1, v1, 0xf

    goto :goto_0

    .line 148
    :cond_8
    const/16 v2, 0xe7

    if-le p0, v2, :cond_9

    const/16 v2, 0xed

    if-ge p0, v2, :cond_9

    .line 149
    add-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 150
    :cond_9
    const/16 v2, 0xec

    if-le p0, v2, :cond_a

    const/16 v2, 0xf2

    if-ge p0, v2, :cond_a

    .line 151
    add-int/lit8 v1, v1, 0x11

    goto :goto_0

    .line 152
    :cond_a
    const/16 v2, 0xf1

    if-le p0, v2, :cond_b

    if-ge p0, v3, :cond_b

    .line 153
    add-int/lit8 v1, v1, 0x12

    goto :goto_0

    .line 154
    :cond_b
    if-le p0, v3, :cond_c

    const/16 v2, 0xfb

    if-ge p0, v2, :cond_c

    .line 155
    add-int/lit16 v2, p0, -0xf8

    add-int/lit8 v2, v2, 0x13

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 156
    :cond_c
    const/16 v2, 0xff

    if-le p0, v2, :cond_d

    const/16 v2, 0x102

    if-ge p0, v2, :cond_d

    .line 157
    add-int/lit16 v2, p0, -0x100

    add-int/lit8 v2, v2, 0x16

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 158
    :cond_d
    const/16 v2, 0x10a

    if-ne p0, v2, :cond_e

    .line 159
    add-int/lit8 v1, v1, 0x18

    goto/16 :goto_0

    .line 160
    :cond_e
    const/16 v2, 0x114

    if-ne p0, v2, :cond_f

    .line 161
    add-int/lit8 v1, v1, 0x24

    goto/16 :goto_0

    .line 162
    :cond_f
    const/16 v2, 0x11d

    if-ne p0, v2, :cond_10

    .line 163
    add-int/lit8 v1, v1, 0x26

    goto/16 :goto_0

    .line 165
    :cond_10
    const/16 v2, 0x13a

    if-ne p0, v2, :cond_11

    .line 166
    add-int/lit8 v1, v1, 0x20

    goto/16 :goto_0

    .line 167
    :cond_11
    const/16 v2, 0x13e

    if-ne p0, v2, :cond_12

    .line 168
    add-int/lit8 v1, v1, 0x22

    goto/16 :goto_0

    .line 169
    :cond_12
    const/16 v2, 0x143

    if-ne p0, v2, :cond_13

    .line 170
    add-int/lit8 v1, v1, 0x23

    goto/16 :goto_0

    .line 171
    :cond_13
    const/16 v2, 0x144

    if-ne p0, v2, :cond_14

    .line 172
    add-int/lit8 v1, v1, 0x21

    goto/16 :goto_0

    .line 173
    :cond_14
    const/16 v2, 0x14a

    if-le p0, v2, :cond_15

    const/16 v2, 0x14f

    if-ge p0, v2, :cond_15

    .line 174
    add-int/lit16 v2, p0, -0x14b

    add-int/lit8 v2, v2, 0x27

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 176
    :cond_15
    move v1, v0

    goto/16 :goto_0
.end method

.method public static getItemNum(Lch/kingdoms/ndk/data/Inven$Item;)I
    .locals 5
    .param p0, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/16 v4, 0xf7

    .line 72
    iget v1, p0, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    .line 73
    .local v1, "itemNum":I
    iget-short v0, p0, Lch/kingdoms/ndk/data/Inven$Item;->imgNum:S

    .line 74
    .local v0, "iconimgNum":I
    const/16 v2, 0xe2

    .line 75
    .local v2, "newestNum":I
    const/16 v3, 0x74

    if-le v1, v3, :cond_0

    const/16 v3, 0x78

    if-ge v1, v3, :cond_0

    .line 76
    add-int/lit8 v3, v1, -0x75

    add-int/2addr v2, v3

    .line 124
    :goto_0
    return v2

    .line 77
    :cond_0
    const/16 v3, 0x93

    if-le v1, v3, :cond_1

    const/16 v3, 0x98

    if-ge v1, v3, :cond_1

    .line 78
    add-int/lit16 v3, v1, -0x94

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    goto :goto_0

    .line 79
    :cond_1
    const/16 v3, 0xa1

    if-le v1, v3, :cond_2

    const/16 v3, 0xa5

    if-ge v1, v3, :cond_2

    .line 80
    add-int/lit16 v3, v1, -0xa2

    add-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    goto :goto_0

    .line 81
    :cond_2
    const/16 v3, 0xbe

    if-le v1, v3, :cond_3

    const/16 v3, 0xc4

    if-ge v1, v3, :cond_3

    .line 82
    add-int/lit8 v2, v2, 0xa

    goto :goto_0

    .line 83
    :cond_3
    const/16 v3, 0xc3

    if-le v1, v3, :cond_4

    const/16 v3, 0xc9

    if-ge v1, v3, :cond_4

    .line 84
    add-int/lit8 v2, v2, 0xb

    goto :goto_0

    .line 85
    :cond_4
    const/16 v3, 0xc8

    if-le v1, v3, :cond_5

    const/16 v3, 0xce

    if-ge v1, v3, :cond_5

    .line 86
    add-int/lit8 v2, v2, 0xc

    goto :goto_0

    .line 87
    :cond_5
    const/16 v3, 0xd2

    if-le v1, v3, :cond_6

    const/16 v3, 0xd8

    if-ge v1, v3, :cond_6

    .line 88
    add-int/lit8 v2, v2, 0xd

    goto :goto_0

    .line 89
    :cond_6
    const/16 v3, 0xd7

    if-le v1, v3, :cond_7

    const/16 v3, 0xdd

    if-ge v1, v3, :cond_7

    .line 90
    add-int/lit8 v2, v2, 0xe

    goto :goto_0

    .line 91
    :cond_7
    const/16 v3, 0xdc

    if-le v1, v3, :cond_8

    const/16 v3, 0xe2

    if-ge v1, v3, :cond_8

    .line 92
    add-int/lit8 v2, v2, 0xf

    goto :goto_0

    .line 93
    :cond_8
    const/16 v3, 0xe7

    if-le v1, v3, :cond_9

    const/16 v3, 0xed

    if-ge v1, v3, :cond_9

    .line 94
    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    .line 95
    :cond_9
    const/16 v3, 0xec

    if-le v1, v3, :cond_a

    const/16 v3, 0xf2

    if-ge v1, v3, :cond_a

    .line 96
    add-int/lit8 v2, v2, 0x11

    goto :goto_0

    .line 97
    :cond_a
    const/16 v3, 0xf1

    if-le v1, v3, :cond_b

    if-ge v1, v4, :cond_b

    .line 98
    add-int/lit8 v2, v2, 0x12

    goto :goto_0

    .line 99
    :cond_b
    if-le v1, v4, :cond_c

    const/16 v3, 0xfb

    if-ge v1, v3, :cond_c

    .line 100
    add-int/lit16 v3, v1, -0xf8

    add-int/lit8 v3, v3, 0x13

    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 101
    :cond_c
    const/16 v3, 0xff

    if-le v1, v3, :cond_d

    const/16 v3, 0x102

    if-ge v1, v3, :cond_d

    .line 102
    add-int/lit16 v3, v1, -0x100

    add-int/lit8 v3, v3, 0x16

    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 103
    :cond_d
    const/16 v3, 0x10a

    if-ne v1, v3, :cond_e

    .line 104
    add-int/lit8 v2, v2, 0x18

    goto/16 :goto_0

    .line 105
    :cond_e
    const/16 v3, 0x114

    if-ne v1, v3, :cond_f

    .line 106
    add-int/lit8 v2, v2, 0x24

    goto/16 :goto_0

    .line 107
    :cond_f
    const/16 v3, 0x11d

    if-ne v1, v3, :cond_10

    .line 108
    add-int/lit8 v2, v2, 0x26

    goto/16 :goto_0

    .line 110
    :cond_10
    const/16 v3, 0x13a

    if-ne v1, v3, :cond_11

    .line 111
    add-int/lit8 v2, v2, 0x20

    goto/16 :goto_0

    .line 112
    :cond_11
    const/16 v3, 0x13e

    if-ne v1, v3, :cond_12

    .line 113
    add-int/lit8 v2, v2, 0x22

    goto/16 :goto_0

    .line 114
    :cond_12
    const/16 v3, 0x143

    if-ne v1, v3, :cond_13

    .line 115
    add-int/lit8 v2, v2, 0x23

    goto/16 :goto_0

    .line 116
    :cond_13
    const/16 v3, 0x144

    if-ne v1, v3, :cond_14

    .line 117
    add-int/lit8 v2, v2, 0x21

    goto/16 :goto_0

    .line 118
    :cond_14
    const/16 v3, 0x14a

    if-le v1, v3, :cond_15

    const/16 v3, 0x14f

    if-ge v1, v3, :cond_15

    .line 119
    add-int/lit16 v3, v1, -0x14b

    add-int/lit8 v3, v3, 0x27

    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 121
    :cond_15
    move v2, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public empty()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lch/android/api/ui/ChNewItemButton;->setEquip(Z)V

    .line 65
    invoke-virtual {p0, v0}, Lch/android/api/ui/ChNewItemButton;->setSelected(Z)V

    .line 66
    iput-object v1, p0, Lch/android/api/ui/ChNewItemButton;->item:Lch/kingdoms/ndk/data/Inven$Item;

    .line 67
    iput-object v1, p0, Lch/android/api/ui/ChNewItemButton;->itemBmp:Landroid/graphics/Bitmap;

    .line 68
    invoke-virtual {p0}, Lch/android/api/ui/ChNewItemButton;->invalidate()V

    .line 69
    return-void
.end method

.method public isEquiped()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lch/android/api/ui/ChNewItemButton;->isEquiped:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lch/android/api/ui/ChNewItemButton;->isSelect:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 208
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 209
    iget-boolean v0, p0, Lch/android/api/ui/ChNewItemButton;->isSelect:Z

    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {p0}, Lch/android/api/ui/ChNewItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->getDownBmp(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 215
    :goto_0
    iget-object v0, p0, Lch/android/api/ui/ChNewItemButton;->itemBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lch/android/api/ui/ChNewItemButton;->itemBmp:Landroid/graphics/Bitmap;

    iget v1, p0, Lch/android/api/ui/ChNewItemButton;->margin:F

    iget v2, p0, Lch/android/api/ui/ChNewItemButton;->margin:F

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 219
    :cond_0
    iget-boolean v0, p0, Lch/android/api/ui/ChNewItemButton;->isEquiped:Z

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lch/android/api/ui/ChNewItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->getEquipBmp(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 223
    :cond_1
    iget-object v0, p0, Lch/android/api/ui/ChNewItemButton;->item:Lch/kingdoms/ndk/data/Inven$Item;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lch/android/api/ui/ChNewItemButton;->item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->count:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 224
    invoke-virtual {p0}, Lch/android/api/ui/ChNewItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->getNumBmp(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChNewItemButton;->density:F

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lch/android/api/ui/ChNewItemButton;->density:F

    const/high16 v3, 0x41b00000    # 22.0f

    mul-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 225
    iget-object v0, p0, Lch/android/api/ui/ChNewItemButton;->item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->count:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChNewItemButton;->density:F

    const/high16 v2, 0x41d80000    # 27.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lch/android/api/ui/ChNewItemButton;->density:F

    const/high16 v3, 0x42040000    # 33.0f

    mul-float/2addr v2, v3

    iget v3, p0, Lch/android/api/ui/ChNewItemButton;->density:F

    invoke-static {v3}, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->getTextPaint(F)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 227
    :cond_2
    return-void

    .line 212
    :cond_3
    invoke-virtual {p0}, Lch/android/api/ui/ChNewItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->getUpBmp(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x42140000    # 37.0f

    .line 232
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 233
    iget v0, p0, Lch/android/api/ui/ChNewItemButton;->density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v1, p0, Lch/android/api/ui/ChNewItemButton;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-super {p0, v0, v1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    .line 234
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 239
    iget-boolean v1, p0, Lch/android/api/ui/ChNewItemButton;->isInteractive:Z

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 241
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 248
    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lch/android/api/ui/ChNewItemButton;->isSelect:Z

    .line 250
    :goto_0
    invoke-virtual {p0}, Lch/android/api/ui/ChNewItemButton;->invalidate()V

    .line 252
    .end local v0    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 244
    .restart local v0    # "action":I
    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/android/api/ui/ChNewItemButton;->isSelect:Z

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public releaseRsources()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public setEquip(Z)V
    .locals 0
    .param p1, "_isEquip"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lch/android/api/ui/ChNewItemButton;->isEquiped:Z

    .line 188
    invoke-virtual {p0}, Lch/android/api/ui/ChNewItemButton;->invalidate()V

    .line 189
    return-void
.end method

.method public setInteractiveFromTouch(Z)V
    .locals 0
    .param p1, "_isInteractive"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lch/android/api/ui/ChNewItemButton;->isInteractive:Z

    .line 51
    return-void
.end method

.method public setItem(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 5
    .param p1, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 54
    iget v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    iget-boolean v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    if-eqz v2, :cond_0

    .line 55
    invoke-static {p1}, Lch/android/api/ui/ChNewItemButton;->getItemNum(Lch/kingdoms/ndk/data/Inven$Item;)I

    move-result v0

    .line 56
    .local v0, "itemNum":I
    invoke-virtual {p0}, Lch/android/api/ui/ChNewItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "itemimg_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "ch.kingdoms.market.compat"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->getItemBmp(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lch/android/api/ui/ChNewItemButton;->itemBmp:Landroid/graphics/Bitmap;

    .line 58
    iput-object p1, p0, Lch/android/api/ui/ChNewItemButton;->item:Lch/kingdoms/ndk/data/Inven$Item;

    .line 59
    invoke-virtual {p0}, Lch/android/api/ui/ChNewItemButton;->invalidate()V

    .line 61
    .end local v0    # "itemNum":I
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method public setToSelect()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/android/api/ui/ChNewItemButton;->isSelect:Z

    .line 198
    invoke-virtual {p0}, Lch/android/api/ui/ChNewItemButton;->invalidate()V

    .line 199
    return-void
.end method

.method public setToUnSelect()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/android/api/ui/ChNewItemButton;->isSelect:Z

    .line 193
    invoke-virtual {p0}, Lch/android/api/ui/ChNewItemButton;->invalidate()V

    .line 194
    return-void
.end method
