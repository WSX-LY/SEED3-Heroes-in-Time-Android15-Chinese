.class public Lch/kingdoms/android/ui/BlackSmithUi;
.super Ljava/lang/Object;
.source "BlackSmithUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;,
        Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;
    }
.end annotation


# static fields
.field public static final TYPE_MIX:I = 0x3

.field public static final TYPE_REPOWER:I = 0x2

.field public static final TYPE_SOCKET:I = 0x1

.field public static final TYPE_UPGRADE:I


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final LAYOUT:Lch/android/api/ui/ChRelativeLayout;

.field private final RESOURCE:Landroid/content/res/Resources;

.field private final TYPE:I

.field private blackSmithView:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

.field private firstItem:Lch/kingdoms/ndk/data/Inven$Item;

.field private firstItemIndex:I

.field private itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

.field private name:Ljava/lang/String;

.field private secondItem:Lch/kingdoms/ndk/data/Inven$Item;

.field private secondItemIndex:I

.field private selectStep:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;ILjava/lang/String;)V
    .locals 9
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "_type"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lch/kingdoms/android/ui/BlackSmithUi;->ACTIVITY:Landroid/app/Activity;

    .line 69
    iput-object p2, p0, Lch/kingdoms/android/ui/BlackSmithUi;->DI:Lch/android/api/util/DisplayInfo;

    .line 70
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi;->RESOURCE:Landroid/content/res/Resources;

    .line 71
    iput p3, p0, Lch/kingdoms/android/ui/BlackSmithUi;->TYPE:I

    .line 72
    iput-object p4, p0, Lch/kingdoms/android/ui/BlackSmithUi;->name:Ljava/lang/String;

    .line 74
    new-instance v0, Lch/android/api/ui/ChRelativeLayout;

    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    .line 76
    iput v7, p0, Lch/kingdoms/android/ui/BlackSmithUi;->selectStep:I

    .line 77
    new-instance v0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x3

    move-object v1, p0

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;-><init>(Lch/kingdoms/android/ui/BlackSmithUi;Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;I)V

    iput-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    .line 78
    iput-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi;->firstItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 79
    iput-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi;->secondItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 80
    iput v6, p0, Lch/kingdoms/android/ui/BlackSmithUi;->firstItemIndex:I

    .line 81
    iput v6, p0, Lch/kingdoms/android/ui/BlackSmithUi;->secondItemIndex:I

    .line 82
    invoke-direct {p0, v7}, Lch/kingdoms/android/ui/BlackSmithUi;->setSelectStep(I)V

    .line 84
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/BlackSmithUi;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lch/kingdoms/android/ui/BlackSmithUi;->TYPE:I

    return v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/BlackSmithUi;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lch/kingdoms/android/ui/BlackSmithUi;->close()V

    return-void
.end method

.method static synthetic access$10(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/kingdoms/ndk/data/Inven$Item;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi;->firstItem:Lch/kingdoms/ndk/data/Inven$Item;

    return-object v0
.end method

.method static synthetic access$11(Lch/kingdoms/android/ui/BlackSmithUi;I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lch/kingdoms/android/ui/BlackSmithUi;->firstItemIndex:I

    return-void
.end method

.method static synthetic access$12(Lch/kingdoms/android/ui/BlackSmithUi;I)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/BlackSmithUi;->setSelectStep(I)V

    return-void
.end method

.method static synthetic access$13(Lch/kingdoms/android/ui/BlackSmithUi;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi;->RESOURCE:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$14(Lch/kingdoms/android/ui/BlackSmithUi;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lch/kingdoms/android/ui/BlackSmithUi;->selectStep:I

    return v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/BlackSmithUi;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi;->ACTIVITY:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/BlackSmithUi;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lch/kingdoms/android/ui/BlackSmithUi;->firstItemIndex:I

    return v0
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/BlackSmithUi;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lch/kingdoms/android/ui/BlackSmithUi;->secondItemIndex:I

    return v0
.end method

.method static synthetic access$6(Lch/kingdoms/android/ui/BlackSmithUi;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lch/kingdoms/android/ui/BlackSmithUi;->firstItem:Lch/kingdoms/ndk/data/Inven$Item;

    return-void
.end method

.method static synthetic access$7(Lch/kingdoms/android/ui/BlackSmithUi;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lch/kingdoms/android/ui/BlackSmithUi;->secondItem:Lch/kingdoms/ndk/data/Inven$Item;

    return-void
.end method

.method static synthetic access$8(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/kingdoms/ndk/data/Inven$Item;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi;->secondItem:Lch/kingdoms/ndk/data/Inven$Item;

    return-object v0
.end method

.method static synthetic access$9(Lch/kingdoms/android/ui/BlackSmithUi;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lch/kingdoms/android/ui/BlackSmithUi;->secondItemIndex:I

    return-void
.end method

.method private close()V
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    invoke-virtual {v1}, Lch/android/api/ui/ChRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 88
    .local v0, "vg":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 91
    :cond_0
    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi;->ACTIVITY:Landroid/app/Activity;

    iget-object v2, p0, Lch/kingdoms/android/ui/BlackSmithUi;->DI:Lch/android/api/util/DisplayInfo;

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/MainStateUi;->ShowBlackSmithUi(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V

    .line 92
    return-void
.end method

.method private setSelectStep(I)V
    .locals 12
    .param p1, "_step"    # I

    .prologue
    const/16 v11, 0xd

    const/4 v10, -0x1

    const/4 v8, -0x2

    const v9, -0xfffffe9

    const/4 v7, 0x2

    .line 95
    iget v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->selectStep:I

    if-ne v5, v7, :cond_0

    if-eqz p1, :cond_1

    const/4 v5, 0x1

    if-eq p1, v5, :cond_1

    :cond_0
    iget v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->selectStep:I

    if-nez v5, :cond_2

    if-nez p1, :cond_2

    .line 96
    :cond_1
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi;->blackSmithView:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChRelativeLayout;->removeView(Landroid/view/View;)V

    .line 97
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v4, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 99
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-virtual {v5, v6, v4}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .end local v4    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iput p1, p0, Lch/kingdoms/android/ui/BlackSmithUi;->selectStep:I

    .line 102
    iget v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->selectStep:I

    packed-switch v5, :pswitch_data_0

    .line 204
    :cond_3
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->TYPE:I

    packed-switch v5, :pswitch_data_1

    .line 118
    :goto_1
    iget v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->TYPE:I

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->secondItem:Lch/kingdoms/ndk/data/Inven$Item;

    if-eqz v5, :cond_4

    .line 120
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi;->secondItem:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->selectItem(Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    const v6, -0xffffff0

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->update(I)V

    goto :goto_1

    .line 109
    :pswitch_2
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    const v6, -0xfffffea

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->update(I)V

    goto :goto_1

    .line 112
    :pswitch_3
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    const v6, -0xfffffc0

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->update(I)V

    goto :goto_1

    .line 115
    :pswitch_4
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    const v6, -0xfffffed

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->update(I)V

    goto :goto_1

    .line 121
    :cond_4
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->firstItem:Lch/kingdoms/ndk/data/Inven$Item;

    if-eqz v5, :cond_3

    .line 122
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi;->firstItem:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->selectItem(Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 123
    const/4 v5, 0x0

    iput-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->secondItem:Lch/kingdoms/ndk/data/Inven$Item;

    goto :goto_0

    .line 127
    :pswitch_5
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-virtual {v5}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->getSelectedItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    .line 128
    .local v2, "item":Lch/kingdoms/ndk/data/Inven$Item;
    if-eqz v2, :cond_5

    iget v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->firstItemIndex:I

    if-le v5, v10, :cond_6

    .line 129
    :cond_5
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v5

    invoke-virtual {v5}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v3

    .line 130
    .local v3, "items":[Lch/kingdoms/ndk/data/Inven$Item;
    iget v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->firstItemIndex:I

    aget-object v2, v3, v5

    .line 132
    .end local v3    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    :cond_6
    if-eqz v2, :cond_3

    .line 133
    iget v5, v2, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    iput v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->firstItemIndex:I

    .line 135
    iget v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->TYPE:I

    packed-switch v5, :pswitch_data_2

    goto :goto_0

    .line 137
    :pswitch_6
    iget v5, v2, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-nez v5, :cond_7

    .line 138
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    const v6, -0xeffffee

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->update(I)V

    goto :goto_0

    .line 140
    :cond_7
    iget v5, v2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_8

    iget v5, v2, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-ne v5, v7, :cond_8

    .line 141
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    const v6, -0xfffffb0

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->update(I)V

    goto/16 :goto_0

    .line 144
    :cond_8
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    const v6, -0xfffffef

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->update(I)V

    goto/16 :goto_0

    .line 148
    :pswitch_7
    iget v5, v2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v6, 0xba

    if-lt v5, v6, :cond_d

    iget v5, v2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v6, 0xcd

    if-gt v5, v6, :cond_d

    .line 149
    iget v5, v2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v6, 0xba

    if-ne v5, v6, :cond_c

    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, "isQuest":Z
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v5

    invoke-virtual {v5}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v3

    .line 152
    .restart local v3    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    array-length v6, v3

    const/4 v5, 0x0

    :goto_2
    if-lt v5, v6, :cond_9

    .line 158
    :goto_3
    if-eqz v1, :cond_b

    .line 160
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    const v6, -0xfffffde

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->update(I)V

    goto/16 :goto_0

    .line 152
    :cond_9
    aget-object v0, v3, v5

    .line 153
    .local v0, "i":Lch/kingdoms/ndk/data/Inven$Item;
    iget v7, v0, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v8, 0x13b

    if-ne v7, v8, :cond_a

    .line 154
    const/4 v1, 0x1

    .line 155
    goto :goto_3

    .line 152
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 162
    .end local v0    # "i":Lch/kingdoms/ndk/data/Inven$Item;
    :cond_b
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-virtual {v5, v9}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->update(I)V

    goto/16 :goto_0

    .line 165
    .end local v1    # "isQuest":Z
    .end local v3    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    :cond_c
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-virtual {v5, v9}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->update(I)V

    goto/16 :goto_0

    .line 168
    :cond_d
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    const v6, -0xfffffe8

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->update(I)V

    goto/16 :goto_0

    .line 172
    :pswitch_8
    invoke-direct {p0, v7}, Lch/kingdoms/android/ui/BlackSmithUi;->setSelectStep(I)V

    goto/16 :goto_0

    .line 175
    :pswitch_9
    iget v5, v2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v6, 0xb9

    if-ne v5, v6, :cond_e

    .line 176
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    const v6, -0xfffffec

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->update(I)V

    goto/16 :goto_0

    .line 178
    :cond_e
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    const v6, -0xfffffeb

    invoke-virtual {v5, v6}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->update(I)V

    goto/16 :goto_0

    .line 185
    .end local v2    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    :pswitch_a
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-virtual {v5}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->getSelectedItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    .line 186
    .restart local v2    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    if-eqz v2, :cond_f

    iget v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->secondItemIndex:I

    if-le v5, v10, :cond_10

    .line 187
    :cond_f
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v5

    invoke-virtual {v5}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v3

    .line 188
    .restart local v3    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    iget v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->secondItemIndex:I

    aget-object v2, v3, v5

    .line 190
    .end local v3    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    :cond_10
    if-eqz v2, :cond_3

    .line 192
    iget v5, v2, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    iput v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->secondItemIndex:I

    .line 193
    iput v7, p0, Lch/kingdoms/android/ui/BlackSmithUi;->selectStep:I

    .line 194
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi;->itemSelectView:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChRelativeLayout;->removeView(Landroid/view/View;)V

    .line 196
    new-instance v5, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lch/kingdoms/android/ui/BlackSmithUi;->name:Ljava/lang/String;

    invoke-direct {v5, p0, v6, v7}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;-><init>(Lch/kingdoms/android/ui/BlackSmithUi;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->blackSmithView:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    .line 197
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->RESOURCE:Landroid/content/res/Resources;

    const v6, 0x7f020029

    invoke-static {v5, v6}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v5

    .line 198
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi;->RESOURCE:Landroid/content/res/Resources;

    const v7, 0x7f020029

    invoke-static {v6, v7}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v6

    .line 197
    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 199
    .restart local v4    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 200
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi;->blackSmithView:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-virtual {v5, v6, v4}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_a
    .end packed-switch

    .line 104
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 135
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    return-object v0
.end method
