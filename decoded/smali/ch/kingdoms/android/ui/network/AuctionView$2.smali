.class Lch/kingdoms/android/ui/network/AuctionView$2;
.super Ljava/lang/Object;
.source "AuctionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/AuctionView;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/network/NewNetworkUi;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/AuctionView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/AuctionView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/AuctionView$2;->this$0:Lch/kingdoms/android/ui/network/AuctionView;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionView$2;->this$0:Lch/kingdoms/android/ui/network/AuctionView;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/AuctionView$2;->this$0:Lch/kingdoms/android/ui/network/AuctionView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/AuctionView;->access$0(Lch/kingdoms/android/ui/network/AuctionView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lch/kingdoms/android/ui/network/AuctionView$2;->this$0:Lch/kingdoms/android/ui/network/AuctionView;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/AuctionView;->access$1(Lch/kingdoms/android/ui/network/AuctionView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/network/AuctionView;->access$2(Lch/kingdoms/android/ui/network/AuctionView;II)V

    .line 140
    return-void
.end method
