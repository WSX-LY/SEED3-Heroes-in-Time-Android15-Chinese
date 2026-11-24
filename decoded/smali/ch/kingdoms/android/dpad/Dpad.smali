.class public Lch/kingdoms/android/dpad/Dpad;
.super Ljava/lang/Object;
.source "Dpad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/dpad/Dpad$DButtonPoints;,
        Lch/kingdoms/android/dpad/Dpad$InputKey;,
        Lch/kingdoms/android/dpad/Dpad$SlotButton;
    }
.end annotation


# static fields
.field private static final DOUBLE_DOWN:I = 0x5

.field private static final DOUBLE_UP:I = 0x6


# instance fields
.field private final CONTEXT:Landroid/content/Context;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final DIR_POSITION:Landroid/graphics/Point;

.field private final D_BUTTON_POSITIONS:Lch/kingdoms/android/dpad/Dpad$DButtonPoints;

.field private final FIRE_BTN_POSITION:Landroid/graphics/Point;

.field private final f_dirBtn:Lch/kingdoms/android/dpad/DirectionButtons;

.field private final f_dpadViewGroup:Lch/android/api/ui/ChRelativeLayout;

.field private final f_fireBtn:Lch/kingdoms/android/dpad/DButton;

.field private final f_hitRect:Landroid/graphics/Rect;

.field private final f_inputKey:Lch/kingdoms/android/dpad/Dpad$InputKey;

.field private final f_keyTranslator:Lch/kingdoms/market/KeyTranslator;

.field private final handler:Landroid/os/Handler;

.field private isDown:Z

.field private isSlotA:Z

.field private itemCnt:I

.field private itemName:Ljava/lang/String;

.field private slot0CoolTimeUpdateRunnable:Ljava/lang/Runnable;

.field private slot1CoolTimeUpdateRunnable:Ljava/lang/Runnable;

.field private slot2CoolTimeUpdateRunnable:Ljava/lang/Runnable;

.field private slot3CoolTimeUpdateRunnable:Ljava/lang/Runnable;

.field private slot4CoolTimeUpdateRunnable:Ljava/lang/Runnable;

.field private slot5CoolTimeUpdateRunnable:Ljava/lang/Runnable;

.field private final slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

.field private updateQuickSlotItemRunnable:Ljava/lang/Runnable;

.field private updateQuickSlotsRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Lch/kingdoms/market/KeyTranslator;)V
    .locals 17
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "_keyTranslator"    # Lch/kingdoms/market/KeyTranslator;

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lch/kingdoms/android/dpad/Dpad;->isDown:Z

    .line 186
    new-instance v2, Lch/kingdoms/android/dpad/Dpad$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lch/kingdoms/android/dpad/Dpad$1;-><init>(Lch/kingdoms/android/dpad/Dpad;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->slot0CoolTimeUpdateRunnable:Ljava/lang/Runnable;

    .line 194
    new-instance v2, Lch/kingdoms/android/dpad/Dpad$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lch/kingdoms/android/dpad/Dpad$2;-><init>(Lch/kingdoms/android/dpad/Dpad;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->slot1CoolTimeUpdateRunnable:Ljava/lang/Runnable;

    .line 202
    new-instance v2, Lch/kingdoms/android/dpad/Dpad$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lch/kingdoms/android/dpad/Dpad$3;-><init>(Lch/kingdoms/android/dpad/Dpad;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->slot2CoolTimeUpdateRunnable:Ljava/lang/Runnable;

    .line 210
    new-instance v2, Lch/kingdoms/android/dpad/Dpad$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lch/kingdoms/android/dpad/Dpad$4;-><init>(Lch/kingdoms/android/dpad/Dpad;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->slot3CoolTimeUpdateRunnable:Ljava/lang/Runnable;

    .line 218
    new-instance v2, Lch/kingdoms/android/dpad/Dpad$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lch/kingdoms/android/dpad/Dpad$5;-><init>(Lch/kingdoms/android/dpad/Dpad;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->slot4CoolTimeUpdateRunnable:Ljava/lang/Runnable;

    .line 226
    new-instance v2, Lch/kingdoms/android/dpad/Dpad$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lch/kingdoms/android/dpad/Dpad$6;-><init>(Lch/kingdoms/android/dpad/Dpad;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->slot5CoolTimeUpdateRunnable:Ljava/lang/Runnable;

    .line 332
    new-instance v2, Lch/kingdoms/android/dpad/Dpad$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lch/kingdoms/android/dpad/Dpad$7;-><init>(Lch/kingdoms/android/dpad/Dpad;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->updateQuickSlotItemRunnable:Ljava/lang/Runnable;

    .line 353
    new-instance v2, Lch/kingdoms/android/dpad/Dpad$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lch/kingdoms/android/dpad/Dpad$8;-><init>(Lch/kingdoms/android/dpad/Dpad;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->updateQuickSlotsRunnable:Ljava/lang/Runnable;

    .line 489
    new-instance v2, Lch/kingdoms/android/dpad/Dpad$InputKey;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lch/kingdoms/android/dpad/Dpad$InputKey;-><init>(Lch/kingdoms/android/dpad/Dpad;Lch/kingdoms/android/dpad/Dpad$InputKey;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->f_inputKey:Lch/kingdoms/android/dpad/Dpad$InputKey;

    .line 72
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/dpad/Dpad;->CONTEXT:Landroid/content/Context;

    .line 73
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/dpad/Dpad;->DI:Lch/android/api/util/DisplayInfo;

    .line 74
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/dpad/Dpad;->f_keyTranslator:Lch/kingdoms/market/KeyTranslator;

    .line 75
    new-instance v2, Lch/kingdoms/android/dpad/BoundedDpadLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lch/kingdoms/android/dpad/BoundedDpadLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->f_dpadViewGroup:Lch/android/api/ui/ChRelativeLayout;

    .line 77
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->DIR_POSITION:Landroid/graphics/Point;

    .line 78
    new-instance v2, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;-><init>(Lch/kingdoms/android/dpad/Dpad;Lch/android/api/util/DisplayInfo;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->D_BUTTON_POSITIONS:Lch/kingdoms/android/dpad/Dpad$DButtonPoints;

    .line 79
    new-instance v2, Landroid/graphics/Point;

    move-object/from16 v0, p2

    iget v3, v0, Lch/android/api/util/DisplayInfo;->widthPixels:I

    move-object/from16 v0, p2

    iget v4, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v5, 0x42a00000    # 80.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p2

    iget v4, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->FIRE_BTN_POSITION:Landroid/graphics/Point;

    .line 81
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->f_hitRect:Landroid/graphics/Rect;

    .line 83
    new-instance v11, Lch/kingdoms/android/dpad/DpadInfo;

    invoke-direct {v11}, Lch/kingdoms/android/dpad/DpadInfo;-><init>()V

    .line 84
    .local v11, "dpadInfo":Lch/kingdoms/android/dpad/DpadInfo;
    const v2, 0x7f020090

    iput v2, v11, Lch/kingdoms/android/dpad/DpadInfo;->dirDefaultDrawableId:I

    .line 85
    const v2, 0x7f020094

    iput v2, v11, Lch/kingdoms/android/dpad/DpadInfo;->dirUpDrawableId:I

    .line 86
    const v2, 0x7f020091

    iput v2, v11, Lch/kingdoms/android/dpad/DpadInfo;->dirDownDrawableId:I

    .line 87
    const v2, 0x7f020092

    iput v2, v11, Lch/kingdoms/android/dpad/DpadInfo;->dirLeftDrawableId:I

    .line 88
    const v2, 0x7f020093

    iput v2, v11, Lch/kingdoms/android/dpad/DpadInfo;->dirRightDrawableId:I

    .line 89
    const v2, 0x7f02001e

    iput v2, v11, Lch/kingdoms/android/dpad/DpadInfo;->fireDrawableId:I

    .line 91
    new-instance v2, Lch/kingdoms/android/dpad/DirectionButtons;

    const/16 v4, 0x2710

    .line 92
    iget v5, v11, Lch/kingdoms/android/dpad/DpadInfo;->dirDefaultDrawableId:I

    iget v6, v11, Lch/kingdoms/android/dpad/DpadInfo;->dirUpDrawableId:I

    iget v7, v11, Lch/kingdoms/android/dpad/DpadInfo;->dirDownDrawableId:I

    .line 93
    iget v8, v11, Lch/kingdoms/android/dpad/DpadInfo;->dirLeftDrawableId:I

    iget v9, v11, Lch/kingdoms/android/dpad/DpadInfo;->dirRightDrawableId:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lch/kingdoms/android/dpad/Dpad;->f_dpadViewGroup:Lch/android/api/ui/ChRelativeLayout;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lch/kingdoms/android/dpad/DirectionButtons;-><init>(Landroid/content/Context;IIIIIILch/android/api/ui/ChRelativeLayout;)V

    .line 91
    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->f_dirBtn:Lch/kingdoms/android/dpad/DirectionButtons;

    .line 95
    new-instance v2, Lch/kingdoms/android/dpad/DButton;

    const v3, 0x7f020237

    const v4, 0x7f020236

    move-object/from16 v0, p0

    iget-object v5, v0, Lch/kingdoms/android/dpad/Dpad;->f_dpadViewGroup:Lch/android/api/ui/ChRelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lch/kingdoms/android/dpad/DButton;-><init>(Landroid/content/Context;IILandroid/widget/RelativeLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->f_fireBtn:Lch/kingdoms/android/dpad/DButton;

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->f_fireBtn:Lch/kingdoms/android/dpad/DButton;

    const/16 v3, 0x2711

    invoke-virtual {v2, v3}, Lch/kingdoms/android/dpad/DButton;->setId(I)V

    .line 98
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->handler:Landroid/os/Handler;

    .line 99
    const/4 v2, 0x7

    new-array v2, v2, [Lch/kingdoms/android/dpad/Dpad$SlotButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    .line 100
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-lt v12, v2, :cond_0

    .line 106
    move-object/from16 v0, p0

    iget-object v8, v0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    const/4 v9, 0x6

    new-instance v2, Lch/kingdoms/android/dpad/Dpad$SlotButton;

    const v5, 0x7f0202a0

    const v6, 0x7f0202a0

    move-object/from16 v0, p0

    iget-object v7, v0, Lch/kingdoms/android/dpad/Dpad;->f_dpadViewGroup:Lch/android/api/ui/ChRelativeLayout;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lch/kingdoms/android/dpad/Dpad$SlotButton;-><init>(Lch/kingdoms/android/dpad/Dpad;Landroid/content/Context;IILandroid/widget/RelativeLayout;)V

    aput-object v2, v8, v9

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    const/16 v3, 0x2720

    invoke-virtual {v2, v3}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->setId(I)V

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/dpad/Dpad;->lockView(Landroid/view/View;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->f_dirBtn:Lch/kingdoms/android/dpad/DirectionButtons;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/dpad/Dpad;->lockView(Landroid/view/View;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->f_fireBtn:Lch/kingdoms/android/dpad/DButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/dpad/Dpad;->lockView(Landroid/view/View;)V

    .line 127
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 128
    const/4 v2, -0x2

    const/4 v3, -0x2

    .line 127
    invoke-direct {v13, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 129
    .local v13, "lpDirBtn":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    const/16 v2, 0x9

    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 132
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 133
    const/4 v2, -0x2

    const/4 v3, -0x2

    .line 132
    invoke-direct {v15, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    .local v15, "lpfireBtn":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 135
    const/16 v2, 0xb

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 137
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 138
    const/4 v2, -0x2

    const/4 v3, -0x2

    .line 137
    invoke-direct {v14, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 139
    .local v14, "lpcancelBtn":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    const/16 v2, 0xb

    invoke-virtual {v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 143
    const/4 v2, -0x2

    const/4 v3, -0x2

    .line 142
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v16, "lpskipBtn":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    const/16 v2, 0xe

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->f_dpadViewGroup:Lch/android/api/ui/ChRelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/dpad/Dpad;->f_dirBtn:Lch/kingdoms/android/dpad/DirectionButtons;

    invoke-virtual {v2, v3, v13}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/dpad/Dpad;->initButtonPositions()V

    .line 151
    return-void

    .line 101
    .end local v13    # "lpDirBtn":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14    # "lpcancelBtn":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "lpfireBtn":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "lpskipBtn":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    new-instance v2, Lch/kingdoms/android/dpad/Dpad$SlotButton;

    const v5, 0x7f020255

    const v6, 0x7f020255

    move-object/from16 v0, p0

    iget-object v7, v0, Lch/kingdoms/android/dpad/Dpad;->f_dpadViewGroup:Lch/android/api/ui/ChRelativeLayout;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lch/kingdoms/android/dpad/Dpad$SlotButton;-><init>(Lch/kingdoms/android/dpad/Dpad;Landroid/content/Context;IILandroid/widget/RelativeLayout;)V

    aput-object v2, v8, v12

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    aget-object v2, v2, v12

    add-int/lit16 v3, v12, 0x271a

    invoke-virtual {v2, v3}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->setId(I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/dpad/Dpad;->lockView(Landroid/view/View;)V

    .line 100
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lch/kingdoms/android/dpad/Dpad;)[Lch/kingdoms/android/dpad/Dpad$SlotButton;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/dpad/Dpad;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lch/kingdoms/android/dpad/Dpad;->isSlotA:Z

    return v0
.end method

.method static synthetic access$10(Lch/kingdoms/android/dpad/Dpad;)Lch/kingdoms/android/dpad/DirectionButtons;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->f_dirBtn:Lch/kingdoms/android/dpad/DirectionButtons;

    return-object v0
.end method

.method static synthetic access$11(Lch/kingdoms/android/dpad/Dpad;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/dpad/Dpad;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lch/kingdoms/android/dpad/Dpad;)I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lch/kingdoms/android/dpad/Dpad;->itemCnt:I

    return v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/dpad/Dpad;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lch/kingdoms/android/dpad/Dpad;->updateQuickSlots()V

    return-void
.end method

.method static synthetic access$5(Lch/kingdoms/android/dpad/Dpad;)Lch/kingdoms/market/KeyTranslator;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->f_keyTranslator:Lch/kingdoms/market/KeyTranslator;

    return-object v0
.end method

.method static synthetic access$6(Lch/kingdoms/android/dpad/Dpad;)Lch/kingdoms/android/dpad/DButton;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->f_fireBtn:Lch/kingdoms/android/dpad/DButton;

    return-object v0
.end method

.method static synthetic access$7(Lch/kingdoms/android/dpad/Dpad;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lch/kingdoms/android/dpad/Dpad;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->updateQuickSlotsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9(Lch/kingdoms/android/dpad/Dpad;Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lch/kingdoms/android/dpad/Dpad;->isSlotA:Z

    return-void
.end method

.method private getViewId(II)I
    .locals 6
    .param p1, "_x"    # I
    .param p2, "_y"    # I

    .prologue
    .line 459
    const/4 v1, -0x1

    .line 460
    .local v1, "viewId":I
    iget-object v2, p0, Lch/kingdoms/android/dpad/Dpad;->f_dirBtn:Lch/kingdoms/android/dpad/DirectionButtons;

    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad;->f_hitRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lch/kingdoms/android/dpad/DirectionButtons;->getHitRect(Landroid/graphics/Rect;)V

    .line 461
    iget-object v2, p0, Lch/kingdoms/android/dpad/Dpad;->f_hitRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    const/16 v1, 0x2710

    .line 480
    :cond_0
    :goto_0
    return v1

    .line 466
    :cond_1
    iget-object v2, p0, Lch/kingdoms/android/dpad/Dpad;->f_fireBtn:Lch/kingdoms/android/dpad/DButton;

    invoke-virtual {v2, p1, p2}, Lch/kingdoms/android/dpad/DButton;->isHit(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 468
    iget-object v2, p0, Lch/kingdoms/android/dpad/Dpad;->f_fireBtn:Lch/kingdoms/android/dpad/DButton;

    invoke-virtual {v2}, Lch/kingdoms/android/dpad/DButton;->getId()I

    move-result v1

    goto :goto_0

    .line 470
    :cond_2
    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 471
    .local v0, "slotBtn":Lch/kingdoms/android/dpad/DButton;
    invoke-virtual {v0, p1, p2}, Lch/kingdoms/android/dpad/DButton;->isHit(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 473
    invoke-virtual {v0}, Lch/kingdoms/android/dpad/DButton;->getId()I

    move-result v1

    .line 474
    goto :goto_0

    .line 470
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private lockView(Landroid/view/View;)V
    .locals 1
    .param p1, "_view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 484
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 485
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 486
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 487
    return-void
.end method

.method private updateQuickSlots()V
    .locals 12

    .prologue
    .line 263
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetQuickSlotsData()Lch/kingdoms/ndk/data/QuickSlotsData;

    move-result-object v5

    .line 265
    .local v5, "quickSlotData":Lch/kingdoms/ndk/data/QuickSlotsData;
    iget-boolean v7, p0, Lch/kingdoms/android/dpad/Dpad;->isSlotA:Z

    if-eqz v7, :cond_1

    .line 267
    invoke-virtual {v5}, Lch/kingdoms/ndk/data/QuickSlotsData;->getSlotA()[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    move-result-object v4

    .line 268
    .local v4, "qslots":[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    iget-object v7, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    const/4 v8, 0x6

    aget-object v7, v7, v8

    const v8, 0x7f0202a0

    invoke-virtual {v7, v8}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->setBackgroundResource(I)V

    .line 274
    :goto_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v2

    .line 276
    .local v2, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v2}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_6

    .line 277
    invoke-virtual {v2}, Lch/kingdoms/ndk/data/HeroStatus;->getCarleState()I

    move-result v0

    .line 278
    .local v0, "carleState":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-lt v3, v7, :cond_2

    .line 318
    .end local v0    # "carleState":I
    :cond_0
    return-void

    .line 271
    .end local v2    # "hero":Lch/kingdoms/ndk/data/HeroStatus;
    .end local v3    # "i":I
    .end local v4    # "qslots":[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    :cond_1
    invoke-virtual {v5}, Lch/kingdoms/ndk/data/QuickSlotsData;->getSlotB()[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    move-result-object v4

    .line 272
    .restart local v4    # "qslots":[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    iget-object v7, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    const/4 v8, 0x6

    aget-object v7, v7, v8

    const v8, 0x7f0202a1

    invoke-virtual {v7, v8}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 280
    .restart local v0    # "carleState":I
    .restart local v2    # "hero":Lch/kingdoms/ndk/data/HeroStatus;
    .restart local v3    # "i":I
    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 299
    :pswitch_0
    iget-object v7, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    aget-object v7, v7, v3

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->setIcon(BII)V

    .line 278
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 282
    :pswitch_1
    if-nez v0, :cond_3

    const/4 v6, 0x2

    .line 283
    .local v6, "state":B
    :goto_3
    invoke-virtual {v2}, Lch/kingdoms/ndk/data/HeroStatus;->getCarleHpItemCnt()I

    move-result v1

    .line 284
    .local v1, "count":I
    iget-object v7, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    .line 285
    iget-object v8, p0, Lch/kingdoms/android/dpad/Dpad;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "itemimg_143"

    const-string v10, "drawable"

    const-string v11, "ch.kingdoms.market.compat"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 284
    invoke-virtual {v7, v6, v8, v1}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->setIcon(BII)V

    goto :goto_2

    .line 282
    .end local v1    # "count":I
    .end local v6    # "state":B
    :cond_3
    const/4 v6, 0x1

    goto :goto_3

    .line 288
    :pswitch_2
    if-nez v0, :cond_4

    const/4 v6, 0x2

    .line 289
    .restart local v6    # "state":B
    :goto_4
    invoke-virtual {v2}, Lch/kingdoms/ndk/data/HeroStatus;->getCarleHpItemCnt()I

    move-result v1

    .line 290
    .restart local v1    # "count":I
    iget-object v7, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    .line 291
    iget-object v8, p0, Lch/kingdoms/android/dpad/Dpad;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "itemimg_152"

    const-string v10, "drawable"

    const-string v11, "ch.kingdoms.market.compat"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 290
    invoke-virtual {v7, v6, v8, v1}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->setIcon(BII)V

    goto :goto_2

    .line 288
    .end local v1    # "count":I
    .end local v6    # "state":B
    :cond_4
    const/4 v6, 0x1

    goto :goto_4

    .line 294
    :pswitch_3
    if-nez v0, :cond_5

    const/4 v6, 0x2

    .line 295
    .restart local v6    # "state":B
    :goto_5
    iget-object v7, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    .line 296
    iget-object v8, p0, Lch/kingdoms/android/dpad/Dpad;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "sicon_5"

    const-string v10, "drawable"

    const-string v11, "ch.kingdoms.market.compat"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    .line 295
    invoke-virtual {v7, v6, v8, v9}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->setIcon(BII)V

    goto :goto_2

    .line 294
    .end local v6    # "state":B
    :cond_5
    const/4 v6, 0x1

    goto :goto_5

    .line 303
    .end local v0    # "carleState":I
    .end local v3    # "i":I
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    iget-object v7, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_0

    .line 305
    aget-object v7, v4, v3

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getSlotState()B

    move-result v7

    if-eqz v7, :cond_9

    .line 307
    iget-object v7, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    aget-object v7, v7, v3

    aget-object v8, v4, v3

    invoke-virtual {v8}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getSlotState()B

    move-result v8

    iget-object v9, p0, Lch/kingdoms/android/dpad/Dpad;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    aget-object v10, v4, v3

    invoke-virtual {v5, v9, v10}, Lch/kingdoms/ndk/data/QuickSlotsData;->getIconResId(Landroid/content/res/Resources;Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;)I

    move-result v9

    aget-object v10, v4, v3

    invoke-virtual {v5, v10}, Lch/kingdoms/ndk/data/QuickSlotsData;->getCount(Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;)I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->setIcon(BII)V

    .line 313
    :goto_7
    invoke-virtual {v2}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_8

    aget-object v7, v4, v3

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getChkNum()S

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_8

    aget-object v7, v4, v3

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getType()B

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7

    aget-object v7, v4, v3

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getType()B

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 314
    :cond_7
    iget-object v7, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    aget-object v7, v7, v3

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->setState(B)V

    .line 303
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 310
    :cond_9
    iget-object v7, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    aget-object v7, v7, v3

    aget-object v8, v4, v3

    invoke-virtual {v8}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getSlotState()B

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->setIcon(BII)V

    goto :goto_7

    .line 280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public allBtnUp()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 442
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->f_fireBtn:Lch/kingdoms/android/dpad/DButton;

    invoke-virtual {v0}, Lch/kingdoms/android/dpad/DButton;->isDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->f_fireBtn:Lch/kingdoms/android/dpad/DButton;

    invoke-virtual {v0}, Lch/kingdoms/android/dpad/DButton;->setToUnSelect()V

    .line 444
    invoke-virtual {p0}, Lch/kingdoms/android/dpad/Dpad;->dirBtnUp()V

    .line 446
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->f_dirBtn:Lch/kingdoms/android/dpad/DirectionButtons;

    invoke-virtual {v0}, Lch/kingdoms/android/dpad/DirectionButtons;->isDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->f_dirBtn:Lch/kingdoms/android/dpad/DirectionButtons;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lch/kingdoms/android/dpad/DirectionButtons;->updateButtonBmp(II)V

    .line 448
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->f_inputKey:Lch/kingdoms/android/dpad/Dpad$InputKey;

    const/16 v1, 0x2711

    iget-object v2, p0, Lch/kingdoms/android/dpad/Dpad;->f_inputKey:Lch/kingdoms/android/dpad/Dpad$InputKey;

    invoke-virtual {v2}, Lch/kingdoms/android/dpad/Dpad$InputKey;->getCurDirection()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Lch/kingdoms/android/dpad/Dpad$InputKey;->inputKey(III)Z

    .line 450
    :cond_1
    return-void
.end method

.method public dirBtnUp()V
    .locals 4

    .prologue
    .line 438
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->f_inputKey:Lch/kingdoms/android/dpad/Dpad$InputKey;

    const/16 v1, 0x2710

    const/4 v2, 0x1

    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad;->f_inputKey:Lch/kingdoms/android/dpad/Dpad$InputKey;

    invoke-virtual {v3}, Lch/kingdoms/android/dpad/Dpad$InputKey;->getCurDirection()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lch/kingdoms/android/dpad/Dpad$InputKey;->inputKey(III)Z

    .line 439
    return-void
.end method

.method public getDpadCustomizingView()Lch/kingdoms/android/dpad/DpadCustomizingView;
    .locals 11

    .prologue
    .line 243
    new-instance v0, Lch/kingdoms/android/dpad/DpadCustomizingView;

    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->CONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lch/kingdoms/android/dpad/Dpad;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->widthPixels:I

    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad;->DI:Lch/android/api/util/DisplayInfo;

    iget v3, v3, Lch/android/api/util/DisplayInfo;->heightPixels:I

    const/16 v4, 0xff

    const v5, 0x7f020090

    iget-object v6, p0, Lch/kingdoms/android/dpad/Dpad;->DIR_POSITION:Landroid/graphics/Point;

    .line 244
    const v7, 0x7f020237

    iget-object v8, p0, Lch/kingdoms/android/dpad/Dpad;->FIRE_BTN_POSITION:Landroid/graphics/Point;

    const v9, 0x7f020255

    iget-object v10, p0, Lch/kingdoms/android/dpad/Dpad;->D_BUTTON_POSITIONS:Lch/kingdoms/android/dpad/Dpad$DButtonPoints;

    invoke-virtual {v10}, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->getPoints()[Landroid/graphics/Point;

    move-result-object v10

    .line 243
    invoke-direct/range {v0 .. v10}, Lch/kingdoms/android/dpad/DpadCustomizingView;-><init>(Landroid/content/Context;IIIILandroid/graphics/Point;ILandroid/graphics/Point;I[Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getDpadViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->f_dpadViewGroup:Lch/android/api/ui/ChRelativeLayout;

    return-object v0
.end method

.method public getOriginDirPosition()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 650
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->DIR_POSITION:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getOriginFirePosition()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 654
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->FIRE_BTN_POSITION:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getOriginSlotPositions()[Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->D_BUTTON_POSITIONS:Lch/kingdoms/android/dpad/Dpad$DButtonPoints;

    invoke-virtual {v0}, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->getPoints()[Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public initButtonPositions()V
    .locals 4

    .prologue
    .line 248
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->f_fireBtn:Lch/kingdoms/android/dpad/DButton;

    iget-object v2, p0, Lch/kingdoms/android/dpad/Dpad;->FIRE_BTN_POSITION:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad;->FIRE_BTN_POSITION:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/dpad/DButton;->setPosition(II)V

    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 252
    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lch/kingdoms/android/dpad/Dpad;->D_BUTTON_POSITIONS:Lch/kingdoms/android/dpad/Dpad$DButtonPoints;

    invoke-static {v2}, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->access$0(Lch/kingdoms/android/dpad/Dpad$DButtonPoints;)[I

    move-result-object v2

    aget v2, v2, v0

    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad;->D_BUTTON_POSITIONS:Lch/kingdoms/android/dpad/Dpad$DButtonPoints;

    invoke-static {v3}, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->access$1(Lch/kingdoms/android/dpad/Dpad$DButtonPoints;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->setPosition(II)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "_e"    # Landroid/view/MotionEvent;

    .prologue
    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 369
    .local v3, "nTouchPoint":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    and-int/lit16 v0, v9, 0xff

    .line 371
    .local v0, "actionEvent":I
    iget-boolean v9, p0, Lch/kingdoms/android/dpad/Dpad;->isDown:Z

    if-nez v9, :cond_5

    const/4 v9, 0x2

    if-ne v0, v9, :cond_5

    .line 372
    const/4 v9, 0x1

    iput-boolean v9, p0, Lch/kingdoms/android/dpad/Dpad;->isDown:Z

    .line 373
    const/4 v0, 0x0

    .line 380
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 381
    .local v5, "x0":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v7, v9

    .line 382
    .local v7, "y0":I
    const/4 v6, 0x0

    .line 383
    .local v6, "x1":I
    const/4 v8, 0x0

    .line 384
    .local v8, "y1":I
    invoke-direct {p0, v5, v7}, Lch/kingdoms/android/dpad/Dpad;->getViewId(II)I

    move-result v2

    .line 385
    .local v2, "firstViewId":I
    const/4 v4, -0x1

    .line 386
    .local v4, "secondViewId":I
    const/4 v9, 0x1

    if-le v3, v9, :cond_1

    .line 387
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v6, v9

    .line 388
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v8, v9

    .line 389
    invoke-direct {p0, v6, v8}, Lch/kingdoms/android/dpad/Dpad;->getViewId(II)I

    move-result v4

    .line 390
    if-ne v2, v4, :cond_1

    .line 391
    const/4 v3, 0x1

    .line 396
    :cond_1
    const/4 v9, 0x1

    if-le v3, v9, :cond_9

    .line 407
    const/4 v9, 0x5

    if-eq v0, v9, :cond_2

    const/4 v9, 0x2

    if-ne v0, v9, :cond_8

    .line 408
    :cond_2
    const/16 v9, 0x2711

    if-eq v2, v9, :cond_3

    const/16 v9, 0x2711

    if-ne v4, v9, :cond_7

    .line 410
    :cond_3
    iget-object v9, p0, Lch/kingdoms/android/dpad/Dpad;->f_inputKey:Lch/kingdoms/android/dpad/Dpad$InputKey;

    const/16 v10, 0x2710

    const/4 v11, 0x1

    iget-object v12, p0, Lch/kingdoms/android/dpad/Dpad;->f_inputKey:Lch/kingdoms/android/dpad/Dpad$InputKey;

    invoke-virtual {v12}, Lch/kingdoms/android/dpad/Dpad$InputKey;->getCurDirection()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Lch/kingdoms/android/dpad/Dpad$InputKey;->inputKey(III)Z

    .line 411
    iget-object v9, p0, Lch/kingdoms/android/dpad/Dpad;->f_inputKey:Lch/kingdoms/android/dpad/Dpad$InputKey;

    const/16 v10, 0x2711

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lch/kingdoms/android/dpad/Dpad$InputKey;->inputKey(III)Z

    .line 435
    :cond_4
    :goto_1
    return-void

    .line 374
    .end local v2    # "firstViewId":I
    .end local v4    # "secondViewId":I
    .end local v5    # "x0":I
    .end local v6    # "x1":I
    .end local v7    # "y0":I
    .end local v8    # "y1":I
    :cond_5
    const/4 v9, 0x1

    if-ne v0, v9, :cond_6

    .line 375
    const/4 v9, 0x0

    iput-boolean v9, p0, Lch/kingdoms/android/dpad/Dpad;->isDown:Z

    goto :goto_0

    .line 376
    :cond_6
    if-nez v0, :cond_0

    .line 377
    const/4 v9, 0x1

    iput-boolean v9, p0, Lch/kingdoms/android/dpad/Dpad;->isDown:Z

    goto :goto_0

    .line 413
    .restart local v2    # "firstViewId":I
    .restart local v4    # "secondViewId":I
    .restart local v5    # "x0":I
    .restart local v6    # "x1":I
    .restart local v7    # "y0":I
    .restart local v8    # "y1":I
    :cond_7
    iget-object v9, p0, Lch/kingdoms/android/dpad/Dpad;->f_dirBtn:Lch/kingdoms/android/dpad/DirectionButtons;

    int-to-float v10, v6

    int-to-float v11, v8

    invoke-virtual {v9, v0, v10, v11}, Lch/kingdoms/android/dpad/DirectionButtons;->touch(IFF)I

    move-result v1

    .line 414
    .local v1, "dir":I
    iget-object v9, p0, Lch/kingdoms/android/dpad/Dpad;->f_inputKey:Lch/kingdoms/android/dpad/Dpad$InputKey;

    invoke-virtual {v9, v4, v0, v1}, Lch/kingdoms/android/dpad/Dpad$InputKey;->inputKey(III)Z

    goto :goto_1

    .line 416
    .end local v1    # "dir":I
    :cond_8
    const/16 v9, 0x2710

    if-eq v2, v9, :cond_4

    .line 417
    iget-object v9, p0, Lch/kingdoms/android/dpad/Dpad;->f_inputKey:Lch/kingdoms/android/dpad/Dpad$InputKey;

    iget-object v10, p0, Lch/kingdoms/android/dpad/Dpad;->f_inputKey:Lch/kingdoms/android/dpad/Dpad$InputKey;

    invoke-virtual {v10}, Lch/kingdoms/android/dpad/Dpad$InputKey;->getCurDirection()I

    move-result v10

    invoke-virtual {v9, v4, v0, v10}, Lch/kingdoms/android/dpad/Dpad$InputKey;->inputKey(III)Z

    goto :goto_1

    .line 420
    :cond_9
    const/4 v1, 0x0

    .line 421
    .restart local v1    # "dir":I
    const/16 v9, 0x2710

    if-ne v2, v9, :cond_a

    .line 422
    iget-object v9, p0, Lch/kingdoms/android/dpad/Dpad;->f_dirBtn:Lch/kingdoms/android/dpad/DirectionButtons;

    int-to-float v10, v5

    int-to-float v11, v7

    invoke-virtual {v9, v0, v10, v11}, Lch/kingdoms/android/dpad/DirectionButtons;->touch(IFF)I

    move-result v1

    .line 424
    :cond_a
    iget-object v9, p0, Lch/kingdoms/android/dpad/Dpad;->f_inputKey:Lch/kingdoms/android/dpad/Dpad$InputKey;

    invoke-virtual {v9, v2, v0, v1}, Lch/kingdoms/android/dpad/Dpad$InputKey;->inputKey(III)Z

    .line 426
    const/4 v9, 0x1

    if-ne v0, v9, :cond_4

    .line 427
    iget-object v9, p0, Lch/kingdoms/android/dpad/Dpad;->f_fireBtn:Lch/kingdoms/android/dpad/DButton;

    invoke-virtual {v9}, Lch/kingdoms/android/dpad/DButton;->isDown()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 428
    iget-object v9, p0, Lch/kingdoms/android/dpad/Dpad;->f_fireBtn:Lch/kingdoms/android/dpad/DButton;

    invoke-virtual {v9}, Lch/kingdoms/android/dpad/DButton;->setToUnSelect()V

    .line 430
    :cond_b
    iget-object v9, p0, Lch/kingdoms/android/dpad/Dpad;->f_dirBtn:Lch/kingdoms/android/dpad/DirectionButtons;

    invoke-virtual {v9}, Lch/kingdoms/android/dpad/DirectionButtons;->isDown()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 431
    iget-object v9, p0, Lch/kingdoms/android/dpad/Dpad;->f_dirBtn:Lch/kingdoms/android/dpad/DirectionButtons;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lch/kingdoms/android/dpad/DirectionButtons;->updateButtonBmp(II)V

    goto :goto_1
.end method

.method public setDpadPositions(ILandroid/graphics/Point;Landroid/graphics/Point;[Landroid/graphics/Point;)V
    .locals 4
    .param p1, "alpha"    # I
    .param p2, "dirPosition"    # Landroid/graphics/Point;
    .param p3, "firePosition"    # Landroid/graphics/Point;
    .param p4, "slotPositions"    # [Landroid/graphics/Point;

    .prologue
    .line 662
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->f_dirBtn:Lch/kingdoms/android/dpad/DirectionButtons;

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/dpad/DirectionButtons;->setPosition(II)V

    .line 663
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->f_dirBtn:Lch/kingdoms/android/dpad/DirectionButtons;

    invoke-virtual {v1, p1}, Lch/kingdoms/android/dpad/DirectionButtons;->setAlpha(I)V

    .line 665
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->f_fireBtn:Lch/kingdoms/android/dpad/DButton;

    iget v2, p3, Landroid/graphics/Point;->x:I

    iget v3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/dpad/DButton;->setPosition(II)V

    .line 666
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->f_fireBtn:Lch/kingdoms/android/dpad/DButton;

    invoke-virtual {v1, p1}, Lch/kingdoms/android/dpad/DButton;->setAlpha(I)V

    .line 667
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p4

    if-lt v0, v1, :cond_0

    .line 671
    return-void

    .line 668
    :cond_0
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    aget-object v1, v1, v0

    aget-object v2, p4, v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v3, p4, v0

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->setPosition(II)V

    .line 669
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->setAlpha(I)V

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setQuickSlots()V
    .locals 3

    .prologue
    .line 255
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeIsSlotA()Z

    move-result v0

    iput-boolean v0, p0, Lch/kingdoms/android/dpad/Dpad;->isSlotA:Z

    .line 256
    invoke-direct {p0}, Lch/kingdoms/android/dpad/Dpad;->updateQuickSlots()V

    .line 257
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->f_dirBtn:Lch/kingdoms/android/dpad/DirectionButtons;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lch/kingdoms/android/dpad/DirectionButtons;->updateButtonBmp(II)V

    .line 258
    return-void
.end method

.method public updateQuickSlotCoolTime(III)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "maxCoolTime"    # I
    .param p3, "coolTime"    # I

    .prologue
    .line 154
    const/4 v0, 0x5

    if-le p1, v0, :cond_2

    .line 155
    iget-boolean v0, p0, Lch/kingdoms/android/dpad/Dpad;->isSlotA:Z

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 158
    :cond_0
    add-int/lit8 p1, p1, -0x6

    .line 163
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->slotBtns:[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->updateCooltime(II)V

    .line 164
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 166
    :pswitch_0
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->slot0CoolTimeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 159
    :cond_2
    iget-boolean v0, p0, Lch/kingdoms/android/dpad/Dpad;->isSlotA:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->slot1CoolTimeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->slot2CoolTimeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 175
    :pswitch_3
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->slot3CoolTimeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 178
    :pswitch_4
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->slot4CoolTimeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 181
    :pswitch_5
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->slot5CoolTimeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public updateQuickSlotItem(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cnt"    # I

    .prologue
    .line 327
    iput-object p1, p0, Lch/kingdoms/android/dpad/Dpad;->itemName:Ljava/lang/String;

    .line 328
    iput p2, p0, Lch/kingdoms/android/dpad/Dpad;->itemCnt:I

    .line 329
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->updateQuickSlotItemRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method

.method public updateQuickSlotItems()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad;->updateQuickSlotsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    return-void
.end method
