.class Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;
.super Ljava/lang/Thread;
.source "ChSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/dpad/ChSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZS_SurfaceViewThread"
.end annotation


# instance fields
.field private m_isRunning:Z

.field final synthetic this$0:Lch/kingdoms/android/dpad/ChSurfaceView;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/dpad/ChSurfaceView;)V
    .locals 1

    .prologue
    .line 83
    iput-object p1, p0, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;->this$0:Lch/kingdoms/android/dpad/ChSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;->m_isRunning:Z

    .line 85
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 95
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;->m_isRunning:Z

    if-nez v1, :cond_1

    .line 113
    return-void

    .line 96
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "canvas":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v1, p0, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;->this$0:Lch/kingdoms/android/dpad/ChSurfaceView;

    invoke-static {v1}, Lch/kingdoms/android/dpad/ChSurfaceView;->access$0(Lch/kingdoms/android/dpad/ChSurfaceView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;->this$0:Lch/kingdoms/android/dpad/ChSurfaceView;

    invoke-static {v1}, Lch/kingdoms/android/dpad/ChSurfaceView;->access$0(Lch/kingdoms/android/dpad/ChSurfaceView;)Landroid/view/SurfaceHolder;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    :try_start_1
    iget-object v1, p0, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;->this$0:Lch/kingdoms/android/dpad/ChSurfaceView;

    invoke-virtual {v1, v0}, Lch/kingdoms/android/dpad/ChSurfaceView;->draw(Landroid/graphics/Canvas;)V

    .line 100
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;->this$0:Lch/kingdoms/android/dpad/ChSurfaceView;

    invoke-static {v1}, Lch/kingdoms/android/dpad/ChSurfaceView;->access$0(Lch/kingdoms/android/dpad/ChSurfaceView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    :catchall_1
    move-exception v1

    .line 108
    if-eqz v0, :cond_2

    .line 109
    iget-object v2, p0, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;->this$0:Lch/kingdoms/android/dpad/ChSurfaceView;

    invoke-static {v2}, Lch/kingdoms/android/dpad/ChSurfaceView;->access$0(Lch/kingdoms/android/dpad/ChSurfaceView;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 111
    :cond_2
    throw v1
.end method

.method public setRunning(Z)V
    .locals 0
    .param p1, "run_"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;->m_isRunning:Z

    .line 89
    return-void
.end method
