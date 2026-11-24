.class Lch/kingdoms/android/ui/StoreUi$StoreView;
.super Lch/android/api/ui/ChRelativeLayout;
.source "StoreUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/StoreUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreView"
.end annotation


# instance fields
.field private final INFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

.field private final INVEN_VIEW:Lch/android/api/ui/ChInvenView;

.field private final IS_BUY:Z

.field private final MONEY_VIEW:Lch/android/api/ui/ChTextView;

.field private final TITLE_VIEW:Lch/android/api/ui/ChTextView;

.field private selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

.field final synthetic this$0:Lch/kingdoms/android/ui/StoreUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/StoreUi;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 11
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "_title"    # Ljava/lang/String;
    .param p4, "_isBuy"    # Z

    .prologue
    .line 214
    iput-object p1, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->this$0:Lch/kingdoms/android/ui/StoreUi;

    .line 215
    invoke-direct {p0, p2}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 217
    iput-boolean p4, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->IS_BUY:Z

    .line 218
    const v6, 0x7f0202bb

    invoke-super {p0, v6}, Lch/android/api/ui/ChRelativeLayout;->setBackgroundResource(I)V

    .line 220
    new-instance v4, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v4, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 221
    .local v4, "mainLayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 222
    new-instance v6, Lch/android/api/ui/ChTextView;

    invoke-direct {v6, p2}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->TITLE_VIEW:Lch/android/api/ui/ChTextView;

    .line 223
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->TITLE_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v6, p3}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->TITLE_VIEW:Lch/android/api/ui/ChTextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 225
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->TITLE_VIEW:Lch/android/api/ui/ChTextView;

    const v7, 0x7f0202bd

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChTextView;->setBackgroundResource(I)V

    .line 226
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->TITLE_VIEW:Lch/android/api/ui/ChTextView;

    sget-object v7, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 227
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->TITLE_VIEW:Lch/android/api/ui/ChTextView;

    const/16 v7, -0x100

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 228
    if-eqz p4, :cond_0

    .line 229
    new-instance v6, Lch/android/api/ui/ChInvenView;

    const/4 v7, 0x0

    invoke-static {p1}, Lch/kingdoms/android/ui/StoreUi;->access$0(Lch/kingdoms/android/ui/StoreUi;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v8

    invoke-static {p1}, Lch/kingdoms/android/ui/StoreUi;->access$1(Lch/kingdoms/android/ui/StoreUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v9

    iget v9, v9, Lch/android/api/util/DisplayInfo;->density:F

    invoke-direct {v6, p2, v7, v8, v9}, Lch/android/api/ui/ChInvenView;-><init>(Landroid/content/Context;[S[Lch/kingdoms/ndk/data/Inven$Item;F)V

    iput-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    .line 234
    :goto_0
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {p1}, Lch/kingdoms/android/ui/StoreUi;->access$1(Lch/kingdoms/android/ui/StoreUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v8

    iget v8, v8, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {p1}, Lch/kingdoms/android/ui/StoreUi;->access$1(Lch/kingdoms/android/ui/StoreUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v9

    iget v9, v9, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {p1}, Lch/kingdoms/android/ui/StoreUi;->access$1(Lch/kingdoms/android/ui/StoreUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v10

    iget v10, v10, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lch/android/api/ui/ChInvenView;->setPadding(IIII)V

    .line 235
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v6}, Lch/android/api/ui/ChInvenView;->update()Z

    .line 236
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v6, p0}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    new-instance v6, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v6, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    .line 238
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    const v7, 0x7f0200a5

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 239
    new-instance v6, Lch/android/api/ui/ChTextView;

    invoke-direct {v6, p2}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    .line 240
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    invoke-static {p1}, Lch/kingdoms/android/ui/StoreUi;->access$3(Lch/kingdoms/android/ui/StoreUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v7

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 242
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    const v7, 0x7f02020a

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChTextView;->setBackgroundResource(I)V

    .line 243
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    invoke-static {}, Lch/android/api/util/TextPaints;->getSmallSize()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChTextView;->setTextSize(F)V

    .line 244
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    sget-object v7, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 245
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 247
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->TITLE_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v4, v6}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 248
    new-instance v2, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v2, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 249
    .local v2, "ll":Lch/android/api/ui/ChLinearLayout;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 250
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v8, 0x432c0000    # 172.0f

    invoke-static {p1}, Lch/kingdoms/android/ui/StoreUi;->access$1(Lch/kingdoms/android/ui/StoreUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v9

    iget v9, v9, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x43140000    # 148.0f

    invoke-static {p1}, Lch/kingdoms/android/ui/StoreUi;->access$1(Lch/kingdoms/android/ui/StoreUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v10

    iget v10, v10, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v7}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {v2, v6}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 252
    invoke-virtual {v4, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 253
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 254
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x1

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 255
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v4, v6, v3}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 258
    .local v5, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 260
    invoke-virtual {p0, v4, v5}, Lch/kingdoms/android/ui/StoreUi$StoreView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    new-instance v0, Lch/android/api/ui/ChBackButton;

    invoke-direct {v0, p2}, Lch/android/api/ui/ChBackButton;-><init>(Landroid/content/Context;)V

    .line 264
    .local v0, "closeBtn":Lch/android/api/ui/ChBackButton;
    const/16 v6, 0x2744

    invoke-virtual {v0, v6}, Lch/android/api/ui/ChBackButton;->setId(I)V

    .line 265
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 266
    .restart local v5    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 267
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 269
    invoke-virtual {v0, p1}, Lch/android/api/ui/ChBackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    invoke-virtual {p0, v0, v5}, Lch/kingdoms/android/ui/StoreUi$StoreView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 274
    .local v1, "handler":Landroid/os/Handler;
    new-instance v6, Lch/kingdoms/android/ui/StoreUi$StoreView$1;

    invoke-direct {v6, p0, v0}, Lch/kingdoms/android/ui/StoreUi$StoreView$1;-><init>(Lch/kingdoms/android/ui/StoreUi$StoreView;Lch/android/api/ui/ChBackButton;)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    return-void

    .line 231
    .end local v0    # "closeBtn":Lch/android/api/ui/ChBackButton;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "ll":Lch/android/api/ui/ChLinearLayout;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v6, Lch/android/api/ui/ChInvenView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetEquipItems()[S

    move-result-object v7

    invoke-static {p1}, Lch/kingdoms/android/ui/StoreUi;->access$2(Lch/kingdoms/android/ui/StoreUi;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v8

    invoke-static {p1}, Lch/kingdoms/android/ui/StoreUi;->access$1(Lch/kingdoms/android/ui/StoreUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v9

    iget v9, v9, Lch/android/api/util/DisplayInfo;->density:F

    invoke-direct {v6, p2, v7, v8, v9}, Lch/android/api/ui/ChInvenView;-><init>(Landroid/content/Context;[S[Lch/kingdoms/ndk/data/Inven$Item;F)V

    iput-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    .line 232
    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    const v7, -0xfffffbf

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Lch/android/api/ui/ChInvenView;->update(II)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public getSelectedItem()Lch/kingdoms/ndk/data/Inven$Item;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    .line 295
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v2

    if-nez v2, :cond_1

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 297
    .local v0, "index":I
    iget-object v2, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v2, v0}, Lch/android/api/ui/ChInvenView;->getFilteredItem(I)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    iput-object v2, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 298
    iget-object v2, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    if-eqz v2, :cond_1

    .line 299
    new-instance v1, Lch/android/api/ui/ChItemInfoView;

    invoke-virtual {p0}, Lch/kingdoms/android/ui/StoreUi$StoreView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 300
    iget-boolean v2, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->IS_BUY:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 299
    :goto_0
    invoke-direct {v1, v3, v4, v2}, Lch/android/api/ui/ChItemInfoView;-><init>(Landroid/content/Context;Lch/kingdoms/ndk/data/Inven$Item;I)V

    .line 301
    .local v1, "itemInfoView":Lch/android/api/ui/ChItemInfoView;
    iget-object v2, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->this$0:Lch/kingdoms/android/ui/StoreUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/StoreUi;->access$1(Lch/kingdoms/android/ui/StoreUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget-object v3, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->this$0:Lch/kingdoms/android/ui/StoreUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/StoreUi;->access$1(Lch/kingdoms/android/ui/StoreUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/high16 v4, 0x41700000    # 15.0f

    iget-object v5, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->this$0:Lch/kingdoms/android/ui/StoreUi;

    invoke-static {v5}, Lch/kingdoms/android/ui/StoreUi;->access$1(Lch/kingdoms/android/ui/StoreUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v5

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4, v6}, Lch/android/api/ui/ChItemInfoView;->setPadding(IIII)V

    .line 302
    iget-object v2, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->this$0:Lch/kingdoms/android/ui/StoreUi;

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChItemInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v2, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {v2}, Lch/android/api/ui/ChLinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 304
    iget-object v2, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    iget-object v3, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {v3, v6}, Lch/android/api/ui/ChLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChLinearLayout;->removeView(Landroid/view/View;)V

    .line 306
    :cond_0
    iget-object v2, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x43700000    # 240.0f

    iget-object v5, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->this$0:Lch/kingdoms/android/ui/StoreUi;

    invoke-static {v5}, Lch/kingdoms/android/ui/StoreUi;->access$1(Lch/kingdoms/android/ui/StoreUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v5

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x43140000    # 148.0f

    iget-object v6, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->this$0:Lch/kingdoms/android/ui/StoreUi;

    invoke-static {v6}, Lch/kingdoms/android/ui/StoreUi;->access$1(Lch/kingdoms/android/ui/StoreUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    .end local v0    # "index":I
    .end local v1    # "itemInfoView":Lch/android/api/ui/ChItemInfoView;
    :cond_1
    return-void

    .line 300
    .restart local v0    # "index":I
    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v2, 0x7f0202bb

    .line 287
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChRelativeLayout;->onMeasure(II)V

    .line 288
    invoke-virtual {p0}, Lch/kingdoms/android/ui/StoreUi$StoreView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    .line 289
    invoke-virtual {p0}, Lch/kingdoms/android/ui/StoreUi$StoreView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    .line 288
    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChRelativeLayout;->setMeasuredDimension(II)V

    .line 290
    return-void
.end method

.method public refreshInven()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->this$0:Lch/kingdoms/android/ui/StoreUi;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/StoreUi;->access$4(Lch/kingdoms/android/ui/StoreUi;[Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 327
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetEquipItems()[S

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->this$0:Lch/kingdoms/android/ui/StoreUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/StoreUi;->access$2(Lch/kingdoms/android/ui/StoreUi;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChInvenView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)Z

    .line 329
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v0, p0}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {v0}, Lch/android/api/ui/ChLinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 331
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    iget-object v1, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->INFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChLinearLayout;->removeView(Landroid/view/View;)V

    .line 333
    :cond_0
    return-void
.end method

.method public refreshMoney()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->MONEY_VIEW:Lch/android/api/ui/ChTextView;

    iget-object v1, p0, Lch/kingdoms/android/ui/StoreUi$StoreView;->this$0:Lch/kingdoms/android/ui/StoreUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/StoreUi;->access$3(Lch/kingdoms/android/ui/StoreUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    return-void
.end method

.method public releaseRsources()V
    .locals 0

    .prologue
    .line 314
    invoke-super {p0}, Lch/android/api/ui/ChRelativeLayout;->releaseRsources()V

    .line 315
    return-void
.end method
