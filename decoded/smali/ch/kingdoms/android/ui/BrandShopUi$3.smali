.class Lch/kingdoms/android/ui/BrandShopUi$3;
.super Ljava/lang/Object;
.source "BrandShopUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BrandShopUi;->popUpBuyPoint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/BrandShopUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BrandShopUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BrandShopUi$3;->this$0:Lch/kingdoms/android/ui/BrandShopUi;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 220
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x2744
        :pswitch_0
    .end packed-switch
.end method
