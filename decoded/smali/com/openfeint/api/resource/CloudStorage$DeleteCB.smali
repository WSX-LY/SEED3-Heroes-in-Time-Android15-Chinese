.class public abstract Lcom/openfeint/api/resource/CloudStorage$DeleteCB;
.super Lcom/openfeint/internal/APICallback;
.source "CloudStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/api/resource/CloudStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DeleteCB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/openfeint/internal/APICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSuccess()V
.end method
