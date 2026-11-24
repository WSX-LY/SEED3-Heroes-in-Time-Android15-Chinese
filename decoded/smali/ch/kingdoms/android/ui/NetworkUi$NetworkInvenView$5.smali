.class Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->popUpGiftItem(Lch/kingdoms/ndk/data/Inven$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;

.field private final synthetic val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iput-object p3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 1399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1403
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1470
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1471
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1472
    const/4 v1, 0x0

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1473
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$4(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1405
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1406
    new-instance v0, Lch/android/api/ui/ChPopUpEditTextView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    const v3, 0x7f020243

    const/16 v4, 0xda

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lch/android/api/ui/ChPopUpEditTextView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;ILjava/lang/String;)V

    .line 1408
    .local v0, "editPopUp":Lch/android/api/ui/ChPopUpEditTextView;
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 1409
    const/4 v1, 0x1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1410
    new-instance v1, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1;

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;->val$tradePopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-direct {v1, p0, v0, v2, v3}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$5;Lch/android/api/ui/ChPopUpEditTextView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChPopUpEditTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1403
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
    .end packed-switch
.end method
