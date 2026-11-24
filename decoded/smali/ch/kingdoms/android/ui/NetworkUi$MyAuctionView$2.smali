.class Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->onItemSelect(Landroid/view/View;Lch/kingdoms/ndk/data/Inven$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    .line 2314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x4

    .line 2318
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2360
    :cond_0
    :goto_0
    return-void

    .line 2320
    :sswitch_0
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2321
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 2322
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    goto :goto_0

    .line 2326
    :sswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 2327
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->auctionState:I

    if-eq v0, v1, :cond_1

    .line 2328
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$7(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x4e

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;)V

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/NetworkUi;->access$15(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2339
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$4(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 2343
    :sswitch_2
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 2344
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->auctionState:I

    if-eq v0, v1, :cond_2

    .line 2345
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$7(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x4b

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2$2;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2$2;-><init>(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;)V

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/NetworkUi;->access$15(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2356
    :cond_2
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$5(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 2318
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_2
        0x2744 -> :sswitch_0
    .end sparse-switch
.end method
