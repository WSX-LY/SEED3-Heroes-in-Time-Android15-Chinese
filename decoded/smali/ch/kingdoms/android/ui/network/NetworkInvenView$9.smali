.class Lch/kingdoms/android/ui/network/NetworkInvenView$9;
.super Ljava/lang/Object;
.source "NetworkInvenView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NetworkInvenView;->popUpGiftMoney(Lch/android/api/ui/ChTextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

.field private final synthetic val$money:I

.field private final synthetic val$moneyView:Lch/android/api/ui/ChTextView;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/android/api/ui/ChTextView;ILch/android/api/ui/ChPopUpTradeItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    iput-object p2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->val$moneyView:Lch/android/api/ui/ChTextView;

    iput p3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->val$money:I

    iput-object p4, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9;)Lch/kingdoms/android/ui/network/NetworkInvenView;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 405
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 458
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 460
    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 461
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->val$moneyView:Lch/android/api/ui/ChTextView;

    iget v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->val$money:I

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$13(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/android/api/ui/ChTextView;I)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 407
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 408
    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 409
    new-instance v4, Lch/android/api/ui/ChPopUpEditTextView;

    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$8(Lch/kingdoms/android/ui/network/NetworkInvenView;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    const v2, 0x7f020243

    const/16 v3, 0xda

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v0, v1, v2, v3}, Lch/android/api/ui/ChPopUpEditTextView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;ILjava/lang/String;)V

    .line 411
    .local v4, "editPopUp":Lch/android/api/ui/ChPopUpEditTextView;
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$3(Lch/kingdoms/android/ui/network/NetworkInvenView;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 412
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 413
    new-instance v0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;

    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->val$moneyView:Lch/android/api/ui/ChTextView;

    iget v3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->val$money:I

    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;-><init>(Lch/kingdoms/android/ui/network/NetworkInvenView$9;Lch/android/api/ui/ChTextView;ILch/android/api/ui/ChPopUpEditTextView;Lch/android/api/ui/ChPopUpTradeItemView;)V

    invoke-virtual {v4, v0}, Lch/android/api/ui/ChPopUpEditTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
    .end packed-switch
.end method
