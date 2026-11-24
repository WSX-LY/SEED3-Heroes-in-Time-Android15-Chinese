.class Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;
.super Lch/android/api/ui/ChRelativeLayout;
.source "BrandShopUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/BrandShopUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrandShopView"
.end annotation


# instance fields
.field private final CASH_VIEW:Lch/android/api/ui/ChTextView;

.field private final INVEN_INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView;

.field private final STORE_ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

.field final synthetic this$0:Lch/kingdoms/android/ui/BrandShopUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/BrandShopUi;Landroid/content/Context;)V
    .locals 12
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    iput-object p1, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->this$0:Lch/kingdoms/android/ui/BrandShopUi;

    .line 255
    invoke-direct {p0, p2}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeBrandShopInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v8

    invoke-virtual {v8}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v8

    iput-object v8, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->STORE_ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

    .line 258
    new-instance v8, Lch/android/api/ui/ChInvenAndInfoView;

    invoke-static {p1}, Lch/kingdoms/android/ui/BrandShopUi;->access$0(Lch/kingdoms/android/ui/BrandShopUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v9

    const/4 v10, 0x6

    new-instance v11, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;

    invoke-direct {v11, p0}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;-><init>(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;)V

    invoke-direct {v8, p2, v9, v10, v11}, Lch/android/api/ui/ChInvenAndInfoView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;ILandroid/view/View$OnClickListener;)V

    iput-object v8, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->INVEN_INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView;

    .line 362
    iget-object v8, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->INVEN_INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView;

    const/4 v9, 0x0

    iget-object v10, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->STORE_ITEMS:[Lch/kingdoms/ndk/data/Inven$Item;

    invoke-virtual {v8, v9, v10}, Lch/android/api/ui/ChInvenAndInfoView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 364
    new-instance v8, Lch/android/api/ui/ChTextView;

    invoke-direct {v8, p2}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->CASH_VIEW:Lch/android/api/ui/ChTextView;

    .line 365
    iget-object v8, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->CASH_VIEW:Lch/android/api/ui/ChTextView;

    const v9, 0x7f02006f

    invoke-virtual {v8, v9}, Lch/android/api/ui/ChTextView;->setBackgroundResource(I)V

    .line 366
    iget-object v8, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->CASH_VIEW:Lch/android/api/ui/ChTextView;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 368
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v1

    .line 369
    .local v1, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    iget-object v8, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->CASH_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getCashPoints()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    new-instance v7, Lch/android/api/ui/ChTextView;

    invoke-direct {v7, p2}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    .line 372
    .local v7, "titleView":Lch/android/api/ui/ChTextView;
    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 373
    sget-object v8, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 374
    const/16 v8, -0x100

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 375
    const/16 v8, 0x41

    invoke-static {v8}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    const v8, 0x7f0202bd

    invoke-virtual {v7, v8}, Lch/android/api/ui/ChTextView;->setBackgroundResource(I)V

    .line 379
    new-instance v3, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v3, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 381
    .local v3, "lLayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 383
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 384
    .local v5, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x11

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 385
    invoke-virtual {v3, v7, v5}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    new-instance v2, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v2, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 388
    .local v2, "innerLLayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 389
    const v8, 0x7f0202bc

    invoke-virtual {v2, v8}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 391
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 395
    .restart local v5    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->INVEN_INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView;

    invoke-virtual {v2, v8, v5}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 399
    .restart local v5    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x11

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 400
    iget-object v8, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->CASH_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v2, v8, v5}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    invoke-virtual {v3, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 404
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 405
    .local v6, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xd

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 407
    invoke-virtual {p0, v3, v6}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v6    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 411
    .restart local v6    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xb

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 412
    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 414
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v4

    .line 415
    .local v4, "level":I
    new-instance v0, Lch/android/api/ui/ChImageButton;

    const v8, 0x7f02007a

    const v9, 0x7f02007a

    invoke-direct {v0, p2, v8, v9}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 416
    .local v0, "closeBtn":Lch/android/api/ui/ChImageButton;
    const/16 v8, 0x2744

    invoke-virtual {v0, v8}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 417
    new-instance v8, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$2;

    invoke-direct {v8, p0, v4}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$2;-><init>(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;I)V

    invoke-virtual {v0, v8}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    invoke-virtual {p0, v0, v6}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;)Lch/android/api/ui/ChInvenAndInfoView;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->INVEN_INFO_VIEW:Lch/android/api/ui/ChInvenAndInfoView;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;)Lch/android/api/ui/ChTextView;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->CASH_VIEW:Lch/android/api/ui/ChTextView;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;)Lch/kingdoms/android/ui/BrandShopUi;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->this$0:Lch/kingdoms/android/ui/BrandShopUi;

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v2, 0x7f0202bb

    .line 437
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChRelativeLayout;->onMeasure(II)V

    .line 438
    invoke-virtual {p0}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {p0}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->setMeasuredDimension(II)V

    .line 439
    return-void
.end method
