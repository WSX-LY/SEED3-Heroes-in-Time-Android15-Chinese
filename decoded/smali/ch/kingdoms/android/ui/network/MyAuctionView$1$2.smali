.class Lch/kingdoms/android/ui/network/MyAuctionView$1$2;
.super Ljava/lang/Object;
.source "MyAuctionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/MyAuctionView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/network/MyAuctionView$1;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/MyAuctionView$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/MyAuctionView$1$2;->this$1:Lch/kingdoms/android/ui/network/MyAuctionView$1;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    invoke-static {}, Lch/kingdoms/android/ui/network/NewNetworkUi;->isPopUped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 157
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->setIsPopUped(Z)V

    .line 159
    :cond_0
    return-void
.end method
