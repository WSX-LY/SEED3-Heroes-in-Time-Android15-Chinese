.class Lcom/openfeint/api/ui/Dashboard$DashboardActionHandler;
.super Lcom/openfeint/internal/ui/WebNav$ActionHandler;
.source "Dashboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/api/ui/Dashboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DashboardActionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/api/ui/Dashboard;


# direct methods
.method public constructor <init>(Lcom/openfeint/api/ui/Dashboard;Lcom/openfeint/internal/ui/WebNav;)V
    .locals 0
    .param p2, "webNav"    # Lcom/openfeint/internal/ui/WebNav;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/openfeint/api/ui/Dashboard$DashboardActionHandler;->this$0:Lcom/openfeint/api/ui/Dashboard;

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;-><init>(Lcom/openfeint/internal/ui/WebNav;Lcom/openfeint/internal/ui/WebNav;)V

    .line 217
    return-void
.end method


# virtual methods
.method public final openSettings(Ljava/util/Map;)V
    .locals 0
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
    .line 227
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/openfeint/internal/ui/Settings;->open()V

    .line 228
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
    .line 221
    .local p1, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->populateActionList(Ljava/util/List;)V

    .line 222
    const-string v0, "openSettings"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method
