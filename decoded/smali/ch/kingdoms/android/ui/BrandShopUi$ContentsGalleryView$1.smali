.class Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$1;
.super Ljava/lang/Object;
.source "BrandShopUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;-><init>(Lch/kingdoms/android/ui/BrandShopUi;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$1;->this$1:Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2745

    if-ne v0, v1, :cond_0

    .line 472
    const-string v0, "item_warpgate_unlock"

    const-string v1, "WARPGATE"

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/BrandShopUi;->checkPurchase(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :goto_0
    return-void

    .line 474
    :cond_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_0
.end method
