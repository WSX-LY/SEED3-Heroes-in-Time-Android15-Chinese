.class Lch/kingdoms/android/ui/BrandShopUi$2$1;
.super Ljava/lang/Object;
.source "BrandShopUi.java"

# interfaces
.implements Lch/android/lib/iab/ChOnPurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BrandShopUi$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/BrandShopUi$2;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BrandShopUi$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BrandShopUi$2$1;->this$1:Lch/kingdoms/android/ui/BrandShopUi$2;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchased(ILjava/lang/String;I)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "quantity"    # I

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    .line 200
    .local v0, "heroStatus":Lch/kingdoms/ndk/data/HeroStatus;
    iget-object v1, p0, Lch/kingdoms/android/ui/BrandShopUi$2$1;->this$1:Lch/kingdoms/android/ui/BrandShopUi$2;

    invoke-static {v1}, Lch/kingdoms/android/ui/BrandShopUi$2;->access$0(Lch/kingdoms/android/ui/BrandShopUi$2;)Lch/kingdoms/android/ui/BrandShopUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/BrandShopUi;->access$5(Lch/kingdoms/android/ui/BrandShopUi;)Lch/android/api/ui/ChTextView;

    move-result-object v1

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getCashPoints()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-static {}, Lch/kingdoms/android/ui/BrandShopUi;->access$1()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xcd

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2}, Lch/android/api/ui/PurchaseNotice;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 204
    .end local v0    # "heroStatus":Lch/kingdoms/ndk/data/HeroStatus;
    :cond_0
    return-void
.end method
