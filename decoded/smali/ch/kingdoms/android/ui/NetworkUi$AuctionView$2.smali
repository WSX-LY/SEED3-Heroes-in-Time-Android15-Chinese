.class Lch/kingdoms/android/ui/NetworkUi$AuctionView$2;
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
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    .line 2037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2041
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$1(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$AuctionView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$AuctionView;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$3(Lch/kingdoms/android/ui/NetworkUi$AuctionView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/NetworkUi$AuctionView;->access$2(Lch/kingdoms/android/ui/NetworkUi$AuctionView;II)V

    .line 2042
    return-void
.end method
