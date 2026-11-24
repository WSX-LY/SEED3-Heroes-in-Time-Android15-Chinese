.class Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$3$1;
.super Ljava/lang/Object;
.source "BrandShopUi.java"

# interfaces
.implements Lch/android/lib/iab/ChOnPurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$3;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$3$1;->this$2:Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$3;

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchased(ILjava/lang/String;I)V
    .locals 5
    .param p1, "result"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "quantity"    # I

    .prologue
    const v4, 0x7f0500a5

    const/4 v3, 0x0

    .line 513
    if-nez p1, :cond_0

    .line 514
    const-string v0, "item_colosseum_unlock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    invoke-static {}, Lch/kingdoms/android/ui/BrandShopUi;->access$1()Landroid/app/Activity;

    move-result-object v0

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x117

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lch/kingdoms/android/ui/BrandShopUi;->access$1()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    const-string v0, "item_warpgate_unlock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Lch/kingdoms/android/ui/BrandShopUi;->access$1()Landroid/app/Activity;

    move-result-object v0

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x114

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lch/kingdoms/android/ui/BrandShopUi;->access$1()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
