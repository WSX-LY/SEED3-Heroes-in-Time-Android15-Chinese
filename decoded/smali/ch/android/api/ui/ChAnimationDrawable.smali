.class public Lch/android/api/ui/ChAnimationDrawable;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "ChAnimationDrawable.java"


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mCurFrameHack:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lch/android/api/ui/ChAnimationDrawable;->mCurFrameHack:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lch/android/api/ui/ChAnimationDrawable;->mCallback:Ljava/lang/Runnable;

    .line 6
    return-void
.end method


# virtual methods
.method public getOnFinishCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lch/android/api/ui/ChAnimationDrawable;->mCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 23
    invoke-super {p0}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    .line 25
    iget v0, p0, Lch/android/api/ui/ChAnimationDrawable;->mCurFrameHack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/android/api/ui/ChAnimationDrawable;->mCurFrameHack:I

    .line 26
    iget v0, p0, Lch/android/api/ui/ChAnimationDrawable;->mCurFrameHack:I

    invoke-virtual {p0}, Lch/android/api/ui/ChAnimationDrawable;->getNumberOfFrames()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lch/android/api/ui/ChAnimationDrawable;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lch/android/api/ui/ChAnimationDrawable;->mCallback:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 28
    iget v3, p0, Lch/android/api/ui/ChAnimationDrawable;->mCurFrameHack:I

    invoke-virtual {p0, v3}, Lch/android/api/ui/ChAnimationDrawable;->getDuration(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 27
    invoke-virtual {p0, v0, v1, v2}, Lch/android/api/ui/ChAnimationDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 30
    :cond_0
    return-void
.end method

.method public setOnFinishCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 44
    iput-object p1, p0, Lch/android/api/ui/ChAnimationDrawable;->mCallback:Ljava/lang/Runnable;

    .line 45
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lch/android/api/ui/ChAnimationDrawable;->mCurFrameHack:I

    .line 41
    return-void
.end method
