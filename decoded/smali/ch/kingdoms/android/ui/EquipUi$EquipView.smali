.class Lch/kingdoms/android/ui/EquipUi$EquipView;
.super Lch/android/api/ui/ChLinearLayout;
.source "EquipUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/EquipUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EquipView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;
    }
.end annotation


# instance fields
.field private final ARMOOUR_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

.field private final BOOTS_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final GLOVES_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

.field private final HELLMET_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

.field private final LAYOUT:Lch/android/api/ui/ChRelativeLayout;

.field private final LEFT_RING_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

.field private final RESOURCES:Landroid/content/res/Resources;

.field private final RIGHT_RING_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

.field private final WEAPON_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

.field final synthetic this$0:Lch/kingdoms/android/ui/EquipUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/EquipUi;Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V
    .locals 15
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "_di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    .line 183
    move-object/from16 v0, p1

    iput-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    .line 184
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 186
    const v10, 0x7f02009f

    invoke-super {p0, v10}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 187
    move-object/from16 v0, p3

    iput-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->DI:Lch/android/api/util/DisplayInfo;

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iput-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->RESOURCES:Landroid/content/res/Resources;

    .line 189
    new-instance v10, Lch/android/api/ui/ChRelativeLayout;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    .line 190
    new-instance v10, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    const/4 v11, 0x0

    const v12, 0x7f0200cd

    move-object/from16 v0, p2

    invoke-direct {v10, p0, v0, v11, v12}, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;-><init>(Lch/kingdoms/android/ui/EquipUi$EquipView;Landroid/content/Context;II)V

    iput-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->HELLMET_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    .line 191
    new-instance v10, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    const/4 v11, 0x1

    const v12, 0x7f02001c

    move-object/from16 v0, p2

    invoke-direct {v10, p0, v0, v11, v12}, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;-><init>(Lch/kingdoms/android/ui/EquipUi$EquipView;Landroid/content/Context;II)V

    iput-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->ARMOOUR_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    .line 192
    new-instance v10, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    const/4 v11, 0x2

    const v12, 0x7f020268

    move-object/from16 v0, p2

    invoke-direct {v10, p0, v0, v11, v12}, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;-><init>(Lch/kingdoms/android/ui/EquipUi$EquipView;Landroid/content/Context;II)V

    iput-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->LEFT_RING_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    .line 193
    new-instance v10, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    const/4 v11, 0x3

    const v12, 0x7f0202d9

    move-object/from16 v0, p2

    invoke-direct {v10, p0, v0, v11, v12}, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;-><init>(Lch/kingdoms/android/ui/EquipUi$EquipView;Landroid/content/Context;II)V

    iput-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->WEAPON_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    .line 194
    new-instance v10, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    const/4 v11, 0x4

    const v12, 0x7f0200cc

    move-object/from16 v0, p2

    invoke-direct {v10, p0, v0, v11, v12}, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;-><init>(Lch/kingdoms/android/ui/EquipUi$EquipView;Landroid/content/Context;II)V

    iput-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->GLOVES_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    .line 195
    new-instance v10, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    const/4 v11, 0x5

    const v12, 0x7f020268

    move-object/from16 v0, p2

    invoke-direct {v10, p0, v0, v11, v12}, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;-><init>(Lch/kingdoms/android/ui/EquipUi$EquipView;Landroid/content/Context;II)V

    iput-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->RIGHT_RING_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    .line 196
    new-instance v10, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    const/4 v11, 0x6

    const v12, 0x7f02002a

    move-object/from16 v0, p2

    invoke-direct {v10, p0, v0, v11, v12}, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;-><init>(Lch/kingdoms/android/ui/EquipUi$EquipView;Landroid/content/Context;II)V

    iput-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->BOOTS_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    .line 198
    const/4 v10, 0x7

    new-array v1, v10, [Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    const/4 v10, 0x0

    iget-object v11, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->HELLMET_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v11, v1, v10

    const/4 v10, 0x1

    .line 199
    iget-object v11, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->ARMOOUR_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v11, v1, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->LEFT_RING_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v11, v1, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->WEAPON_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v11, v1, v10

    const/4 v10, 0x4

    iget-object v11, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->GLOVES_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v11, v1, v10

    const/4 v10, 0x5

    .line 200
    iget-object v11, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->RIGHT_RING_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v11, v1, v10

    const/4 v10, 0x6

    iget-object v11, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->BOOTS_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v11, v1, v10

    .line 201
    .local v1, "EQUIP_ITEM_BTNS":[Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;
    array-length v11, v1

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v11, :cond_1

    .line 204
    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/EquipUi;->access$0(Lch/kingdoms/android/ui/EquipUi;)[S

    move-result-object v10

    if-eqz v10, :cond_0

    .line 205
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v10, v1

    if-lt v2, v10, :cond_2

    .line 212
    .end local v2    # "i":I
    :cond_0
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 213
    .local v5, "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xc

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 214
    const/16 v10, 0xe

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 215
    iget-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v11, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->BOOTS_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    invoke-virtual {v10, v11, v5}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    move-object/from16 v0, p3

    iget v10, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v11, 0x41200000    # 10.0f

    mul-float/2addr v10, v11

    float-to-int v9, v10

    .line 219
    .local v9, "topMargin":I
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v6, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 220
    .local v6, "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xc

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 221
    const/16 v10, 0x9

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 222
    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 223
    iget-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v11, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->LEFT_RING_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    invoke-virtual {v10, v11, v6}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v7, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 225
    .local v7, "rlp3":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x2

    const/4 v11, 0x2

    invoke-virtual {v7, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 226
    const/16 v10, 0x9

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 227
    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 228
    iget-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v11, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->ARMOOUR_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    invoke-virtual {v10, v11, v7}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 230
    .local v8, "rlp4":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 231
    const/16 v10, 0x9

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 232
    iget-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v11, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->HELLMET_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    invoke-virtual {v10, v11, v8}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v6    # "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v6, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 237
    .restart local v6    # "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xc

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 238
    const/16 v10, 0xb

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 239
    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 240
    iget-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v11, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->RIGHT_RING_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    invoke-virtual {v10, v11, v6}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v7    # "rlp3":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v7, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 242
    .restart local v7    # "rlp3":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x2

    const/4 v11, 0x5

    invoke-virtual {v7, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 243
    const/16 v10, 0xb

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 244
    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 245
    iget-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v11, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->GLOVES_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    invoke-virtual {v10, v11, v7}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v8    # "rlp4":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 247
    .restart local v8    # "rlp4":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x2

    const/4 v11, 0x4

    invoke-virtual {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 248
    const/16 v10, 0xb

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 249
    iget-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v11, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->WEAPON_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    invoke-virtual {v10, v11, v8}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 252
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 253
    iget-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->RESOURCES:Landroid/content/res/Resources;

    const v11, 0x7f02009f

    invoke-static {v10, v11, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 255
    iget-object v10, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    iget v12, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v12, v12

    iget-object v13, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->DI:Lch/android/api/util/DisplayInfo;

    iget v13, v13, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    iget v13, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v13, v13

    iget-object v14, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->DI:Lch/android/api/util/DisplayInfo;

    iget v14, v14, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v10, v11}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    return-void

    .line 201
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "rlp3":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8    # "rlp4":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "topMargin":I
    :cond_1
    aget-object v4, v1, v10

    .line 202
    .local v4, "qib":Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 206
    .end local v4    # "qib":Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;
    .restart local v2    # "i":I
    :cond_2
    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/EquipUi;->access$0(Lch/kingdoms/android/ui/EquipUi;)[S

    move-result-object v10

    aget-short v10, v10, v2

    if-ltz v10, :cond_3

    .line 207
    aget-object v10, v1, v2

    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/EquipUi;->access$1(Lch/kingdoms/android/ui/EquipUi;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/EquipUi;->access$0(Lch/kingdoms/android/ui/EquipUi;)[S

    move-result-object v12

    aget-short v12, v12, v2

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->setItem(Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 205
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/EquipUi$EquipView;I)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/EquipUi$EquipView;->selectButton(I)V

    return-void
.end method

.method private selectButton(I)V
    .locals 5
    .param p1, "_id"    # I

    .prologue
    const/4 v2, 0x0

    .line 303
    const/4 v3, 0x7

    new-array v0, v3, [Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->HELLMET_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v3, v0, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->ARMOOUR_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v4, v0, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->LEFT_RING_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v4, v0, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->BOOTS_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v4, v0, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->WEAPON_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v4, v0, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->GLOVES_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v4, v0, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->RIGHT_RING_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v4, v0, v3

    .line 304
    .local v0, "EQUIP_ITEM_BTNS":[Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;
    array-length v3, v0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 312
    return-void

    .line 304
    :cond_0
    aget-object v1, v0, v2

    .line 305
    .local v1, "qib":Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;
    invoke-virtual {v1}, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->getId()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 306
    invoke-virtual {v1}, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->setToSelect()V

    .line 304
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_2
    invoke-virtual {v1}, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    invoke-virtual {v1}, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->setToUnSelect()V

    goto :goto_1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 288
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChLinearLayout;->onMeasure(II)V

    .line 289
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 290
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 291
    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->RESOURCES:Landroid/content/res/Resources;

    const v2, 0x7f02009f

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 292
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->DI:Lch/android/api/util/DisplayInfo;

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lch/kingdoms/android/ui/EquipUi$EquipView;->setMeasuredDimension(II)V

    .line 293
    return-void
.end method

.method public refresh()V
    .locals 5

    .prologue
    .line 268
    const/4 v2, 0x7

    new-array v0, v2, [Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    const/4 v2, 0x0

    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->HELLMET_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    .line 269
    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->ARMOOUR_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->LEFT_RING_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->WEAPON_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->GLOVES_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    .line 270
    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->RIGHT_RING_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->BOOTS_BTN:Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;

    aput-object v3, v0, v2

    .line 271
    .local v0, "EQUIP_ITEM_BTNS":[Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 283
    return-void

    .line 272
    :cond_0
    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/EquipUi;->access$0(Lch/kingdoms/android/ui/EquipUi;)[S

    move-result-object v2

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/EquipUi;->access$0(Lch/kingdoms/android/ui/EquipUi;)[S

    move-result-object v2

    aget-short v2, v2, v1

    if-ltz v2, :cond_2

    .line 275
    aget-object v2, v0, v1

    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/EquipUi;->access$1(Lch/kingdoms/android/ui/EquipUi;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v3

    iget-object v4, p0, Lch/kingdoms/android/ui/EquipUi$EquipView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/EquipUi;->access$0(Lch/kingdoms/android/ui/EquipUi;)[S

    move-result-object v4

    aget-short v4, v4, v1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->setItem(Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 276
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->setToUnSelect()V

    .line 271
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_2
    aget-object v2, v0, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->setItem(Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 279
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->setToUnSelect()V

    goto :goto_1
.end method

.method public releaseRsources()V
    .locals 0

    .prologue
    .line 298
    invoke-super {p0}, Lch/android/api/ui/ChLinearLayout;->releaseRsources()V

    .line 300
    return-void
.end method
