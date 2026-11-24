.class Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->popUpRegistAuction(Lch/kingdoms/ndk/data/Inven$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;

.field private final synthetic val$quantityView:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iput-object p3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->val$quantityView:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 1485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1489
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1539
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1540
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1541
    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1542
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$4(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 1546
    :cond_0
    :goto_0
    return-void

    .line 1491
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1492
    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1493
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    const v2, 0x5f5dd18

    const/16 v3, 0xe

    .line 1494
    new-instance v4, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v4}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/Inven;->getNullItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v4

    move-object v6, v5

    .line 1493
    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v7

    .line 1495
    .local v7, "priceView":Lch/android/api/ui/ChPopUpTradeItemView;
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1496
    new-instance v0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;->val$quantityView:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-direct {v0, p0, v1, v2, v7}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$6;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;Lch/android/api/ui/ChPopUpTradeItemView;)V

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1489
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
    .end packed-switch
.end method
