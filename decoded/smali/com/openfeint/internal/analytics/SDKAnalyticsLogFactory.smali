.class public Lcom/openfeint/internal/analytics/SDKAnalyticsLogFactory;
.super Ljava/lang/Object;
.source "SDKAnalyticsLogFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBasicEvent(Lcom/openfeint/internal/analytics/IAnalyticsLogger;)V
    .locals 12
    .param p0, "event"    # Lcom/openfeint/internal/analytics/IAnalyticsLogger;

    .prologue
    const/high16 v11, 0x447a0000    # 1000.0f

    .line 26
    if-eqz p0, :cond_0

    .line 28
    const-string v6, "gsdi"

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v7

    invoke-virtual {v7}, Lcom/openfeint/internal/OpenFeintInternal;->getGSDI()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v6, v7}, Lcom/openfeint/internal/analytics/IAnalyticsLogger;->makeEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    const-string v6, "session_id"

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v7

    invoke-virtual {v7}, Lcom/openfeint/internal/OpenFeintInternal;->getSessionID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v6, v7}, Lcom/openfeint/internal/analytics/IAnalyticsLogger;->makeEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/openfeint/internal/OpenFeintInternal;->getSessionStartDate()Ljava/util/Date;

    move-result-object v1

    .line 34
    .local v1, "date":Ljava/util/Date;
    const-string v6, "session_length"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-float v7, v7

    div-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {p0, v6, v7}, Lcom/openfeint/internal/analytics/IAnalyticsLogger;->makeEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v0

    .line 38
    .local v0, "currentUser":Lcom/openfeint/api/resource/User;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/openfeint/api/resource/User;->userID()Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "userId":Ljava/lang/String;
    :goto_0
    const-string v6, "user_id"

    invoke-interface {p0, v6, v5}, Lcom/openfeint/internal/analytics/IAnalyticsLogger;->makeEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Lcom/openfeint/internal/analytics/internal/TimeUtil;->getAccumulated_ms()J

    move-result-wide v2

    .line 42
    .local v2, "session_play_time_ms":J
    long-to-float v6, v2

    div-float v4, v6, v11

    .line 43
    .local v4, "session_play_time_second":F
    const-string v6, "session_play_time"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {p0, v6, v7}, Lcom/openfeint/internal/analytics/IAnalyticsLogger;->makeEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    .end local v0    # "currentUser":Lcom/openfeint/api/resource/User;
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "session_play_time_ms":J
    .end local v4    # "session_play_time_second":F
    .end local v5    # "userId":Ljava/lang/String;
    :cond_0
    return-void

    .line 38
    .restart local v0    # "currentUser":Lcom/openfeint/api/resource/User;
    .restart local v1    # "date":Ljava/util/Date;
    :cond_1
    const-string v5, "0"

    goto :goto_0
.end method

.method public static getNewClientSDKBaseLog(Ljava/lang/String;)Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    .locals 4
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Lcom/openfeint/internal/analytics/internal/BaseAnalyticsLog;

    invoke-direct {v0}, Lcom/openfeint/internal/analytics/internal/BaseAnalyticsLog;-><init>()V

    .line 17
    .local v0, "base":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    new-instance v2, Lcom/openfeint/internal/analytics/internal/Client_sdk_AnalyticsDecorator;

    invoke-direct {v2, v0}, Lcom/openfeint/internal/analytics/internal/Client_sdk_AnalyticsDecorator;-><init>(Lcom/openfeint/internal/analytics/IAnalyticsLogger;)V

    .line 18
    .local v2, "sdk":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    new-instance v1, Lcom/openfeint/internal/analytics/internal/EventDecorator;

    invoke-direct {v1, v2}, Lcom/openfeint/internal/analytics/internal/EventDecorator;-><init>(Lcom/openfeint/internal/analytics/IAnalyticsLogger;)V

    .line 19
    .local v1, "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    invoke-static {v1}, Lcom/openfeint/internal/analytics/SDKAnalyticsLogFactory;->addBasicEvent(Lcom/openfeint/internal/analytics/IAnalyticsLogger;)V

    .line 20
    const-string v3, "action"

    invoke-interface {v1, v3, p0}, Lcom/openfeint/internal/analytics/IAnalyticsLogger;->makeEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    return-object v1
.end method
