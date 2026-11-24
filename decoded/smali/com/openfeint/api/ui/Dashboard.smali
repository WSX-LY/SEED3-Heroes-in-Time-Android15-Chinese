.class public Lcom/openfeint/api/ui/Dashboard;
.super Lcom/openfeint/internal/ui/WebNav;
.source "Dashboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/api/ui/Dashboard$DashboardActionHandler;
    }
.end annotation


# static fields
.field private static openfrom:Ljava/lang/String;

.field private static sOpenDashboards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/openfeint/api/ui/Dashboard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mRootIsHome:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/openfeint/api/ui/Dashboard;->sOpenDashboards:Ljava/util/List;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebNav;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openfeint/api/ui/Dashboard;->mRootIsHome:Z

    .line 29
    return-void
.end method

.method public static close()V
    .locals 3

    .prologue
    .line 58
    sget-object v1, Lcom/openfeint/api/ui/Dashboard;->sOpenDashboards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "d":Lcom/openfeint/api/ui/Dashboard;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    return-void

    .line 58
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "d":Lcom/openfeint/api/ui/Dashboard;
    check-cast v0, Lcom/openfeint/api/ui/Dashboard;

    .line 59
    .restart local v0    # "d":Lcom/openfeint/api/ui/Dashboard;
    invoke-virtual {v0}, Lcom/openfeint/api/ui/Dashboard;->finish()V

    goto :goto_0
.end method

.method public static getOpenfrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/openfeint/api/ui/Dashboard;->openfrom:Ljava/lang/String;

    return-object v0
.end method

.method public static open()V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openfeint/api/ui/Dashboard;->open(Ljava/lang/String;Z)V

    .line 49
    return-void
.end method

.method private static open(Ljava/lang/String;Z)V
    .locals 7
    .param p0, "screenName"    # Ljava/lang/String;
    .param p1, "spotlight"    # Z

    .prologue
    .line 108
    invoke-static {}, Lcom/openfeint/api/OpenFeint;->trySubmitOfflineData()V

    .line 110
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    .line 112
    .local v1, "ofi":Lcom/openfeint/internal/OpenFeintInternal;
    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->isFeintServerReachable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 114
    .local v2, "r":Landroid/content/res/Resources;
    const-string v3, "of_offline_notification"

    invoke-static {v3}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 115
    const-string v4, "of_offline_notification_line2"

    invoke-static {v4}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 116
    sget-object v5, Lcom/openfeint/api/Notification$Category;->Foreground:Lcom/openfeint/api/Notification$Category;

    sget-object v6, Lcom/openfeint/api/Notification$Type;->NetworkOffline:Lcom/openfeint/api/Notification$Type;

    .line 114
    invoke-static {v3, v4, v5, v6}, Lcom/openfeint/internal/notifications/TwoLineNotification;->show(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V

    .line 124
    .end local v2    # "r":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v3

    const-string v4, "dashboard_start.openfeint.com"

    sget-object v5, Lcom/openfeint/api/ui/Dashboard;->openfrom:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->postEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/openfeint/api/ui/Dashboard;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p0, :cond_1

    const-string v3, "screenName"

    invoke-virtual {v0, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    :cond_1
    invoke-virtual {v1, v0, p1}, Lcom/openfeint/internal/OpenFeintInternal;->submitIntent(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method public static openAchievements()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "achievements"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openfeint/api/ui/Dashboard;->open(Ljava/lang/String;Z)V

    .line 83
    return-void
.end method

.method public static openFromSpotlight()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "user.json?spotlight=true"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openfeint/api/ui/Dashboard;->open(Ljava/lang/String;Z)V

    .line 53
    return-void
.end method

.method public static openGameDetail(Ljava/lang/String;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "game?game_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openfeint/api/ui/Dashboard;->open(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method

.method public static openLeaderboard(Ljava/lang/String;)V
    .locals 2
    .param p0, "leaderboardId"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "leaderboard?leaderboard_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openfeint/api/ui/Dashboard;->open(Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public static openLeaderboards()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "leaderboards"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openfeint/api/ui/Dashboard;->open(Ljava/lang/String;Z)V

    .line 67
    return-void
.end method

.method public static openPath(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/openfeint/api/ui/Dashboard;->open(Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method public static setOpenfrom(Ljava/lang/String;)V
    .locals 0
    .param p0, "openfrom"    # Ljava/lang/String;

    .prologue
    .line 39
    sput-object p0, Lcom/openfeint/api/ui/Dashboard;->openfrom:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method protected createActionHandler(Lcom/openfeint/internal/ui/WebNav;)Lcom/openfeint/internal/ui/WebNav$ActionHandler;
    .locals 1
    .param p1, "webNav"    # Lcom/openfeint/internal/ui/WebNav;

    .prologue
    .line 211
    new-instance v0, Lcom/openfeint/api/ui/Dashboard$DashboardActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/api/ui/Dashboard$DashboardActionHandler;-><init>(Lcom/openfeint/api/ui/Dashboard;Lcom/openfeint/internal/ui/WebNav;)V

    return-object v0
.end method

.method protected initialContentPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/openfeint/api/ui/Dashboard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "screenName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "screenName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 199
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/openfeint/api/ui/Dashboard;->mRootIsHome:Z

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dashboard/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "dashboard/user"

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/openfeint/api/ui/Dashboard;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const-string v1, "of_dashboard"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->menu(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/openfeint/internal/ui/WebNav;->onDestroy()V

    .line 139
    sget-object v0, Lcom/openfeint/api/ui/Dashboard;->sOpenDashboards:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, "menuButtonName":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const-string v3, "home"

    invoke-static {v3}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 177
    const-string v0, "home"

    .line 178
    iput-boolean v1, p0, Lcom/openfeint/api/ui/Dashboard;->mRootIsHome:Z

    .line 185
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    invoke-super {p0, p1}, Lcom/openfeint/internal/ui/WebNav;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 188
    :goto_1
    return v1

    .line 179
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const-string v3, "settings"

    invoke-static {v3}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 180
    const-string v0, "settings"

    goto :goto_0

    .line 181
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const-string v3, "exit_feint"

    invoke-static {v3}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 182
    const-string v0, "exit"

    goto :goto_0

    .line 187
    :cond_3
    const-string v2, "OF.menu(\'%s\')"

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/openfeint/api/ui/Dashboard;->executeJavascript(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 163
    const-string v0, "home"

    invoke-static {v0}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v0, p0, Lcom/openfeint/api/ui/Dashboard;->mRootIsHome:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/openfeint/api/ui/Dashboard;->pageStackCount:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 164
    return v1

    :cond_0
    move v0, v1

    .line 163
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lcom/openfeint/internal/ui/WebNav;->onResume()V

    .line 132
    sget-object v0, Lcom/openfeint/api/ui/Dashboard;->sOpenDashboards:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/openfeint/api/ui/Dashboard;->sOpenDashboards:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/openfeint/api/ui/Dashboard;->finish()V

    .line 134
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 145
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v0

    const-string v1, "dashboard_end.openfeint.com"

    sget-object v2, Lcom/openfeint/api/ui/Dashboard;->openfrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->postEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    invoke-super {p0}, Lcom/openfeint/internal/ui/WebNav;->onStop()V

    .line 147
    return-void
.end method
