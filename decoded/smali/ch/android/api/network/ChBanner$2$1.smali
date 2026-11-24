.class Lch/android/api/network/ChBanner$2$1;
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


# direct methods
.method constructor <init>(Lch/android/api/network/ChBanner$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/network/ChBanner$2$1;->this$1:Lch/android/api/network/ChBanner$2;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lch/android/api/network/ChBanner$2$1;->this$1:Lch/android/api/network/ChBanner$2;

    invoke-static {v0}, Lch/android/api/network/ChBanner$2;->access$0(Lch/android/api/network/ChBanner$2;)Lch/android/api/network/ChBanner;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/network/ChBanner;->removeView()V

    .line 185
    const/4 v0, 0x1

    invoke-static {v0}, Lch/android/api/network/ChBanner;->access$12(Z)V

    .line 186
    return-void
.end method
