.class Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;
.super Lch/android/api/ui/ChImageView;
.source "ChPopUpQuickSlot.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/ui/ChPopUpQuickSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickSlots"
.end annotation


# instance fields
.field private final CENTER_XS:[I

.field private final ICON_CENTER_Y:I

.field private final ICON_START_X:I

.field private final ICON_WITDH:I

.field private final SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

.field private ciclePaint:Landroid/graphics/Paint;

.field private final clipSize:I

.field private isAvailables:[Z

.field private m_icons:[Landroid/graphics/Bitmap;

.field private m_selectedIndex:I

.field private radius:I

.field final synthetic this$0:Lch/android/api/ui/ChPopUpQuickSlot;


# direct methods
.method public constructor <init>(Lch/android/api/ui/ChPopUpQuickSlot;Landroid/content/Context;[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;I)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "_slots"    # [Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    .param p4, "_bgResId"    # I

    .prologue
    const/4 v6, 0x2

    .line 146
    iput-object p1, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->this$0:Lch/android/api/ui/ChPopUpQuickSlot;

    .line 147
    invoke-direct {p0, p2}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 125
    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {p1}, Lch/android/api/ui/ChPopUpQuickSlot;->access$0(Lch/android/api/ui/ChPopUpQuickSlot;)Lch/android/api/util/DisplayInfo;

    move-result-object v4

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v5, 0x427c0000    # 63.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lch/android/api/ui/ChPopUpQuickSlot;->access$0(Lch/android/api/ui/ChPopUpQuickSlot;)Lch/android/api/util/DisplayInfo;

    move-result-object v4

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v5, 0x42ea0000    # 117.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v2, v3

    .line 126
    invoke-static {p1}, Lch/android/api/ui/ChPopUpQuickSlot;->access$0(Lch/android/api/ui/ChPopUpQuickSlot;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x432a0000    # 170.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v6

    const/4 v3, 0x3

    invoke-static {p1}, Lch/android/api/ui/ChPopUpQuickSlot;->access$0(Lch/android/api/ui/ChPopUpQuickSlot;)Lch/android/api/util/DisplayInfo;

    move-result-object v4

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v5, 0x435e0000    # 222.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p1}, Lch/android/api/ui/ChPopUpQuickSlot;->access$0(Lch/android/api/ui/ChPopUpQuickSlot;)Lch/android/api/util/DisplayInfo;

    move-result-object v4

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    const v5, 0x43898000    # 275.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p1}, Lch/android/api/ui/ChPopUpQuickSlot;->access$0(Lch/android/api/ui/ChPopUpQuickSlot;)Lch/android/api/util/DisplayInfo;

    move-result-object v4

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v5, 0x43a40000    # 328.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v2, v3

    iput-object v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->CENTER_XS:[I

    .line 127
    invoke-static {p1}, Lch/android/api/ui/ChPopUpQuickSlot;->access$0(Lch/android/api/ui/ChPopUpQuickSlot;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42340000    # 45.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->ICON_START_X:I

    .line 129
    invoke-static {p1}, Lch/android/api/ui/ChPopUpQuickSlot;->access$0(Lch/android/api/ui/ChPopUpQuickSlot;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x41b00000    # 22.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->ICON_CENTER_Y:I

    .line 130
    invoke-static {p1}, Lch/android/api/ui/ChPopUpQuickSlot;->access$0(Lch/android/api/ui/ChPopUpQuickSlot;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42500000    # 52.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->ICON_WITDH:I

    .line 149
    invoke-super {p0, p4}, Lch/android/api/ui/ChImageView;->setBackgroundResource(I)V

    .line 150
    iput-object p3, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    .line 151
    iget-object v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    .line 152
    iget-object v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    array-length v2, v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->isAvailables:[Z

    .line 153
    invoke-super {p0, p0}, Lch/android/api/ui/ChImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    const/4 v2, -0x1

    iput v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_selectedIndex:I

    .line 155
    sget-boolean v2, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 156
    const-string v2, "KD"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SLOTS.length:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m_icons.length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 178
    invoke-static {p1}, Lch/android/api/ui/ChPopUpQuickSlot;->access$0(Lch/android/api/ui/ChPopUpQuickSlot;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42180000    # 38.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->clipSize:I

    .line 182
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->ciclePaint:Landroid/graphics/Paint;

    .line 183
    iget-object v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->ciclePaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget-object v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->ciclePaint:Landroid/graphics/Paint;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 186
    invoke-static {p1}, Lch/android/api/ui/ChPopUpQuickSlot;->access$0(Lch/android/api/ui/ChPopUpQuickSlot;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x41980000    # 19.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->radius:I

    .line 189
    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->invalidate()V

    .line 190
    return-void

    .line 159
    :cond_1
    iget-object v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getSlotState()B

    move-result v2

    if-lez v2, :cond_3

    .line 161
    iget-object v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getType()B

    move-result v2

    if-ne v2, v6, :cond_4

    .line 163
    iget-object v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getChkNum()S

    move-result v1

    .line 168
    .local v1, "index":I
    :goto_1
    invoke-static {p1}, Lch/android/api/ui/ChPopUpQuickSlot;->access$1(Lch/android/api/ui/ChPopUpQuickSlot;)I

    move-result v2

    iget-object v3, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getType()B

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-static {p1}, Lch/android/api/ui/ChPopUpQuickSlot;->access$2(Lch/android/api/ui/ChPopUpQuickSlot;)I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 169
    iput v0, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_selectedIndex:I

    .line 171
    :cond_2
    iget-object v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getType()B

    move-result v2

    iget-object v3, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getSlotState()B

    move-result v3

    invoke-direct {p0, v0, v2, v1, v3}, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->setIcon(IIIB)V

    .line 158
    .end local v1    # "index":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_4
    iget-object v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getChkNum()S

    move-result v1

    .restart local v1    # "index":I
    goto :goto_1
.end method

.method private setIcon(IIIB)V
    .locals 8
    .param p1, "_index"    # I
    .param p2, "_type"    # I
    .param p3, "_num"    # I
    .param p4, "_state"    # B

    .prologue
    const/4 v7, -0x1

    .line 228
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 229
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    aget-object v4, v4, p1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 230
    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 231
    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    aput-object v5, v4, p1

    .line 233
    :cond_0
    sget-boolean v4, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 234
    const-string v4, "KD"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setIcon : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", _num"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    if-le p3, v7, :cond_3

    .line 237
    packed-switch p2, :pswitch_data_0

    .line 250
    :goto_0
    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->isAvailables:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, p1

    .line 258
    :cond_2
    :goto_1
    return-void

    .line 239
    :pswitch_0
    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "itemimg_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    iget-object v6, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->this$0:Lch/android/api/ui/ChPopUpQuickSlot;

    invoke-static {v6}, Lch/android/api/ui/ChPopUpQuickSlot;->access$3(Lch/android/api/ui/ChPopUpQuickSlot;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v6

    aget-object v6, v6, p3

    invoke-static {v6}, Lch/android/api/ui/ChItemButton;->getItemNum(Lch/kingdoms/ndk/data/Inven$Item;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    const-string v7, "ch.kingdoms.market.compat"

    .line 239
    invoke-virtual {v1, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, p1

    goto :goto_0

    .line 243
    :pswitch_1
    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sicon_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    const-string v7, "ch.kingdoms.market.compat"

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, p1

    goto :goto_0

    .line 246
    :pswitch_2
    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->this$0:Lch/android/api/ui/ChPopUpQuickSlot;

    invoke-static {v4}, Lch/android/api/ui/ChPopUpQuickSlot;->access$4(Lch/android/api/ui/ChPopUpQuickSlot;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x6

    add-int v0, v4, p3

    .line 247
    .local v0, "iconIndex":I
    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sicon_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    const-string v7, "ch.kingdoms.market.compat"

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, p1

    goto/16 :goto_0

    .line 251
    .end local v0    # "iconIndex":I
    :cond_3
    if-ne p3, v7, :cond_2

    .line 252
    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getResTargetNum()S

    move-result v3

    .line 253
    .local v3, "resTargetNum":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "itemimg_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetItemRes(I)Lch/kingdoms/ndk/data/ItemRes;

    move-result-object v5

    invoke-static {v3, v5}, Lch/android/api/ui/ChItemButton;->getItemNum(ILch/kingdoms/ndk/data/ItemRes;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 254
    const-string v5, "drawable"

    const-string v6, "ch.kingdoms.market.compat"

    .line 253
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 255
    .local v2, "resId":I
    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, p1

    .line 256
    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->isAvailables:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, p1

    goto/16 :goto_1

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setSlot(IIIB)V
    .locals 4
    .param p1, "_index"    # I
    .param p2, "_type"    # I
    .param p3, "_num"    # I
    .param p4, "_state"    # B

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 200
    iget v0, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_selectedIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    iget v1, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_selectedIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    iget v1, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_selectedIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    iget v1, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_selectedIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    iget v1, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_selectedIndex:I

    aput-object v3, v0, v1

    .line 203
    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    iget v1, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_selectedIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->setSlotState(B)V

    .line 205
    :cond_0
    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 207
    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    aput-object v3, v0, p1

    .line 209
    :cond_1
    iput p1, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_selectedIndex:I

    .line 210
    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    aget-object v0, v0, p1

    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->setType(B)V

    .line 211
    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    aget-object v0, v0, p1

    int-to-short v1, p3

    invoke-virtual {v0, v1}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->setChkNum(S)V

    .line 212
    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->setUse(Z)V

    .line 213
    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->setSlotState(B)V

    .line 214
    iget-object v0, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getSlotState()B

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->setIcon(IIIB)V

    .line 215
    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->invalidate()V

    .line 216
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 263
    invoke-super {p0, p1}, Lch/android/api/ui/ChImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 277
    return-void

    .line 265
    :cond_0
    iget-object v3, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 266
    iget-object v3, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->CENTER_XS:[I

    aget v3, v3, v0

    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 267
    .local v1, "left":I
    iget v3, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->ICON_CENTER_Y:I

    iget-object v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .line 268
    .local v2, "top":I
    iget-object v3, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    int-to-float v4, v1

    int-to-float v5, v2

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 269
    iget-object v3, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->isAvailables:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_1

    .line 270
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 271
    iget-object v3, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->CENTER_XS:[I

    aget v3, v3, v0

    iget v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->clipSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->ICON_CENTER_Y:I

    iget v5, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->clipSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->clipSize:I

    add-int/2addr v5, v1

    iget v6, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->clipSize:I

    add-int/2addr v6, v2

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 272
    iget-object v3, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->CENTER_XS:[I

    aget v3, v3, v0

    int-to-float v3, v3

    iget v4, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->ICON_CENTER_Y:I

    int-to-float v4, v4

    iget v5, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->radius:I

    int-to-float v5, v5

    iget-object v6, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->ciclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 273
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 264
    .end local v1    # "left":I
    .end local v2    # "top":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 221
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 222
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->setSlot(I)V

    .line 224
    :cond_0
    return v1
.end method

.method public releaseRsources()V
    .locals 5

    .prologue
    .line 282
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->releaseRsources()V

    .line 283
    iget-object v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->m_icons:[Landroid/graphics/Bitmap;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 288
    return-void

    .line 283
    :cond_0
    aget-object v0, v2, v1

    .line 284
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 285
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 283
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setSlot(I)V
    .locals 4
    .param p1, "_x"    # I

    .prologue
    .line 193
    iget v1, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->ICON_START_X:I

    sub-int v1, p1, v1

    iget v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->ICON_WITDH:I

    div-int v0, v1, v2

    .line 194
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 195
    iget-object v1, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->this$0:Lch/android/api/ui/ChPopUpQuickSlot;

    invoke-static {v1}, Lch/android/api/ui/ChPopUpQuickSlot;->access$1(Lch/android/api/ui/ChPopUpQuickSlot;)I

    move-result v1

    iget-object v2, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->this$0:Lch/android/api/ui/ChPopUpQuickSlot;

    invoke-static {v2}, Lch/android/api/ui/ChPopUpQuickSlot;->access$2(Lch/android/api/ui/ChPopUpQuickSlot;)I

    move-result v2

    iget-object v3, p0, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->SLOTS:[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getSlotState()B

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lch/android/api/ui/ChPopUpQuickSlot$QuickSlots;->setSlot(IIIB)V

    .line 197
    :cond_0
    return-void
.end method
