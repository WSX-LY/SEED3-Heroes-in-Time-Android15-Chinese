.class Lcom/openfeint/api/resource/ServerTimestamp$4;
.super Lcom/openfeint/internal/resource/LongResourceProperty;
.source "ServerTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/ServerTimestamp;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/openfeint/internal/resource/LongResourceProperty;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public get(Lcom/openfeint/internal/resource/Resource;)J
    .locals 2
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 82
    check-cast p1, Lcom/openfeint/api/resource/ServerTimestamp;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    iget-wide v0, p1, Lcom/openfeint/api/resource/ServerTimestamp;->secondsSinceEpoch:J

    return-wide v0
.end method

.method public set(Lcom/openfeint/internal/resource/Resource;J)V
    .locals 0
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "val"    # J

    .prologue
    .line 82
    check-cast p1, Lcom/openfeint/api/resource/ServerTimestamp;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    iput-wide p2, p1, Lcom/openfeint/api/resource/ServerTimestamp;->secondsSinceEpoch:J

    return-void
.end method
