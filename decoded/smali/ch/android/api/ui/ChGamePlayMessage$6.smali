.class Lch/android/api/ui/ChGamePlayMessage$6;
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
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$7()[Lch/android/api/ui/ChTextView;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 386
    invoke-static {v3}, Lch/android/api/ui/ChGamePlayMessage;->access$9(I)V

    .line 387
    invoke-static {v3}, Lch/android/api/ui/ChGamePlayMessage;->access$12(I)V

    .line 388
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$8()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 389
    return-void

    .line 384
    :cond_0
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$7()[Lch/android/api/ui/ChTextView;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChTextView;->setVisibility(I)V

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
