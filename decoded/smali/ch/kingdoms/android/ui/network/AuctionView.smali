.class Lch/kingdoms/android/ui/network/AuctionView;
.super Lch/android/api/ui/ChCustomIvenView;
.source "AuctionView.java"

# interfaces
.implements Lch/kingdoms/android/ui/network/ProcessablaResultPacket;


# static fields
.field public static final MAIN_TYPE_ARMOR:I = 0x65

.field public static final MAIN_TYPE_RING:I = 0x66

.field public static final MAIN_TYPE_USE:I = 0x67

.field public static final MAIN_TYPE_WEAPON:I = 0x64

.field private static final NUM_ITEMS_PER_PAGE:I = 0x20

.field public static final SORT_TYPE_CHEAP:I = 0x4

.field public static final SORT_TYPE_EXPENSIVE:I = 0x5

.field public static final SORT_TYPE_RECENTLY:I = 0x3

.field public static final SUB_TYPE_ARMOR:I = 0xd3

.field public static final SUB_TYPE_BOOTS:I = 0xd5

.field public static final SUB_TYPE_BOW:I = 0xca

.field public static final SUB_TYPE_CHAKRAM:I = 0xc9

.field public static final SUB_TYPE_GLOVES:I = 0xd4

.field public static final SUB_TYPE_HELMET:I = 0xd2

.field public static final SUB_TYPE_SWORD:I = 0xc8

.field public static final SUB_TYPE_WAND:I = 0xcb


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final ID_CUR_PAGE:I

.field private final ID_NEXT_BTN:I

.field private final ID_PREVIOUS_BTN:I

.field private final PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

.field private final PHONE_NUMBER:Ljava/lang/String;

.field private final TYPES:[B

.field private final UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

.field private curPage:I

.field final curPageView:Lch/android/api/ui/ChTextView;

.field private final curSortType:I

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lch/kingdoms/ndk/data/Inven$Item;",
            ">;"
        }
    .end annotation
.end field

.field private names:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private times:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lch/android/api/network/ChTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/network/NewNetworkUi;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "ui"    # Lch/kingdoms/android/ui/network/NewNetworkUi;
    .param p4, "packetFac"    # Lch/kingdoms/android/network/ChPacketFactory;
    .param p5, "phoneNumber"    # Ljava/lang/String;
    .param p6, "mainType"    # I
    .param p7, "subType"    # I
    .param p8, "sortType"    # I
    .param p9, "money"    # Ljava/lang/String;

    .prologue
    .line 77
    const/16 v2, 0x20

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v5

    .line 78
    const/4 v7, 0x1

    const v8, 0x7f0200b7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v6, p9

    invoke-direct/range {v2 .. v8}, Lch/android/api/ui/ChCustomIvenView;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Ljava/lang/String;II)V

    .line 48
    const/16 v2, 0xc8

    iput v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->ID_PREVIOUS_BTN:I

    .line 49
    const/16 v2, 0xc9

    iput v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->ID_NEXT_BTN:I

    .line 50
    const/16 v2, 0xca

    iput v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->ID_CUR_PAGE:I

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 81
    .local v9, "context":Landroid/content/Context;
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-direct {p0, v0, v1}, Lch/kingdoms/android/ui/network/AuctionView;->getTypeFlags(II)[B

    move-result-object v2

    iput-object v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->TYPES:[B

    .line 83
    iput-object p1, p0, Lch/kingdoms/android/ui/network/AuctionView;->ACTIVITY:Landroid/app/Activity;

    .line 84
    iput-object p2, p0, Lch/kingdoms/android/ui/network/AuctionView;->DI:Lch/android/api/util/DisplayInfo;

    .line 85
    move-object/from16 v0, p3

    iput-object v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    .line 87
    move-object/from16 v0, p4

    iput-object v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    .line 88
    move-object/from16 v0, p5

    iput-object v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->PHONE_NUMBER:Ljava/lang/String;

    .line 90
    move/from16 v0, p8

    iput v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->curSortType:I

    .line 92
    const/4 v2, 0x0

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 94
    new-instance v11, Lch/android/api/ui/ChTextSlimButton;

    const v2, 0x7f020205

    const v3, 0x7f020204

    const v4, 0x7f05004e

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v9, v2, v3, v4}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 95
    .local v11, "previousBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v2, 0xc8

    invoke-virtual {v11, v2}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 96
    new-instance v10, Lch/android/api/ui/ChTextSlimButton;

    const v2, 0x7f020205

    const v3, 0x7f020204

    const v4, 0x7f05004d

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v9, v2, v3, v4}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 97
    .local v10, "nextBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v2, 0xc9

    invoke-virtual {v10, v2}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 98
    new-instance v2, Lch/android/api/ui/ChTextView;

    invoke-direct {v2, v9}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->curPageView:Lch/android/api/ui/ChTextView;

    .line 99
    iget-object v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->curPageView:Lch/android/api/ui/ChTextView;

    const/16 v3, 0xca

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChTextView;->setId(I)V

    .line 100
    iget-object v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->curPageView:Lch/android/api/ui/ChTextView;

    iget v3, p0, Lch/kingdoms/android/ui/network/AuctionView;->curPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->curPageView:Lch/android/api/ui/ChTextView;

    sget-object v3, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    iget-object v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->curPageView:Lch/android/api/ui/ChTextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 105
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v12, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v12, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x3

    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/AuctionView;->getInvenId()I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 107
    const/16 v2, 0xe

    invoke-virtual {v12, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 108
    iget-object v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v12, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v2, v12, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 109
    iget-object v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x41d80000    # 27.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 110
    iget-object v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->curPageView:Lch/android/api/ui/ChTextView;

    invoke-virtual {p0, v2, v12}, Lch/kingdoms/android/ui/network/AuctionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v12    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v12, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 114
    .restart local v12    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x3

    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/AuctionView;->getInvenId()I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 115
    const/4 v2, 0x0

    const/16 v3, 0xca

    invoke-virtual {v12, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 116
    iget-object v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v12, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v2, v12, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 117
    iget-object v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x41d80000    # 27.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 118
    invoke-virtual {p0, v11, v12}, Lch/kingdoms/android/ui/network/AuctionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v12    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v12, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 122
    .restart local v12    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x3

    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/AuctionView;->getInvenId()I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 123
    const/4 v2, 0x1

    const/16 v3, 0xca

    invoke-virtual {v12, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 124
    iget-object v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v12, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v2, v12, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 125
    iget-object v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x41d80000    # 27.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 126
    invoke-virtual {p0, v10, v12}, Lch/kingdoms/android/ui/network/AuctionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v2, Lch/kingdoms/android/ui/network/AuctionView$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/network/AuctionView$1;-><init>(Lch/kingdoms/android/ui/network/AuctionView;)V

    invoke-virtual {v11, v2}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance v2, Lch/kingdoms/android/ui/network/AuctionView$2;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/network/AuctionView$2;-><init>(Lch/kingdoms/android/ui/network/AuctionView;)V

    invoke-virtual {v10, v2}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->curPage:I

    iget v3, p0, Lch/kingdoms/android/ui/network/AuctionView;->curSortType:I

    invoke-direct {p0, v2, v3}, Lch/kingdoms/android/ui/network/AuctionView;->requestItems(II)V

    .line 145
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/AuctionView;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->curPage:I

    return v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/network/AuctionView;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->curSortType:I

    return v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/network/AuctionView;II)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lch/kingdoms/android/ui/network/AuctionView;->requestItems(II)V

    return-void
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/network/AuctionView;)Lch/kingdoms/android/ui/network/NewNetworkUi;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    return-object v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/network/AuctionView;)Lch/kingdoms/android/network/ChPacketFactory;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    return-object v0
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/network/AuctionView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->PHONE_NUMBER:Ljava/lang/String;

    return-object v0
.end method

.method private getTypeFlags(II)[B
    .locals 6
    .param p1, "mainType"    # I
    .param p2, "subType"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 219
    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 220
    .local v0, "types":[B
    packed-switch p1, :pswitch_data_0

    .line 278
    :goto_0
    return-object v0

    .line 222
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 224
    :pswitch_1
    aput-byte v2, v0, v3

    .line 225
    aput-byte v3, v0, v2

    .line 226
    aput-byte v3, v0, v4

    goto :goto_0

    .line 229
    :pswitch_2
    aput-byte v2, v0, v3

    .line 230
    aput-byte v3, v0, v2

    .line 231
    aput-byte v2, v0, v4

    goto :goto_0

    .line 234
    :pswitch_3
    aput-byte v2, v0, v3

    .line 235
    aput-byte v3, v0, v2

    .line 236
    aput-byte v4, v0, v4

    goto :goto_0

    .line 239
    :pswitch_4
    aput-byte v2, v0, v3

    .line 240
    aput-byte v3, v0, v2

    .line 241
    aput-byte v5, v0, v4

    goto :goto_0

    .line 246
    :pswitch_5
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 248
    :pswitch_6
    aput-byte v2, v0, v3

    .line 249
    aput-byte v2, v0, v2

    .line 250
    aput-byte v3, v0, v4

    goto :goto_0

    .line 253
    :pswitch_7
    aput-byte v2, v0, v3

    .line 254
    aput-byte v2, v0, v2

    .line 255
    aput-byte v2, v0, v4

    goto :goto_0

    .line 258
    :pswitch_8
    aput-byte v2, v0, v3

    .line 259
    aput-byte v2, v0, v2

    .line 260
    aput-byte v4, v0, v4

    goto :goto_0

    .line 263
    :pswitch_9
    aput-byte v2, v0, v3

    .line 264
    aput-byte v2, v0, v2

    .line 265
    aput-byte v5, v0, v4

    goto :goto_0

    .line 270
    :pswitch_a
    aput-byte v2, v0, v3

    .line 271
    aput-byte v5, v0, v2

    goto :goto_0

    .line 274
    :pswitch_b
    aput-byte v3, v0, v3

    goto :goto_0

    .line 219
    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    .line 220
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 222
    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 246
    :pswitch_data_2
    .packed-switch 0xd2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private requestItems(II)V
    .locals 12
    .param p1, "page"    # I
    .param p2, "sortType"    # I

    .prologue
    const/16 v10, 0x20

    .line 148
    if-eqz p1, :cond_0

    if-lez p1, :cond_1

    iget v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->curPage:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->curPage:I

    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Lch/kingdoms/android/ui/network/AuctionView;->getItemCount()I

    move-result v0

    if-ne v0, v10, :cond_1

    .line 149
    :cond_0
    iput p1, p0, Lch/kingdoms/android/ui/network/AuctionView;->curPage:I

    .line 150
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->curPageView:Lch/android/api/ui/ChTextView;

    iget v1, p0, Lch/kingdoms/android/ui/network/AuctionView;->curPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 152
    .local v11, "msg":Landroid/os/Message;
    const/16 v0, 0x4a60

    iput v0, v11, Landroid/os/Message;->what:I

    .line 153
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->PACKET_FAC:Lch/kingdoms/android/network/ChPacketFactory;

    const/4 v1, 0x0

    iget-object v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->PHONE_NUMBER:Ljava/lang/String;

    .line 154
    iget-object v3, p0, Lch/kingdoms/android/ui/network/AuctionView;->TYPES:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    iget-object v4, p0, Lch/kingdoms/android/ui/network/AuctionView;->TYPES:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    iget-object v5, p0, Lch/kingdoms/android/ui/network/AuctionView;->TYPES:[B

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    iget-object v6, p0, Lch/kingdoms/android/ui/network/AuctionView;->TYPES:[B

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    const/4 v7, -0x1

    int-to-byte v8, p2

    mul-int/lit8 v9, p1, 0x20

    .line 153
    invoke-virtual/range {v0 .. v10}, Lch/kingdoms/android/network/ChPacketFactory;->createAuctionSearchByType(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;BBBBBBIB)Lch/kingdoms/android/network/ChPacketFactory$AuctionSearchByType;

    move-result-object v0

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {v0, v11}, Lch/kingdoms/android/ui/network/NewNetworkUi;->sendMessage(Landroid/os/Message;)V

    .line 158
    .end local v11    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getInvenLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 211
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 213
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 215
    return-object v0
.end method

.method protected onBackButtonClick()V
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 204
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpItemManageMenu()V

    .line 206
    :cond_0
    return-void
.end method

.method protected onItemSelect(Landroid/view/View;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 163
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v1, p0, Lch/kingdoms/android/ui/network/AuctionView;->ACTIVITY:Landroid/app/Activity;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lch/kingdoms/android/ui/network/AuctionView;->ACTIVITY:Landroid/app/Activity;

    const v3, 0x7f050096

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->names:Ljava/util/ArrayList;

    iget v3, p2, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    const/16 v2, 0x45

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionView;->times:Ljava/util/ArrayList;

    iget v3, p2, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/android/api/network/ChTime;

    invoke-virtual {v0}, Lch/android/api/network/ChTime;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    const/16 v2, 0x52

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v2, Lch/kingdoms/android/ui/network/AuctionView$3;

    invoke-direct {v2, p0, p2}, Lch/kingdoms/android/ui/network/AuctionView$3;-><init>(Lch/kingdoms/android/ui/network/AuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 164
    invoke-static {v1, v0, v2}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 189
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 191
    :cond_0
    return-void
.end method

.method protected onMoneyClick(Lch/android/api/ui/ChTextView;)V
    .locals 0
    .param p1, "moneyView"    # Lch/android/api/ui/ChTextView;

    .prologue
    .line 197
    return-void
.end method

.method public processResultPacketOnUi(ILch/android/api/network/ChResultPacket;)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 284
    packed-switch p1, :pswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 286
    :pswitch_0
    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 307
    iget-object v4, p0, Lch/kingdoms/android/ui/network/AuctionView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v5

    invoke-virtual {v4, v5}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto :goto_0

    .line 289
    :pswitch_1
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 291
    .local v3, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lch/kingdoms/android/ui/network/AuctionView;->items:Ljava/util/ArrayList;

    .line 292
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lch/kingdoms/android/ui/network/AuctionView;->times:Ljava/util/ArrayList;

    .line 293
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lch/kingdoms/android/ui/network/AuctionView;->names:Ljava/util/ArrayList;

    .line 294
    new-instance v1, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v1}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    .line 295
    .local v1, "inven":Lch/kingdoms/ndk/data/Inven;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_0

    .line 304
    const/4 v5, 0x0

    iget-object v4, p0, Lch/kingdoms/android/ui/network/AuctionView;->items:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-array v6, v6, [Lch/kingdoms/ndk/data/Inven$Item;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lch/kingdoms/ndk/data/Inven$Item;

    invoke-virtual {p0, v5, v4}, Lch/kingdoms/android/ui/network/AuctionView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {p2, v0}, Lch/android/api/network/ChResultPacket;->getItemData(I)Lch/android/api/network/ChNetworkItemData;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lch/kingdoms/ndk/data/Inven;->getItem(Lch/android/api/network/ChNetworkItemData;I)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    .line 298
    .local v2, "item":Lch/kingdoms/ndk/data/Inven$Item;
    iget-object v4, p0, Lch/kingdoms/android/ui/network/AuctionView;->names:Ljava/util/ArrayList;

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p2, v5}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p2, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lch/kingdoms/ndk/data/Inven$Item;->dbIndex:I

    .line 300
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {p2, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lch/kingdoms/ndk/data/Inven$Item;->buyPrice:I

    .line 301
    iget-object v4, p0, Lch/kingdoms/android/ui/network/AuctionView;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v4, p0, Lch/kingdoms/android/ui/network/AuctionView;->times:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lch/android/api/network/ChResultPacket;->getTime(I)Lch/android/api/network/ChTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 312
    .end local v0    # "i":I
    .end local v1    # "inven":Lch/kingdoms/ndk/data/Inven;
    .end local v2    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    .end local v3    # "size":I
    :pswitch_2
    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    .line 318
    iget-object v4, p0, Lch/kingdoms/android/ui/network/AuctionView;->UI:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-virtual {p2}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v5

    invoke-virtual {v4, v5}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    goto/16 :goto_0

    .line 314
    :pswitch_3
    iget-object v4, p0, Lch/kingdoms/android/ui/network/AuctionView;->ACTIVITY:Landroid/app/Activity;

    const/16 v5, 0x55

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 315
    iget v4, p0, Lch/kingdoms/android/ui/network/AuctionView;->curPage:I

    iget v5, p0, Lch/kingdoms/android/ui/network/AuctionView;->curSortType:I

    invoke-direct {p0, v4, v5}, Lch/kingdoms/android/ui/network/AuctionView;->requestItems(II)V

    goto/16 :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x4a60
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 286
    :pswitch_data_1
    .packed-switch 0x2710
        :pswitch_1
    .end packed-switch

    .line 312
    :pswitch_data_2
    .packed-switch 0x2710
        :pswitch_3
    .end packed-switch
.end method
