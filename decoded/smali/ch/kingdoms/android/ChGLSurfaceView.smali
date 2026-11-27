.class public Lch/kingdoms/android/ChGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "ChGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private final key:Landroid/graphics/Point;

.field private final keySema:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Landroid/graphics/Point;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_displayInfo"    # Lch/android/api/util/DisplayInfo;
    .param p3, "key"    # Landroid/graphics/Point;
    .param p4, "keySema"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-super {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 41
    iput-object p3, p0, Lch/kingdoms/android/ChGLSurfaceView;->key:Landroid/graphics/Point;

    .line 42
    iput-object p4, p0, Lch/kingdoms/android/ChGLSurfaceView;->keySema:Ljava/util/concurrent/Semaphore;

    .line 43
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 62
    iget-object v2, p0, Lch/kingdoms/android/ChGLSurfaceView;->key:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-eqz v2, :cond_0

    .line 64
    :try_start_0
    iget-object v2, p0, Lch/kingdoms/android/ChGLSurfaceView;->keySema:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 66
    iget-object v2, p0, Lch/kingdoms/android/ChGLSurfaceView;->key:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 67
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->unSet_Game()V

    .line 71
    :goto_0
    iget-object v2, p0, Lch/kingdoms/android/ChGLSurfaceView;->key:Landroid/graphics/Point;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object v2, p0, Lch/kingdoms/android/ChGLSurfaceView;->keySema:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 80
    :cond_0
    :goto_1
    const/16 v2, 0x4100

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 81
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 82
    invoke-static {}, Lch/kingdoms/ndk/SceneHdBridge;->tick()V

    .line 85
    :try_start_1
    const/4 v1, 0x1

    .line 86
    .local v1, "sleepTime":I
    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .end local v1    # "sleepTime":I
    :goto_2
    return-void

    .line 69
    :cond_1
    :try_start_2
    iget-object v2, p0, Lch/kingdoms/android/ChGLSurfaceView;->key:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lch/kingdoms/android/ChGLSurfaceView;->key:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Lch/kingdoms/ndk/NdkInputManager;->callNativeHandleCletKeyEvent(II)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    iget-object v2, p0, Lch/kingdoms/android/ChGLSurfaceView;->keySema:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .line 75
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    .line 76
    iget-object v3, p0, Lch/kingdoms/android/ChGLSurfaceView;->keySema:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 77
    throw v2

    .line 87
    :catch_1
    move-exception v0

    .line 88
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 111
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 117
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 96
    if-nez p3, :cond_0

    .line 97
    const/4 p3, 0x1

    .line 100
    :cond_0
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 101
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 102
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 104
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-static {p1, v2, v0, v2, v1}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 105
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 49
    invoke-static {}, Lch/kingdoms/ndk/NdkGraphicManager;->callNativeGLinit()V

    .line 50
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 51
    const/16 v0, 0x1d00

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 52
    invoke-interface {p1, v1, v1, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 54
    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 55
    return-void
.end method
