.class public Lch/android/api/ui/ChItemButton;
.super Lch/android/api/ui/ChLinearLayout;
.source "ChItemButton.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/android/api/ui/ChItemButton$ItemImagButton;
    }
.end annotation


# instance fields
.field private final DOWN_BG_ID:I

.field private EQUIP_BMP:Landroid/graphics/Bitmap;

.field private final IMG_BUTTON:Lch/android/api/ui/ChItemButton$ItemImagButton;

.field private final LAYOUT:Lch/android/api/ui/ChRelativeLayout;

.field private final RESOURCES:Landroid/content/res/Resources;

.field private final UP_BG_ID:I

.field private isSelect:Z

.field private m_isEquip:Z

.field private m_isInteractive:Z

.field private m_numItemView:Lch/android/api/ui/ChTextView;

.field private m_numItems:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x2

    const v7, 0x7f0201ef

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 36
    invoke-direct {p0, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput v7, p0, Lch/android/api/ui/ChItemButton;->UP_BG_ID:I

    .line 23
    const v3, 0x7f0200e1

    iput v3, p0, Lch/android/api/ui/ChItemButton;->DOWN_BG_ID:I

    .line 38
    invoke-virtual {p0, v5, v5, v5, v5}, Lch/android/api/ui/ChItemButton;->setPadding(IIII)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lch/android/api/ui/ChItemButton;->RESOURCES:Landroid/content/res/Resources;

    .line 40
    iget-object v3, p0, Lch/android/api/ui/ChItemButton;->RESOURCES:Landroid/content/res/Resources;

    const v4, 0x7f0200a1

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lch/android/api/ui/ChItemButton;->EQUIP_BMP:Landroid/graphics/Bitmap;

    .line 41
    new-instance v3, Lch/android/api/ui/ChItemButton$ItemImagButton;

    invoke-direct {v3, p0, p1}, Lch/android/api/ui/ChItemButton$ItemImagButton;-><init>(Lch/android/api/ui/ChItemButton;Landroid/content/Context;)V

    iput-object v3, p0, Lch/android/api/ui/ChItemButton;->IMG_BUTTON:Lch/android/api/ui/ChItemButton$ItemImagButton;

    .line 42
    iget-object v3, p0, Lch/android/api/ui/ChItemButton;->IMG_BUTTON:Lch/android/api/ui/ChItemButton$ItemImagButton;

    invoke-virtual {v3, v7}, Lch/android/api/ui/ChItemButton$ItemImagButton;->setBackgroundResource(I)V

    .line 44
    const/4 v3, 0x1

    iput-boolean v3, p0, Lch/android/api/ui/ChItemButton;->m_isInteractive:Z

    .line 45
    iput-boolean v5, p0, Lch/android/api/ui/ChItemButton;->m_isEquip:Z

    .line 46
    iput v5, p0, Lch/android/api/ui/ChItemButton;->m_numItems:I

    .line 48
    invoke-super {p0}, Lch/android/api/ui/ChLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v7}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v2

    .line 49
    .local v2, "w":I
    invoke-super {p0}, Lch/android/api/ui/ChLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v7}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v0

    .line 50
    .local v0, "h":I
    new-instance v3, Lch/android/api/ui/ChRelativeLayout;

    invoke-direct {v3, p1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lch/android/api/ui/ChItemButton;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    .line 51
    iget-object v3, p0, Lch/android/api/ui/ChItemButton;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    invoke-super {p0, v3, v2, v0}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;II)V

    .line 53
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v1, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 56
    iget-object v3, p0, Lch/android/api/ui/ChItemButton;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v4, p0, Lch/android/api/ui/ChItemButton;->IMG_BUTTON:Lch/android/api/ui/ChItemButton$ItemImagButton;

    invoke-virtual {v3, v4, v1}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iput-boolean v5, p0, Lch/android/api/ui/ChItemButton;->isSelect:Z

    .line 59
    return-void
.end method

.method static synthetic access$0(Lch/android/api/ui/ChItemButton;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lch/android/api/ui/ChItemButton;->RESOURCES:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1(Lch/android/api/ui/ChItemButton;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lch/android/api/ui/ChItemButton;->m_isEquip:Z

    return v0
.end method

.method static synthetic access$2(Lch/android/api/ui/ChItemButton;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lch/android/api/ui/ChItemButton;->EQUIP_BMP:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lch/android/api/ui/ChItemButton;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lch/android/api/ui/ChItemButton;->EQUIP_BMP:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$4(Lch/android/api/ui/ChItemButton;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lch/android/api/ui/ChItemButton;->m_isInteractive:Z

    return v0
.end method

.method public static getItemNum(ILch/kingdoms/ndk/data/ItemRes;)I
    .locals 4
    .param p0, "itemNum"    # I
    .param p1, "_itemRes"    # Lch/kingdoms/ndk/data/ItemRes;

    .prologue
    const/16 v3, 0xf7

    .line 205
    iget-short v0, p1, Lch/kingdoms/ndk/data/ItemRes;->iconImgNum:S

    .line 206
    .local v0, "iconimgNum":I
    const/16 v1, 0xe2

    .line 207
    .local v1, "newestNum":I
    const/16 v2, 0x74

    if-le p0, v2, :cond_0

    const/16 v2, 0x78

    if-ge p0, v2, :cond_0

    .line 208
    add-int/lit8 v2, p0, -0x75

    add-int/2addr v1, v2

    .line 256
    :goto_0
    return v1

    .line 209
    :cond_0
    const/16 v2, 0x93

    if-le p0, v2, :cond_1

    const/16 v2, 0x98

    if-ge p0, v2, :cond_1

    .line 210
    add-int/lit16 v2, p0, -0x94

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    goto :goto_0

    .line 211
    :cond_1
    const/16 v2, 0xa1

    if-le p0, v2, :cond_2

    const/16 v2, 0xa5

    if-ge p0, v2, :cond_2

    .line 212
    add-int/lit16 v2, p0, -0xa2

    add-int/lit8 v2, v2, 0x7

    add-int/2addr v1, v2

    goto :goto_0

    .line 213
    :cond_2
    const/16 v2, 0xbe

    if-le p0, v2, :cond_3

    const/16 v2, 0xc4

    if-ge p0, v2, :cond_3

    .line 214
    add-int/lit8 v1, v1, 0xa

    goto :goto_0

    .line 215
    :cond_3
    const/16 v2, 0xc3

    if-le p0, v2, :cond_4

    const/16 v2, 0xc9

    if-ge p0, v2, :cond_4

    .line 216
    add-int/lit8 v1, v1, 0xb

    goto :goto_0

    .line 217
    :cond_4
    const/16 v2, 0xc8

    if-le p0, v2, :cond_5

    const/16 v2, 0xce

    if-ge p0, v2, :cond_5

    .line 218
    add-int/lit8 v1, v1, 0xc

    goto :goto_0

    .line 219
    :cond_5
    const/16 v2, 0xd2

    if-le p0, v2, :cond_6

    const/16 v2, 0xd8

    if-ge p0, v2, :cond_6

    .line 220
    add-int/lit8 v1, v1, 0xd

    goto :goto_0

    .line 221
    :cond_6
    const/16 v2, 0xd7

    if-le p0, v2, :cond_7

    const/16 v2, 0xdd

    if-ge p0, v2, :cond_7

    .line 222
    add-int/lit8 v1, v1, 0xe

    goto :goto_0

    .line 223
    :cond_7
    const/16 v2, 0xdc

    if-le p0, v2, :cond_8

    const/16 v2, 0xe2

    if-ge p0, v2, :cond_8

    .line 224
    add-int/lit8 v1, v1, 0xf

    goto :goto_0

    .line 225
    :cond_8
    const/16 v2, 0xe7

    if-le p0, v2, :cond_9

    const/16 v2, 0xed

    if-ge p0, v2, :cond_9

    .line 226
    add-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 227
    :cond_9
    const/16 v2, 0xec

    if-le p0, v2, :cond_a

    const/16 v2, 0xf2

    if-ge p0, v2, :cond_a

    .line 228
    add-int/lit8 v1, v1, 0x11

    goto :goto_0

    .line 229
    :cond_a
    const/16 v2, 0xf1

    if-le p0, v2, :cond_b

    if-ge p0, v3, :cond_b

    .line 230
    add-int/lit8 v1, v1, 0x12

    goto :goto_0

    .line 231
    :cond_b
    if-le p0, v3, :cond_c

    const/16 v2, 0xfb

    if-ge p0, v2, :cond_c

    .line 232
    add-int/lit16 v2, p0, -0xf8

    add-int/lit8 v2, v2, 0x13

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 233
    :cond_c
    const/16 v2, 0xff

    if-le p0, v2, :cond_d

    const/16 v2, 0x102

    if-ge p0, v2, :cond_d

    .line 234
    add-int/lit16 v2, p0, -0x100

    add-int/lit8 v2, v2, 0x16

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 235
    :cond_d
    const/16 v2, 0x10a

    if-ne p0, v2, :cond_e

    .line 236
    add-int/lit8 v1, v1, 0x18

    goto/16 :goto_0

    .line 237
    :cond_e
    const/16 v2, 0x114

    if-ne p0, v2, :cond_f

    .line 238
    add-int/lit8 v1, v1, 0x24

    goto/16 :goto_0

    .line 239
    :cond_f
    const/16 v2, 0x11d

    if-ne p0, v2, :cond_10

    .line 240
    add-int/lit8 v1, v1, 0x26

    goto/16 :goto_0

    .line 242
    :cond_10
    const/16 v2, 0x13a

    if-ne p0, v2, :cond_11

    .line 243
    add-int/lit8 v1, v1, 0x20

    goto/16 :goto_0

    .line 244
    :cond_11
    const/16 v2, 0x13e

    if-ne p0, v2, :cond_12

    .line 245
    add-int/lit8 v1, v1, 0x22

    goto/16 :goto_0

    .line 246
    :cond_12
    const/16 v2, 0x143

    if-ne p0, v2, :cond_13

    .line 247
    add-int/lit8 v1, v1, 0x23

    goto/16 :goto_0

    .line 248
    :cond_13
    const/16 v2, 0x144

    if-ne p0, v2, :cond_14

    .line 249
    add-int/lit8 v1, v1, 0x21

    goto/16 :goto_0

    .line 250
    :cond_14
    const/16 v2, 0x14a

    if-le p0, v2, :cond_15

    const/16 v2, 0x14f

    if-ge p0, v2, :cond_15

    .line 251
    add-int/lit16 v2, p0, -0x14b

    add-int/lit8 v2, v2, 0x27

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 253
    :cond_15
    move v1, v0

    goto/16 :goto_0
.end method

.method public static getItemNum(Lch/kingdoms/ndk/data/Inven$Item;)I
    .locals 5
    .param p0, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/16 v4, 0xf7

    .line 149
    iget v1, p0, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    .line 150
    .local v1, "itemNum":I
    iget-short v0, p0, Lch/kingdoms/ndk/data/Inven$Item;->imgNum:S

    .line 151
    .local v0, "iconimgNum":I
    const/16 v2, 0xe2

    .line 152
    .local v2, "newestNum":I
    const/16 v3, 0x74

    if-le v1, v3, :cond_0

    const/16 v3, 0x78

    if-ge v1, v3, :cond_0

    .line 153
    add-int/lit8 v3, v1, -0x75

    add-int/2addr v2, v3

    .line 201
    :goto_0
    return v2

    .line 154
    :cond_0
    const/16 v3, 0x93

    if-le v1, v3, :cond_1

    const/16 v3, 0x98

    if-ge v1, v3, :cond_1

    .line 155
    add-int/lit16 v3, v1, -0x94

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    goto :goto_0

    .line 156
    :cond_1
    const/16 v3, 0xa1

    if-le v1, v3, :cond_2

    const/16 v3, 0xa5

    if-ge v1, v3, :cond_2

    .line 157
    add-int/lit16 v3, v1, -0xa2

    add-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    goto :goto_0

    .line 158
    :cond_2
    const/16 v3, 0xbe

    if-le v1, v3, :cond_3

    const/16 v3, 0xc4

    if-ge v1, v3, :cond_3

    .line 159
    add-int/lit8 v2, v2, 0xa

    goto :goto_0

    .line 160
    :cond_3
    const/16 v3, 0xc3

    if-le v1, v3, :cond_4

    const/16 v3, 0xc9

    if-ge v1, v3, :cond_4

    .line 161
    add-int/lit8 v2, v2, 0xb

    goto :goto_0

    .line 162
    :cond_4
    const/16 v3, 0xc8

    if-le v1, v3, :cond_5

    const/16 v3, 0xce

    if-ge v1, v3, :cond_5

    .line 163
    add-int/lit8 v2, v2, 0xc

    goto :goto_0

    .line 164
    :cond_5
    const/16 v3, 0xd2

    if-le v1, v3, :cond_6

    const/16 v3, 0xd8

    if-ge v1, v3, :cond_6

    .line 165
    add-int/lit8 v2, v2, 0xd

    goto :goto_0

    .line 166
    :cond_6
    const/16 v3, 0xd7

    if-le v1, v3, :cond_7

    const/16 v3, 0xdd

    if-ge v1, v3, :cond_7

    .line 167
    add-int/lit8 v2, v2, 0xe

    goto :goto_0

    .line 168
    :cond_7
    const/16 v3, 0xdc

    if-le v1, v3, :cond_8

    const/16 v3, 0xe2

    if-ge v1, v3, :cond_8

    .line 169
    add-int/lit8 v2, v2, 0xf

    goto :goto_0

    .line 170
    :cond_8
    const/16 v3, 0xe7

    if-le v1, v3, :cond_9

    const/16 v3, 0xed

    if-ge v1, v3, :cond_9

    .line 171
    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    .line 172
    :cond_9
    const/16 v3, 0xec

    if-le v1, v3, :cond_a

    const/16 v3, 0xf2

    if-ge v1, v3, :cond_a

    .line 173
    add-int/lit8 v2, v2, 0x11

    goto :goto_0

    .line 174
    :cond_a
    const/16 v3, 0xf1

    if-le v1, v3, :cond_b

    if-ge v1, v4, :cond_b

    .line 175
    add-int/lit8 v2, v2, 0x12

    goto :goto_0

    .line 176
    :cond_b
    if-le v1, v4, :cond_c

    const/16 v3, 0xfb

    if-ge v1, v3, :cond_c

    .line 177
    add-int/lit16 v3, v1, -0xf8

    add-int/lit8 v3, v3, 0x13

    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 178
    :cond_c
    const/16 v3, 0xff

    if-le v1, v3, :cond_d

    const/16 v3, 0x102

    if-ge v1, v3, :cond_d

    .line 179
    add-int/lit16 v3, v1, -0x100

    add-int/lit8 v3, v3, 0x16

    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 180
    :cond_d
    const/16 v3, 0x10a

    if-ne v1, v3, :cond_e

    .line 181
    add-int/lit8 v2, v2, 0x18

    goto/16 :goto_0

    .line 182
    :cond_e
    const/16 v3, 0x114

    if-ne v1, v3, :cond_f

    .line 183
    add-int/lit8 v2, v2, 0x24

    goto/16 :goto_0

    .line 184
    :cond_f
    const/16 v3, 0x11d

    if-ne v1, v3, :cond_10

    .line 185
    add-int/lit8 v2, v2, 0x26

    goto/16 :goto_0

    .line 187
    :cond_10
    const/16 v3, 0x13a

    if-ne v1, v3, :cond_11

    .line 188
    add-int/lit8 v2, v2, 0x20

    goto/16 :goto_0

    .line 189
    :cond_11
    const/16 v3, 0x13e

    if-ne v1, v3, :cond_12

    .line 190
    add-int/lit8 v2, v2, 0x22

    goto/16 :goto_0

    .line 191
    :cond_12
    const/16 v3, 0x143

    if-ne v1, v3, :cond_13

    .line 192
    add-int/lit8 v2, v2, 0x23

    goto/16 :goto_0

    .line 193
    :cond_13
    const/16 v3, 0x144

    if-ne v1, v3, :cond_14

    .line 194
    add-int/lit8 v2, v2, 0x21

    goto/16 :goto_0

    .line 195
    :cond_14
    const/16 v3, 0x14a

    if-le v1, v3, :cond_15

    const/16 v3, 0x14f

    if-ge v1, v3, :cond_15

    .line 196
    add-int/lit16 v3, v1, -0x14b

    add-int/lit8 v3, v3, 0x27

    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 198
    :cond_15
    move v2, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public empty()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lch/android/api/ui/ChItemButton;->IMG_BUTTON:Lch/android/api/ui/ChItemButton$ItemImagButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChItemButton$ItemImagButton;->setItem(I)V

    .line 146
    return-void
.end method

.method public isEquiped()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lch/android/api/ui/ChItemButton;->m_isEquip:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lch/android/api/ui/ChItemButton;->isSelect:Z

    return v0
.end method

.method public releaseRsources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-virtual {p0}, Lch/android/api/ui/ChItemButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 288
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 291
    :cond_0
    iget-object v1, p0, Lch/android/api/ui/ChItemButton;->IMG_BUTTON:Lch/android/api/ui/ChItemButton$ItemImagButton;

    invoke-virtual {v1}, Lch/android/api/ui/ChItemButton$ItemImagButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 295
    :cond_1
    iget-object v1, p0, Lch/android/api/ui/ChItemButton;->IMG_BUTTON:Lch/android/api/ui/ChItemButton$ItemImagButton;

    invoke-virtual {v1}, Lch/android/api/ui/ChItemButton$ItemImagButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_2

    .line 297
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 299
    :cond_2
    iget-object v1, p0, Lch/android/api/ui/ChItemButton;->m_numItemView:Lch/android/api/ui/ChTextView;

    if-eqz v1, :cond_3

    .line 300
    iget-object v1, p0, Lch/android/api/ui/ChItemButton;->m_numItemView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v1}, Lch/android/api/ui/ChTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_3

    .line 302
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 305
    :cond_3
    iget-object v1, p0, Lch/android/api/ui/ChItemButton;->EQUIP_BMP:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lch/android/api/ui/ChItemButton;->EQUIP_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 306
    iget-object v1, p0, Lch/android/api/ui/ChItemButton;->EQUIP_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 308
    :cond_4
    return-void
.end method

.method public setEquip(Z)V
    .locals 1
    .param p1, "_isEquip"    # Z

    .prologue
    .line 264
    iput-boolean p1, p0, Lch/android/api/ui/ChItemButton;->m_isEquip:Z

    .line 265
    iget-object v0, p0, Lch/android/api/ui/ChItemButton;->IMG_BUTTON:Lch/android/api/ui/ChItemButton$ItemImagButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChItemButton$ItemImagButton;->invalidate()V

    .line 266
    return-void
.end method

.method public setId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 64
    invoke-super {p0, p1}, Lch/android/api/ui/ChLinearLayout;->setId(I)V

    .line 65
    iget-object v0, p0, Lch/android/api/ui/ChItemButton;->IMG_BUTTON:Lch/android/api/ui/ChItemButton$ItemImagButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChItemButton$ItemImagButton;->setId(I)V

    .line 66
    iget-object v0, p0, Lch/android/api/ui/ChItemButton;->m_numItemView:Lch/android/api/ui/ChTextView;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lch/android/api/ui/ChItemButton;->m_numItemView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChTextView;->setId(I)V

    .line 69
    :cond_0
    return-void
.end method

.method public setInteractiveFromTouch(Z)V
    .locals 0
    .param p1, "_isInteractive"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lch/android/api/ui/ChItemButton;->m_isInteractive:Z

    .line 92
    return-void
.end method

.method public setItem(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 8
    .param p1, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const v7, 0x7f020217

    const/4 v6, -0x2

    .line 116
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 119
    iget-object v1, p0, Lch/android/api/ui/ChItemButton;->IMG_BUTTON:Lch/android/api/ui/ChItemButton$ItemImagButton;

    iget-object v2, p0, Lch/android/api/ui/ChItemButton;->RESOURCES:Landroid/content/res/Resources;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "itemimg_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lch/android/api/ui/ChItemButton;->getItemNum(Lch/kingdoms/ndk/data/Inven$Item;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "ch.kingdoms.market.compat"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChItemButton$ItemImagButton;->setItem(I)V

    .line 121
    :cond_0
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->count:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 122
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->count:I

    iput v1, p0, Lch/android/api/ui/ChItemButton;->m_numItems:I

    .line 123
    iget-object v1, p0, Lch/android/api/ui/ChItemButton;->m_numItemView:Lch/android/api/ui/ChTextView;

    if-nez v1, :cond_1

    .line 124
    new-instance v1, Lch/android/api/ui/ChTextView;

    invoke-super {p0}, Lch/android/api/ui/ChLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lch/android/api/ui/ChItemButton;->m_numItemView:Lch/android/api/ui/ChTextView;

    .line 125
    iget-object v1, p0, Lch/android/api/ui/ChItemButton;->m_numItemView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v1, v7}, Lch/android/api/ui/ChTextView;->setBackgroundResource(I)V

    .line 126
    iget-object v1, p0, Lch/android/api/ui/ChItemButton;->m_numItemView:Lch/android/api/ui/ChTextView;

    iget v2, p0, Lch/android/api/ui/ChItemButton;->m_numItems:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lch/android/api/ui/ChItemButton;->m_numItemView:Lch/android/api/ui/ChTextView;

    iget-object v2, p0, Lch/android/api/ui/ChItemButton;->RESOURCES:Landroid/content/res/Resources;

    invoke-static {v2, v7}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-static {v1, v2}, Lch/android/api/util/PixelText;->setSize(Landroid/widget/TextView;F)V

    .line 128
    iget-object v1, p0, Lch/android/api/ui/ChItemButton;->m_numItemView:Lch/android/api/ui/ChTextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 129
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 132
    iget-object v1, p0, Lch/android/api/ui/ChItemButton;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v2, p0, Lch/android/api/ui/ChItemButton;->m_numItemView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v1, v2, v0}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .end local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->count:I

    iput v1, p0, Lch/android/api/ui/ChItemButton;->m_numItems:I

    .line 137
    iget-object v1, p0, Lch/android/api/ui/ChItemButton;->m_numItemView:Lch/android/api/ui/ChTextView;

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lch/android/api/ui/ChItemButton;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v2, p0, Lch/android/api/ui/ChItemButton;->m_numItemView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChRelativeLayout;->removeView(Landroid/view/View;)V

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lch/android/api/ui/ChItemButton;->m_numItemView:Lch/android/api/ui/ChTextView;

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lch/android/api/ui/ChLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lch/android/api/ui/ChItemButton;->IMG_BUTTON:Lch/android/api/ui/ChItemButton$ItemImagButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChItemButton$ItemImagButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lch/android/api/ui/ChItemButton;->m_numItemView:Lch/android/api/ui/ChTextView;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lch/android/api/ui/ChItemButton;->m_numItemView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_0
    return-void
.end method

.method public setToSelect()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lch/android/api/ui/ChItemButton;->IMG_BUTTON:Lch/android/api/ui/ChItemButton$ItemImagButton;

    const v1, 0x7f0200e1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChItemButton$ItemImagButton;->setBackgroundResource(I)V

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/android/api/ui/ChItemButton;->isSelect:Z

    .line 278
    return-void
.end method

.method public setToUnSelect()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lch/android/api/ui/ChItemButton;->IMG_BUTTON:Lch/android/api/ui/ChItemButton$ItemImagButton;

    const v1, 0x7f0201ef

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChItemButton$ItemImagButton;->setBackgroundResource(I)V

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/android/api/ui/ChItemButton;->isSelect:Z

    .line 272
    return-void
.end method
