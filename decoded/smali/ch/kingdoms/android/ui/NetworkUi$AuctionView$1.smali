.class Lch/kingdoms/android/ui/NetworkUi$AuctionView$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$AuctionView;-><init>(Lch/kingdoms/android/ui/NetworkUi;Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    .line 1981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 1985
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1999
    :goto_0
    return-void

    .line 1987
    :pswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    invoke-static {v0, v2}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$0(Lch/kingdoms/android/ui/NetworkUi$AuctionView;I)V

    .line 1988
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$1(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$2(Lch/kingdoms/android/ui/NetworkUi$AuctionView;II)V

    goto :goto_0

    .line 1991
    :pswitch_1
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    invoke-static {v0, v3}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$0(Lch/kingdoms/android/ui/NetworkUi$AuctionView;I)V

    .line 1992
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$1(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$2(Lch/kingdoms/android/ui/NetworkUi$AuctionView;II)V

    goto :goto_0

    .line 1995
    :pswitch_2
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    invoke-static {v0, v4}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$0(Lch/kingdoms/android/ui/NetworkUi$AuctionView;I)V

    .line 1996
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$1(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)I

    move-result v1

    invoke-static {v0, v1, v4}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$2(Lch/kingdoms/android/ui/NetworkUi$AuctionView;II)V

    goto :goto_0

    .line 1985
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
