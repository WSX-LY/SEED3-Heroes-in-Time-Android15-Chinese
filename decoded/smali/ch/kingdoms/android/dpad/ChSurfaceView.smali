.class abstract Lch/kingdoms/android/dpad/ChSurfaceView;
.super Landroid/view/SurfaceView;
.source "ChSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lch/android/api/ui/IChView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;
    }
.end annotation


# instance fields
.field private final SURFACE_HOLDER:Landroid/view/SurfaceHolder;

.field private m_thread:Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0}, Lch/kingdoms/android/dpad/ChSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/dpad/ChSurfaceView;->SURFACE_HOLDER:Landroid/view/SurfaceHolder;

    .line 18
    new-instance v0, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;

    invoke-direct {v0, p0}, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;-><init>(Lch/kingdoms/android/dpad/ChSurfaceView;)V

    iput-object v0, p0, Lch/kingdoms/android/dpad/ChSurfaceView;->m_thread:Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;

    .line 19
    iget-object v0, p0, Lch/kingdoms/android/dpad/ChSurfaceView;->SURFACE_HOLDER:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 21
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/dpad/ChSurfaceView;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lch/kingdoms/android/dpad/ChSurfaceView;->SURFACE_HOLDER:Landroid/view/SurfaceHolder;

    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->draw(Landroid/graphics/Canvas;)V

    .line 33
    invoke-virtual {p0, p1}, Lch/kingdoms/android/dpad/ChSurfaceView;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    return-void
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public releaseRsources()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 50
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 55
    iget-object v0, p0, Lch/kingdoms/android/dpad/ChSurfaceView;->m_thread:Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;

    invoke-virtual {v0}, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;

    invoke-direct {v0, p0}, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;-><init>(Lch/kingdoms/android/dpad/ChSurfaceView;)V

    iput-object v0, p0, Lch/kingdoms/android/dpad/ChSurfaceView;->m_thread:Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;

    .line 58
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/dpad/ChSurfaceView;->m_thread:Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;

    invoke-virtual {v0}, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 60
    iget-object v0, p0, Lch/kingdoms/android/dpad/ChSurfaceView;->m_thread:Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;->setRunning(Z)V

    .line 61
    iget-object v0, p0, Lch/kingdoms/android/dpad/ChSurfaceView;->m_thread:Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;

    invoke-virtual {v0}, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;->start()V

    .line 63
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 67
    iget-object v2, p0, Lch/kingdoms/android/dpad/ChSurfaceView;->m_thread:Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;->setRunning(Z)V

    .line 68
    const/4 v1, 0x1

    .line 69
    .local v1, "retry":Z
    :goto_0
    if-nez v1, :cond_0

    .line 78
    return-void

    .line 71
    :cond_0
    :try_start_0
    iget-object v2, p0, Lch/kingdoms/android/dpad/ChSurfaceView;->m_thread:Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;

    invoke-virtual {v2}, Lch/kingdoms/android/dpad/ChSurfaceView$ZS_SurfaceViewThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    const/4 v1, 0x0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "KD"

    .line 75
    const-string v3, "wait thread end. [GameSurfaceView.surfaceDestroyed]"

    .line 74
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
