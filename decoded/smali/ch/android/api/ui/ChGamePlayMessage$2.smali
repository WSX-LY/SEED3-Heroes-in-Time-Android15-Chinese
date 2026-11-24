.class Lch/android/api/ui/ChGamePlayMessage$2;
.super Ljava/lang/Object;
.source "ChGamePlayMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/ui/ChGamePlayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$0()Lch/android/api/ui/ChTextView;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/ui/ChTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$0()Lch/android/api/ui/ChTextView;

    move-result-object v0

    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const/4 v0, 0x0

    invoke-static {v0}, Lch/android/api/ui/ChGamePlayMessage;->access$2(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$0()Lch/android/api/ui/ChTextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setVisibility(I)V

    .line 167
    :cond_0
    return-void
.end method
