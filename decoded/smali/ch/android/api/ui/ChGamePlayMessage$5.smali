.class Lch/android/api/ui/ChGamePlayMessage$5;
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
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 340
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$6()I

    move-result v2

    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$7()[Lch/android/api/ui/ChTextView;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_2

    .line 342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$7()[Lch/android/api/ui/ChTextView;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    .line 345
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$8()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 346
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 347
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$7()[Lch/android/api/ui/ChTextView;

    move-result-object v2

    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$7()[Lch/android/api/ui/ChTextView;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :goto_1
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$4()Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$10()Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 376
    .end local v1    # "name":Ljava/lang/String;
    :goto_2
    return-void

    .line 343
    :cond_0
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$7()[Lch/android/api/ui/ChTextView;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$7()[Lch/android/api/ui/ChTextView;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lch/android/api/ui/ChTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$7()[Lch/android/api/ui/ChTextView;

    move-result-object v2

    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$7()[Lch/android/api/ui/ChTextView;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v6}, Lch/android/api/ui/ChTextView;->setVisibility(I)V

    .line 350
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$6()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lch/android/api/ui/ChGamePlayMessage;->access$9(I)V

    goto :goto_1

    .line 355
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$6()I

    move-result v2

    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$11()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_5

    .line 358
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$6()I

    move-result v2

    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$11()I

    move-result v3

    if-gt v2, v3, :cond_7

    .line 359
    const/4 v0, 0x0

    :goto_4
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$7()[Lch/android/api/ui/ChTextView;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_6

    .line 362
    invoke-static {v5}, Lch/android/api/ui/ChGamePlayMessage;->access$9(I)V

    .line 363
    invoke-static {v5}, Lch/android/api/ui/ChGamePlayMessage;->access$12(I)V

    .line 364
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$8()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 370
    :cond_3
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$6()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$11()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Lch/android/api/ui/ChGamePlayMessage;->access$9(I)V

    .line 371
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$6()I

    move-result v2

    if-gez v2, :cond_4

    .line 372
    invoke-static {v5}, Lch/android/api/ui/ChGamePlayMessage;->access$9(I)V

    .line 374
    :cond_4
    invoke-static {v5}, Lch/android/api/ui/ChGamePlayMessage;->access$12(I)V

    goto :goto_2

    .line 356
    :cond_5
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$7()[Lch/android/api/ui/ChTextView;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$7()[Lch/android/api/ui/ChTextView;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lch/android/api/ui/ChTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 360
    :cond_6
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$7()[Lch/android/api/ui/ChTextView;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Lch/android/api/ui/ChTextView;->setVisibility(I)V

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 366
    :cond_7
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$6()I

    move-result v2

    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$11()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x1

    :goto_5
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$6()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 367
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$7()[Lch/android/api/ui/ChTextView;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Lch/android/api/ui/ChTextView;->setVisibility(I)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method
