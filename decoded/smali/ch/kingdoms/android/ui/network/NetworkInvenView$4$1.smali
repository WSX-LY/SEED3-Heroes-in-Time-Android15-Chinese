.class Lch/kingdoms/android/ui/network/NetworkInvenView$4$1;
.super Ljava/lang/Object;
.source "NetworkInvenView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NetworkInvenView$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/network/NetworkInvenView$4;

.field private final synthetic val$editPopUp:Lch/android/api/ui/ChPopUpEditTextView;

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NetworkInvenView$4;Lch/android/api/ui/ChPopUpEditTextView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$4$1;->this$1:Lch/kingdoms/android/ui/network/NetworkInvenView$4;

    iput-object p2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$4$1;->val$editPopUp:Lch/android/api/ui/ChPopUpEditTextView;

    iput-object p3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$4$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iput-object p4, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$4$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$4$1;)Lch/kingdoms/android/ui/network/NetworkInvenView$4;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$4$1;->this$1:Lch/kingdoms/android/ui/network/NetworkInvenView$4;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 220
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 186
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 187
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$4$1;->this$1:Lch/kingdoms/android/ui/network/NetworkInvenView$4;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NetworkInvenView$4;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$4;)Lch/kingdoms/android/ui/network/NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$3(Lch/kingdoms/android/ui/network/NetworkInvenView;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/network/NetworkInvenView$4$1$1;

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$4$1;->val$editPopUp:Lch/android/api/ui/ChPopUpEditTextView;

    iget-object v4, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$4$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget-object v5, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$4$1;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-direct {v2, p0, v3, v4, v5}, Lch/kingdoms/android/ui/network/NetworkInvenView$4$1$1;-><init>(Lch/kingdoms/android/ui/network/NetworkInvenView$4$1;Lch/android/api/ui/ChPopUpEditTextView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0

    .line 214
    :pswitch_2
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 216
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
