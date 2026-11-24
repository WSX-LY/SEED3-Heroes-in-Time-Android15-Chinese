.class public Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
.super Ljava/lang/Object;
.source "OfflineSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/offline/OfflineSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfflineScore"
.end annotation


# instance fields
.field public blobFileName:Ljava/lang/String;

.field public customData:Ljava/lang/String;

.field public displayText:Ljava/lang/String;

.field public leaderboardID:Ljava/lang/String;

.field public score:J

.field public timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dup()Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;

    invoke-direct {v0}, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;-><init>()V

    .line 67
    .local v0, "rv":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    iget-object v1, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->leaderboardID:Ljava/lang/String;

    iput-object v1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->leaderboardID:Ljava/lang/String;

    .line 68
    iget-wide v1, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->score:J

    iput-wide v1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->score:J

    .line 69
    iget-object v1, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->displayText:Ljava/lang/String;

    iput-object v1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->displayText:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->customData:Ljava/lang/String;

    iput-object v1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->customData:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->blobFileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->blobFileName:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->timestamp:Ljava/lang/String;

    iput-object v1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->timestamp:Ljava/lang/String;

    .line 73
    return-object v0
.end method

.method public eq(Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;)Z
    .locals 4
    .param p1, "rhs"    # Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->leaderboardID:Ljava/lang/String;

    iget-object v1, p1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->leaderboardID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/openfeint/internal/offline/OfflineSupport;->access$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-wide v0, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->score:J

    iget-wide v2, p1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->score:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->displayText:Ljava/lang/String;

    iget-object v1, p1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->displayText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/openfeint/internal/offline/OfflineSupport;->access$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->customData:Ljava/lang/String;

    iget-object v1, p1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->customData:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/openfeint/internal/offline/OfflineSupport;->access$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->blobFileName:Ljava/lang/String;

    iget-object v1, p1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->blobFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/openfeint/internal/offline/OfflineSupport;->access$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->timestamp:Ljava/lang/String;

    iget-object v1, p1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->timestamp:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/openfeint/internal/offline/OfflineSupport;->access$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 76
    goto :goto_0
.end method
