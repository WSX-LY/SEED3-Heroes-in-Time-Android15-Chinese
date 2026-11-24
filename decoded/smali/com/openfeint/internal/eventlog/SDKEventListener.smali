.class public Lcom/openfeint/internal/eventlog/SDKEventListener;
.super Ljava/lang/Object;
.source "SDKEventListener.java"

# interfaces
.implements Lcom/openfeint/internal/eventlog/IEventListener;


# static fields
.field public static tag:Ljava/lang/String;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "SDKEventListener"

    sput-object v0, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "SDKEventListener"

    iput-object v0, p0, Lcom/openfeint/internal/eventlog/SDKEventListener;->name:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openfeint/internal/eventlog/SDKEventListener;->name:Ljava/lang/String;

    return-object v0
.end method

.method public handleEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 25
    sget-object v1, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MakeEvent in SDKEventListener:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "new_user.openfeint.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    iget-object v1, p0, Lcom/openfeint/internal/eventlog/SDKEventListener;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const-string v1, ""

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->setUserEnableSource(Ljava/lang/String;)V

    .line 31
    :cond_0
    const-string v1, "new_user"

    invoke-static {v1}, Lcom/openfeint/internal/analytics/SDKAnalyticsLogFactory;->getNewClientSDKBaseLog(Ljava/lang/String;)Lcom/openfeint/internal/analytics/IAnalyticsLogger;

    move-result-object v0

    .line 32
    .local v0, "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    invoke-static {}, Lcom/openfeint/internal/analytics/AnalyticsManager;->instance()Lcom/openfeint/internal/analytics/AnalyticsManager;

    move-result-object v1

    sget-object v2, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/openfeint/internal/analytics/AnalyticsManager;->makelog(Lcom/openfeint/internal/analytics/IAnalyticsLogger;Ljava/lang/String;)V

    .line 101
    .end local v0    # "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    :cond_1
    :goto_0
    return-void

    .line 34
    :cond_2
    const-string v1, "enabled_of.openfeint.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 35
    sget-object v2, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "ENABLE OLD USER "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_4

    const-string v1, ""

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/openfeint/internal/eventlog/SDKEventListener;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    const-string v1, ""

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->setUserEnableSource(Ljava/lang/String;)V

    .line 38
    :cond_3
    const-string v1, "enabled_of"

    invoke-static {v1}, Lcom/openfeint/internal/analytics/SDKAnalyticsLogFactory;->getNewClientSDKBaseLog(Ljava/lang/String;)Lcom/openfeint/internal/analytics/IAnalyticsLogger;

    move-result-object v0

    .line 39
    .restart local v0    # "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    invoke-static {}, Lcom/openfeint/internal/analytics/AnalyticsManager;->instance()Lcom/openfeint/internal/analytics/AnalyticsManager;

    move-result-object v1

    sget-object v2, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/openfeint/internal/analytics/AnalyticsManager;->makelog(Lcom/openfeint/internal/analytics/IAnalyticsLogger;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    .end local v0    # "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "from "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 40
    :cond_5
    const-string v1, "prompt_enable_of.openfeint.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 41
    sget-object v2, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "PROMPT_ENABLE_OF "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_7

    const-string v1, ""

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/openfeint/internal/eventlog/SDKEventListener;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    const-string v1, ""

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->setUserEnableSource(Ljava/lang/String;)V

    .line 44
    :cond_6
    const-string v1, "prompt_enable_of"

    invoke-static {v1}, Lcom/openfeint/internal/analytics/SDKAnalyticsLogFactory;->getNewClientSDKBaseLog(Ljava/lang/String;)Lcom/openfeint/internal/analytics/IAnalyticsLogger;

    move-result-object v0

    .line 45
    .restart local v0    # "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    invoke-static {}, Lcom/openfeint/internal/analytics/AnalyticsManager;->instance()Lcom/openfeint/internal/analytics/AnalyticsManager;

    move-result-object v1

    sget-object v2, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/openfeint/internal/analytics/AnalyticsManager;->makelog(Lcom/openfeint/internal/analytics/IAnalyticsLogger;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 41
    .end local v0    # "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "from "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 46
    :cond_8
    const-string v1, "accepted_of.openfeint.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 47
    sget-object v2, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "ACCEPTED_OF "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_a

    const-string v1, ""

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/openfeint/internal/eventlog/SDKEventListener;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 49
    const-string v1, ""

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->setUserEnableSource(Ljava/lang/String;)V

    .line 50
    :cond_9
    const-string v1, "accepted_of"

    invoke-static {v1}, Lcom/openfeint/internal/analytics/SDKAnalyticsLogFactory;->getNewClientSDKBaseLog(Ljava/lang/String;)Lcom/openfeint/internal/analytics/IAnalyticsLogger;

    move-result-object v0

    .line 51
    .restart local v0    # "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    invoke-static {}, Lcom/openfeint/internal/analytics/AnalyticsManager;->instance()Lcom/openfeint/internal/analytics/AnalyticsManager;

    move-result-object v1

    sget-object v2, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/openfeint/internal/analytics/AnalyticsManager;->makelog(Lcom/openfeint/internal/analytics/IAnalyticsLogger;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 47
    .end local v0    # "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "from "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 52
    :cond_b
    const-string v1, "declined_of.openfeint.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 53
    sget-object v2, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "DECLINED_OF "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_d

    const-string v1, ""

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/openfeint/internal/eventlog/SDKEventListener;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 55
    const-string v1, ""

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->setUserEnableSource(Ljava/lang/String;)V

    .line 56
    :cond_c
    const-string v1, "declined_of"

    invoke-static {v1}, Lcom/openfeint/internal/analytics/SDKAnalyticsLogFactory;->getNewClientSDKBaseLog(Ljava/lang/String;)Lcom/openfeint/internal/analytics/IAnalyticsLogger;

    move-result-object v0

    .line 57
    .restart local v0    # "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    invoke-static {}, Lcom/openfeint/internal/analytics/AnalyticsManager;->instance()Lcom/openfeint/internal/analytics/AnalyticsManager;

    move-result-object v1

    sget-object v2, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/openfeint/internal/analytics/AnalyticsManager;->makelog(Lcom/openfeint/internal/analytics/IAnalyticsLogger;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 53
    .end local v0    # "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "from "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 73
    :cond_e
    const-string v1, "game_start.openfeint.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 74
    sget-object v2, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "GAME_START "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_10

    const-string v1, ""

    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/openfeint/internal/eventlog/SDKEventListener;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 76
    const-string v1, ""

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->setUserEnableSource(Ljava/lang/String;)V

    .line 77
    :cond_f
    const-string v1, "game_launch"

    invoke-static {v1}, Lcom/openfeint/internal/analytics/SDKAnalyticsLogFactory;->getNewClientSDKBaseLog(Ljava/lang/String;)Lcom/openfeint/internal/analytics/IAnalyticsLogger;

    move-result-object v0

    .line 78
    .restart local v0    # "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    invoke-static {}, Lcom/openfeint/internal/analytics/AnalyticsManager;->instance()Lcom/openfeint/internal/analytics/AnalyticsManager;

    move-result-object v1

    sget-object v2, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/openfeint/internal/analytics/AnalyticsManager;->makelog(Lcom/openfeint/internal/analytics/IAnalyticsLogger;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 74
    .end local v0    # "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "from "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 80
    :cond_11
    const-string v1, "game_background.openfeint.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 81
    sget-object v2, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "GAME_BACKGROUND "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_13

    const-string v1, ""

    :goto_6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/openfeint/internal/eventlog/SDKEventListener;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 83
    const-string v1, ""

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->setUserEnableSource(Ljava/lang/String;)V

    .line 84
    :cond_12
    const-string v1, "game_background"

    invoke-static {v1}, Lcom/openfeint/internal/analytics/SDKAnalyticsLogFactory;->getNewClientSDKBaseLog(Ljava/lang/String;)Lcom/openfeint/internal/analytics/IAnalyticsLogger;

    move-result-object v0

    .line 85
    .restart local v0    # "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    invoke-static {}, Lcom/openfeint/internal/analytics/AnalyticsManager;->instance()Lcom/openfeint/internal/analytics/AnalyticsManager;

    move-result-object v1

    sget-object v2, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/openfeint/internal/analytics/AnalyticsManager;->makelog(Lcom/openfeint/internal/analytics/IAnalyticsLogger;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    .end local v0    # "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "from "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 87
    :cond_14
    const-string v1, "game_foreground.openfeint.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 88
    sget-object v2, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "GAME_FOREGROUND "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_16

    const-string v1, ""

    :goto_7
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/openfeint/internal/eventlog/SDKEventListener;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 90
    const-string v1, ""

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->setUserEnableSource(Ljava/lang/String;)V

    .line 91
    :cond_15
    const-string v1, "game_foreground"

    invoke-static {v1}, Lcom/openfeint/internal/analytics/SDKAnalyticsLogFactory;->getNewClientSDKBaseLog(Ljava/lang/String;)Lcom/openfeint/internal/analytics/IAnalyticsLogger;

    move-result-object v0

    .line 92
    .restart local v0    # "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    invoke-static {}, Lcom/openfeint/internal/analytics/AnalyticsManager;->instance()Lcom/openfeint/internal/analytics/AnalyticsManager;

    move-result-object v1

    sget-object v2, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/openfeint/internal/analytics/AnalyticsManager;->makelog(Lcom/openfeint/internal/analytics/IAnalyticsLogger;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    .end local v0    # "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "from "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 94
    :cond_17
    const-string v1, "game_exit.openfeint.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    sget-object v2, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "GAME_EXIT "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_19

    const-string v1, ""

    :goto_8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/openfeint/internal/eventlog/SDKEventListener;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 97
    const-string v1, ""

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->setUserEnableSource(Ljava/lang/String;)V

    .line 98
    :cond_18
    const-string v1, "game_exit"

    invoke-static {v1}, Lcom/openfeint/internal/analytics/SDKAnalyticsLogFactory;->getNewClientSDKBaseLog(Ljava/lang/String;)Lcom/openfeint/internal/analytics/IAnalyticsLogger;

    move-result-object v0

    .line 99
    .restart local v0    # "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    invoke-static {}, Lcom/openfeint/internal/analytics/AnalyticsManager;->instance()Lcom/openfeint/internal/analytics/AnalyticsManager;

    move-result-object v1

    sget-object v2, Lcom/openfeint/internal/eventlog/SDKEventListener;->tag:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/openfeint/internal/analytics/AnalyticsManager;->makelog(Lcom/openfeint/internal/analytics/IAnalyticsLogger;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 95
    .end local v0    # "event":Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "from "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method
