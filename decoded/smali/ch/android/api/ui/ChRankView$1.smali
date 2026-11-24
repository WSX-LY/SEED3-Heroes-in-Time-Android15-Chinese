.class Lch/android/api/ui/ChRankView$1;
.super Ljava/lang/Object;
.source "ChRankView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/ui/ChRankView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/android/api/ui/ChRankView;


# direct methods
.method constructor <init>(Lch/android/api/ui/ChRankView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/ui/ChRankView$1;->this$0:Lch/android/api/ui/ChRankView;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lch/android/api/ui/ChRankView$1;->this$0:Lch/android/api/ui/ChRankView;

    invoke-static {v0}, Lch/android/api/ui/ChRankView;->access$0(Lch/android/api/ui/ChRankView;)Lch/android/api/ui/ChBackAnimationButton;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/ui/ChBackAnimationButton;->startAnimation()V

    .line 187
    return-void
.end method
