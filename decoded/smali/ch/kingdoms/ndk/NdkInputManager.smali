.class public Lch/kingdoms/ndk/NdkInputManager;
.super Ljava/lang/Object;
.source "NdkInputManager.java"


# static fields
.field public static final KEY_UNSETGAME:I = -0x80000000

.field private static final MV_POINTER_PRESS_EVENT:I = 0x7d3

.field private static final MV_POINTER_RELEASE_EVENT:I = 0x7d4

.field private static isDown:Z

.field private static key:Landroid/graphics/Point;

.field private static keySema:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lch/kingdoms/ndk/NdkInputManager;->isDown:Z

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native callNativeHandleCletEvent(IIIII)V
.end method

.method public static native callNativeHandleCletKeyEvent(II)V
.end method

.method public static init(Landroid/graphics/Point;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .param p0, "key"    # Landroid/graphics/Point;
    .param p1, "keySema"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 42
    sput-object p0, Lch/kingdoms/ndk/NdkInputManager;->key:Landroid/graphics/Point;

    .line 44
    sput-object p1, Lch/kingdoms/ndk/NdkInputManager;->keySema:Ljava/util/concurrent/Semaphore;

    .line 45
    return-void
.end method

.method public static input(II)V
    .locals 3
    .param p0, "_type"    # I
    .param p1, "_key"    # I

    .prologue
    .line 49
    :try_start_0
    sget-object v1, Lch/kingdoms/ndk/NdkInputManager;->keySema:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 51
    sget-object v1, Lch/kingdoms/ndk/NdkInputManager;->key:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/16 v2, 0x458

    if-eq v1, v2, :cond_0

    .line 52
    sget-object v1, Lch/kingdoms/ndk/NdkInputManager;->key:Landroid/graphics/Point;

    iput p0, v1, Landroid/graphics/Point;->x:I

    .line 53
    sget-object v1, Lch/kingdoms/ndk/NdkInputManager;->key:Landroid/graphics/Point;

    iput p1, v1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    sget-object v1, Lch/kingdoms/ndk/NdkInputManager;->keySema:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 63
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    sget-object v1, Lch/kingdoms/ndk/NdkInputManager;->keySema:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 61
    sget-object v2, Lch/kingdoms/ndk/NdkInputManager;->keySema:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 62
    throw v1
.end method

.method public static input(IIIII)V
    .locals 0
    .param p0, "_action"    # I
    .param p1, "_x"    # I
    .param p2, "_y"    # I
    .param p3, "_w"    # I
    .param p4, "_h"    # I

    .prologue
    .line 66
    invoke-static {p0, p1, p2, p3, p4}, Lch/kingdoms/ndk/NdkInputManager;->callNativeHandleCletEvent(IIIII)V

    .line 67
    return-void
.end method

.method public static input(Landroid/view/MotionEvent;II)V
    .locals 5
    .param p0, "_event"    # Landroid/view/MotionEvent;
    .param p1, "_w"    # I
    .param p2, "_h"    # I

    .prologue
    const/4 v4, 0x1

    .line 70
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 73
    .local v0, "count":I
    if-le v0, v4, :cond_0

    .line 74
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v1, v3

    .line 75
    .local v1, "x":I
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v2, v3

    .line 82
    .local v2, "y":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3, v1, v2, p1, p2}, Lch/kingdoms/ndk/NdkInputManager;->callNativeHandleCletEvent(IIIII)V

    .line 83
    return-void

    .line 78
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 79
    .restart local v1    # "x":I
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .restart local v2    # "y":I
    goto :goto_0
.end method

.method public static inputCancel()V
    .locals 2

    .prologue
    .line 95
    const/16 v0, 0x3e8

    const/16 v1, 0x45c

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 97
    return-void
.end method

.method public static inputLeft()V
    .locals 2

    .prologue
    .line 102
    const/16 v0, 0x3e8

    const/16 v1, 0x44d

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 104
    return-void
.end method

.method public static inputOk()V
    .locals 2

    .prologue
    .line 88
    const/16 v0, 0x3e8

    const/16 v1, 0x45b

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 90
    return-void
.end method

.method public static inputRight()V
    .locals 2

    .prologue
    .line 109
    const/16 v0, 0x3e8

    const/16 v1, 0x44c

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 111
    return-void
.end method
