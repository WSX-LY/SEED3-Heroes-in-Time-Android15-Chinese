.class Lch/kingdoms/android/ui/network/AuctionSearchSettingView$1;
.super Ljava/lang/Object;
.source "AuctionSearchSettingView.java"

# interfaces
.implements Lch/kingdoms/android/ui/network/AuctionSearchSettingView$OnCategoryViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/AuctionSearchSettingView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$1;->this$0:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;ILjava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const v2, -0xff0001

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 55
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$1;->this$0:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->access$3(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;)Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    move-result-object v4

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->setContentColor(I)V

    .line 71
    iget-object v1, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$1;->this$0:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->access$0(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;)Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    move-result-object v4

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->setContentColor(I)V

    .line 72
    iget-object v1, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$1;->this$0:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->access$4(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;)Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    move-result-object v1

    const/16 v4, 0xca

    if-ne v0, v4, :cond_4

    :goto_3
    invoke-virtual {v1, v2}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->setContentColor(I)V

    .line 73
    return-void

    .line 57
    :pswitch_1
    if-nez p2, :cond_0

    .line 58
    iget-object v1, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$1;->this$0:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->access$0(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;)Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    move-result-object v1

    iget-object v4, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$1;->this$0:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;

    invoke-static {v4}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->access$1(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->setCategories([Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 60
    iget-object v1, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$1;->this$0:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->access$0(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;)Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    move-result-object v1

    iget-object v4, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$1;->this$0:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;

    invoke-static {v4}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->access$2(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->setCategories([Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$1;->this$0:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView;->access$0(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;)Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->setCategories([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 70
    goto :goto_1

    :cond_3
    move v1, v3

    .line 71
    goto :goto_2

    :cond_4
    move v2, v3

    .line 72
    goto :goto_3

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
