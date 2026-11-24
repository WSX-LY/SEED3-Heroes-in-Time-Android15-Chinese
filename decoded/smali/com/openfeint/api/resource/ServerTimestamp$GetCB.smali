.class public abstract Lcom/openfeint/api/resource/ServerTimestamp$GetCB;
.super Lcom/openfeint/internal/APICallback;
.source "ServerTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/api/resource/ServerTimestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GetCB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/openfeint/internal/APICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSuccess(Lcom/openfeint/api/resource/ServerTimestamp;)V
.end method
