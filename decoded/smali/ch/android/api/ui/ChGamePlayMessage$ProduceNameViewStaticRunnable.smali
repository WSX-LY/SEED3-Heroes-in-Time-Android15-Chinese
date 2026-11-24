.class Lch/android/api/ui/ChGamePlayMessage$ProduceNameViewStaticRunnable;
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
    name = "ProduceNameViewStaticRunnable"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lch/android/api/ui/ChGamePlayMessage$ProduceNameViewStaticRunnable;)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Lch/android/api/ui/ChGamePlayMessage$ProduceNameViewStaticRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 294
    :try_start_0
    invoke-static {}, Lch/android/api/ui/ChGamePlayMessage;->access$8()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    iget-object v2, p0, Lch/android/api/ui/ChGamePlayMessage$ProduceNameViewStaticRunnable;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Lch/android/api/ui/ChGamePlayMessage$ProduceNameViewStaticRunnable;->name:Ljava/lang/String;

    .line 288
    return-void
.end method
