.class Lch/kingdoms/android/dpad/DpadInfo;
.super Ljava/lang/Object;
.source "DpadInfo.java"


# instance fields
.field public dirDefaultDrawableId:I

.field public dirDownDrawableId:I

.field public dirLeftDrawableId:I

.field public dirRightDrawableId:I

.field public dirUpDrawableId:I

.field public fireDrawableId:I

.field public menuDrawableId:I

.field public slotDrawableId:I

.field public solotCoordinates:[Landroid/graphics/Point;

.field public statDrawableId:I

.field public useCustomLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/dpad/DpadInfo;->useCustomLayout:Z

    .line 24
    iput v1, p0, Lch/kingdoms/android/dpad/DpadInfo;->dirDefaultDrawableId:I

    .line 25
    iput v1, p0, Lch/kingdoms/android/dpad/DpadInfo;->dirUpDrawableId:I

    .line 26
    iput v1, p0, Lch/kingdoms/android/dpad/DpadInfo;->dirDownDrawableId:I

    .line 27
    iput v1, p0, Lch/kingdoms/android/dpad/DpadInfo;->dirLeftDrawableId:I

    .line 28
    iput v1, p0, Lch/kingdoms/android/dpad/DpadInfo;->dirRightDrawableId:I

    .line 30
    iput v1, p0, Lch/kingdoms/android/dpad/DpadInfo;->fireDrawableId:I

    .line 31
    iput v1, p0, Lch/kingdoms/android/dpad/DpadInfo;->menuDrawableId:I

    .line 32
    iput v1, p0, Lch/kingdoms/android/dpad/DpadInfo;->statDrawableId:I

    .line 33
    iput v1, p0, Lch/kingdoms/android/dpad/DpadInfo;->slotDrawableId:I

    .line 34
    return-void
.end method
