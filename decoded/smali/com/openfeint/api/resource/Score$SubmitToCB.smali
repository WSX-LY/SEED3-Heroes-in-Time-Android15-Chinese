.class public abstract Lcom/openfeint/api/resource/Score$SubmitToCB;
.super Lcom/openfeint/internal/APICallback;
.source "Score.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/api/resource/Score;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SubmitToCB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/openfeint/internal/APICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlobUploadFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 148
    return-void
.end method

.method public onBlobUploadSuccess()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public abstract onSuccess(Z)V
.end method
