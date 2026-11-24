.class Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;
.super Lcom/openfeint/internal/ui/WebNav$ActionHandler;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsActionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/Settings;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/ui/Settings;Lcom/openfeint/internal/ui/WebNav;)V
    .locals 0
    .param p2, "webNav"    # Lcom/openfeint/internal/ui/WebNav;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;->this$0:Lcom/openfeint/internal/ui/Settings;

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;-><init>(Lcom/openfeint/internal/ui/WebNav;Lcom/openfeint/internal/ui/WebNav;)V

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;)Lcom/openfeint/internal/ui/Settings;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;->this$0:Lcom/openfeint/internal/ui/Settings;

    return-object v0
.end method


# virtual methods
.method public apiRequest(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->apiRequest(Ljava/util/Map;)V

    .line 102
    invoke-static {}, Lcom/openfeint/api/OpenFeint;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openfeint/api/resource/CurrentUser;->load(Lcom/openfeint/api/resource/User$LoadCB;)V

    .line 103
    return-void
.end method

.method public final introFlow(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;->this$0:Lcom/openfeint/internal/ui/Settings;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;->this$0:Lcom/openfeint/internal/ui/Settings;

    const-class v3, Lcom/openfeint/internal/ui/IntroFlow;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "content_name"

    const-string v3, "login?mode=switch"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/ui/Settings;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public final logout(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    new-instance v1, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler$1;

    invoke-direct {v1, p0}, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler$1;-><init>(Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;)V

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->logoutUser(Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 113
    return-void
.end method

.method protected populateActionList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->populateActionList(Ljava/util/List;)V

    .line 95
    const-string v0, "logout"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v0, "introFlow"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method
