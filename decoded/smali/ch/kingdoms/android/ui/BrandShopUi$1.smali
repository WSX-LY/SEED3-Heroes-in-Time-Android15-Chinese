.class Lch/kingdoms/android/ui/BrandShopUi$1;
.super Ljava/lang/Object;
.source "BrandShopUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BrandShopUi;->getView()Landroid/view/View;
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
    iput-object p1, p0, Lch/kingdoms/android/ui/BrandShopUi$1;->this$0:Lch/kingdoms/android/ui/BrandShopUi;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 99
    :pswitch_0
    invoke-static {}, Lch/kingdoms/android/ui/BrandShopUi;->access$1()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/BrandShopUi$1;->this$0:Lch/kingdoms/android/ui/BrandShopUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/BrandShopUi;->access$0(Lch/kingdoms/android/ui/BrandShopUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    const/16 v3, 0x93

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lch/android/api/ui/ChViewGen;->popUpGameTipView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Z)Landroid/view/View;

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v1, p0, Lch/kingdoms/android/ui/BrandShopUi$1;->this$0:Lch/kingdoms/android/ui/BrandShopUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/BrandShopUi;->access$2(Lch/kingdoms/android/ui/BrandShopUi;)V

    goto :goto_0

    .line 106
    :pswitch_2
    invoke-static {}, Lcom/openfeint/api/OpenFeint;->isUserLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-static {}, Lcom/openfeint/api/OpenFeint;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/api/resource/CurrentUser;->userID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lch/kingdoms/android/ui/BrandShopUi;->userId:Ljava/lang/String;

    .line 109
    invoke-static {}, Lch/kingdoms/android/ui/BrandShopUi;->access$1()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 110
    sget-object v2, Lch/kingdoms/android/ui/BrandShopUi;->userId:Ljava/lang/String;

    .line 108
    invoke-static {v1, v2}, Lcom/sponsorpay/sdk/android/publisher/SponsorPayPublisher;->getIntentForOfferWallActivity(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 111
    .local v0, "sponsorPayIntent":Landroid/content/Intent;
    invoke-static {}, Lch/kingdoms/android/ui/BrandShopUi;->access$1()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 113
    .end local v0    # "sponsorPayIntent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lch/kingdoms/android/ui/BrandShopUi;->access$1()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0500a1

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 118
    :pswitch_3
    iget-object v1, p0, Lch/kingdoms/android/ui/BrandShopUi$1;->this$0:Lch/kingdoms/android/ui/BrandShopUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/BrandShopUi;->access$3(Lch/kingdoms/android/ui/BrandShopUi;)V

    goto :goto_0

    .line 123
    :pswitch_4
    iget-object v1, p0, Lch/kingdoms/android/ui/BrandShopUi$1;->this$0:Lch/kingdoms/android/ui/BrandShopUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/BrandShopUi;->access$4(Lch/kingdoms/android/ui/BrandShopUi;)V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
