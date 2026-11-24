.class Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->requestExtend(Lch/kingdoms/ndk/data/Inven$Item;)V
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
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    .line 2385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;)Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;
    .locals 1

    .prologue
    .line 2385
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2389
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2423
    :cond_0
    :goto_0
    return-void

    .line 2391
    :pswitch_0
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$7(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;)V

    .line 2413
    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$7(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v3

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v4, v4, Lch/kingdoms/ndk/data/Inven$Item;->dbIndex:I

    .line 2391
    invoke-virtual {v1, v2, v3, v4}, Lch/kingdoms/android/network/ChPacketFactory;->createExtendSaleItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$ExtendSaleItem;

    move-result-object v0

    .line 2414
    .local v0, "extendPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$3;->this$1:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;->access$7(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    goto :goto_0

    .line 2417
    .end local v0    # "extendPacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    :pswitch_1
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2418
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 2419
    const/4 v1, 0x0

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    goto :goto_0

    .line 2389
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
