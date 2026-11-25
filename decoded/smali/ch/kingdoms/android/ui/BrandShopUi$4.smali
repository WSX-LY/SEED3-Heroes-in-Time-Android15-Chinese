.class Lch/kingdoms/android/ui/BrandShopUi$4;
.super Ljava/lang/Object;
.source "BrandShopUi.java"

# interfaces
.implements Lch/android/lib/iab/ChOnPurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BrandShopUi;->checkPurchase(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPurchased(ILjava/lang/String;I)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "quantity"    # I

    .prologue
    .line 584
    if-nez p1, :cond_0

    .line 585
    invoke-static {}, Lch/kingdoms/android/ui/BrandShopUi;->access$1()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x129

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1}, Lch/android/api/ui/PurchaseNotice;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 587
    :cond_0
    return-void
.end method
