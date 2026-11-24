.class public interface abstract Lcom/openfeint/internal/analytics/IAnalyticsLogger;
.super Ljava/lang/Object;
.source "IAnalyticsLogger.java"


# virtual methods
.method public abstract getMap()Ljava/util/Map;
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
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract makeEvent(Ljava/lang/String;Ljava/lang/Object;)V
.end method
