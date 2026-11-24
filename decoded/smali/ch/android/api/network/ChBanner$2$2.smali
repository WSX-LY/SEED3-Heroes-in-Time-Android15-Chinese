.class Lch/android/api/network/ChBanner$2$2;
.super Ljava/lang/Object;
.source "ChBanner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/network/ChBanner$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/android/api/network/ChBanner$2;

.field private final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Lch/android/api/network/ChBanner$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/network/ChBanner$2$2;->this$1:Lch/android/api/network/ChBanner$2;

    iput-object p2, p0, Lch/android/api/network/ChBanner$2$2;->val$link:Ljava/lang/String;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lch/android/api/network/ChBanner$2$2;->val$link:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lch/android/api/network/ChBanner$2$2;->this$1:Lch/android/api/network/ChBanner$2;

    invoke-static {v1}, Lch/android/api/network/ChBanner$2;->access$0(Lch/android/api/network/ChBanner$2;)Lch/android/api/network/ChBanner;

    move-result-object v1

    invoke-static {v1}, Lch/android/api/network/ChBanner;->access$5(Lch/android/api/network/ChBanner;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 195
    return-void
.end method
