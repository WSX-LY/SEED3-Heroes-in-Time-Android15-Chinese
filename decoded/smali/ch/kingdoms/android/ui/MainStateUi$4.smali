.class Lch/kingdoms/android/ui/MainStateUi$4;
.super Ljava/lang/Object;
.source "MainStateUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainStateUi;->showColosseumUi(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2742

    if-ne v0, v1, :cond_0

    .line 127
    const-string v0, "item_colosseum_unlock"

    const-string v1, "COLOSSEUM"

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/BrandShopUi;->checkPurchase(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method
