.class public Lch/android/api/ui/ChInvenView;
.super Lch/android/api/ui/ChLinearLayout;
.source "ChInvenView.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# static fields
.field public static FLAG_DEFAULT:I = 0x0

.field private static final FLAG_FILTER:I = -0x10000000

.field public static final FLAG_FILTER_ARMOUR:I = -0xffffffe

.field public static final FLAG_FILTER_BOOTS:I = -0xffffffa

.field public static final FLAG_FILTER_BOW:I = -0xfffffce

.field public static final FLAG_FILTER_EQUIP:I = -0xffffff9

.field public static final FLAG_FILTER_GLOVES:I = -0xffffffb

.field public static final FLAG_FILTER_HELLMET:I = -0xfffffff

.field public static final FLAG_FILTER_ITEM:I = -0xffffff8

.field public static final FLAG_FILTER_MIX_FIRST:I = -0xfffffed

.field public static final FLAG_FILTER_MIX_SECOND_CRYSTAL:I = -0xfffffeb

.field public static final FLAG_FILTER_MIX_SECOND_OB:I = -0xfffffec

.field public static final FLAG_FILTER_NOT_AVAILABLE:I = -0xfffffcc

.field public static final FLAG_FILTER_NO_IDENTIFIED:I = -0xfffffe7

.field public static final FLAG_FILTER_ORB:I = -0xfffffcd

.field public static final FLAG_FILTER_QUEST:I = -0xffffff7

.field public static final FLAG_FILTER_REPOWER:I = -0xfffffee

.field public static final FLAG_FILTER_REPOWER_EQUIP:I = -0xfffffc0

.field public static final FLAG_FILTER_RING:I = -0xffffffd

.field public static final FLAG_FILTER_SELL:I = -0xfffffbf

.field public static final FLAG_FILTER_SOCKET_FIRST:I = -0xfffffea

.field public static final FLAG_FILTER_SOCKET_OPENABLE:I = -0xfffffe0

.field public static final FLAG_FILTER_SOCKET_QUEST:I = -0xfffffde

.field public static final FLAG_FILTER_SOCKET_RESET:I = -0xfffffdf

.field public static final FLAG_FILTER_SOCKET_SECOND_CRYSTAL:I = -0xfffffe8

.field public static final FLAG_FILTER_SOCKET_SECOND_OB:I = -0xfffffe9

.field public static final FLAG_FILTER_SWORD:I = -0xfffffd0

.field public static final FLAG_FILTER_TWOSW:I = -0xfffffcf

.field public static final FLAG_FILTER_UPGRADE:I = -0xffffff0

.field public static final FLAG_FILTER_UPGRADE_ARMOUR_GLOVES_BOOTS_HELMET:I = -0xfffffef

.field public static final FLAG_FILTER_UPGRADE_FALCON:I = -0xfffffb0

.field public static final FLAG_FILTER_UPGRADE_WEAPON:I = -0xeffffee

.field public static final FLAG_FILTER_WEAPON:I = -0xffffffc


# instance fields
.field private final CONTEXT:Landroid/content/Context;

.field private final FILTERED_ITEM_BTNS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lch/android/api/ui/ChNewItemButton;",
            ">;"
        }
    .end annotation
.end field

.field private final FILTERED_ITEM_INDICES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final SCROLL_VIEW:Landroid/widget/ScrollView;

.field private final TABLE_LAYOUT:Lch/android/api/ui/ChTableLayout;

.field private m_equipedItemIndices:[S

.field private m_items:[Lch/kingdoms/ndk/data/Inven$Item;

.field private m_numCol:I

.field private m_previousFlag:I

.field private m_previousNumCol:I

.field private m_selectedBtnIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput v0, Lch/android/api/ui/ChInvenView;->FLAG_DEFAULT:I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[S[Lch/kingdoms/ndk/data/Inven$Item;F)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_equipItemIndices"    # [S
    .param p3, "_items"    # [Lch/kingdoms/ndk/data/Inven$Item;
    .param p4, "_density"    # F

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0, p1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    sget v1, Lch/android/api/ui/ChInvenView;->FLAG_DEFAULT:I

    iput v1, p0, Lch/android/api/ui/ChInvenView;->m_previousFlag:I

    .line 69
    const/4 v1, 0x4

    iput v1, p0, Lch/android/api/ui/ChInvenView;->m_previousNumCol:I

    .line 74
    iput-object p1, p0, Lch/android/api/ui/ChInvenView;->CONTEXT:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lch/android/api/ui/ChInvenView;->m_equipedItemIndices:[S

    .line 76
    iput-object p3, p0, Lch/android/api/ui/ChInvenView;->m_items:[Lch/kingdoms/ndk/data/Inven$Item;

    .line 78
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lch/android/api/ui/ChInvenView;->SCROLL_VIEW:Landroid/widget/ScrollView;

    .line 79
    new-instance v1, Lch/android/api/ui/ChTableLayout;

    invoke-direct {v1, p1}, Lch/android/api/ui/ChTableLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lch/android/api/ui/ChInvenView;->TABLE_LAYOUT:Lch/android/api/ui/ChTableLayout;

    .line 80
    iget-object v1, p0, Lch/android/api/ui/ChInvenView;->TABLE_LAYOUT:Lch/android/api/ui/ChTableLayout;

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v2, p4

    float-to-int v2, v2

    invoke-virtual {v1, v3, v3, v3, v2}, Lch/android/api/ui/ChTableLayout;->setPadding(IIII)V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lch/android/api/ui/ChInvenView;->FILTERED_ITEM_BTNS:Ljava/util/ArrayList;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lch/android/api/ui/ChInvenView;->FILTERED_ITEM_INDICES:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v1, p4

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 87
    iget-object v1, p0, Lch/android/api/ui/ChInvenView;->SCROLL_VIEW:Landroid/widget/ScrollView;

    iget-object v2, p0, Lch/android/api/ui/ChInvenView;->TABLE_LAYOUT:Lch/android/api/ui/ChTableLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v1, p0, Lch/android/api/ui/ChInvenView;->SCROLL_VIEW:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v1, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-void
.end method

.method private isCorrectItem(ILch/kingdoms/ndk/data/Inven$Item;)Z
    .locals 7
    .param p1, "_flag"    # I
    .param p2, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 269
    sget v2, Lch/android/api/ui/ChInvenView;->FLAG_DEFAULT:I

    if-ne p1, v2, :cond_1

    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    if-eqz v2, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v0

    .line 273
    :cond_1
    const/high16 v2, -0x10000000

    and-int/2addr v2, p1

    const/high16 v3, -0x10000000

    if-ne v2, v3, :cond_14

    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    if-eqz v2, :cond_14

    .line 277
    const v2, -0xfffffb0

    if-ne p1, v2, :cond_2

    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    if-eqz v2, :cond_2

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v2, v0, :cond_2

    iget-short v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->limitLv:S

    const/16 v3, 0x78

    if-lt v2, v3, :cond_0

    .line 279
    :cond_2
    const v2, -0xfffffd0

    if-ne p1, v2, :cond_3

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v2, v0, :cond_3

    .line 280
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-nez v2, :cond_3

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-eqz v2, :cond_0

    .line 282
    :cond_3
    const v2, -0xfffffcf

    if-ne p1, v2, :cond_4

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v2, v0, :cond_4

    .line 283
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-nez v2, :cond_4

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-eq v2, v0, :cond_0

    .line 285
    :cond_4
    const v2, -0xfffffce

    if-ne p1, v2, :cond_5

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v2, v0, :cond_5

    .line 286
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-nez v2, :cond_5

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-eq v2, v4, :cond_0

    .line 288
    :cond_5
    const v2, -0xfffffcd

    if-ne p1, v2, :cond_6

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v2, v0, :cond_6

    .line 289
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-nez v2, :cond_6

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-eq v2, v5, :cond_0

    .line 291
    :cond_6
    const v2, -0xfffffdf

    if-ne p1, v2, :cond_7

    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    if-eqz v2, :cond_7

    .line 292
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v2, v0, :cond_7

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-eq v2, v5, :cond_7

    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    if-eqz v2, :cond_7

    .line 293
    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->firstExist:Z

    if-nez v2, :cond_0

    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->secondExist:Z

    if-nez v2, :cond_0

    .line 295
    :cond_7
    const v2, -0xfffffe0

    if-ne p1, v2, :cond_8

    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    if-eqz v2, :cond_8

    .line 296
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v2, v0, :cond_8

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-eq v2, v5, :cond_8

    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    if-eqz v2, :cond_8

    .line 297
    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->firstExist:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->secondExist:Z

    if-eqz v2, :cond_0

    .line 299
    :cond_8
    const v2, -0xfffffe7

    if-ne p1, v2, :cond_9

    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    if-nez v2, :cond_9

    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    if-nez v2, :cond_0

    .line 301
    :cond_9
    const v2, -0xffffff9

    if-eq p1, v2, :cond_a

    const v2, -0xfffffc0

    if-ne p1, v2, :cond_c

    :cond_a
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v2, v0, :cond_c

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-eq v2, v5, :cond_c

    .line 302
    const v2, -0xfffffc0

    if-ne p1, v2, :cond_0

    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    if-eqz v2, :cond_b

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-ne v2, v4, :cond_0

    :cond_b
    move v0, v1

    .line 303
    goto/16 :goto_0

    .line 307
    :cond_c
    const v2, -0xffffff8

    if-ne p1, v2, :cond_d

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-eqz v2, :cond_0

    .line 309
    :cond_d
    const v2, -0xffffff7

    if-ne p1, v2, :cond_e

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-eq v2, v4, :cond_0

    .line 311
    :cond_e
    const v2, -0xffffffc

    if-ne p1, v2, :cond_f

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v2, v0, :cond_f

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-nez v2, :cond_f

    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    if-nez v2, :cond_0

    .line 313
    :cond_f
    const v2, -0xfffffe8

    if-eq p1, v2, :cond_15

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v2, v0, :cond_15

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-eq v2, v0, :cond_10

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-ne v2, v4, :cond_15

    .line 314
    :cond_10
    const v2, -0xfffffef

    if-eq p1, v2, :cond_15

    const v2, -0xfffffbf

    if-eq p1, v2, :cond_15

    .line 315
    const v2, -0xfffffff

    if-ne p1, v2, :cond_11

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-eqz v2, :cond_0

    .line 318
    :cond_11
    const v2, -0xffffffe

    if-ne p1, v2, :cond_12

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-eq v2, v0, :cond_0

    .line 321
    :cond_12
    const v2, -0xffffffb

    if-ne p1, v2, :cond_13

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-eq v2, v4, :cond_0

    .line 324
    :cond_13
    const v2, -0xffffffa

    if-ne p1, v2, :cond_14

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-eq v2, v5, :cond_0

    :cond_14
    move v0, v1

    .line 398
    goto/16 :goto_0

    .line 328
    :cond_15
    const v2, -0xffffffd

    if-ne p1, v2, :cond_16

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v2, v0, :cond_16

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-eq v2, v5, :cond_0

    .line 331
    :cond_16
    const v2, -0xffffff0

    if-ne p1, v2, :cond_17

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-nez v2, :cond_17

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 332
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_17

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-eq v2, v4, :cond_0

    .line 335
    :cond_17
    const v2, -0xfffffea

    if-ne p1, v2, :cond_18

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-nez v2, :cond_18

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 337
    :cond_18
    const v2, -0xfffffe9

    if-ne p1, v2, :cond_1b

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v2, v0, :cond_1b

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-nez v2, :cond_1b

    .line 338
    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    if-eqz v2, :cond_1b

    .line 339
    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->firstExist:Z

    if-eqz v2, :cond_19

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketMainType:I

    if-eqz v2, :cond_0

    .line 340
    :cond_19
    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->secondExist:Z

    if-eqz v2, :cond_1a

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketMainType:I

    if-eqz v2, :cond_0

    :cond_1a
    move v0, v1

    .line 343
    goto/16 :goto_0

    .line 345
    :cond_1b
    const v2, -0xfffffde

    if-ne p1, v2, :cond_1c

    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    if-eqz v2, :cond_1c

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v3, 0x13b

    if-eq v2, v3, :cond_0

    .line 347
    :cond_1c
    const v2, -0xfffffe8

    if-ne p1, v2, :cond_20

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v2, v0, :cond_20

    .line 348
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-eq v2, v0, :cond_1d

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-ne v2, v4, :cond_20

    .line 349
    :cond_1d
    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    if-eqz v2, :cond_20

    .line 350
    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->firstExist:Z

    if-eqz v2, :cond_1e

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->firstSocketMainType:I

    if-eqz v2, :cond_0

    .line 351
    :cond_1e
    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->secondExist:Z

    if-eqz v2, :cond_1f

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->secondSocketMainType:I

    if-eqz v2, :cond_0

    :cond_1f
    move v0, v1

    .line 354
    goto/16 :goto_0

    .line 356
    :cond_20
    const v2, -0xfffffee

    if-ne p1, v2, :cond_21

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-nez v2, :cond_21

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    .line 358
    :cond_21
    const v2, -0xfffffed

    if-ne p1, v2, :cond_22

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-nez v2, :cond_22

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-ne v2, v6, :cond_22

    .line 359
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v3, 0xb9

    if-eq v2, v3, :cond_0

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v3, 0xe2

    if-ne v2, v3, :cond_14

    goto/16 :goto_0

    .line 362
    :cond_22
    const v2, -0xfffffec

    if-ne p1, v2, :cond_24

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-nez v2, :cond_24

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-ne v2, v6, :cond_24

    .line 363
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v3, 0xa5

    if-lt v2, v3, :cond_23

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v3, 0xb8

    if-le v2, v3, :cond_0

    :cond_23
    move v0, v1

    .line 366
    goto/16 :goto_0

    .line 368
    :cond_24
    const v2, -0xfffffeb

    if-ne p1, v2, :cond_26

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-nez v2, :cond_26

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-ne v2, v6, :cond_26

    .line 369
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v3, 0xce

    if-lt v2, v3, :cond_25

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v3, 0xe1

    if-le v2, v3, :cond_0

    :cond_25
    move v0, v1

    .line 372
    goto/16 :goto_0

    .line 374
    :cond_26
    const v2, -0xfffffcc

    if-ne p1, v2, :cond_27

    move v0, v1

    .line 375
    goto/16 :goto_0

    .line 376
    :cond_27
    const v2, -0xfffffef

    if-ne p1, v2, :cond_28

    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    if-eqz v2, :cond_28

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->upgradeLv:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_28

    .line 377
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v2, v0, :cond_14

    .line 378
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-eq v2, v0, :cond_0

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-ne v2, v4, :cond_14

    goto/16 :goto_0

    .line 381
    :cond_28
    const v2, -0xeffffee

    if-ne p1, v2, :cond_29

    iget-boolean v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    if-eqz v2, :cond_29

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v2, v0, :cond_29

    .line 382
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-nez v2, :cond_29

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->upgradeLv:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 384
    :cond_29
    const v2, -0xfffffbf

    if-ne p1, v2, :cond_14

    .line 385
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-nez v2, :cond_2a

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2a

    .line 386
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0xf

    if-eq v2, v3, :cond_2a

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0x11

    if-eq v2, v3, :cond_2a

    .line 387
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0x12

    if-eq v2, v3, :cond_2a

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0x13

    if-eq v2, v3, :cond_2a

    .line 388
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0x14

    if-eq v2, v3, :cond_2a

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0x17

    if-eq v2, v3, :cond_2a

    .line 389
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0x17

    if-eq v2, v3, :cond_2a

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0x18

    if-eq v2, v3, :cond_2a

    .line 390
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2a

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2a

    .line 391
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_2a

    .line 392
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v3, 0x10c

    if-eq v2, v3, :cond_2a

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v3, 0x104

    if-eq v2, v3, :cond_2a

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v3, 0x105

    if-eq v2, v3, :cond_2a

    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v3, 0x12d

    if-ne v2, v3, :cond_0

    .line 393
    :cond_2a
    iget v2, p2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v2, v0, :cond_14

    goto/16 :goto_0
.end method

.method private isEquipedItem(I)Z
    .locals 2
    .param p1, "_itemIndex"    # I

    .prologue
    .line 243
    iget-object v1, p0, Lch/android/api/ui/ChInvenView;->m_equipedItemIndices:[S

    if-eqz v1, :cond_0

    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lch/android/api/ui/ChInvenView;->m_equipedItemIndices:[S

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 251
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 245
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lch/android/api/ui/ChInvenView;->m_equipedItemIndices:[S

    aget-short v1, v1, v0

    if-ne p1, v1, :cond_2

    .line 246
    const/4 v1, 0x1

    goto :goto_1

    .line 244
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resetTableLayout()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lch/android/api/ui/ChInvenView;->TABLE_LAYOUT:Lch/android/api/ui/ChTableLayout;

    invoke-virtual {v0}, Lch/android/api/ui/ChTableLayout;->releaseRsources()V

    .line 239
    iget-object v0, p0, Lch/android/api/ui/ChInvenView;->TABLE_LAYOUT:Lch/android/api/ui/ChTableLayout;

    invoke-virtual {v0}, Lch/android/api/ui/ChTableLayout;->removeAllViews()V

    .line 240
    return-void
.end method


# virtual methods
.method public getEquipedItemIndexInFiltered()I
    .locals 3

    .prologue
    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lch/android/api/ui/ChInvenView;->FILTERED_ITEM_BTNS:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 265
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 260
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lch/android/api/ui/ChInvenView;->FILTERED_ITEM_BTNS:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/android/api/ui/ChNewItemButton;

    invoke-virtual {v2}, Lch/android/api/ui/ChNewItemButton;->isEquiped()Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFilteredItem(I)Lch/kingdoms/ndk/data/Inven$Item;
    .locals 2
    .param p1, "_index"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lch/android/api/ui/ChInvenView;->m_items:[Lch/kingdoms/ndk/data/Inven$Item;

    invoke-virtual {p0, p1}, Lch/android/api/ui/ChInvenView;->getFilteredItemInvenIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getFilteredItemInvenIndex(I)I
    .locals 1
    .param p1, "_index"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lch/android/api/ui/ChInvenView;->FILTERED_ITEM_INDICES:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lch/android/api/ui/ChInvenView;->m_items:[Lch/kingdoms/ndk/data/Inven$Item;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lch/android/api/ui/ChInvenView;->m_items:[Lch/kingdoms/ndk/data/Inven$Item;

    array-length v0, v0

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumCol()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lch/android/api/ui/ChInvenView;->m_numCol:I

    return v0
.end method

.method public isFilteredEquipedItem(I)Z
    .locals 1
    .param p1, "_filterIndex"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lch/android/api/ui/ChInvenView;->FILTERED_ITEM_BTNS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/android/api/ui/ChNewItemButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChNewItemButton;->isEquiped()Z

    move-result v0

    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 232
    iget-object v1, p0, Lch/android/api/ui/ChInvenView;->FILTERED_ITEM_BTNS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    return-void

    .line 232
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 233
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setToSelect(I)V
    .locals 2
    .param p1, "_index"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lch/android/api/ui/ChInvenView;->FILTERED_ITEM_BTNS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/android/api/ui/ChNewItemButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChNewItemButton;->setToSelect()V

    .line 189
    iget v0, p0, Lch/android/api/ui/ChInvenView;->m_selectedBtnIndex:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lch/android/api/ui/ChInvenView;->m_selectedBtnIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lch/android/api/ui/ChInvenView;->FILTERED_ITEM_BTNS:Ljava/util/ArrayList;

    iget v1, p0, Lch/android/api/ui/ChInvenView;->m_selectedBtnIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/android/api/ui/ChNewItemButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChNewItemButton;->setToUnSelect()V

    .line 192
    :cond_0
    iput p1, p0, Lch/android/api/ui/ChInvenView;->m_selectedBtnIndex:I

    .line 194
    return-void
.end method

.method public setToSelect(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 4
    .param p1, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lch/android/api/ui/ChInvenView;->FILTERED_ITEM_INDICES:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 203
    :goto_1
    return-void

    .line 198
    :cond_0
    iget v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    iget-object v2, p0, Lch/android/api/ui/ChInvenView;->FILTERED_ITEM_INDICES:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_1

    .line 199
    invoke-virtual {p0, v0}, Lch/android/api/ui/ChInvenView;->setToSelect(I)V

    goto :goto_1

    .line 197
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setToUnselect(I)V
    .locals 1
    .param p1, "_index"    # I

    .prologue
    .line 206
    iget v0, p0, Lch/android/api/ui/ChInvenView;->m_selectedBtnIndex:I

    if-ne v0, p1, :cond_0

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lch/android/api/ui/ChInvenView;->m_selectedBtnIndex:I

    .line 209
    :cond_0
    iget-object v0, p0, Lch/android/api/ui/ChInvenView;->FILTERED_ITEM_BTNS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/android/api/ui/ChNewItemButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChNewItemButton;->setToUnSelect()V

    .line 210
    return-void
.end method

.method public update()Z
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lch/android/api/ui/ChInvenView;->m_previousFlag:I

    iget v1, p0, Lch/android/api/ui/ChInvenView;->m_previousNumCol:I

    invoke-virtual {p0, v0, v1}, Lch/android/api/ui/ChInvenView;->update(II)Z

    move-result v0

    return v0
.end method

.method public update(II)Z
    .locals 12
    .param p1, "_flag"    # I
    .param p2, "_numCol"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 126
    iget-object v8, p0, Lch/android/api/ui/ChInvenView;->m_items:[Lch/kingdoms/ndk/data/Inven$Item;

    if-eqz v8, :cond_8

    .line 127
    iput p1, p0, Lch/android/api/ui/ChInvenView;->m_previousFlag:I

    .line 128
    iput p2, p0, Lch/android/api/ui/ChInvenView;->m_previousNumCol:I

    .line 129
    const/4 v8, -0x1

    iput v8, p0, Lch/android/api/ui/ChInvenView;->m_selectedBtnIndex:I

    .line 130
    iget-object v8, p0, Lch/android/api/ui/ChInvenView;->FILTERED_ITEM_BTNS:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 131
    iget-object v8, p0, Lch/android/api/ui/ChInvenView;->FILTERED_ITEM_INDICES:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 132
    iput p2, p0, Lch/android/api/ui/ChInvenView;->m_numCol:I

    .line 133
    invoke-direct {p0}, Lch/android/api/ui/ChInvenView;->resetTableLayout()V

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v1, "filteredItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lch/kingdoms/ndk/data/Inven$Item;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v3, "isEquipItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lch/android/api/ui/ChInvenView;->m_items:[Lch/kingdoms/ndk/data/Inven$Item;

    array-length v8, v8

    if-lt v2, v8, :cond_0

    .line 145
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    move v8, v9

    .line 178
    .end local v1    # "filteredItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lch/kingdoms/ndk/data/Inven$Item;>;"
    .end local v2    # "i":I
    .end local v3    # "isEquipItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :goto_1
    return v8

    .line 137
    .restart local v1    # "filteredItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lch/kingdoms/ndk/data/Inven$Item;>;"
    .restart local v2    # "i":I
    .restart local v3    # "isEquipItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_0
    iget-object v8, p0, Lch/android/api/ui/ChInvenView;->m_items:[Lch/kingdoms/ndk/data/Inven$Item;

    aget-object v8, v8, v2

    invoke-direct {p0, p1, v8}, Lch/android/api/ui/ChInvenView;->isCorrectItem(ILch/kingdoms/ndk/data/Inven$Item;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 138
    iget-object v8, p0, Lch/android/api/ui/ChInvenView;->m_items:[Lch/kingdoms/ndk/data/Inven$Item;

    aget-object v8, v8, v2

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-direct {p0, v2}, Lch/android/api/ui/ChInvenView;->isEquipedItem(I)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v8, p0, Lch/android/api/ui/ChInvenView;->FILTERED_ITEM_INDICES:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_2
    const/4 v0, 0x0

    .line 150
    .local v0, "count":I
    const/4 v7, 0x0

    .line 151
    .local v7, "tr":Lch/android/api/ui/ChTableRow;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "size":I
    :goto_2
    if-lt v2, v6, :cond_4

    .line 172
    if-eqz v7, :cond_3

    .line 173
    iget-object v8, p0, Lch/android/api/ui/ChInvenView;->TABLE_LAYOUT:Lch/android/api/ui/ChTableLayout;

    invoke-virtual {v8, v7}, Lch/android/api/ui/ChTableLayout;->addView(Landroid/view/View;)V

    :cond_3
    move v8, v10

    .line 176
    goto :goto_1

    .line 152
    :cond_4
    rem-int v8, v0, p2

    if-nez v8, :cond_6

    .line 153
    if-eqz v7, :cond_5

    .line 154
    iget-object v8, p0, Lch/android/api/ui/ChInvenView;->TABLE_LAYOUT:Lch/android/api/ui/ChTableLayout;

    invoke-virtual {v8, v7}, Lch/android/api/ui/ChTableLayout;->addView(Landroid/view/View;)V

    .line 157
    :cond_5
    new-instance v7, Lch/android/api/ui/ChTableRow;

    .end local v7    # "tr":Lch/android/api/ui/ChTableRow;
    iget-object v8, p0, Lch/android/api/ui/ChInvenView;->CONTEXT:Landroid/content/Context;

    invoke-direct {v7, v8}, Lch/android/api/ui/ChTableRow;-><init>(Landroid/content/Context;)V

    .line 159
    .restart local v7    # "tr":Lch/android/api/ui/ChTableRow;
    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lch/kingdoms/ndk/data/Inven$Item;

    .line 160
    .local v4, "item":Lch/kingdoms/ndk/data/Inven$Item;
    new-instance v5, Lch/android/api/ui/ChNewItemButton;

    iget-object v8, p0, Lch/android/api/ui/ChInvenView;->CONTEXT:Landroid/content/Context;

    invoke-direct {v5, v8}, Lch/android/api/ui/ChNewItemButton;-><init>(Landroid/content/Context;)V

    .line 161
    .local v5, "itemButton":Lch/android/api/ui/ChNewItemButton;
    invoke-virtual {v5, v4}, Lch/android/api/ui/ChNewItemButton;->setItem(Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 162
    invoke-virtual {v5, v0}, Lch/android/api/ui/ChNewItemButton;->setId(I)V

    .line 163
    invoke-virtual {v5, v9}, Lch/android/api/ui/ChNewItemButton;->setInteractiveFromTouch(Z)V

    .line 164
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 165
    invoke-virtual {v5, v10}, Lch/android/api/ui/ChNewItemButton;->setEquip(Z)V

    .line 167
    :cond_7
    iget-object v8, p0, Lch/android/api/ui/ChInvenView;->FILTERED_ITEM_BTNS:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {v7, v5}, Lch/android/api/ui/ChTableRow;->addView(Landroid/view/View;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "count":I
    .end local v1    # "filteredItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lch/kingdoms/ndk/data/Inven$Item;>;"
    .end local v2    # "i":I
    .end local v3    # "isEquipItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v4    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    .end local v5    # "itemButton":Lch/android/api/ui/ChNewItemButton;
    .end local v6    # "size":I
    .end local v7    # "tr":Lch/android/api/ui/ChTableRow;
    :cond_8
    move v8, v9

    .line 178
    goto :goto_1
.end method

.method public update([Lch/kingdoms/ndk/data/Inven$Item;)Z
    .locals 1
    .param p1, "_items"    # [Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 116
    iput-object p1, p0, Lch/android/api/ui/ChInvenView;->m_items:[Lch/kingdoms/ndk/data/Inven$Item;

    .line 117
    invoke-virtual {p0}, Lch/android/api/ui/ChInvenView;->update()Z

    move-result v0

    return v0
.end method

.method public update([S[Lch/kingdoms/ndk/data/Inven$Item;)Z
    .locals 1
    .param p1, "_equipedItemIndices"    # [S
    .param p2, "_items"    # [Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 121
    iput-object p1, p0, Lch/android/api/ui/ChInvenView;->m_equipedItemIndices:[S

    .line 122
    invoke-virtual {p0, p2}, Lch/android/api/ui/ChInvenView;->update([Lch/kingdoms/ndk/data/Inven$Item;)Z

    move-result v0

    return v0
.end method
