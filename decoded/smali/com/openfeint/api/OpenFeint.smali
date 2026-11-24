.class public Lcom/openfeint/api/OpenFeint;
.super Ljava/lang/Object;
.source "OpenFeint.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenFeint"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Lcom/openfeint/api/OpenFeintSettings;Lcom/openfeint/api/OpenFeintDelegate;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/openfeint/api/OpenFeintSettings;
    .param p2, "delegate"    # Lcom/openfeint/api/OpenFeintDelegate;

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/openfeint/internal/OpenFeintInternal;->initialize(Landroid/content/Context;Lcom/openfeint/api/OpenFeintSettings;Lcom/openfeint/api/OpenFeintDelegate;)V

    .line 48
    return-void
.end method

.method public static initializeWithoutLoggingIn(Landroid/content/Context;Lcom/openfeint/api/OpenFeintSettings;Lcom/openfeint/api/OpenFeintDelegate;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/openfeint/api/OpenFeintSettings;
    .param p2, "delegate"    # Lcom/openfeint/api/OpenFeintDelegate;

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lcom/openfeint/internal/OpenFeintInternal;->initializeWithoutLoggingIn(Landroid/content/Context;Lcom/openfeint/api/OpenFeintSettings;Lcom/openfeint/api/OpenFeintDelegate;)V

    .line 61
    return-void
.end method

.method public static isNetworkConnected()Z
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->isFeintServerReachable()Z

    move-result v0

    return v0
.end method

.method public static isUserLoggedIn()Z
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->isUserLoggedIn()Z

    move-result v0

    return v0
.end method

.method public static login()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->login(Z)V

    .line 85
    return-void
.end method

.method public static logoutUser()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->logoutUser(Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 116
    return-void
.end method

.method public static onExit()V
    .locals 3

    .prologue
    .line 149
    const-string v0, "OpenFeint"

    const-string v1, "onExit"

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v0

    const-string v1, "game_exit.openfeint.com"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->postEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public static onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 131
    const-string v3, "OpenFeint"

    const-string v4, "onPause"

    invoke-static {v3, v4}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/openfeint/internal/analytics/internal/TimeUtil;->getActivity_start_time()Ljava/util/Date;

    move-result-object v2

    .line 133
    .local v2, "start":Ljava/util/Date;
    if-eqz v2, :cond_0

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 135
    .local v0, "plus":J
    invoke-static {v0, v1}, Lcom/openfeint/internal/analytics/internal/TimeUtil;->addAccumulated_ms(J)V

    .line 137
    .end local v0    # "plus":J
    :cond_0
    invoke-static {v7}, Lcom/openfeint/internal/analytics/internal/TimeUtil;->setActivity_start_time(Ljava/util/Date;)V

    .line 138
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v3

    const-string v4, "game_background.openfeint.com"

    invoke-virtual {v3, v4, v7}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->postEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public static onResume()V
    .locals 3

    .prologue
    .line 143
    const-string v0, "OpenFeint"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/openfeint/internal/analytics/internal/TimeUtil;->setActivity_start_time(Ljava/util/Date;)V

    .line 145
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v0

    const-string v1, "game_foreground.openfeint.com"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->postEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public static setDelegate(Lcom/openfeint/api/OpenFeintDelegate;)V
    .locals 1
    .param p0, "delegate"    # Lcom/openfeint/api/OpenFeintDelegate;

    .prologue
    .line 76
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openfeint/internal/OpenFeintInternal;->setDelegate(Lcom/openfeint/api/OpenFeintDelegate;)V

    .line 77
    return-void
.end method

.method public static trySubmitOfflineData()V
    .locals 0

    .prologue
    .line 127
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->trySubmitOfflineData()V

    .line 128
    return-void
.end method

.method public static userApprovedFeint()V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->userApprovedFeint()V

    .line 101
    return-void
.end method

.method public static userDeclinedFeint()V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->userDeclinedFeint()V

    .line 109
    return-void
.end method
