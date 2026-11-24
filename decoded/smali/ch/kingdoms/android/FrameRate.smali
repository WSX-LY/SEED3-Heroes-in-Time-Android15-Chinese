.class public Lch/kingdoms/android/FrameRate;
.super Ljava/lang/Object;
.source "FrameRate.java"


# instance fields
.field private final FRAME_RATE:I

.field private final HISTORY_SIZE:I

.field private final NOT_INITIALIZED:I

.field private final SEC_DIV_FRAME_RATE:I

.field private final SEC_MULTI_FRAME_RATE:I

.field private m_curTime:J

.field private m_delay:I

.field private m_index:I

.field private m_preTime:J

.field private m_timeHistory:[I

.field private m_totalTime:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "_frameRate"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v2, -0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v2, p0, Lch/kingdoms/android/FrameRate;->NOT_INITIALIZED:I

    .line 5
    iput v3, p0, Lch/kingdoms/android/FrameRate;->HISTORY_SIZE:I

    .line 18
    iput p1, p0, Lch/kingdoms/android/FrameRate;->FRAME_RATE:I

    .line 19
    iget v0, p0, Lch/kingdoms/android/FrameRate;->FRAME_RATE:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lch/kingdoms/android/FrameRate;->SEC_MULTI_FRAME_RATE:I

    .line 20
    const/16 v0, 0x3e8

    iget v1, p0, Lch/kingdoms/android/FrameRate;->FRAME_RATE:I

    div-int/2addr v0, v1

    iput v0, p0, Lch/kingdoms/android/FrameRate;->SEC_DIV_FRAME_RATE:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lch/kingdoms/android/FrameRate;->m_index:I

    .line 23
    new-array v0, v3, [I

    iput-object v0, p0, Lch/kingdoms/android/FrameRate;->m_timeHistory:[I

    .line 25
    iput v2, p0, Lch/kingdoms/android/FrameRate;->m_totalTime:I

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lch/kingdoms/android/FrameRate;->m_preTime:J

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lch/kingdoms/android/FrameRate;->m_curTime:J

    .line 28
    iput v2, p0, Lch/kingdoms/android/FrameRate;->m_delay:I

    .line 29
    return-void
.end method


# virtual methods
.method public getFrameRate()I
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lch/kingdoms/android/FrameRate;->m_totalTime:I

    if-lez v0, :cond_0

    .line 33
    iget v0, p0, Lch/kingdoms/android/FrameRate;->SEC_MULTI_FRAME_RATE:I

    iget v1, p0, Lch/kingdoms/android/FrameRate;->m_totalTime:I

    div-int/2addr v0, v1

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSleepTime()I
    .locals 4

    .prologue
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lch/kingdoms/android/FrameRate;->m_curTime:J

    .line 42
    iget-wide v0, p0, Lch/kingdoms/android/FrameRate;->m_curTime:J

    iget-wide v2, p0, Lch/kingdoms/android/FrameRate;->m_preTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/FrameRate;->m_delay:I

    .line 44
    iget v0, p0, Lch/kingdoms/android/FrameRate;->m_totalTime:I

    iget v1, p0, Lch/kingdoms/android/FrameRate;->m_delay:I

    add-int/2addr v0, v1

    iput v0, p0, Lch/kingdoms/android/FrameRate;->m_totalTime:I

    .line 45
    iget v0, p0, Lch/kingdoms/android/FrameRate;->m_totalTime:I

    iget-object v1, p0, Lch/kingdoms/android/FrameRate;->m_timeHistory:[I

    iget v2, p0, Lch/kingdoms/android/FrameRate;->m_index:I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lch/kingdoms/android/FrameRate;->m_totalTime:I

    .line 46
    iget-object v0, p0, Lch/kingdoms/android/FrameRate;->m_timeHistory:[I

    iget v1, p0, Lch/kingdoms/android/FrameRate;->m_index:I

    iget v2, p0, Lch/kingdoms/android/FrameRate;->m_delay:I

    aput v2, v0, v1

    .line 47
    iget v0, p0, Lch/kingdoms/android/FrameRate;->m_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/kingdoms/android/FrameRate;->m_index:I

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lch/kingdoms/android/FrameRate;->m_index:I

    .line 49
    iget-wide v0, p0, Lch/kingdoms/android/FrameRate;->m_curTime:J

    iput-wide v0, p0, Lch/kingdoms/android/FrameRate;->m_preTime:J

    .line 51
    iget v0, p0, Lch/kingdoms/android/FrameRate;->SEC_DIV_FRAME_RATE:I

    iget v1, p0, Lch/kingdoms/android/FrameRate;->m_totalTime:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    return v0
.end method
