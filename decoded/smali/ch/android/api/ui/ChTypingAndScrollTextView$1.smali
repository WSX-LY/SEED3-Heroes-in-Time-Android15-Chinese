.class Lch/android/api/ui/ChTypingAndScrollTextView$1;
.super Ljava/lang/Object;
.source "ChTypingAndScrollTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/ui/ChTypingAndScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/android/api/ui/ChTypingAndScrollTextView;


# direct methods
.method constructor <init>(Lch/android/api/ui/ChTypingAndScrollTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/android/api/ui/ChTypingAndScrollTextView$1;)Lch/android/api/ui/ChTypingAndScrollTextView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x15e

    const/4 v3, 0x1

    .line 91
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$0(Lch/android/api/ui/ChTypingAndScrollTextView;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$1(Lch/android/api/ui/ChTypingAndScrollTextView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$2(Lch/android/api/ui/ChTypingAndScrollTextView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$3(Lch/android/api/ui/ChTypingAndScrollTextView;I)V

    .line 94
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$4(Lch/android/api/ui/ChTypingAndScrollTextView;)I

    move-result v0

    iget-object v1, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v1}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$0(Lch/android/api/ui/ChTypingAndScrollTextView;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$2(Lch/android/api/ui/ChTypingAndScrollTextView;)I

    move-result v0

    iget-object v1, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v1}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$0(Lch/android/api/ui/ChTypingAndScrollTextView;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v2}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$4(Lch/android/api/ui/ChTypingAndScrollTextView;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 96
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$3(Lch/android/api/ui/ChTypingAndScrollTextView;I)V

    .line 97
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$4(Lch/android/api/ui/ChTypingAndScrollTextView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$5(Lch/android/api/ui/ChTypingAndScrollTextView;I)V

    .line 98
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$4(Lch/android/api/ui/ChTypingAndScrollTextView;)I

    move-result v0

    iget-object v1, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v1}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$0(Lch/android/api/ui/ChTypingAndScrollTextView;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 100
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0, v3}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$6(Lch/android/api/ui/ChTypingAndScrollTextView;Z)V

    .line 101
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$7(Lch/android/api/ui/ChTypingAndScrollTextView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$8(Lch/android/api/ui/ChTypingAndScrollTextView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lch/android/api/ui/ChTypingAndScrollTextView$1$1;

    invoke-direct {v1, p0}, Lch/android/api/ui/ChTypingAndScrollTextView$1$1;-><init>(Lch/android/api/ui/ChTypingAndScrollTextView$1;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$4(Lch/android/api/ui/ChTypingAndScrollTextView;)I

    move-result v0

    iget-object v1, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v1}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$0(Lch/android/api/ui/ChTypingAndScrollTextView;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 114
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-virtual {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->postInvalidate()V

    .line 115
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$8(Lch/android/api/ui/ChTypingAndScrollTextView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v1}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$9(Lch/android/api/ui/ChTypingAndScrollTextView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v2}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$10(Lch/android/api/ui/ChTypingAndScrollTextView;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0, v3}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$6(Lch/android/api/ui/ChTypingAndScrollTextView;Z)V

    .line 118
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$7(Lch/android/api/ui/ChTypingAndScrollTextView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$8(Lch/android/api/ui/ChTypingAndScrollTextView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lch/android/api/ui/ChTypingAndScrollTextView$1$2;

    invoke-direct {v1, p0}, Lch/android/api/ui/ChTypingAndScrollTextView$1$2;-><init>(Lch/android/api/ui/ChTypingAndScrollTextView$1;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 130
    :cond_3
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$11(Lch/android/api/ui/ChTypingAndScrollTextView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v1}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$0(Lch/android/api/ui/ChTypingAndScrollTextView;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v2}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$12(Lch/android/api/ui/ChTypingAndScrollTextView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v1}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$13(Lch/android/api/ui/ChTypingAndScrollTextView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 131
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0, v3}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$6(Lch/android/api/ui/ChTypingAndScrollTextView;Z)V

    .line 132
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$7(Lch/android/api/ui/ChTypingAndScrollTextView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$7(Lch/android/api/ui/ChTypingAndScrollTextView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 138
    :cond_4
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-virtual {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->postInvalidate()V

    .line 139
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$8(Lch/android/api/ui/ChTypingAndScrollTextView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v1}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$9(Lch/android/api/ui/ChTypingAndScrollTextView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lch/android/api/ui/ChTypingAndScrollTextView$1;->this$0:Lch/android/api/ui/ChTypingAndScrollTextView;

    invoke-static {v2}, Lch/android/api/ui/ChTypingAndScrollTextView;->access$10(Lch/android/api/ui/ChTypingAndScrollTextView;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
