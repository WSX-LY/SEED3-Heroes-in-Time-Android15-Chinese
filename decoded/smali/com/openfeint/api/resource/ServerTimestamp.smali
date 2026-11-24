.class public Lcom/openfeint/api/resource/ServerTimestamp;
.super Lcom/openfeint/internal/resource/Resource;
.source "ServerTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/api/resource/ServerTimestamp$GetCB;
    }
.end annotation


# instance fields
.field public secondsSinceEpoch:J

.field public timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/openfeint/internal/resource/Resource;-><init>()V

    return-void
.end method

.method public static get(Lcom/openfeint/api/resource/ServerTimestamp$GetCB;)V
    .locals 1
    .param p0, "cb"    # Lcom/openfeint/api/resource/ServerTimestamp$GetCB;

    .prologue
    .line 50
    new-instance v0, Lcom/openfeint/api/resource/ServerTimestamp$1;

    invoke-direct {v0, p0}, Lcom/openfeint/api/resource/ServerTimestamp$1;-><init>(Lcom/openfeint/api/resource/ServerTimestamp$GetCB;)V

    .line 67
    .local v0, "req":Lcom/openfeint/internal/request/JSONRequest;
    invoke-virtual {v0}, Lcom/openfeint/internal/request/JSONRequest;->launch()V

    .line 68
    return-void
.end method

.method public static getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Lcom/openfeint/api/resource/ServerTimestamp$2;

    const-class v1, Lcom/openfeint/api/resource/ServerTimestamp;

    const-string v2, "server_timestamp"

    invoke-direct {v0, v1, v2}, Lcom/openfeint/api/resource/ServerTimestamp$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 81
    .local v0, "klass":Lcom/openfeint/internal/resource/ResourceClass;
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "timestamp"

    new-instance v3, Lcom/openfeint/api/resource/ServerTimestamp$3;

    invoke-direct {v3}, Lcom/openfeint/api/resource/ServerTimestamp$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "seconds_since_epoch"

    new-instance v3, Lcom/openfeint/api/resource/ServerTimestamp$4;

    invoke-direct {v3}, Lcom/openfeint/api/resource/ServerTimestamp$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object v0
.end method
