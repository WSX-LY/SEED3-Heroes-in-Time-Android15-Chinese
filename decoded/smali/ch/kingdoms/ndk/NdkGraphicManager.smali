.class public Lch/kingdoms/ndk/NdkGraphicManager;
.super Ljava/lang/Object;
.source "NdkGraphicManager.java"


# static fields
.field private static s_context:Landroid/content/Context;

.field private static s_dm:Landroid/util/DisplayMetrics;

.field private static sleepTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lch/kingdoms/ndk/NdkGraphicManager;->sleepTime:I

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callNativeGLinit()V
    .locals 0

    .prologue
    .line 46
    invoke-static {}, Lch/kingdoms/ndk/NdkGraphicManager;->initNdkGL()V

    .line 47
    return-void
.end method

.method public static callNativeTimerCallback()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lch/kingdoms/ndk/NdkGraphicManager;->timercallback()V

    .line 43
    return-void
.end method

.method public static getSleepTime()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lch/kingdoms/ndk/NdkGraphicManager;->sleepTime:I

    return v0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 2
    .param p0, "_activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lch/kingdoms/ndk/NdkGraphicManager;->s_context:Landroid/content/Context;

    .line 30
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkGraphicManager;->s_dm:Landroid/util/DisplayMetrics;

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lch/kingdoms/ndk/NdkGraphicManager;->s_dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 32
    const/4 v0, 0x1

    sput v0, Lch/kingdoms/ndk/NdkGraphicManager;->sleepTime:I

    .line 33
    return-void
.end method

.method private static native initNdkGL()V
.end method

.method public static setSleepTime(B)V
    .locals 0
    .param p0, "_delay"    # B

    .prologue
    .line 50
    sput p0, Lch/kingdoms/ndk/NdkGraphicManager;->sleepTime:I

    .line 51
    return-void
.end method

.method private static native timercallback()V
.end method
