.class public Lch/android/api/ui/ChItemInfoView;
.super Lch/android/api/ui/ChRelativeLayout;
.source "ChItemInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/android/api/ui/ChItemInfoView$ItemButton;
    }
.end annotation


# static fields
.field public static final STORE_TYPE_BLACKSMITH:I = 0x3

.field public static final STORE_TYPE_BRANDSHOP:I = 0x6

.field public static final STORE_TYPE_BUY:I = 0x1

.field public static final STORE_TYPE_NOT:I = 0x0

.field public static final STORE_TYPE_ONLYVIEW:I = 0x8

.field public static final STORE_TYPE_POSIT:I = 0x4

.field public static final STORE_TYPE_SELECT:I = 0x7

.field public static final STORE_TYPE_SELL:I = 0x2

.field public static final STORE_TYPE_WITHDRAW:I = 0x5


# instance fields
.field private BTNS:[Lch/android/api/ui/ChImageButton;

.field private final CONTEXT:Landroid/content/Context;

.field private final FIRST_SOCKET:I

.field private final ID_ITEM_EXPLAIN:I

.field private final ID_ITEM_ICON:I

.field private final ID_ITEM_LV_AND_MONEY:I

.field private final ID_ITEM_NAME:I

.field private final ITEM:Lch/kingdoms/ndk/data/Inven$Item;

.field private ITEM_ICON:Lch/android/api/ui/ChNewItemButton;

.field private final SECOND_SOCKET:I

.field private hero:Lch/kingdoms/ndk/data/HeroStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/kingdoms/ndk/data/Inven$Item;I)V
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;
    .param p3, "_storeType"    # I

    .prologue
    .line 49
    invoke-direct/range {p0 .. p1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/16 v28, 0x64

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lch/android/api/ui/ChItemInfoView;->ID_ITEM_ICON:I

    .line 34
    const/16 v28, 0x65

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lch/android/api/ui/ChItemInfoView;->ID_ITEM_NAME:I

    .line 35
    const/16 v28, 0x66

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lch/android/api/ui/ChItemInfoView;->ID_ITEM_LV_AND_MONEY:I

    .line 36
    const/16 v28, 0x67

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lch/android/api/ui/ChItemInfoView;->ID_ITEM_EXPLAIN:I

    .line 38
    const/16 v28, 0x69

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lch/android/api/ui/ChItemInfoView;->FIRST_SOCKET:I

    .line 39
    const/16 v28, 0x6a

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lch/android/api/ui/ChItemInfoView;->SECOND_SOCKET:I

    .line 46
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/android/api/ui/ChItemInfoView;->hero:Lch/kingdoms/ndk/data/HeroStatus;

    .line 51
    new-instance v12, Lch/android/api/ui/ChLinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    .local v12, "lLayout":Lch/android/api/ui/ChLinearLayout;
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 53
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/android/api/ui/ChItemInfoView;->CONTEXT:Landroid/content/Context;

    .line 54
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/android/api/ui/ChItemInfoView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    .line 55
    new-instance v28, Lch/android/api/ui/ChNewItemButton;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lch/android/api/ui/ChNewItemButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/android/api/ui/ChItemInfoView;->ITEM_ICON:Lch/android/api/ui/ChNewItemButton;

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChItemInfoView;->ITEM_ICON:Lch/android/api/ui/ChNewItemButton;

    move-object/from16 v28, v0

    const/16 v29, 0x64

    invoke-virtual/range {v28 .. v29}, Lch/android/api/ui/ChNewItemButton;->setId(I)V

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChItemInfoView;->ITEM_ICON:Lch/android/api/ui/ChNewItemButton;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChNewItemButton;->setItem(Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChItemInfoView;->ITEM_ICON:Lch/android/api/ui/ChNewItemButton;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lch/android/api/ui/ChNewItemButton;->setInteractiveFromTouch(Z)V

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChItemInfoView;->ITEM_ICON:Lch/android/api/ui/ChNewItemButton;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-virtual/range {v28 .. v32}, Lch/android/api/ui/ChNewItemButton;->setPadding(IIII)V

    .line 60
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lch/android/api/ui/ChItemInfoView;->createButtons(ILch/kingdoms/ndk/data/Inven$Item;)[Lch/android/api/ui/ChImageButton;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/android/api/ui/ChItemInfoView;->BTNS:[Lch/android/api/ui/ChImageButton;

    .line 63
    new-instance v11, Lch/android/api/ui/ChRelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 64
    .local v11, "itemTitleLayout":Lch/android/api/ui/ChRelativeLayout;
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v28, -0x2

    const/16 v29, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v17, "rlp0":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v28, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    const/16 v28, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChItemInfoView;->ITEM_ICON:Lch/android/api/ui/ChNewItemButton;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v10, Lch/android/api/ui/ChTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChItemInfoView;->CONTEXT:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v10, v0}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    .line 70
    .local v10, "itemName":Lch/android/api/ui/ChTextView;
    const/16 v28, 0x65

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lch/android/api/ui/ChTextView;->setId(I)V

    .line 71
    move-object/from16 v0, p2

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->upgradeLv:I

    move/from16 v28, v0

    if-lez v28, :cond_6

    .line 72
    new-instance v28, Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    iget-object v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, " +"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p2

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->upgradeLv:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_0
    const/16 v28, 0x1

    move/from16 v0, p3

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    const/16 v28, 0x6

    move/from16 v0, p3

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 77
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChItemInfoView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lch/android/api/ui/ChItemInfoView;->getItemNameColor(Lch/kingdoms/ndk/data/Inven$Item;)I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 85
    :goto_1
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v28, -0x2

    const/16 v29, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v18, "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v28, 0x1

    const/16 v29, 0x64

    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 87
    const/16 v28, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 88
    move-object/from16 v0, v18

    invoke-virtual {v11, v10, v0}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 90
    invoke-static {}, Lch/android/api/util/DisplayInfo;->getInstance()Lch/android/api/util/DisplayInfo;

    move-result-object v6

    .line 91
    .local v6, "di":Lch/android/api/util/DisplayInfo;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->firstExist:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 93
    new-instance v7, Lch/android/api/ui/ChImageView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 94
    .local v7, "firstSocketView":Lch/android/api/ui/ChImageView;
    move-object/from16 v0, p2

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketMainType:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketSubType:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lch/android/api/ui/ChItemInfoView;->getSocketResId(II)I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 95
    const/16 v28, 0x69

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChImageView;->setId(I)V

    .line 96
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v28, -0x2

    const/16 v29, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    .local v16, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v28, 0x1

    const/16 v29, 0x65

    move-object/from16 v0, v16

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 98
    const/16 v28, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 99
    iget v0, v6, Lch/android/api/util/DisplayInfo;->density:F

    move/from16 v28, v0

    const/high16 v29, 0x40800000    # 4.0f

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 100
    iget v0, v6, Lch/android/api/util/DisplayInfo;->density:F

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 101
    move-object/from16 v0, v16

    invoke-virtual {v11, v7, v0}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .end local v7    # "firstSocketView":Lch/android/api/ui/ChImageView;
    .end local v16    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->secondExist:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 104
    new-instance v25, Lch/android/api/ui/ChImageView;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 105
    .local v25, "secondSocketView":Lch/android/api/ui/ChImageView;
    move-object/from16 v0, p2

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketMainType:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketSubType:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lch/android/api/ui/ChItemInfoView;->getSocketResId(II)I

    move-result v28

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 106
    const/16 v28, 0x6a

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageView;->setId(I)V

    .line 107
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v28, -0x2

    const/16 v29, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 108
    .restart local v16    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v28, 0x1

    const/16 v29, 0x69

    move-object/from16 v0, v16

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 109
    const/16 v28, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 110
    iget v0, v6, Lch/android/api/util/DisplayInfo;->density:F

    move/from16 v28, v0

    const/high16 v29, 0x40800000    # 4.0f

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 111
    iget v0, v6, Lch/android/api/util/DisplayInfo;->density:F

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 112
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .end local v6    # "di":Lch/android/api/util/DisplayInfo;
    .end local v16    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v25    # "secondSocketView":Lch/android/api/ui/ChImageView;
    :cond_2
    const/4 v9, 0x0

    .line 117
    .local v9, "itemLv":Lch/android/api/ui/ChTextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChItemInfoView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChItemInfoView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    .line 118
    new-instance v9, Lch/android/api/ui/ChTextView;

    .end local v9    # "itemLv":Lch/android/api/ui/ChTextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChItemInfoView;->CONTEXT:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v9, v0}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    .line 119
    .restart local v9    # "itemLv":Lch/android/api/ui/ChTextView;
    const/16 v28, 0x66

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Lch/android/api/ui/ChTextView;->setId(I)V

    .line 120
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Lv."

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-short v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->limitLv:S

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const/16 v28, -0x1

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 122
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v28, -0x2

    const/16 v29, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v19, "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v28, 0x1

    const/16 v29, 0x64

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 124
    const/16 v28, 0x3

    const/16 v29, 0x65

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 125
    move-object/from16 v0, v19

    invoke-virtual {v11, v9, v0}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    .end local v19    # "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/16 v28, 0x1

    move/from16 v0, p3

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    const/16 v28, 0x7

    move/from16 v0, p3

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 131
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->buyPrice:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 137
    .local v15, "price":Ljava/lang/String;
    :goto_2
    new-instance v26, Lch/android/api/ui/ChImageTextView;

    .line 138
    const/16 v28, 0x6

    move/from16 v0, p3

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    const v28, 0x7f020070

    :goto_3
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 137
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lch/android/api/ui/ChImageTextView;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 139
    .local v26, "sellPrice":Lch/android/api/ui/ChImageTextView;
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v28, -0x2

    const/16 v29, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v22, "rlp6":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v9, :cond_c

    .line 141
    const/16 v28, 0x1

    const/16 v29, 0x64

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 145
    :goto_4
    const/16 v28, 0x3

    const/16 v29, 0x65

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 146
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance v28, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v29, -0x1

    const/16 v30, -0x2

    invoke-direct/range {v28 .. v30}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v28

    invoke-virtual {v12, v11, v0}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v8, Lch/android/api/ui/ChTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChItemInfoView;->CONTEXT:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v8, v0}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    .line 151
    .local v8, "itemExplain":Lch/android/api/ui/ChTextView;
    const/16 v28, 0x67

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Lch/android/api/ui/ChTextView;->setId(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChItemInfoView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lch/android/api/ui/ChItemInfoView;->getExplain(Lch/kingdoms/ndk/data/Inven$Item;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v8, v0, v1, v2, v3}, Lch/android/api/ui/ChTextView;->setPadding(IIII)V

    .line 154
    new-instance v24, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChItemInfoView;->CONTEXT:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 155
    .local v24, "scrollView":Landroid/widget/ScrollView;
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 157
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v28, -0x1

    const/16 v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v13, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v0, v28

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 160
    move-object/from16 v0, v24

    invoke-virtual {v12, v0, v13}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    new-instance v28, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v29, -0x1

    const/16 v30, -0x1

    invoke-direct/range {v28 .. v30}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-super {v0, v12, v1}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v5, Lch/android/api/ui/ChLinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChItemInfoView;->CONTEXT:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v5, v0}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 164
    .local v5, "btnsLayout":Lch/android/api/ui/ChLinearLayout;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChItemInfoView;->BTNS:[Lch/android/api/ui/ChImageButton;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChItemInfoView;->BTNS:[Lch/android/api/ui/ChImageButton;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    const/16 v28, 0x0

    :goto_5
    move/from16 v0, v28

    move/from16 v1, v30

    if-lt v0, v1, :cond_d

    .line 194
    :cond_5
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v28, -0x1

    const/16 v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 195
    .local v14, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 197
    invoke-virtual {v12, v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    return-void

    .line 74
    .end local v5    # "btnsLayout":Lch/android/api/ui/ChLinearLayout;
    .end local v8    # "itemExplain":Lch/android/api/ui/ChTextView;
    .end local v9    # "itemLv":Lch/android/api/ui/ChTextView;
    .end local v13    # "lp1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v15    # "price":Ljava/lang/String;
    .end local v18    # "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v22    # "rlp6":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v24    # "scrollView":Landroid/widget/ScrollView;
    .end local v26    # "sellPrice":Lch/android/api/ui/ChImageTextView;
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 79
    :cond_7
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/ui/ChItemInfoView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lch/android/api/ui/ChItemInfoView;->getItemNameColor(Lch/kingdoms/ndk/data/Inven$Item;)I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 82
    :cond_8
    const/16 v28, -0x1

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 132
    .restart local v9    # "itemLv":Lch/android/api/ui/ChTextView;
    .restart local v18    # "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    const/16 v28, 0x6

    move/from16 v0, p3

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 133
    move-object/from16 v0, p2

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->cashBuyPrice:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "price":Ljava/lang/String;
    goto/16 :goto_2

    .line 135
    .end local v15    # "price":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p2

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->sellPrice:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "price":Ljava/lang/String;
    goto/16 :goto_2

    .line 138
    :cond_b
    const v28, 0x7f02020b

    goto/16 :goto_3

    .line 143
    .restart local v22    # "rlp6":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v26    # "sellPrice":Lch/android/api/ui/ChImageTextView;
    :cond_c
    const/16 v28, 0x1

    const/16 v29, 0x66

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_4

    .line 166
    .restart local v5    # "btnsLayout":Lch/android/api/ui/ChLinearLayout;
    .restart local v8    # "itemExplain":Lch/android/api/ui/ChTextView;
    .restart local v13    # "lp1":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v24    # "scrollView":Landroid/widget/ScrollView;
    :cond_d
    aget-object v27, v29, v28

    .line 167
    .local v27, "view":Landroid/view/View;
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 168
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getId()I

    move-result v31

    packed-switch v31, :pswitch_data_0

    .line 166
    :goto_6
    :pswitch_0
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_5

    .line 176
    :pswitch_1
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v31, -0x2

    const/16 v32, -0x2

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 177
    .local v21, "rlp5":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 180
    .end local v21    # "rlp5":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_2
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v31, -0x2

    const/16 v32, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 181
    .local v20, "rlp4":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 184
    .end local v20    # "rlp4":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_3
    new-instance v23, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v31, -0x2

    const/16 v32, -0x2

    move-object/from16 v0, v23

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 185
    .local v23, "rlp7":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v31, 0xb

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 186
    const/16 v31, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 187
    invoke-static {}, Lch/android/api/util/DisplayInfo;->getInstance()Lch/android/api/util/DisplayInfo;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    move/from16 v31, v0

    const/high16 v32, 0x41880000    # 17.0f

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-super {v0, v1, v2}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 168
    :pswitch_data_0
    .packed-switch 0x274c
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private createButton(III)Lch/android/api/ui/ChImageButton;
    .locals 2
    .param p1, "_id"    # I
    .param p2, "_upId"    # I
    .param p3, "_downId"    # I

    .prologue
    .line 318
    new-instance v0, Lch/android/api/ui/ChItemInfoView$ItemButton;

    iget-object v1, p0, Lch/android/api/ui/ChItemInfoView;->CONTEXT:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2, p3}, Lch/android/api/ui/ChItemInfoView$ItemButton;-><init>(Lch/android/api/ui/ChItemInfoView;Landroid/content/Context;II)V

    .line 319
    .local v0, "btn":Lch/android/api/ui/ChItemInfoView$ItemButton;
    invoke-virtual {v0, p1}, Lch/android/api/ui/ChItemInfoView$ItemButton;->setId(I)V

    .line 321
    return-object v0
.end method

.method private createButtons(ILch/kingdoms/ndk/data/Inven$Item;)[Lch/android/api/ui/ChImageButton;
    .locals 8
    .param p1, "_storeType"    # I
    .param p2, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x6

    const v5, 0x7f0200c7

    const/16 v4, 0x2753

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v0, "btns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lch/android/api/ui/ChImageButton;>;"
    if-nez p1, :cond_8

    .line 255
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    packed-switch v2, :pswitch_data_0

    .line 314
    :cond_0
    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Lch/android/api/ui/ChImageButton;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lch/android/api/ui/ChImageButton;

    :goto_1
    return-object v2

    .line 257
    :pswitch_0
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-eq v2, v6, :cond_2

    .line 258
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 259
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_2

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v3, 0x10c

    if-eq v2, v3, :cond_2

    .line 260
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0x11

    if-eq v2, v3, :cond_2

    .line 261
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v3, 0x12d

    if-eq v2, v3, :cond_2

    .line 262
    const/16 v2, 0x274c

    const v3, 0x7f0202d4

    const v4, 0x7f0202d3

    invoke-direct {p0, v2, v3, v4}, Lch/android/api/ui/ChItemInfoView;->createButton(III)Lch/android/api/ui/ChImageButton;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v3, 0x127

    if-eq v2, v3, :cond_2

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0x14

    if-eq v2, v3, :cond_2

    .line 264
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-eqz v2, :cond_1

    .line 265
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-eq v2, v7, :cond_1

    .line 266
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 267
    :cond_1
    const/16 v2, 0x274e

    const v3, 0x7f020257

    const v4, 0x7f020256

    invoke-direct {p0, v2, v3, v4}, Lch/android/api/ui/ChItemInfoView;->createButton(III)Lch/android/api/ui/ChImageButton;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_2
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->isDeletable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v3, 0x120

    if-eq v2, v3, :cond_0

    .line 272
    const/16 v2, 0x274f

    invoke-direct {p0, v2, v5, v5}, Lch/android/api/ui/ChItemInfoView;->createButton(III)Lch/android/api/ui/ChImageButton;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 276
    :pswitch_1
    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->isEquip:Z

    if-eqz v2, :cond_3

    .line 277
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 280
    :cond_3
    iget-object v2, p0, Lch/android/api/ui/ChItemInfoView;->hero:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v1

    .line 282
    .local v1, "job":I
    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    if-eqz v2, :cond_7

    .line 283
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-nez v2, :cond_4

    if-ge v1, v3, :cond_4

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-eq v2, v1, :cond_6

    .line 284
    :cond_4
    if-ne v1, v6, :cond_5

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    iget-object v3, p0, Lch/android/api/ui/ChItemInfoView;->hero:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/HeroStatus;->getTmpJob()I

    move-result v3

    if-eq v2, v3, :cond_6

    .line 285
    :cond_5
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-eqz v2, :cond_7

    .line 287
    :cond_6
    const/16 v2, 0x274d

    const v3, 0x7f0200a7

    const v4, 0x7f0200a3

    invoke-direct {p0, v2, v3, v4}, Lch/android/api/ui/ChItemInfoView;->createButton(III)Lch/android/api/ui/ChImageButton;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_7
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->isDeletable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    const/16 v2, 0x274f

    invoke-direct {p0, v2, v5, v5}, Lch/android/api/ui/ChItemInfoView;->createButton(III)Lch/android/api/ui/ChImageButton;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 296
    .end local v1    # "job":I
    :pswitch_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 298
    :cond_8
    const/4 v2, 0x1

    if-eq p1, v2, :cond_9

    if-ne p1, v6, :cond_a

    .line 299
    :cond_9
    const/16 v2, 0x2751

    const v3, 0x7f020067

    const v4, 0x7f020063

    invoke-direct {p0, v2, v3, v4}, Lch/android/api/ui/ChItemInfoView;->createButton(III)Lch/android/api/ui/ChImageButton;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 300
    :cond_a
    if-ne p1, v7, :cond_b

    .line 301
    const/16 v2, 0x2752

    const v3, 0x7f020274

    const v4, 0x7f020273

    invoke-direct {p0, v2, v3, v4}, Lch/android/api/ui/ChItemInfoView;->createButton(III)Lch/android/api/ui/ChImageButton;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 302
    :cond_b
    const/4 v2, 0x3

    if-ne p1, v2, :cond_c

    .line 303
    const v2, 0x7f020235

    const v3, 0x7f020234

    invoke-direct {p0, v4, v2, v3}, Lch/android/api/ui/ChItemInfoView;->createButton(III)Lch/android/api/ui/ChImageButton;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 304
    :cond_c
    if-ne p1, v3, :cond_d

    .line 305
    const v2, 0x7f02008f

    const v3, 0x7f02008e

    invoke-direct {p0, v4, v2, v3}, Lch/android/api/ui/ChItemInfoView;->createButton(III)Lch/android/api/ui/ChImageButton;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 306
    :cond_d
    const/4 v2, 0x5

    if-ne p1, v2, :cond_e

    .line 307
    const v2, 0x7f020266

    const v3, 0x7f020265

    invoke-direct {p0, v4, v2, v3}, Lch/android/api/ui/ChItemInfoView;->createButton(III)Lch/android/api/ui/ChImageButton;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 308
    :cond_e
    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    .line 311
    const v2, 0x7f020235

    const v3, 0x7f020234

    invoke-direct {p0, v4, v2, v3}, Lch/android/api/ui/ChItemInfoView;->createButton(III)Lch/android/api/ui/ChImageButton;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getArmourExplain(Lch/kingdoms/ndk/data/Inven$Item;)Ljava/lang/String;
    .locals 10
    .param p1, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 416
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 418
    .local v1, "strBuffer":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#ffffff\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v3, v3, v5

    iget v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->upLv:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /></font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    iget-boolean v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    if-nez v2, :cond_1

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#ffffff\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x9

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lch/android/api/ui/ChItemInfoView;->getSocketTxt(Lch/kingdoms/ndk/data/Inven$Item;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 423
    :cond_1
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v2, v2, v5

    if-ltz v2, :cond_2

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#00ffff\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1a

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /></font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    :cond_2
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v2, v2, v6

    if-ltz v2, :cond_3

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#00ffff\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1b

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /></font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    :cond_3
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v2, v2, v7

    if-ltz v2, :cond_4

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#00ffff\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1c

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /></font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    :cond_4
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v2, v2, v8

    if-ltz v2, :cond_5

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#00ffff\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1d

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /></font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    :cond_5
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v2, v2, v9

    if-ltz v2, :cond_6

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#00ffff\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v3, v3, v9

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getSkillTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x15

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /></font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    :cond_6
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/4 v3, 0x5

    aget-short v2, v2, v3

    if-ltz v2, :cond_7

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#00ffff\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1f

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /></font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    :cond_7
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/4 v3, 0x6

    aget-short v2, v2, v3

    if-ltz v2, :cond_8

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#00ffff\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /></font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    :cond_8
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/4 v3, 0x7

    aget-short v2, v2, v3

    if-ltz v2, :cond_9

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#00ffff\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x14

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/4 v4, 0x7

    aget-short v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /></font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    :cond_9
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v3, 0x8

    aget-short v2, v2, v3

    if-ltz v2, :cond_a

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#00ffff\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x21

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x6

    if-lt v0, v2, :cond_c

    .line 459
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v3, 0xf

    aget-short v2, v2, v3

    if-ltz v2, :cond_b

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#00ffff\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x28

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v4, 0xf

    aget-short v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /></font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    :cond_b
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v3, 0x10

    aget-short v2, v2, v3

    if-ltz v2, :cond_0

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#00ffff\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x29

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v4, 0x10

    aget-short v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /></font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 455
    :cond_c
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    add-int/lit8 v3, v0, 0x9

    aget-short v2, v2, v3

    if-ltz v2, :cond_d

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#00ffff\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x22

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /></font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method private getExplain(Lch/kingdoms/ndk/data/Inven$Item;)Ljava/lang/String;
    .locals 3
    .param p1, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 327
    .local v0, "strBuffer":Ljava/lang/StringBuffer;
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 328
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    packed-switch v1, :pswitch_data_0

    .line 346
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 330
    :pswitch_0
    invoke-direct {p0, p1}, Lch/android/api/ui/ChItemInfoView;->getWeaponExplain(Lch/kingdoms/ndk/data/Inven$Item;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 333
    :pswitch_1
    invoke-direct {p0, p1}, Lch/android/api/ui/ChItemInfoView;->getArmourExplain(Lch/kingdoms/ndk/data/Inven$Item;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 336
    :pswitch_2
    invoke-direct {p0, p1}, Lch/android/api/ui/ChItemInfoView;->getSetArmourExplain(Lch/kingdoms/ndk/data/Inven$Item;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 339
    :pswitch_3
    invoke-direct {p0, p1}, Lch/android/api/ui/ChItemInfoView;->getRingExplain(Lch/kingdoms/ndk/data/Inven$Item;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 342
    :cond_1
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-eqz v1, :cond_2

    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 343
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<font color=\'#ffffff\'>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetItemRes(I)Lch/kingdoms/ndk/data/ItemRes;

    move-result-object v2

    iget-object v2, v2, Lch/kingdoms/ndk/data/ItemRes;->explain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getItemNameColor(Lch/kingdoms/ndk/data/Inven$Item;)I
    .locals 7
    .param p1, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const v3, -0x1cd901

    const v2, -0xff5101

    const v0, -0x1100cf

    const/4 v1, -0x1

    const/4 v6, 0x0

    .line 563
    iget v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 607
    :cond_1
    :goto_0
    return v0

    .line 565
    :pswitch_0
    iget v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    iget v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->thirdSubType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 566
    :cond_2
    iget v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_8

    .line 567
    iget-object v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v4, v4, v6

    if-nez v4, :cond_3

    move v0, v1

    goto :goto_0

    .line 568
    :cond_3
    iget-object v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v4, v4, v6

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    move v0, v2

    goto :goto_0

    .line 569
    :cond_4
    iget-object v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v4, v4, v6

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    move v0, v3

    goto :goto_0

    .line 570
    :cond_5
    iget-object v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v4, v4, v6

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    const/high16 v0, -0x10000

    goto :goto_0

    .line 571
    :cond_6
    iget-object v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v4, v4, v6

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    .line 591
    :cond_7
    :pswitch_1
    iget v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_13

    const v0, -0xd900bb

    goto :goto_0

    .line 573
    :cond_8
    iget v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_12

    .line 574
    iget v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-nez v4, :cond_d

    .line 575
    iget-object v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v4, v4, v6

    const/4 v5, 0x7

    if-ne v4, v5, :cond_9

    move v0, v1

    goto :goto_0

    .line 576
    :cond_9
    iget-object v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v4, v4, v6

    const/16 v5, 0xa

    if-ne v4, v5, :cond_a

    move v0, v2

    goto :goto_0

    .line 577
    :cond_a
    iget-object v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v4, v4, v6

    const/16 v5, 0xd

    if-ne v4, v5, :cond_b

    move v0, v3

    goto :goto_0

    .line 578
    :cond_b
    iget-object v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v4, v4, v6

    const/16 v5, 0x10

    if-ne v4, v5, :cond_c

    const/high16 v0, -0x10000

    goto :goto_0

    .line 579
    :cond_c
    iget-object v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v4, v4, v6

    const/16 v5, 0x14

    if-ne v4, v5, :cond_7

    goto :goto_0

    .line 582
    :cond_d
    iget-object v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v4, v4, v6

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    const v0, 0xffffff

    goto/16 :goto_0

    .line 583
    :cond_e
    iget-object v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v4, v4, v6

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    move v0, v2

    goto/16 :goto_0

    .line 584
    :cond_f
    iget-object v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v4, v4, v6

    const/4 v5, 0x3

    if-ne v4, v5, :cond_10

    move v0, v3

    goto/16 :goto_0

    .line 585
    :cond_10
    iget-object v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v4, v4, v6

    const/4 v5, 0x4

    if-ne v4, v5, :cond_11

    const/high16 v0, -0x10000

    goto/16 :goto_0

    .line 586
    :cond_11
    iget-object v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v4, v4, v6

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    goto/16 :goto_0

    :cond_12
    move v0, v1

    .line 589
    goto/16 :goto_0

    .line 593
    :cond_13
    iget-boolean v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    if-nez v4, :cond_14

    const v0, 0xffffff

    goto/16 :goto_0

    .line 594
    :cond_14
    iget v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOptionCount:I

    if-nez v4, :cond_15

    move v0, v1

    goto/16 :goto_0

    .line 595
    :cond_15
    iget v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOptionCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    move v0, v2

    goto/16 :goto_0

    .line 596
    :cond_16
    iget v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOptionCount:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_17

    const v0, -0x9c9801

    goto/16 :goto_0

    .line 597
    :cond_17
    iget v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOptionCount:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_18

    move v0, v3

    goto/16 :goto_0

    .line 598
    :cond_18
    iget v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOptionCount:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_19

    const v0, -0xd353

    goto/16 :goto_0

    .line 599
    :cond_19
    iget v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOptionCount:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1a

    const/high16 v0, -0x10000

    goto/16 :goto_0

    .line 600
    :cond_1a
    iget v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOptionCount:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1b

    const v0, -0x28300

    goto/16 :goto_0

    .line 601
    :cond_1b
    iget v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOptionCount:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    goto/16 :goto_0

    :pswitch_2
    move v0, v1

    .line 605
    goto/16 :goto_0

    .line 563
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getRingExplain(Lch/kingdoms/ndk/data/Inven$Item;)Ljava/lang/String;
    .locals 9
    .param p1, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 350
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 352
    .local v1, "strBuffer":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#ffffff\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    add-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /></font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    iget-boolean v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    if-nez v2, :cond_0

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#ffffff\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x9

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /></font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    :goto_0
    invoke-direct {p0, p1}, Lch/android/api/ui/ChItemInfoView;->getSocketTxt(Lch/kingdoms/ndk/data/Inven$Item;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 357
    :cond_0
    const-string v2, "<font color=\'#ffffff\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v2, v2, v4

    if-ltz v2, :cond_1

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    add-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    :cond_1
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v2, v2, v6

    if-ltz v2, :cond_2

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    :cond_2
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v2, v2, v7

    if-ltz v2, :cond_3

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    :cond_3
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v2, v2, v8

    if-ltz v2, :cond_4

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1a

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    :cond_4
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/4 v3, 0x4

    aget-short v2, v2, v3

    if-ltz v2, :cond_5

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2a

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/4 v4, 0x4

    aget-short v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    :cond_5
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/4 v3, 0x5

    aget-short v2, v2, v3

    if-ltz v2, :cond_6

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2b

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/4 v4, 0x5

    aget-short v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    :cond_6
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v2, v2, v5

    if-ltz v2, :cond_7

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1c

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    :cond_7
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/4 v3, 0x7

    aget-short v2, v2, v3

    if-ltz v2, :cond_8

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1d

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/4 v4, 0x7

    aget-short v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    :cond_8
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v3, 0x8

    aget-short v2, v2, v3

    if-ltz v2, :cond_9

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x12

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v4, 0x8

    aget-short v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v5, :cond_c

    .line 390
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v3, 0xf

    aget-short v2, v2, v3

    if-ltz v2, :cond_a

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<br />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    :cond_a
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v3, 0x10

    aget-short v2, v2, v3

    if-ltz v2, :cond_b

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<br />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    :cond_b
    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 386
    :cond_c
    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    add-int/lit8 v3, v0, 0x9

    aget-short v2, v2, v3

    if-ltz v2, :cond_d

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x22

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<br />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getSetArmourExplain(Lch/kingdoms/ndk/data/Inven$Item;)Ljava/lang/String;
    .locals 6
    .param p1, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 403
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 405
    .local v1, "strBuffer":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<font color=\'#ffffff\'>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget v5, p1, Lch/kingdoms/ndk/data/Inven$Item;->upLv:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br /></font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    const/4 v3, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 407
    .local v2, "txtTarget":[I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<font color=\'#00ffff\'>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x36

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br /> </font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOptionCount:I

    if-lt v0, v3, :cond_0

    .line 411
    invoke-direct {p0, p1}, Lch/android/api/ui/ChItemInfoView;->getSocketTxt(Lch/kingdoms/ndk/data/Inven$Item;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 409
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<font color=\'#00ffff\'>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lch/kingdoms/ndk/data/Inven$Item;->thirdSubType:I

    aget v4, v2, v4

    add-int/2addr v4, v0

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br /></font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    nop

    :array_0
    .array-data 4
        0x37
        0x3c
        0x42
        0x48
        0x4e
        0x55
    .end array-data
.end method

.method private getSocketResId(II)I
    .locals 1
    .param p1, "mainType"    # I
    .param p2, "subType"    # I

    .prologue
    .line 212
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 213
    packed-switch p2, :pswitch_data_0

    .line 221
    const v0, 0x7f0202a4

    .line 235
    :goto_0
    return v0

    .line 215
    :pswitch_0
    const v0, 0x7f0202aa

    goto :goto_0

    .line 217
    :pswitch_1
    const v0, 0x7f0202a6

    goto :goto_0

    .line 219
    :pswitch_2
    const v0, 0x7f0202ac

    goto :goto_0

    .line 223
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 224
    packed-switch p2, :pswitch_data_1

    .line 232
    const v0, 0x7f0202a9

    goto :goto_0

    .line 226
    :pswitch_3
    const v0, 0x7f0202a7

    goto :goto_0

    .line 228
    :pswitch_4
    const v0, 0x7f0202a8

    goto :goto_0

    .line 230
    :pswitch_5
    const v0, 0x7f0202ab

    goto :goto_0

    .line 235
    :cond_1
    const v0, 0x7f0202a5

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 224
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getSocketTxt(Lch/kingdoms/ndk/data/Inven$Item;)Ljava/lang/String;
    .locals 4
    .param p1, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/4 v3, 0x1

    .line 542
    const-string v0, ""

    .line 543
    .local v0, "txt":Ljava/lang/String;
    iget-boolean v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->firstExist:Z

    if-eqz v1, :cond_0

    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketMainType:I

    if-eqz v1, :cond_0

    .line 544
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketMainType:I

    if-ne v1, v3, :cond_2

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<font color=\'#00ffff\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketSubType:I

    add-int/lit8 v2, v2, 0x31

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketData:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% <br /></font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    :cond_0
    :goto_0
    iget-boolean v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondExist:Z

    if-eqz v1, :cond_1

    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketMainType:I

    if-eqz v1, :cond_1

    .line 552
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketMainType:I

    if-ne v1, v3, :cond_3

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<font color=\'#00ffff\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketSubType:I

    add-int/lit8 v2, v2, 0x31

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketData:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% <br /></font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    :cond_1
    :goto_1
    return-object v0

    .line 548
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<font color=\'#00ffff\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketSubType:I

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketData:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% <br /></font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 556
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<font color=\'#00ffff\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketSubType:I

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketData:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% <br /></font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getWeaponExplain(Lch/kingdoms/ndk/data/Inven$Item;)Ljava/lang/String;
    .locals 9
    .param p1, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 471
    const-string v0, ""

    .line 472
    .local v0, "txt":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<font color=\'#ffffff\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v2, v2, v4

    iget v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->upLv:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v2, v2, v6

    iget v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->upLv:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br /></font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-nez v1, :cond_0

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<font color=\'#ffffff\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v2, v2, v7

    iget v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->upBlockNum:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br /></font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    :cond_0
    iget-boolean v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    if-nez v1, :cond_1

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<font color=\'#ffffff\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lch/android/api/ui/ChItemInfoView;->getSocketTxt(Lch/kingdoms/ndk/data/Inven$Item;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    return-object v0

    .line 480
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<font color=\'#00ffff\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    iget-object v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v1, v1, v4

    if-ltz v1, :cond_2

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    :cond_2
    iget-object v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v1, v1, v6

    if-ltz v1, :cond_3

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    :cond_3
    iget-object v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v1, v1, v7

    if-ltz v1, :cond_4

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xc

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    :cond_4
    iget-object v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/4 v2, 0x3

    aget-short v1, v1, v2

    if-ltz v1, :cond_5

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xd

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/4 v3, 0x3

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    :cond_5
    iget-object v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/4 v2, 0x4

    aget-short v1, v1, v2

    if-ltz v1, :cond_6

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xe

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/4 v3, 0x4

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    :cond_6
    iget-object v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/4 v2, 0x5

    aget-short v1, v1, v2

    if-ltz v1, :cond_7

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xf

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/4 v3, 0x5

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    :cond_7
    iget-object v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v1, v1, v8

    if-ltz v1, :cond_8

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x10

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    :cond_8
    iget-object v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/4 v2, 0x7

    aget-short v1, v1, v2

    if-ltz v1, :cond_9

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x11

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    :cond_9
    iget-object v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v2, 0x8

    aget-short v1, v1, v2

    if-ltz v1, :cond_a

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x12

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v3, 0x8

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    :cond_a
    iget-object v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v2, 0x9

    aget-short v1, v1, v2

    if-ltz v1, :cond_b

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x13

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    :cond_b
    iget-object v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v2, 0xa

    aget-short v1, v1, v2

    if-ltz v1, :cond_c

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x14

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v3, 0xa

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    :cond_c
    iget-object v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v1, v1, v5

    if-ltz v1, :cond_d

    .line 515
    iget-object v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v1, v1, v5

    if-ne v1, v8, :cond_11

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x16

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    :cond_d
    :goto_1
    iget-object v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v2, 0xc

    aget-short v1, v1, v2

    if-ltz v1, :cond_e

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x17

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    :cond_e
    iget-object v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v2, 0xd

    aget-short v1, v1, v2

    if-ltz v1, :cond_f

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x18

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v3, 0xd

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    :cond_f
    iget-object v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v2, 0xe

    aget-short v1, v1, v2

    if-ltz v1, :cond_10

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x19

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    const/16 v3, 0xe

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 521
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<font color=\'#00ffff\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    mul-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0xc

    iget-object v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v3, v3, v5

    add-int/2addr v2, v3

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getSkillTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 522
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getOptionTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br /></font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 521
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method


# virtual methods
.method public getItem()Lch/kingdoms/ndk/data/Inven$Item;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lch/android/api/ui/ChItemInfoView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    return-object v0
.end method

.method public releaseRsources()V
    .locals 0

    .prologue
    .line 613
    invoke-super {p0}, Lch/android/api/ui/ChRelativeLayout;->releaseRsources()V

    .line 614
    return-void
.end method

.method public setItem(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0
    .param p1, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 241
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 244
    iget-object v1, p0, Lch/android/api/ui/ChItemInfoView;->BTNS:[Lch/android/api/ui/ChImageButton;

    if-eqz v1, :cond_0

    .line 245
    iget-object v2, p0, Lch/android/api/ui/ChItemInfoView;->BTNS:[Lch/android/api/ui/ChImageButton;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 249
    :cond_0
    return-void

    .line 245
    :cond_1
    aget-object v0, v2, v1

    .line 246
    .local v0, "btn":Lch/android/api/ui/ChImageButton;
    invoke-virtual {v0, p1}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
