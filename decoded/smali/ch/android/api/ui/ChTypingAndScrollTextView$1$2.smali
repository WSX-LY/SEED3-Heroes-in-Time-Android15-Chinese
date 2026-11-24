.class Lch/android/api/ui/ChTypingAndScrollTextView$1$2;
.super Ljava/lang/Object;
.source "ChTypingAndScrollTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/ui/ChTypingAndScrollTextView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/android/api/ui/ChTypingAndScrollTextView$1;


# direct methods
.method constructor <init>(Lch/android/api/ui/ChTypingAndScrollTextView$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1$2;->this$1:Lch/android/api/ui/ChTypingAndScrollTextView$1;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1$2;->this$1:Lch/android/api/ui/ChTypingAndScrollTextView$1;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView$1;->access$0(Lch/android/api/ui/ChTypingAndScrollTextView$1;)Lch/android/api/ui/ChTypingAndScrollTextView;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$7(Lch/android/api/ui/ChTypingAndScrollTextView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 124
    return-void
.end method
