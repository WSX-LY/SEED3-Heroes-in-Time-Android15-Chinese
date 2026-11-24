.class Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;
.super Ljava/lang/Object;
.source "NetworkInvenView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NetworkInvenView$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/network/NetworkInvenView$9;

.field private final synthetic val$editPopUp:Lch/android/api/ui/ChPopUpEditTextView;

.field private final synthetic val$money:I

.field private final synthetic val$moneyView:Lch/android/api/ui/ChTextView;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NetworkInvenView$9;Lch/android/api/ui/ChTextView;ILch/android/api/ui/ChPopUpEditTextView;Lch/android/api/ui/ChPopUpTradeItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->this$1:Lch/kingdoms/android/ui/network/NetworkInvenView$9;

    iput-object p2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->val$moneyView:Lch/android/api/ui/ChTextView;

    iput p3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->val$money:I

    iput-object p4, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->val$editPopUp:Lch/android/api/ui/ChPopUpEditTextView;

    iput-object p5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;)Lch/kingdoms/android/ui/network/NetworkInvenView$9;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->this$1:Lch/kingdoms/android/ui/network/NetworkInvenView$9;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 417
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 454
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 420
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 421
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->this$1:Lch/kingdoms/android/ui/network/NetworkInvenView$9;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9;)Lch/kingdoms/android/ui/network/NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$3(Lch/kingdoms/android/ui/network/NetworkInvenView;)Landroid/app/Activity;

    move-result-object v6

    const/16 v0, 0x5a

    invoke-static {v0}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;

    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->val$editPopUp:Lch/android/api/ui/ChPopUpEditTextView;

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    iget-object v4, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->val$moneyView:Lch/android/api/ui/ChTextView;

    iget v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->val$money:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1$1;-><init>(Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;Lch/android/api/ui/ChPopUpEditTextView;Lch/android/api/ui/ChPopUpTradeItemView;Lch/android/api/ui/ChTextView;I)V

    invoke-static {v6, v7, v0}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0

    .line 448
    :pswitch_2
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 449
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 450
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->this$1:Lch/kingdoms/android/ui/network/NetworkInvenView$9;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NetworkInvenView$9;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$9;)Lch/kingdoms/android/ui/network/NetworkInvenView;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->val$moneyView:Lch/android/api/ui/ChTextView;

    iget v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$9$1;->val$money:I

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$13(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/android/api/ui/ChTextView;I)V

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
