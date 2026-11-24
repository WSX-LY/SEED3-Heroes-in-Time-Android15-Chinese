.class Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;
.super Ljava/lang/Object;
.source "BrandShopUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;-><init>(Lch/kingdoms/android/ui/BrandShopUi;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isPopUped:Z

.field final synthetic this$1:Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;->this$1:Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;->isPopUped:Z

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;Z)V
    .locals 0

    .prologue
    .line 259
    iput-boolean p1, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;->isPopUped:Z

    return-void
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;)Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;->this$1:Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v13, 0x1

    .line 263
    iget-boolean v0, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;->isPopUped:Z

    if-eqz v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    .line 267
    .local v10, "id":I
    iget-object v0, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;->this$1:Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;

    invoke-static {v0}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->access$0(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;)Lch/android/api/ui/ChInvenAndInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/ui/ChInvenAndInfoView;->getSelectedItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v4

    .line 272
    .local v4, "selectedItem":Lch/kingdoms/ndk/data/Inven$Item;
    const/16 v0, 0x2751

    if-ne v10, v0, :cond_0

    .line 273
    const/4 v7, 0x1

    .line 274
    .local v7, "count":I
    iget v11, v4, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    .line 275
    .local v11, "itemNum":I
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v8

    .line 276
    .local v8, "dba":Lch/kingdoms/android/db/DBAdapter;
    iget v0, v4, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x10b

    if-ne v0, v1, :cond_2

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->isPurcahsableBag()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 277
    :cond_2
    iget v0, v4, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x113

    if-ne v0, v1, :cond_3

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getCurrentSaveSlotIndex()I

    move-result v0

    invoke-virtual {v8, v0}, Lch/kingdoms/android/db/DBAdapter;->isPurchaseAutoRouting(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 278
    iget v0, v4, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->isItemExist(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 279
    :cond_3
    iget v0, v4, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x115

    if-eq v0, v1, :cond_4

    iget v0, v4, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v1, 0x114

    if-ne v0, v1, :cond_6

    :cond_4
    iget v0, v4, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->isItemExist(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 280
    :cond_5
    invoke-static {}, Lch/kingdoms/android/ui/BrandShopUi;->access$1()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x11b

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$1;-><init>(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 292
    iput-boolean v13, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;->isPopUped:Z

    goto :goto_0

    .line 295
    :cond_6
    invoke-static {v11, v7}, Lch/kingdoms/ndk/NdkUiEventManager;->isBuyableBrandItem(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 296
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v9

    .line 297
    .local v9, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v9}, Lch/kingdoms/ndk/data/HeroStatus;->getCashPoints()I

    move-result v0

    iget v1, v4, Lch/kingdoms/ndk/data/Inven$Item;->cashBuyPrice:I

    if-lt v0, v1, :cond_0

    .line 298
    invoke-static {}, Lch/kingdoms/android/ui/BrandShopUi;->access$1()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;->this$1:Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;

    invoke-static {v1}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->access$2(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;)Lch/kingdoms/android/ui/BrandShopUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/BrandShopUi;->access$0(Lch/kingdoms/android/ui/BrandShopUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    invoke-virtual {v9}, Lch/kingdoms/ndk/data/HeroStatus;->getCashPoints()I

    move-result v2

    const/16 v3, 0xf

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v12

    .line 299
    .local v12, "tradeItemView":Lch/android/api/ui/ChPopUpTradeItemView;
    new-instance v0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$2;

    invoke-direct {v0, p0, v12, v4}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$2;-><init>(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;Lch/android/api/ui/ChPopUpTradeItemView;Lch/kingdoms/ndk/data/Inven$Item;)V

    invoke-virtual {v12, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iput-boolean v13, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;->isPopUped:Z

    goto/16 :goto_0

    .line 327
    .end local v9    # "hero":Lch/kingdoms/ndk/data/HeroStatus;
    .end local v12    # "tradeItemView":Lch/android/api/ui/ChPopUpTradeItemView;
    :cond_7
    invoke-static {v11}, Lch/kingdoms/ndk/NdkUiEventManager;->isItemExist(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 328
    invoke-static {}, Lch/kingdoms/android/ui/BrandShopUi;->access$1()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x53

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$3;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$3;-><init>(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 340
    iput-boolean v13, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;->isPopUped:Z

    goto/16 :goto_0

    .line 342
    :cond_8
    invoke-static {}, Lch/kingdoms/android/ui/BrandShopUi;->access$1()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f050048

    new-instance v2, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$4;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$4;-><init>(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 354
    iput-boolean v13, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;->isPopUped:Z

    goto/16 :goto_0
.end method
