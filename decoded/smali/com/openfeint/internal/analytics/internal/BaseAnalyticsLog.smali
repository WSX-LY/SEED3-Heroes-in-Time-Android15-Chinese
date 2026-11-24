.class public Lcom/openfeint/internal/analytics/internal/BaseAnalyticsLog;
.super Ljava/lang/Object;
.source "BaseAnalyticsLog.java"

# interfaces
.implements Lcom/openfeint/internal/analytics/IAnalyticsLogger;


# instance fields
.field protected base:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/analytics/internal/BaseAnalyticsLog;->base:Ljava/util/Map;

    .line 14
    return-void
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/openfeint/internal/analytics/internal/BaseAnalyticsLog;->base:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "BaseEventLog"

    return-object v0
.end method

.method public makeEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/openfeint/internal/analytics/internal/BaseAnalyticsLog;->base:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method
