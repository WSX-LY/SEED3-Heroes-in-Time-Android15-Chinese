.class Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$MyAuctionView$2;

    .line 2328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2332
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2333
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 2334
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 2336
    :cond_0
    return-void
.end method
