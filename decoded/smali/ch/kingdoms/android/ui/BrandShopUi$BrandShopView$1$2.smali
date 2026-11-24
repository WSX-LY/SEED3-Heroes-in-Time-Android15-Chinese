.class Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$2;
.super Ljava/lang/Object;
.source "BrandShopUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClick:Z

.field final synthetic this$2:Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;

.field private final synthetic val$selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

.field private final synthetic val$tradeItemView:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;Lch/android/api/ui/ChPopUpTradeItemView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$2;->this$2:Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;

    iput-object p2, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$2;->val$tradeItemView:Lch/android/api/ui/ChPopUpTradeItemView;

    iput-object p3, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$2;->val$selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$2;->isClick:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 304
    iget-boolean v2, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$2;->isClick:Z

    if-nez v2, :cond_1

    .line 305
    iput-boolean v5, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$2;->isClick:Z

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/16 v3, 0x2742

    if-ne v2, v3, :cond_0

    .line 307
    iget-object v2, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$2;->val$tradeItemView:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v2}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v0

    .line 308
    .local v0, "cnt":I
    iget-object v2, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$2;->val$selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    iget v2, v2, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v2, v0}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeBuyBrandItem(II)I

    move-result v1

    .line 309
    .local v1, "result":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 311
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    .line 312
    iget-object v2, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$2;->this$2:Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;

    invoke-static {v2}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;->access$1(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;)Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;->access$1(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;)Lch/android/api/ui/ChTextView;

    move-result-object v2

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v3

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/HeroStatus;->getCashPoints()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    invoke-static {}, Lch/kingdoms/android/ui/BrandShopUi;->access$1()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lch/kingdoms/android/ui/BrandShopUi;->access$1()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 318
    .end local v0    # "cnt":I
    .end local v1    # "result":I
    :cond_0
    :goto_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 319
    iget-object v2, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$2;->this$2:Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;->access$0(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;Z)V

    .line 321
    :cond_1
    return-void

    .line 315
    .restart local v0    # "cnt":I
    .restart local v1    # "result":I
    :cond_2
    invoke-static {}, Lch/kingdoms/android/ui/BrandShopUi;->access$1()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x9d

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
