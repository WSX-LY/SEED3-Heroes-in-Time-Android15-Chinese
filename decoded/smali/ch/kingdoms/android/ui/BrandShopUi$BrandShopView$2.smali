.class Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$2;
.super Ljava/lang/Object;
.source "BrandShopUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;-><init>(Lch/kingdoms/android/ui/BrandShopUi;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isClosed:Z

.field final synthetic this$1:Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;

.field private final synthetic val$level:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;I)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$2;->this$1:Lch/kingdoms/android/ui/BrandShopUi$BrandShopView;

    iput p2, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$2;->val$level:I

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$2;->isClosed:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 422
    iget-boolean v0, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$2;->isClosed:Z

    if-nez v0, :cond_0

    iget v0, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$2;->val$level:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$2;->isClosed:Z

    .line 424
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 427
    :cond_0
    return-void
.end method
