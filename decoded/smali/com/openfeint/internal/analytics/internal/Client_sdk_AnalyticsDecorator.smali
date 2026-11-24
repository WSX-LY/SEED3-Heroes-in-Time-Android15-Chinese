.class public Lcom/openfeint/internal/analytics/internal/Client_sdk_AnalyticsDecorator;
.super Lcom/openfeint/internal/analytics/internal/BaseAnalyticsDecorator;
.source "Client_sdk_AnalyticsDecorator.java"


# instance fields
.field protected client_sdk:Ljava/util/Map;
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
.method public constructor <init>(Lcom/openfeint/internal/analytics/IAnalyticsLogger;)V
    .locals 2
    .param p1, "eventLog"    # Lcom/openfeint/internal/analytics/IAnalyticsLogger;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/openfeint/internal/analytics/internal/BaseAnalyticsDecorator;-><init>(Lcom/openfeint/internal/analytics/IAnalyticsLogger;)V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/analytics/internal/Client_sdk_AnalyticsDecorator;->client_sdk:Ljava/util/Map;

    .line 14
    const-string v0, "client_sdk"

    iget-object v1, p0, Lcom/openfeint/internal/analytics/internal/Client_sdk_AnalyticsDecorator;->client_sdk:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Lcom/openfeint/internal/analytics/IAnalyticsLogger;->makeEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
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
    .line 19
    iget-object v0, p0, Lcom/openfeint/internal/analytics/internal/Client_sdk_AnalyticsDecorator;->logger:Lcom/openfeint/internal/analytics/IAnalyticsLogger;

    invoke-interface {v0}, Lcom/openfeint/internal/analytics/IAnalyticsLogger;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "client_sdk"

    return-object v0
.end method

.method public makeEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/openfeint/internal/analytics/internal/Client_sdk_AnalyticsDecorator;->client_sdk:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method
