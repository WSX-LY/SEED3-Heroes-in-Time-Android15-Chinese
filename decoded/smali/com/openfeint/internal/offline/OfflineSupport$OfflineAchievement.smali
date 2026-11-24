.class public Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
.super Ljava/lang/Object;
.source "OfflineSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/offline/OfflineSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfflineAchievement"
.end annotation


# instance fields
.field public clientCompletionPercentage:F

.field public resourceID:Ljava/lang/String;

.field public serverCompletionPercentage:F

.field public timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dup()Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    invoke-direct {v0}, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;-><init>()V

    .line 44
    .local v0, "rv":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    iget-object v1, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->resourceID:Ljava/lang/String;

    iput-object v1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->resourceID:Ljava/lang/String;

    .line 45
    iget v1, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    iput v1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    .line 46
    iget v1, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->serverCompletionPercentage:F

    iput v1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->serverCompletionPercentage:F

    .line 47
    iget-object v1, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->timestamp:Ljava/lang/String;

    iput-object v1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->timestamp:Ljava/lang/String;

    .line 48
    return-object v0
.end method

.method public eq(Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;)Z
    .locals 2
    .param p1, "rhs"    # Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->resourceID:Ljava/lang/String;

    iget-object v1, p1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->resourceID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/openfeint/internal/offline/OfflineSupport;->access$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget v0, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    iget v1, p1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 54
    iget v0, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->serverCompletionPercentage:F

    iget v1, p1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->serverCompletionPercentage:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->timestamp:Ljava/lang/String;

    iget-object v1, p1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->timestamp:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/openfeint/internal/offline/OfflineSupport;->access$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 51
    goto :goto_0
.end method
