.class Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery$PurchaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "BrandShopUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PurchaseAdapter"
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery$PurchaseAdapter;->this$2:Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery$PurchaseAdapter;->this$2:Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;

    invoke-static {v0}, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;->access$0(Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;)[Landroid/view/View;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "_position"    # I

    .prologue
    .line 557
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "_position"    # I

    .prologue
    .line 562
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "_position"    # I
    .param p2, "_view"    # Landroid/view/View;
    .param p3, "_parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 567
    iget-object v0, p0, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery$PurchaseAdapter;->this$2:Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;

    invoke-static {v0}, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;->access$0(Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method
