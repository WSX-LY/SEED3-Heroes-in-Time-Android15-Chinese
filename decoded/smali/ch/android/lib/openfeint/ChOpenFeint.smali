.class public Lch/android/lib/openfeint/ChOpenFeint;
.super Ljava/lang/Object;
.source "ChOpenFeint.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/openfeint/api/OpenFeint;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v0

    .line 79
    .local v0, "user":Lcom/openfeint/api/resource/User;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/openfeint/api/resource/User;->userID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCurrentUserName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/openfeint/api/OpenFeint;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v0

    .line 84
    .local v0, "user":Lcom/openfeint/api/resource/User;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/openfeint/api/resource/User;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isLogedIn()Z
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/openfeint/api/OpenFeint;->isUserLoggedIn()Z

    move-result v0

    return v0
.end method

.method public static openAchievements()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lcom/openfeint/api/ui/Dashboard;->openAchievements()V

    .line 30
    return-void
.end method

.method public static openDashboard()V
    .locals 0

    .prologue
    .line 21
    invoke-static {}, Lcom/openfeint/api/ui/Dashboard;->open()V

    .line 22
    return-void
.end method

.method public static openLeaderboard(Ljava/lang/String;)V
    .locals 0
    .param p0, "leaderboardId"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/openfeint/api/ui/Dashboard;->openLeaderboard(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static registerAchievement(Landroid/app/Activity;Ljava/lang/String;Lcom/openfeint/api/resource/Achievement$UnlockCB;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "cb"    # Lcom/openfeint/api/resource/Achievement$UnlockCB;

    .prologue
    .line 55
    new-instance v0, Lcom/openfeint/api/resource/Achievement;

    invoke-direct {v0, p1}, Lcom/openfeint/api/resource/Achievement;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/android/lib/openfeint/ChOpenFeint$2;

    invoke-direct {v1, p2}, Lch/android/lib/openfeint/ChOpenFeint$2;-><init>(Lcom/openfeint/api/resource/Achievement$UnlockCB;)V

    invoke-virtual {v0, v1}, Lcom/openfeint/api/resource/Achievement;->unlock(Lcom/openfeint/api/resource/Achievement$UnlockCB;)V

    .line 71
    return-void
.end method

.method public static registerScore(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Lcom/openfeint/api/resource/Score$SubmitToCB;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "score"    # J
    .param p4, "displayStr"    # Ljava/lang/String;
    .param p5, "cb"    # Lcom/openfeint/api/resource/Score$SubmitToCB;

    .prologue
    .line 33
    new-instance v1, Lcom/openfeint/api/resource/Score;

    invoke-direct {v1, p2, p3, p4}, Lcom/openfeint/api/resource/Score;-><init>(JLjava/lang/String;)V

    .line 34
    .local v1, "s":Lcom/openfeint/api/resource/Score;
    new-instance v0, Lcom/openfeint/api/resource/Leaderboard;

    invoke-direct {v0, p1}, Lcom/openfeint/api/resource/Leaderboard;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "l":Lcom/openfeint/api/resource/Leaderboard;
    new-instance v2, Lch/android/lib/openfeint/ChOpenFeint$1;

    invoke-direct {v2, p5, p2, p3}, Lch/android/lib/openfeint/ChOpenFeint$1;-><init>(Lcom/openfeint/api/resource/Score$SubmitToCB;J)V

    invoke-virtual {v1, v0, v2}, Lcom/openfeint/api/resource/Score;->submitTo(Lcom/openfeint/api/resource/Leaderboard;Lcom/openfeint/api/resource/Score$SubmitToCB;)V

    .line 52
    return-void
.end method
