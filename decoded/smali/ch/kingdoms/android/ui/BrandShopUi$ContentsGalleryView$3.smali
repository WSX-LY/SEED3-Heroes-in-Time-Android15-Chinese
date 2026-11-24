.class Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$3;
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
    iput-object p1, p0, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$3;->this$1:Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 509
    new-instance v0, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$3$1;

    invoke-direct {v0, p0}, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$3$1;-><init>(Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$3;)V

    invoke-static {v0}, Lch/android/api/iap/ChAndroidIab;->restoreManagedItems(Lch/android/lib/iab/ChOnPurchaseListener;)V

    .line 526
    return-void
.end method
