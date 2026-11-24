.class Lch/android/api/ui/ChPaidContentView$1;
.super Ljava/lang/Object;
.source "ChPaidContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/ui/ChPaidContentView;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/android/api/ui/ChPaidContentView;


# direct methods
.method constructor <init>(Lch/android/api/ui/ChPaidContentView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/ui/ChPaidContentView$1;->this$0:Lch/android/api/ui/ChPaidContentView;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lch/android/api/ui/ChPaidContentView$1;->this$0:Lch/android/api/ui/ChPaidContentView;

    invoke-static {v0}, Lch/android/api/ui/ChPaidContentView;->access$0(Lch/android/api/ui/ChPaidContentView;)Lch/android/api/ui/ChBackAnimationButton;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/ui/ChBackAnimationButton;->startAnimation()V

    .line 145
    return-void
.end method
