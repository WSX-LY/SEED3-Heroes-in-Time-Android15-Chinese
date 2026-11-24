.class Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;
.super Ljava/lang/Object;
.source "AuctionSearchSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;-><init>(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;->this$1:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;->this$1:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->access$0(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;->this$1:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->access$1(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->access$2(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;I)V

    .line 203
    iget-object v1, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;->this$1:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;->this$1:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->access$1(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)I

    move-result v0

    iget-object v2, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;->this$1:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->access$0(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;->this$1:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->access$1(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)I

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->access$2(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;I)V

    .line 204
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;->this$1:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->access$3(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)Lch/android/api/ui/ChTextView;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;->this$1:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->access$0(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;->this$1:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->access$1(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;->this$1:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->access$4(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)Lch/kingdoms/android/ui/network/AuctionSearchSettingView$OnCategoryViewClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;->this$1:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->access$4(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)Lch/kingdoms/android/ui/network/AuctionSearchSettingView$OnCategoryViewClickListener;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;->this$1:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->access$1(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)I

    move-result v1

    iget-object v2, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;->this$1:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->access$0(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;->this$1:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->access$1(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-interface {v0, p1, v1, v2}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$OnCategoryViewClickListener;->onClick(Landroid/view/View;ILjava/lang/String;)V

    .line 209
    :cond_0
    return-void

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
