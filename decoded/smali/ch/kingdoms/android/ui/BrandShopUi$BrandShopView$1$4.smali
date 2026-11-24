.class Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$4;
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
.field isClicked:Z

.field final synthetic this$2:Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$4;->this$2:Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$4;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 347
    iget-boolean v0, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$4;->isClicked:Z

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$4;->isClicked:Z

    .line 349
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 350
    iget-object v0, p0, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1$4;->this$2:Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;->access$0(Lch/kingdoms/android/ui/BrandShopUi$BrandShopView$1;Z)V

    .line 352
    :cond_0
    return-void
.end method
