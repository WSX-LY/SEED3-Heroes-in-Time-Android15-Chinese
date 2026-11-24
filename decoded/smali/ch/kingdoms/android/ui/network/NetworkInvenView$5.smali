.class Lch/kingdoms/android/ui/network/NetworkInvenView$5;
.super Ljava/lang/Object;
.source "NetworkInvenView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NetworkInvenView;->popUpRegistAuction(Lch/kingdoms/ndk/data/Inven$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;

.field private final synthetic val$quantityView:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    iput-object p2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iput-object p3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5;->val$quantityView:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/NetworkInvenView$5;)Lch/kingdoms/android/ui/network/NetworkInvenView;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 298
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 300
    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 301
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$7(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 245
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 246
    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 247
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$3(Lch/kingdoms/android/ui/network/NetworkInvenView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$8(Lch/kingdoms/android/ui/network/NetworkInvenView;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    const v2, 0x5f5dd18

    const/16 v3, 0xe

    .line 248
    new-instance v4, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v4}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/Inven;->getNullItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v4

    move-object v6, v5

    .line 247
    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v7

    .line 249
    .local v7, "priceView":Lch/android/api/ui/ChPopUpTradeItemView;
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 250
    new-instance v0, Lch/kingdoms/android/ui/network/NetworkInvenView$5$1;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget-object v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$5;->val$quantityView:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-direct {v0, p0, v1, v2, v7}, Lch/kingdoms/android/ui/network/NetworkInvenView$5$1;-><init>(Lch/kingdoms/android/ui/network/NetworkInvenView$5;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;Lch/android/api/ui/ChPopUpTradeItemView;)V

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
    .end packed-switch
.end method
