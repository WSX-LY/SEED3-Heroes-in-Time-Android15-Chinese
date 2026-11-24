.class Lch/kingdoms/android/ui/BrandShopUi$2;
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
    iput-object p1, p0, Lch/kingdoms/android/ui/BrandShopUi$2;->this$0:Lch/kingdoms/android/ui/BrandShopUi;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/BrandShopUi$2;)Lch/kingdoms/android/ui/BrandShopUi;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lch/kingdoms/android/ui/BrandShopUi$2;->this$0:Lch/kingdoms/android/ui/BrandShopUi;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 174
    .local v0, "points":I
    sparse-switch v0, :sswitch_data_0

    .line 188
    const-string v1, "item_point_14000"

    .line 194
    .local v1, "productId":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lch/kingdoms/android/ui/BrandShopUi$2$1;

    invoke-direct {v4, p0}, Lch/kingdoms/android/ui/BrandShopUi$2$1;-><init>(Lch/kingdoms/android/ui/BrandShopUi$2;)V

    invoke-static {v1, v2, v3, v0, v4}, Lch/android/api/iap/ChAndroidIab;->popUpPurchaseDlg(Ljava/lang/String;ZLjava/lang/String;ILch/android/lib/iab/ChOnPurchaseListener;)V

    .line 206
    return-void

    .line 176
    .end local v1    # "productId":Ljava/lang/String;
    :sswitch_0
    const-string v1, "item_point_1000"

    .line 177
    .restart local v1    # "productId":Ljava/lang/String;
    goto :goto_0

    .line 179
    .end local v1    # "productId":Ljava/lang/String;
    :sswitch_1
    const-string v1, "item_point_2200"

    .line 180
    .restart local v1    # "productId":Ljava/lang/String;
    goto :goto_0

    .line 182
    .end local v1    # "productId":Ljava/lang/String;
    :sswitch_2
    const-string v1, "item_point_3600"

    .line 183
    .restart local v1    # "productId":Ljava/lang/String;
    goto :goto_0

    .line 185
    .end local v1    # "productId":Ljava/lang/String;
    :sswitch_3
    const-string v1, "item_point_6000"

    .line 186
    .restart local v1    # "productId":Ljava/lang/String;
    goto :goto_0

    .line 174
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x898 -> :sswitch_1
        0xe10 -> :sswitch_2
        0x1770 -> :sswitch_3
    .end sparse-switch
.end method
