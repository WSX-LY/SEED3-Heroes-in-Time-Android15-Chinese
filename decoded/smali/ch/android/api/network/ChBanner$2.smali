.class Lch/android/api/network/ChBanner$2;
.super Ljava/lang/Object;
.source "ChBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/network/ChBanner;->popUpBanner(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/android/api/network/ChBanner;

.field private final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Lch/android/api/network/ChBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    iput-object p2, p0, Lch/android/api/network/ChBanner$2;->val$link:Ljava/lang/String;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/android/api/network/ChBanner$2;)Lch/android/api/network/ChBanner;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 156
    iget-object v2, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    invoke-static {v2}, Lch/android/api/network/ChBanner;->access$4(Lch/android/api/network/ChBanner;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    invoke-static {v2}, Lch/android/api/network/ChBanner;->access$5(Lch/android/api/network/ChBanner;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lch/android/api/network/ChBanner;->access$6(Lch/android/api/network/ChBanner;Landroid/widget/ImageView;)V

    .line 159
    iget-object v2, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    invoke-static {v2}, Lch/android/api/network/ChBanner;->access$7(Lch/android/api/network/ChBanner;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020024

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    iget-object v2, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lch/android/api/network/ChBanner;->access$8(Lch/android/api/network/ChBanner;Landroid/widget/ImageView;)V

    .line 162
    iget-object v2, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    invoke-static {v2}, Lch/android/api/network/ChBanner;->access$9(Lch/android/api/network/ChBanner;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    invoke-static {v3}, Lch/android/api/network/ChBanner;->access$4(Lch/android/api/network/ChBanner;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    iget-object v2, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lch/android/api/network/ChBanner;->access$10(Lch/android/api/network/ChBanner;Landroid/widget/RelativeLayout;)V

    .line 166
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 167
    .local v1, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 168
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 169
    iget-object v2, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    invoke-static {v2}, Lch/android/api/network/ChBanner;->access$11(Lch/android/api/network/ChBanner;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    invoke-static {v3}, Lch/android/api/network/ChBanner;->access$9(Lch/android/api/network/ChBanner;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 173
    .restart local v1    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 174
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 175
    iget-object v2, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    invoke-static {v2}, Lch/android/api/network/ChBanner;->access$11(Lch/android/api/network/ChBanner;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    invoke-static {v3}, Lch/android/api/network/ChBanner;->access$7(Lch/android/api/network/ChBanner;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v2, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    invoke-static {v2}, Lch/android/api/network/ChBanner;->access$5(Lch/android/api/network/ChBanner;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    invoke-static {v3}, Lch/android/api/network/ChBanner;->access$11(Lch/android/api/network/ChBanner;)Landroid/widget/RelativeLayout;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v2, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    invoke-static {v2}, Lch/android/api/network/ChBanner;->access$7(Lch/android/api/network/ChBanner;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lch/android/api/network/ChBanner$2$1;

    invoke-direct {v3, p0}, Lch/android/api/network/ChBanner$2$1;-><init>(Lch/android/api/network/ChBanner$2;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v2, p0, Lch/android/api/network/ChBanner$2;->this$0:Lch/android/api/network/ChBanner;

    invoke-static {v2}, Lch/android/api/network/ChBanner;->access$9(Lch/android/api/network/ChBanner;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lch/android/api/network/ChBanner$2$2;

    iget-object v4, p0, Lch/android/api/network/ChBanner$2;->val$link:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lch/android/api/network/ChBanner$2$2;-><init>(Lch/android/api/network/ChBanner$2;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method
