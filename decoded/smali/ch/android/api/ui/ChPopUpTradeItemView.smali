.class public Lch/android/api/ui/ChPopUpTradeItemView;
.super Lch/android/api/ui/ChPopUpView;
.source "ChPopUpTradeItemView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field public static final TYPE_BRANDSHOP:I = 0xf

.field public static final TYPE_BUY:I = 0xa

.field public static final TYPE_DEPOSIT:I = 0xc

.field public static final TYPE_MONEY:I = 0xe

.field public static final TYPE_POINT:I = 0x10

.field public static final TYPE_SELL:I = 0xb

.field public static final TYPE_WITHDRAW:I = 0xd


# instance fields
.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final ID_EDIT:I

.field private final INVEN_ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

.field private final ITEM:Lch/kingdoms/ndk/data/Inven$Item;

.field private final MONEY:I

.field private final TYPE:I

.field private cancelBtn:Lch/android/api/ui/ChImageButton;

.field private moneyView:Lch/android/api/ui/ChImageTextView;

.field private okBtn:Lch/android/api/ui/ChImageButton;

.field private quantityEdit:Landroid/widget/EditText;

.field private txtView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "_money"    # I
    .param p4, "_type"    # I
    .param p5, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;
    .param p6, "_invenItems"    # [Lch/kingdoms/ndk/data/Inven$Item;
    .param p7, "_bgBmpId"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p7, v0}, Lch/android/api/ui/ChPopUpView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZ)V

    .line 26
    const/16 v0, 0x2710

    iput v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->ID_EDIT:I

    .line 44
    iput-object p2, p0, Lch/android/api/ui/ChPopUpTradeItemView;->DI:Lch/android/api/util/DisplayInfo;

    .line 45
    iput p4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    .line 46
    iput p3, p0, Lch/android/api/ui/ChPopUpTradeItemView;->MONEY:I

    .line 47
    iput-object p5, p0, Lch/android/api/ui/ChPopUpTradeItemView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    .line 48
    iput-object p6, p0, Lch/android/api/ui/ChPopUpTradeItemView;->INVEN_ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

    .line 50
    const/16 v0, 0xe

    if-ne p4, v0, :cond_2

    .line 51
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->txtView:Landroid/widget/TextView;

    const/16 v1, 0x65

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :goto_0
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->txtView:Landroid/widget/TextView;

    iget-object v1, p0, Lch/android/api/ui/ChPopUpTradeItemView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lch/android/api/ui/ChPopUpTradeItemView;->DI:Lch/android/api/util/DisplayInfo;

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 59
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->quantityEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lch/android/api/ui/ChPopUpTradeItemView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setWidth(I)V

    .line 64
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->okBtn:Lch/android/api/ui/ChImageButton;

    iget-object v1, p0, Lch/android/api/ui/ChPopUpTradeItemView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->DI:Lch/android/api/util/DisplayInfo;

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v5, 0x41b00000    # 22.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lch/android/api/ui/ChImageButton;->setPadding(IIII)V

    .line 65
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->cancelBtn:Lch/android/api/ui/ChImageButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lch/android/api/ui/ChPopUpTradeItemView;->DI:Lch/android/api/util/DisplayInfo;

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x41c80000    # 25.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->DI:Lch/android/api/util/DisplayInfo;

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v5, 0x41b00000    # 22.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lch/android/api/ui/ChImageButton;->setPadding(IIII)V

    .line 67
    iget v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_1
    const/16 v0, 0x10

    if-eq p4, v0, :cond_0

    const/16 v0, 0xe

    if-ne p4, v0, :cond_4

    .line 92
    :cond_0
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->quantityEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_2
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->quantityEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 99
    :cond_1
    return-void

    .line 52
    :cond_2
    const/16 v0, 0x10

    if-ne p4, v0, :cond_3

    .line 53
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->txtView:Landroid/widget/TextView;

    const/16 v1, 0xf2

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 55
    :cond_3
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->txtView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpTradeItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/android/api/ui/ChPopUpTradeItemView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    iget-object v2, v2, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 69
    :pswitch_0
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->moneyView:Lch/android/api/ui/ChImageTextView;

    iget-object v1, p0, Lch/android/api/ui/ChPopUpTradeItemView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->buyPrice:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageTextView;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :pswitch_1
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->moneyView:Lch/android/api/ui/ChImageTextView;

    iget-object v1, p0, Lch/android/api/ui/ChPopUpTradeItemView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->sellPrice:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageTextView;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :pswitch_2
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->moneyView:Lch/android/api/ui/ChImageTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageTextView;->setVisibility(I)V

    goto :goto_1

    .line 79
    :pswitch_3
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->moneyView:Lch/android/api/ui/ChImageTextView;

    iget v1, p0, Lch/android/api/ui/ChPopUpTradeItemView;->MONEY:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageTextView;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 82
    :pswitch_4
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->moneyView:Lch/android/api/ui/ChImageTextView;

    iget-object v1, p0, Lch/android/api/ui/ChPopUpTradeItemView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->cashBuyPrice:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageTextView;->setText(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->moneyView:Lch/android/api/ui/ChImageTextView;

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageTextView;->setIcon(I)V

    goto/16 :goto_1

    .line 86
    :pswitch_5
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->moneyView:Lch/android/api/ui/ChImageTextView;

    iget v1, p0, Lch/android/api/ui/ChPopUpTradeItemView;->MONEY:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageTextView;->setText(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->moneyView:Lch/android/api/ui/ChImageTextView;

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageTextView;->setIcon(I)V

    goto/16 :goto_1

    .line 94
    :cond_4
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->quantityEdit:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private checkQuantity()I
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/4 v3, 0x1

    const/16 v8, 0xa

    const/16 v7, 0x10

    const/16 v6, 0xe

    .line 249
    iget-object v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->quantityEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "txt":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v3, :cond_7

    .line 251
    iget v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    if-eq v4, v6, :cond_6

    iget v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    if-eq v4, v7, :cond_6

    .line 252
    const-string v2, "1"

    .line 260
    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 261
    .local v1, "quantity":I
    const v4, 0x5f5dd18

    if-le v1, v4, :cond_1

    .line 262
    const v1, 0x5f5dd18

    .line 264
    :cond_1
    iget v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    if-ne v4, v8, :cond_8

    .line 265
    iget v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->MONEY:I

    iget-object v5, p0, Lch/android/api/ui/ChPopUpTradeItemView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    iget v5, v5, Lch/kingdoms/ndk/data/Inven$Item;->buyPrice:I

    mul-int/2addr v5, v1

    if-ge v4, v5, :cond_2

    iget v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->MONEY:I

    iget-object v5, p0, Lch/android/api/ui/ChPopUpTradeItemView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    iget v5, v5, Lch/kingdoms/ndk/data/Inven$Item;->buyPrice:I

    div-int v1, v4, v5

    .line 266
    :cond_2
    invoke-direct {p0}, Lch/android/api/ui/ChPopUpTradeItemView;->getInvenItemCount()I

    move-result v0

    .line 267
    .local v0, "countInInven":I
    add-int v4, v1, v0

    const/16 v5, 0x63

    if-le v4, v5, :cond_3

    rsub-int/lit8 v1, v0, 0x63

    .line 278
    .end local v0    # "countInInven":I
    :cond_3
    :goto_1
    iget v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    if-eq v4, v6, :cond_12

    iget v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    if-eq v4, v7, :cond_12

    .line 279
    if-lez v1, :cond_11

    .line 280
    :goto_2
    iget-object v3, p0, Lch/android/api/ui/ChPopUpTradeItemView;->quantityEdit:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_3
    iget v3, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    if-eq v3, v8, :cond_4

    iget v3, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    if-ne v3, v9, :cond_14

    .line 286
    :cond_4
    iget-object v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->moneyView:Lch/android/api/ui/ChImageTextView;

    iget v3, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    if-ne v3, v8, :cond_13

    iget-object v3, p0, Lch/android/api/ui/ChPopUpTradeItemView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->buyPrice:I

    :goto_4
    mul-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lch/android/api/ui/ChImageTextView;->setText(Ljava/lang/String;)V

    .line 292
    :cond_5
    :goto_5
    return v1

    .line 254
    .end local v1    # "quantity":I
    :cond_6
    const-string v2, "0"

    goto :goto_0

    .line 256
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_0

    .line 258
    const-string v2, "99999000"

    goto :goto_0

    .line 268
    .restart local v1    # "quantity":I
    :cond_8
    iget v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    if-eq v4, v9, :cond_9

    iget v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    const/16 v5, 0xc

    if-eq v4, v5, :cond_9

    iget v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_b

    .line 269
    :cond_9
    iget-object v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    iget v4, v4, Lch/kingdoms/ndk/data/Inven$Item;->count:I

    if-le v1, v4, :cond_a

    iget-object v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    iget v1, v4, Lch/kingdoms/ndk/data/Inven$Item;->count:I

    :cond_a
    goto :goto_1

    .line 270
    :cond_b
    iget v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    if-eq v4, v6, :cond_c

    iget v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    if-ne v4, v7, :cond_e

    .line 271
    :cond_c
    iget v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->MONEY:I

    if-ge v4, v1, :cond_d

    iget v1, p0, Lch/android/api/ui/ChPopUpTradeItemView;->MONEY:I

    :cond_d
    goto :goto_1

    .line 272
    :cond_e
    iget v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_3

    .line 273
    iget v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->MONEY:I

    iget-object v5, p0, Lch/android/api/ui/ChPopUpTradeItemView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    iget v5, v5, Lch/kingdoms/ndk/data/Inven$Item;->cashBuyPrice:I

    mul-int/2addr v5, v1

    if-ge v4, v5, :cond_f

    iget v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->MONEY:I

    iget-object v5, p0, Lch/android/api/ui/ChPopUpTradeItemView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    iget v5, v5, Lch/kingdoms/ndk/data/Inven$Item;->cashBuyPrice:I

    div-int v1, v4, v5

    .line 274
    :cond_f
    invoke-direct {p0}, Lch/android/api/ui/ChPopUpTradeItemView;->getInvenItemCount()I

    move-result v0

    .line 275
    .restart local v0    # "countInInven":I
    add-int v4, v1, v0

    const/16 v5, 0x63

    if-le v4, v5, :cond_10

    rsub-int/lit8 v1, v0, 0x63

    :cond_10
    goto/16 :goto_1

    .end local v0    # "countInInven":I
    :cond_11
    move v1, v3

    .line 279
    goto/16 :goto_2

    .line 282
    :cond_12
    iget-object v3, p0, Lch/android/api/ui/ChPopUpTradeItemView;->quantityEdit:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 286
    :cond_13
    iget-object v3, p0, Lch/android/api/ui/ChPopUpTradeItemView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->sellPrice:I

    goto :goto_4

    .line 287
    :cond_14
    iget v3, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_15

    .line 288
    iget-object v3, p0, Lch/android/api/ui/ChPopUpTradeItemView;->moneyView:Lch/android/api/ui/ChImageTextView;

    iget-object v4, p0, Lch/android/api/ui/ChPopUpTradeItemView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    iget v4, v4, Lch/kingdoms/ndk/data/Inven$Item;->cashBuyPrice:I

    mul-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChImageTextView;->setText(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 289
    :cond_15
    iget v3, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    if-ne v3, v6, :cond_16

    iget v3, p0, Lch/android/api/ui/ChPopUpTradeItemView;->TYPE:I

    if-eq v3, v7, :cond_5

    .line 290
    :cond_16
    iget-object v3, p0, Lch/android/api/ui/ChPopUpTradeItemView;->moneyView:Lch/android/api/ui/ChImageTextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChImageTextView;->setText(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method private getInvenItemCount()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v2, p0, Lch/android/api/ui/ChPopUpTradeItemView;->INVEN_ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

    if-eqz v2, :cond_0

    .line 235
    iget-object v3, p0, Lch/android/api/ui/ChPopUpTradeItemView;->INVEN_ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_1

    .line 241
    :cond_0
    :goto_1
    return v1

    .line 235
    :cond_1
    aget-object v0, v3, v2

    .line 236
    .local v0, "item":Lch/kingdoms/ndk/data/Inven$Item;
    iget-object v5, p0, Lch/android/api/ui/ChPopUpTradeItemView;->ITEM:Lch/kingdoms/ndk/data/Inven$Item;

    iget v5, v5, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    iget v6, v0, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    if-ne v5, v6, :cond_2

    .line 237
    iget v1, v0, Lch/kingdoms/ndk/data/Inven$Item;->count:I

    goto :goto_1

    .line 235
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getBtnsLayout(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .param p1, "_txtViewId"    # I

    .prologue
    .line 170
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpTradeItemView;->getBgHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 171
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    return-object v0
.end method

.method protected getBtnsView(Landroid/content/Context;F)Landroid/view/View;
    .locals 11
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_density"    # F

    .prologue
    .line 111
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lch/android/api/ui/ChPopUpTradeItemView;->txtView:Landroid/widget/TextView;

    .line 113
    new-instance v8, Landroid/widget/EditText;

    invoke-direct {v8, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lch/android/api/ui/ChPopUpTradeItemView;->quantityEdit:Landroid/widget/EditText;

    .line 114
    iget-object v8, p0, Lch/android/api/ui/ChPopUpTradeItemView;->quantityEdit:Landroid/widget/EditText;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 115
    iget-object v8, p0, Lch/android/api/ui/ChPopUpTradeItemView;->quantityEdit:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 116
    iget-object v8, p0, Lch/android/api/ui/ChPopUpTradeItemView;->quantityEdit:Landroid/widget/EditText;

    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setId(I)V

    .line 118
    new-instance v8, Lch/android/api/ui/ChImageTextView;

    const v9, 0x7f02020b

    const-string v10, ""

    invoke-direct {v8, p1, v9, v10}, Lch/android/api/ui/ChImageTextView;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v8, p0, Lch/android/api/ui/ChPopUpTradeItemView;->moneyView:Lch/android/api/ui/ChImageTextView;

    .line 121
    new-instance v8, Lch/android/api/ui/ChImageButton;

    const v9, 0x7f020235

    const v10, 0x7f020234

    invoke-direct {v8, p1, v9, v10}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    iput-object v8, p0, Lch/android/api/ui/ChPopUpTradeItemView;->okBtn:Lch/android/api/ui/ChImageButton;

    .line 122
    iget-object v8, p0, Lch/android/api/ui/ChPopUpTradeItemView;->okBtn:Lch/android/api/ui/ChImageButton;

    const/16 v9, 0x2742

    invoke-virtual {v8, v9}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 123
    new-instance v8, Lch/android/api/ui/ChImageButton;

    const v9, 0x7f02006b

    const v10, 0x7f02006a

    invoke-direct {v8, p1, v9, v10}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    iput-object v8, p0, Lch/android/api/ui/ChPopUpTradeItemView;->cancelBtn:Lch/android/api/ui/ChImageButton;

    .line 124
    iget-object v8, p0, Lch/android/api/ui/ChPopUpTradeItemView;->cancelBtn:Lch/android/api/ui/ChImageButton;

    const/16 v9, 0x2743

    invoke-virtual {v8, v9}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 126
    const/high16 v8, 0x422c0000    # 43.0f

    mul-float/2addr v8, p2

    float-to-int v7, v8

    .line 127
    .local v7, "topMargin":I
    const/high16 v8, 0x41c80000    # 25.0f

    mul-float/2addr v8, p2

    float-to-int v0, v8

    .line 128
    .local v0, "bottomMargin":I
    new-instance v1, Lch/android/api/ui/ChRelativeLayout;

    invoke-direct {v1, p1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 130
    .local v1, "layout":Lch/android/api/ui/ChRelativeLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 131
    .local v2, "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0x9

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 132
    const/16 v8, 0xa

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 134
    iget-object v8, p0, Lch/android/api/ui/ChPopUpTradeItemView;->txtView:Landroid/widget/TextView;

    invoke-virtual {v1, v8, v2}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v3, "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xb

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 138
    const/16 v8, 0xa

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 139
    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 140
    const/high16 v8, 0x41c80000    # 25.0f

    mul-float/2addr v8, p2

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 141
    iget-object v8, p0, Lch/android/api/ui/ChPopUpTradeItemView;->quantityEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v8, v3}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v4, "rlp3":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xb

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    const/4 v8, 0x3

    const/16 v9, 0x2710

    invoke-virtual {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 146
    const/high16 v8, 0x42960000    # 75.0f

    mul-float/2addr v8, p2

    float-to-int v8, v8

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 148
    iget-object v8, p0, Lch/android/api/ui/ChPopUpTradeItemView;->moneyView:Lch/android/api/ui/ChImageTextView;

    invoke-virtual {v1, v8, v4}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v5, "rlp4":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0x9

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 152
    const/16 v8, 0xc

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    const/high16 v8, 0x41c80000    # 25.0f

    mul-float/2addr v8, p2

    float-to-int v8, v8

    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 154
    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 155
    iget-object v8, p0, Lch/android/api/ui/ChPopUpTradeItemView;->okBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v1, v8, v5}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v6, "rlp5":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xb

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    const/16 v8, 0xc

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    const/high16 v8, 0x41c80000    # 25.0f

    mul-float/2addr v8, p2

    float-to-int v8, v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 161
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 162
    iget-object v8, p0, Lch/android/api/ui/ChPopUpTradeItemView;->cancelBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v1, v8, v6}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    return-object v1
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Lch/android/api/ui/ChPopUpTradeItemView;->checkQuantity()I

    move-result v0

    return v0
.end method

.method protected isNeedScroll()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 194
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 228
    invoke-direct {p0}, Lch/android/api/ui/ChPopUpTradeItemView;->checkQuantity()I

    .line 230
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 104
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->okBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lch/android/api/ui/ChPopUpTradeItemView;->cancelBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method
