.class public abstract Lcom/openfeint/internal/analytics/internal/BaseAnalyticsDecorator;
.super Ljava/lang/Object;
.source "BaseAnalyticsDecorator.java"

# interfaces
.implements Lcom/openfeint/internal/analytics/IAnalyticsLogger;


# instance fields
.field protected logger:Lcom/openfeint/internal/analytics/IAnalyticsLogger;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/analytics/IAnalyticsLogger;)V
    .locals 0
    .param p1, "logger"    # Lcom/openfeint/internal/analytics/IAnalyticsLogger;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/openfeint/internal/analytics/internal/BaseAnalyticsDecorator;->logger:Lcom/openfeint/internal/analytics/IAnalyticsLogger;

    .line 12
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
    .line 16
    iget-object v0, p0, Lcom/openfeint/internal/analytics/internal/BaseAnalyticsDecorator;->logger:Lcom/openfeint/internal/analytics/IAnalyticsLogger;

    invoke-interface {v0}, Lcom/openfeint/internal/analytics/IAnalyticsLogger;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public makeEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/openfeint/internal/analytics/internal/BaseAnalyticsDecorator;->logger:Lcom/openfeint/internal/analytics/IAnalyticsLogger;

    invoke-interface {v0, p1, p2}, Lcom/openfeint/internal/analytics/IAnalyticsLogger;->makeEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    return-void
.end method
