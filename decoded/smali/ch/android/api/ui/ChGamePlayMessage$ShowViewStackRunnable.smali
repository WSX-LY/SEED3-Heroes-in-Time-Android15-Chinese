.class Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;
.super Ljava/lang/Object;
.source "ChGamePlayMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/ui/ChGamePlayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShowViewStackRunnable"
.end annotation


# instance fields
.field private index:I

.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 322
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$7()[Lch/android/api/ui/ChTextView;

    move-result-object v2

    iget v3, p0, Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;->index:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$7()[Lch/android/api/ui/ChTextView;

    move-result-object v2

    iget v3, p0, Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;->index:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChTextView;->setVisibility(I)V

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 325
    .local v0, "curTime":J
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$13()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 326
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$11()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lch/android/api/ui/ChGamePlayMessage;->access$12(I)V

    .line 328
    :cond_0
    invoke-static {v0, v1}, Lch/android/api/ui/ChGamePlayMessage;->access$14(J)V

    .line 330
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$4()Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$10()Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 331
    return-void
.end method

.method public setName(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 315
    iput-object p1, p0, Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;->name:Ljava/lang/String;

    .line 316
    iput p2, p0, Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;->index:I

    .line 317
    return-void
.end method
