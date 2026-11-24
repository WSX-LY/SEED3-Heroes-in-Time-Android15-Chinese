.class Lch/kingdoms/android/ui/NetworkUi$23$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$23;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$23;

.field private final synthetic val$mainType:I

.field private final synthetic val$subType:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$23;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$23$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$23;

    iput p2, p0, Lch/kingdoms/android/ui/NetworkUi$23$1;->val$mainType:I

    iput p3, p0, Lch/kingdoms/android/ui/NetworkUi$23$1;->val$subType:I

    .line 1853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 7
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 1857
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1864
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$23$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$23;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$23;->access$0(Lch/kingdoms/android/ui/NetworkUi$23;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$13(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v1

    invoke-interface {v1}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    .line 1865
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$23$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$23;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$23;->access$0(Lch/kingdoms/android/ui/NetworkUi$23;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1868
    :goto_0
    return-void

    .line 1859
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v6

    .line 1860
    .local v6, "money":Ljava/lang/String;
    new-instance v0, Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$23$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$23;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$23;->access$0(Lch/kingdoms/android/ui/NetworkUi$23;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$23$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$23;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$23;->access$0(Lch/kingdoms/android/ui/NetworkUi$23;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$23$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$23;

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi$23;->access$0(Lch/kingdoms/android/ui/NetworkUi$23;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v3

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v4, p0, Lch/kingdoms/android/ui/NetworkUi$23$1;->val$mainType:I

    iget v5, p0, Lch/kingdoms/android/ui/NetworkUi$23$1;->val$subType:I

    invoke-direct/range {v0 .. v6}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;-><init>(Lch/kingdoms/android/ui/NetworkUi;Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILjava/lang/String;)V

    .line 1861
    .local v0, "auctionView":Lch/kingdoms/android/ui/NetworkUi$AuctionView;
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$23$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$23;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$23;->access$0(Lch/kingdoms/android/ui/NetworkUi$23;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 1857
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
