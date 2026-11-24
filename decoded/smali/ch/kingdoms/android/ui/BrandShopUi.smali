.class public Lch/kingdoms/android/ui/BrandShopUi;
.super Ljava/lang/Object;
.source "BrandShopUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;,
        Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;
    }
.end annotation


# static fields
.field private static ACTIVITY:Landroid/app/Activity; = null

.field private static final ID_BRAND_SHOP:I = 0x66

.field private static final ID_BUY_CONTENT:I = 0x65

.field private static final ID_BUY_POINT:I = 0x64

.field private static final ID_EARN_POINTS:I = 0x67

.field private static final ID_WHAT_POINT:I = 0x63

.field public static userId:Ljava/lang/String;


# instance fields
.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final backBtnOnClickListener:Landroid/view/View$OnClickListener;

.field private cashPointView:Lch/android/api/ui/ChTextView;


# direct methods
.method public constructor <init>(Lch/android/api/util/DisplayInfo;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p2, "ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lch/kingdoms/android/ui/BrandShopUi;->DI:Lch/android/api/util/DisplayInfo;

    .line 69
    iput-object p2, p0, Lch/kingdoms/android/ui/BrandShopUi;->backBtnOnClickListener:Landroid/view/View$OnClickListener;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/BrandShopUi;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lch/kingdoms/android/ui/BrandShopUi;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$1()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lch/kingdoms/android/ui/BrandShopUi;->ACTIVITY:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/BrandShopUi;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lch/kingdoms/android/ui/BrandShopUi;->popUpBuyPoint()V

    return-void
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/BrandShopUi;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lch/kingdoms/android/ui/BrandShopUi;->popUpContents()V

    return-void
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/BrandShopUi;)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lch/kingdoms/android/ui/BrandShopUi;->popUpBrandShop()V

    return-void
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/BrandShopUi;)Lch/android/api/ui/ChTextView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lch/kingdoms/android/ui/BrandShopUi;->cashPointView:Lch/android/api/ui/ChTextView;

    return-object v0
.end method

.method public static checkPurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 574
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v0

    .line 575
    .local v0, "dba":Lch/kingdoms/android/db/DBAdapter;
    invoke-virtual {v0, p1}, Lch/kingdoms/android/db/DBAdapter;->isPurchased(Ljava/lang/String;)Z

    move-result v1

    .line 576
    .local v1, "isPurchase":Z
    if-eqz v1, :cond_0

    .line 578
    sget-object v2, Lch/kingdoms/android/ui/BrandShopUi;->ACTIVITY:Landroid/app/Activity;

    const/16 v3, 0x9d

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 613
    :goto_0
    return-void

    .line 580
    :cond_0
    const/4 v2, 0x0

    new-instance v3, Lch/kingdoms/android/ui/BrandShopUi$4;

    invoke-direct {v3}, Lch/kingdoms/android/ui/BrandShopUi$4;-><init>()V

    invoke-static {p0, v4, p1, v2, v3}, Lch/android/api/iap/ChAndroidIab;->popUpPurchaseDlg(Ljava/lang/String;ZLjava/lang/String;ILch/android/lib/iab/ChOnPurchaseListener;)V

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    sput-object p0, Lch/kingdoms/android/ui/BrandShopUi;->ACTIVITY:Landroid/app/Activity;

    .line 64
    return-void
.end method

.method private popUpBrandShop()V
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;

    sget-object v1, Lch/kingdoms/android/ui/BrandShopUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;-><init>(Lch/kingdoms/android/ui/BrandShopUi;Landroid/content/Context;)V

    .line 241
    .local v0, "brandShop":Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;
    sget-object v1, Lch/kingdoms/android/ui/BrandShopUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 242
    return-void
.end method

.method private popUpBuyPoint()V
    .locals 15

    .prologue
    .line 151
    sget-object v2, Lch/kingdoms/android/ui/BrandShopUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 152
    .local v1, "appContext":Landroid/content/Context;
    new-instance v12, Lch/android/api/ui/ChTextSlimButton;

    const v2, 0x7f0201fc

    const v3, 0x7f0201fb

    .line 153
    const/16 v4, 0x94

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-direct {v12, v1, v2, v3, v4}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 154
    .local v12, "thousandBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v2, 0x3e8

    invoke-virtual {v12, v2}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 155
    new-instance v13, Lch/android/api/ui/ChTextSlimButton;

    const v2, 0x7f0201fc

    const v3, 0x7f0201fb

    .line 156
    const/16 v4, 0x95

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-direct {v13, v1, v2, v3, v4}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 157
    .local v13, "twentyTwoHundredBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v2, 0x898

    invoke-virtual {v13, v2}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 158
    new-instance v11, Lch/android/api/ui/ChTextSlimButton;

    const v2, 0x7f0201fc

    const v3, 0x7f0201fb

    .line 159
    const/16 v4, 0x96

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-direct {v11, v1, v2, v3, v4}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 160
    .local v11, "thirtySixHundredBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v2, 0xe10

    invoke-virtual {v11, v2}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 161
    new-instance v10, Lch/android/api/ui/ChTextSlimButton;

    const v2, 0x7f0201fc

    const v3, 0x7f0201fb

    .line 162
    const/16 v4, 0x97

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-direct {v10, v1, v2, v3, v4}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 163
    .local v10, "sixThousandBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v2, 0x1770

    invoke-virtual {v10, v2}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 164
    new-instance v7, Lch/android/api/ui/ChTextSlimButton;

    const v2, 0x7f0201fc

    const v3, 0x7f0201fb

    .line 165
    const/16 v4, 0x98

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-direct {v7, v1, v2, v3, v4}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 166
    .local v7, "fourteenBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v2, 0x36b0

    invoke-virtual {v7, v2}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 167
    const/4 v2, 0x5

    new-array v5, v2, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v7, v5, v2

    const/4 v2, 0x1

    aput-object v10, v5, v2

    const/4 v2, 0x2

    aput-object v11, v5, v2

    const/4 v2, 0x3

    aput-object v13, v5, v2

    const/4 v2, 0x4

    aput-object v12, v5, v2

    .line 168
    .local v5, "views":[Landroid/view/View;
    new-instance v8, Lch/kingdoms/android/ui/BrandShopUi$2;

    invoke-direct {v8, p0}, Lch/kingdoms/android/ui/BrandShopUi$2;-><init>(Lch/kingdoms/android/ui/BrandShopUi;)V

    .line 208
    .local v8, "pointListener":Landroid/view/View$OnClickListener;
    array-length v3, v5

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 212
    new-instance v0, Lch/android/api/ui/ChPopUpMenuView;

    iget-object v2, p0, Lch/kingdoms/android/ui/BrandShopUi;->DI:Lch/android/api/util/DisplayInfo;

    const/4 v3, 0x0

    const v4, 0x7f020064

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 213
    .local v0, "popUpBuyPointView":Lch/android/api/ui/ChPopUpMenuView;
    new-instance v2, Lch/kingdoms/android/ui/BrandShopUi$3;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/BrandShopUi$3;-><init>(Lch/kingdoms/android/ui/BrandShopUi;)V

    invoke-virtual {v0, v2}, Lch/android/api/ui/ChPopUpMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    new-instance v2, Lch/android/api/ui/ChTextView;

    invoke-direct {v2, v1}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lch/kingdoms/android/ui/BrandShopUi;->cashPointView:Lch/android/api/ui/ChTextView;

    .line 228
    iget-object v2, p0, Lch/kingdoms/android/ui/BrandShopUi;->cashPointView:Lch/android/api/ui/ChTextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 229
    iget-object v2, p0, Lch/kingdoms/android/ui/BrandShopUi;->cashPointView:Lch/android/api/ui/ChTextView;

    sget-object v3, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 230
    iget-object v2, p0, Lch/kingdoms/android/ui/BrandShopUi;->cashPointView:Lch/android/api/ui/ChTextView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v3

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/HeroStatus;->getCashPoints()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v9, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 232
    .local v9, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lch/kingdoms/android/ui/BrandShopUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42280000    # 42.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 233
    sget-object v2, Lch/kingdoms/android/ui/BrandShopUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020064

    invoke-static {v2, v3}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v2

    iget-object v3, p0, Lch/kingdoms/android/ui/BrandShopUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    iget-object v4, p0, Lch/kingdoms/android/ui/BrandShopUi;->cashPointView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v4}, Lch/android/api/ui/ChTextView;->getTextSize()F

    move-result v4

    const/high16 v6, 0x41800000    # 16.0f

    add-float/2addr v4, v6

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 234
    iget-object v2, p0, Lch/kingdoms/android/ui/BrandShopUi;->cashPointView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, v2, v9}, Lch/android/api/ui/ChPopUpMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    sget-object v2, Lch/kingdoms/android/ui/BrandShopUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v2, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 237
    return-void

    .line 208
    .end local v0    # "popUpBuyPointView":Lch/android/api/ui/ChPopUpMenuView;
    .end local v9    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    aget-object v14, v5, v2

    .line 209
    .local v14, "view":Landroid/view/View;
    invoke-virtual {v14, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private popUpContents()V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;

    sget-object v1, Lch/kingdoms/android/ui/BrandShopUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;-><init>(Lch/kingdoms/android/ui/BrandShopUi;Landroid/content/Context;)V

    .line 246
    .local v0, "contentsView":Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;
    sget-object v1, Lch/kingdoms/android/ui/BrandShopUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 247
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 14

    .prologue
    const/4 v2, 0x0

    const v13, 0x7f0201fc

    const v6, 0x7f0201fb

    .line 73
    sget-object v3, Lch/kingdoms/android/ui/BrandShopUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 74
    .local v1, "appContext":Landroid/content/Context;
    new-instance v12, Lch/android/api/ui/ChTextSlimButton;

    .line 75
    const/16 v3, 0x8f

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-direct {v12, v1, v13, v6, v3}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 76
    .local v12, "whatIsPointBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v3, 0x63

    invoke-virtual {v12, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 77
    new-instance v9, Lch/android/api/ui/ChTextSlimButton;

    .line 78
    const/16 v3, 0x90

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-direct {v9, v1, v13, v6, v3}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 79
    .local v9, "buyPointBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v3, 0x64

    invoke-virtual {v9, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 80
    new-instance v10, Lch/android/api/ui/ChTextSlimButton;

    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0500a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-direct {v10, v1, v13, v6, v3}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 82
    .local v10, "earnPointBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v3, 0x67

    invoke-virtual {v10, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 83
    new-instance v8, Lch/android/api/ui/ChTextSlimButton;

    .line 84
    const/16 v3, 0x91

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-direct {v8, v1, v13, v6, v3}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 85
    .local v8, "buyContentBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v3, 0x65

    invoke-virtual {v8, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 86
    new-instance v7, Lch/android/api/ui/ChTextSlimButton;

    .line 87
    const/16 v3, 0x92

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-direct {v7, v1, v13, v6, v3}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 88
    .local v7, "brandItemBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v3, 0x66

    invoke-virtual {v7, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 89
    const/4 v3, 0x5

    new-array v5, v3, [Landroid/view/View;

    aput-object v8, v5, v2

    const/4 v3, 0x1

    aput-object v12, v5, v3

    const/4 v3, 0x2

    aput-object v9, v5, v3

    const/4 v3, 0x3

    aput-object v10, v5, v3

    const/4 v3, 0x4

    aput-object v7, v5, v3

    .line 90
    .local v5, "views":[Landroid/view/View;
    array-length v3, v5

    :goto_0
    if-lt v2, v3, :cond_0

    .line 130
    new-instance v0, Lch/android/api/ui/ChPopUpMenuView;

    iget-object v2, p0, Lch/kingdoms/android/ui/BrandShopUi;->DI:Lch/android/api/util/DisplayInfo;

    const v3, 0x7f02002e

    const v4, 0x7f020244

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 132
    .local v0, "brandShopMenuView":Lch/android/api/ui/ChPopUpMenuView;
    iget-object v2, p0, Lch/kingdoms/android/ui/BrandShopUi;->backBtnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lch/android/api/ui/ChPopUpMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-object v0

    .line 90
    .end local v0    # "brandShopMenuView":Lch/android/api/ui/ChPopUpMenuView;
    :cond_0
    aget-object v11, v5, v2

    .line 92
    .local v11, "view":Landroid/view/View;
    new-instance v4, Lch/kingdoms/android/ui/BrandShopUi$1;

    invoke-direct {v4, p0}, Lch/kingdoms/android/ui/BrandShopUi$1;-><init>(Lch/kingdoms/android/ui/BrandShopUi;)V

    invoke-virtual {v11, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
