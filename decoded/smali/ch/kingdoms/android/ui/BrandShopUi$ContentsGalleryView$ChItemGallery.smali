.class Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;
.super Landroid/widget/Gallery;
.source "BrandShopUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChItemGallery"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery$PurchaseAdapter;
    }
.end annotation


# instance fields
.field private final f_views:[Landroid/view/View;

.field final synthetic this$1:Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;Landroid/content/Context;[Landroid/view/View;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "_views"    # [Landroid/view/View;

    .prologue
    .line 539
    iput-object p1, p0, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;->this$1:Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;

    .line 540
    invoke-direct {p0, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 542
    iput-object p3, p0, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;->f_views:[Landroid/view/View;

    .line 543
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;)[Landroid/view/View;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;->f_views:[Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public initAdapter()V
    .locals 1

    .prologue
    .line 546
    new-instance v0, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery$PurchaseAdapter;

    invoke-direct {v0, p0}, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery$PurchaseAdapter;-><init>(Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;)V

    invoke-super {p0, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 547
    return-void
.end method
