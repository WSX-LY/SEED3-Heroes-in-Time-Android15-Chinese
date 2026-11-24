.class public Lch/kingdoms/ndk/data/SaveSlotInfo;
.super Ljava/lang/Object;
.source "SaveSlotInfo.java"


# instance fields
.field public classLv:S

.field public classType:S

.field public day:I

.field public exist:Z

.field public hour:I

.field public min:I

.field public month:I

.field public score:I

.field public sec:I

.field public year:I


# direct methods
.method public constructor <init>(ZSSIIIIIII)V
    .locals 0
    .param p1, "exist"    # Z
    .param p2, "classType"    # S
    .param p3, "classLv"    # S
    .param p4, "score"    # I
    .param p5, "year"    # I
    .param p6, "month"    # I
    .param p7, "day"    # I
    .param p8, "hour"    # I
    .param p9, "min"    # I
    .param p10, "sec"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lch/kingdoms/ndk/data/SaveSlotInfo;->exist:Z

    .line 18
    iput-short p2, p0, Lch/kingdoms/ndk/data/SaveSlotInfo;->classType:S

    .line 19
    iput-short p3, p0, Lch/kingdoms/ndk/data/SaveSlotInfo;->classLv:S

    .line 20
    iput p4, p0, Lch/kingdoms/ndk/data/SaveSlotInfo;->score:I

    .line 21
    iput p5, p0, Lch/kingdoms/ndk/data/SaveSlotInfo;->year:I

    .line 22
    iput p6, p0, Lch/kingdoms/ndk/data/SaveSlotInfo;->month:I

    .line 23
    iput p7, p0, Lch/kingdoms/ndk/data/SaveSlotInfo;->day:I

    .line 24
    iput p8, p0, Lch/kingdoms/ndk/data/SaveSlotInfo;->hour:I

    .line 25
    iput p9, p0, Lch/kingdoms/ndk/data/SaveSlotInfo;->min:I

    .line 26
    iput p10, p0, Lch/kingdoms/ndk/data/SaveSlotInfo;->sec:I

    .line 27
    return-void
.end method
