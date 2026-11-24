.class public Lch/kingdoms/android/ui/DpadBtnUi;
.super Ljava/lang/Object;
.source "DpadBtnUi.java"


# instance fields
.field private final f_btnsLayout:Lch/android/api/ui/ChRelativeLayout;

.field private final f_fireBtn:Landroid/widget/ImageButton;

.field private final f_slotBtns:[Lch/android/api/ui/ChQuickSlot;

.field private m_btnOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1, "_activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, -0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v2, Lch/kingdoms/android/ui/DpadBtnUi$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/DpadBtnUi$1;-><init>(Lch/kingdoms/android/ui/DpadBtnUi;)V

    iput-object v2, p0, Lch/kingdoms/android/ui/DpadBtnUi;->m_btnOnClickListener:Landroid/view/View$OnClickListener;

    .line 26
    invoke-static {p1, v3, v3}, Lch/android/api/ui/ChViewGen;->createRelativeLayout(Landroid/app/Activity;II)Lch/android/api/ui/ChRelativeLayout;

    move-result-object v2

    iput-object v2, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_btnsLayout:Lch/android/api/ui/ChRelativeLayout;

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    .local v0, "appContext":Landroid/content/Context;
    const/16 v2, 0x2711

    const v3, 0x7f020237

    const v4, 0x7f020236

    iget-object v5, p0, Lch/kingdoms/android/ui/DpadBtnUi;->m_btnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-static {p1, v2, v3, v4, v5}, Lch/android/api/ui/ChViewGen;->createImageButton(Landroid/app/Activity;IIILandroid/view/View$OnClickListener;)Lch/android/api/ui/ChImageButton;

    move-result-object v2

    iput-object v2, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_fireBtn:Landroid/widget/ImageButton;

    .line 32
    const/4 v2, 0x7

    new-array v2, v2, [Lch/android/api/ui/ChQuickSlot;

    iput-object v2, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_slotBtns:[Lch/android/api/ui/ChQuickSlot;

    .line 33
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_slotBtns:[Lch/android/api/ui/ChQuickSlot;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 40
    invoke-virtual {p0}, Lch/kingdoms/android/ui/DpadBtnUi;->initLayout()V

    .line 41
    return-void

    .line 34
    :cond_0
    iget-object v2, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_slotBtns:[Lch/android/api/ui/ChQuickSlot;

    new-instance v3, Lch/android/api/ui/ChQuickSlot;

    invoke-direct {v3, v0}, Lch/android/api/ui/ChQuickSlot;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    .line 35
    iget-object v2, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_slotBtns:[Lch/android/api/ui/ChQuickSlot;

    aget-object v2, v2, v1

    add-int/lit16 v3, v1, 0x271a

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChQuickSlot;->setId(I)V

    .line 36
    iget-object v2, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_slotBtns:[Lch/android/api/ui/ChQuickSlot;

    aget-object v2, v2, v1

    iget-object v3, p0, Lch/kingdoms/android/ui/DpadBtnUi;->m_btnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChQuickSlot;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setMargin(Landroid/graphics/Point;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .param p1, "_margin"    # Landroid/graphics/Point;
    .param p2, "_rlp"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 129
    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 132
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 133
    return-void
.end method


# virtual methods
.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_btnsLayout:Lch/android/api/ui/ChRelativeLayout;

    return-object v0
.end method

.method public initLayout()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/DpadBtnUi;->initLayout([Landroid/graphics/Point;)V

    .line 49
    return-void
.end method

.method public initLayout([Landroid/graphics/Point;)V
    .locals 11
    .param p1, "_margins"    # [Landroid/graphics/Point;

    .prologue
    .line 53
    iget-object v8, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_btnsLayout:Lch/android/api/ui/ChRelativeLayout;

    invoke-virtual {v8}, Lch/android/api/ui/ChRelativeLayout;->removeAllViews()V

    .line 54
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v0, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v0, "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_0

    .line 56
    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 62
    :goto_0
    iget-object v8, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_btnsLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v9, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_fireBtn:Landroid/widget/ImageButton;

    invoke-virtual {v8, v9, v0}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v1, "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_1

    .line 66
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67
    const/4 v8, 0x0

    const/16 v9, 0x2711

    invoke-virtual {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72
    :goto_1
    iget-object v8, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_btnsLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v9, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_slotBtns:[Lch/android/api/ui/ChQuickSlot;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    invoke-virtual {v8, v9, v1}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v2, "rlp3":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_2

    .line 76
    const/16 v8, 0xc

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    const/4 v8, 0x0

    const/16 v9, 0x271d

    invoke-virtual {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 82
    :goto_2
    iget-object v8, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_btnsLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v9, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_slotBtns:[Lch/android/api/ui/ChQuickSlot;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v8, v9, v2}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v3, "rlp4":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_3

    .line 86
    const/16 v8, 0xc

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 87
    const/4 v8, 0x0

    const/16 v9, 0x271c

    invoke-virtual {v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 91
    :goto_3
    iget-object v8, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_btnsLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v9, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_slotBtns:[Lch/android/api/ui/ChQuickSlot;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9, v3}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v4, "rlp5":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_4

    .line 95
    const/16 v8, 0xc

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 96
    const/4 v8, 0x0

    const/16 v9, 0x271b

    invoke-virtual {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 100
    :goto_4
    iget-object v8, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_btnsLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v9, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_slotBtns:[Lch/android/api/ui/ChQuickSlot;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9, v4}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v5, "rlp6":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_5

    .line 104
    const/16 v8, 0xb

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 105
    const/4 v8, 0x2

    const/16 v9, 0x2711

    invoke-virtual {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 109
    :goto_5
    iget-object v8, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_btnsLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v9, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_slotBtns:[Lch/android/api/ui/ChQuickSlot;

    const/4 v10, 0x5

    aget-object v9, v9, v10

    invoke-virtual {v8, v9, v5}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    .local v6, "rlp7":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_6

    .line 112
    const/4 v8, 0x2

    const/16 v9, 0x2711

    invoke-virtual {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 113
    const/4 v8, 0x0

    const/16 v9, 0x271f

    invoke-virtual {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 117
    :goto_6
    iget-object v8, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_btnsLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v9, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_slotBtns:[Lch/android/api/ui/ChQuickSlot;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    invoke-virtual {v8, v9, v6}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    .local v7, "rlp8":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_7

    .line 120
    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    const/4 v8, 0x2

    const/16 v9, 0x271f

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 125
    :goto_7
    iget-object v8, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_btnsLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v9, p0, Lch/kingdoms/android/ui/DpadBtnUi;->f_slotBtns:[Lch/android/api/ui/ChQuickSlot;

    const/4 v10, 0x6

    aget-object v9, v9, v10

    invoke-virtual {v8, v9, v7}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void

    .line 60
    .end local v1    # "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "rlp3":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "rlp4":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "rlp5":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "rlp6":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "rlp7":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "rlp8":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-direct {p0, v8, v0}, Lch/kingdoms/android/ui/DpadBtnUi;->setMargin(Landroid/graphics/Point;Landroid/widget/RelativeLayout$LayoutParams;)V

    goto/16 :goto_0

    .line 70
    .restart local v1    # "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/4 v8, 0x1

    aget-object v8, p1, v8

    invoke-direct {p0, v8, v1}, Lch/kingdoms/android/ui/DpadBtnUi;->setMargin(Landroid/graphics/Point;Landroid/widget/RelativeLayout$LayoutParams;)V

    goto/16 :goto_1

    .line 80
    .restart local v2    # "rlp3":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/4 v8, 0x2

    aget-object v8, p1, v8

    invoke-direct {p0, v8, v2}, Lch/kingdoms/android/ui/DpadBtnUi;->setMargin(Landroid/graphics/Point;Landroid/widget/RelativeLayout$LayoutParams;)V

    goto/16 :goto_2

    .line 89
    .restart local v3    # "rlp4":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/4 v8, 0x3

    aget-object v8, p1, v8

    invoke-direct {p0, v8, v3}, Lch/kingdoms/android/ui/DpadBtnUi;->setMargin(Landroid/graphics/Point;Landroid/widget/RelativeLayout$LayoutParams;)V

    goto/16 :goto_3

    .line 98
    .restart local v4    # "rlp5":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    const/4 v8, 0x4

    aget-object v8, p1, v8

    invoke-direct {p0, v8, v4}, Lch/kingdoms/android/ui/DpadBtnUi;->setMargin(Landroid/graphics/Point;Landroid/widget/RelativeLayout$LayoutParams;)V

    goto/16 :goto_4

    .line 107
    .restart local v5    # "rlp6":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    const/4 v8, 0x5

    aget-object v8, p1, v8

    invoke-direct {p0, v8, v5}, Lch/kingdoms/android/ui/DpadBtnUi;->setMargin(Landroid/graphics/Point;Landroid/widget/RelativeLayout$LayoutParams;)V

    goto :goto_5

    .line 115
    .restart local v6    # "rlp7":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    const/4 v8, 0x6

    aget-object v8, p1, v8

    invoke-direct {p0, v8, v6}, Lch/kingdoms/android/ui/DpadBtnUi;->setMargin(Landroid/graphics/Point;Landroid/widget/RelativeLayout$LayoutParams;)V

    goto :goto_6

    .line 123
    .restart local v7    # "rlp8":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    const/4 v8, 0x7

    aget-object v8, p1, v8

    invoke-direct {p0, v8, v7}, Lch/kingdoms/android/ui/DpadBtnUi;->setMargin(Landroid/graphics/Point;Landroid/widget/RelativeLayout$LayoutParams;)V

    goto :goto_7
.end method
