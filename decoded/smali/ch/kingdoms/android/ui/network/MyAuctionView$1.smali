.class Lch/kingdoms/android/ui/network/MyAuctionView$1;
.super Ljava/lang/Object;
.source "MyAuctionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/MyAuctionView;->onItemSelect(Landroid/view/View;Lch/kingdoms/ndk/data/Inven$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/MyAuctionView;

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/MyAuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/MyAuctionView$1;->this$0:Lch/kingdoms/android/ui/network/MyAuctionView;

    iput-object p2, p0, Lch/kingdoms/android/ui/network/MyAuctionView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x4

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 126
    :sswitch_0
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 128
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    goto :goto_0

    .line 132
    :sswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 133
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyAuctionView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->auctionState:I

    if-eq v0, v1, :cond_1

    .line 134
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyAuctionView$1;->this$0:Lch/kingdoms/android/ui/network/MyAuctionView;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/MyAuctionView;->access$0(Lch/kingdoms/android/ui/network/MyAuctionView;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x4e

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/network/MyAuctionView$1$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/network/MyAuctionView$1$1;-><init>(Lch/kingdoms/android/ui/network/MyAuctionView$1;)V

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyAuctionView$1;->this$0:Lch/kingdoms/android/ui/network/MyAuctionView;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/MyAuctionView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/network/MyAuctionView;->access$1(Lch/kingdoms/android/ui/network/MyAuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 149
    :sswitch_2
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 150
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyAuctionView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->auctionState:I

    if-eq v0, v1, :cond_2

    .line 151
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyAuctionView$1;->this$0:Lch/kingdoms/android/ui/network/MyAuctionView;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/MyAuctionView;->access$0(Lch/kingdoms/android/ui/network/MyAuctionView;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x4b

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/network/MyAuctionView$1$2;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/network/MyAuctionView$1$2;-><init>(Lch/kingdoms/android/ui/network/MyAuctionView$1;)V

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lch/kingdoms/android/ui/network/MyAuctionView$1;->this$0:Lch/kingdoms/android/ui/network/MyAuctionView;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/MyAuctionView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/network/MyAuctionView;->access$2(Lch/kingdoms/android/ui/network/MyAuctionView;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_2
        0x2744 -> :sswitch_0
    .end sparse-switch
.end method
