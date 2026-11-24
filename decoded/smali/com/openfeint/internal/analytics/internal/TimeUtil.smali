.class public Lcom/openfeint/internal/analytics/internal/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# static fields
.field private static accumulated_ms:J

.field private static activity_start_time:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAccumulated_ms(J)V
    .locals 2
    .param p0, "addValue"    # J

    .prologue
    .line 10
    sget-wide v0, Lcom/openfeint/internal/analytics/internal/TimeUtil;->accumulated_ms:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/openfeint/internal/analytics/internal/TimeUtil;->accumulated_ms:J

    .line 11
    return-void
.end method

.method public static getAccumulated_ms()J
    .locals 2

    .prologue
    .line 13
    sget-wide v0, Lcom/openfeint/internal/analytics/internal/TimeUtil;->accumulated_ms:J

    return-wide v0
.end method

.method public static getActivity_start_time()Ljava/util/Date;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/openfeint/internal/analytics/internal/TimeUtil;->activity_start_time:Ljava/util/Date;

    return-object v0
.end method

.method public static setActivity_start_time(Ljava/util/Date;)V
    .locals 0
    .param p0, "activity_start_time"    # Ljava/util/Date;

    .prologue
    .line 16
    sput-object p0, Lcom/openfeint/internal/analytics/internal/TimeUtil;->activity_start_time:Ljava/util/Date;

    .line 17
    return-void
.end method
