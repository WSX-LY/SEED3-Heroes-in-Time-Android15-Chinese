.class Lch/kingdoms/android/ui/MainMenuUi$1;
.super Ljava/lang/Object;
.source "MainMenuUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainMenuUi;->endLogo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/MainMenuUi;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/MainMenuUi;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi$1;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    iput-object p2, p0, Lch/kingdoms/android/ui/MainMenuUi$1;->val$handler:Landroid/os/Handler;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/MainMenuUi$1;)Lch/kingdoms/android/ui/MainMenuUi;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$1;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 95
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$1;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi;->access$6(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/ui/ChImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$1;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi;->access$6(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/ui/ChImageView;

    move-result-object v0

    const v1, 0x7f0201f8

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/android/ui/MainMenuUi$1$1;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/MainMenuUi$1$1;-><init>(Lch/kingdoms/android/ui/MainMenuUi$1;)V

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lch/kingdoms/android/ui/MainMenuUi$1;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/MainMenuUi;->access$7(Lch/kingdoms/android/ui/MainMenuUi;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    .line 98
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lch/kingdoms/android/ui/MainMenuUi$1$2;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/MainMenuUi$1$2;-><init>(Lch/kingdoms/android/ui/MainMenuUi$1;)V

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lch/kingdoms/android/ui/MainMenuUi$1;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/MainMenuUi;->access$7(Lch/kingdoms/android/ui/MainMenuUi;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    int-to-long v2, v2

    .line 108
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    return-void
.end method
