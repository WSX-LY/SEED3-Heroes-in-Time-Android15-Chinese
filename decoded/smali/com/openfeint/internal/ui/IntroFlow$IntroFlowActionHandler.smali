.class Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;
.super Lcom/openfeint/internal/ui/WebNav$ActionHandler;
.source "IntroFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/IntroFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntroFlowActionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/IntroFlow;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/ui/IntroFlow;Lcom/openfeint/internal/ui/WebNav;)V
    .locals 0
    .param p2, "webNav"    # Lcom/openfeint/internal/ui/WebNav;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->this$0:Lcom/openfeint/internal/ui/IntroFlow;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;-><init>(Lcom/openfeint/internal/ui/WebNav;Lcom/openfeint/internal/ui/WebNav;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final cacheImage(Ljava/util/Map;)V
    .locals 1
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
    .line 93
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->this$0:Lcom/openfeint/internal/ui/IntroFlow;

    invoke-static {v0}, Lcom/openfeint/internal/ImagePicker;->show(Landroid/app/Activity;)V

    .line 94
    return-void
.end method

.method public final clearImage(Ljava/util/Map;)V
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
    iget-object v0, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->this$0:Lcom/openfeint/internal/ui/IntroFlow;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/openfeint/internal/ui/IntroFlow;->cachedImage:Landroid/graphics/Bitmap;

    .line 108
    return-void
.end method

.method public final createUser(Ljava/util/Map;)V
    .locals 6
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
    .line 60
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    .line 61
    const-string v1, "name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    const-string v2, "email"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    const-string v3, "password"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 64
    const-string v4, "password_confirmation"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 65
    new-instance v5, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$1;

    invoke-direct {v5, p0, p1}, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$1;-><init>(Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;Ljava/util/Map;)V

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/openfeint/internal/OpenFeintInternal;->createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 73
    return-void
.end method

.method public decline(Ljava/util/Map;)V
    .locals 1
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
    .line 112
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/openfeint/api/OpenFeint;->userDeclinedFeint()V

    .line 113
    iget-object v0, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->this$0:Lcom/openfeint/internal/ui/IntroFlow;

    invoke-virtual {v0}, Lcom/openfeint/internal/ui/IntroFlow;->finish()V

    .line 114
    return-void
.end method

.method public getEmail(Ljava/util/Map;)V
    .locals 6
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
    .line 118
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->this$0:Lcom/openfeint/internal/ui/IntroFlow;

    invoke-static {v1}, Lcom/openfeint/internal/Util5;->getAccountNameEclair(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "account":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->this$0:Lcom/openfeint/internal/ui/IntroFlow;

    const-string v2, "%s(\'%s\');"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "callback"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/openfeint/internal/ui/IntroFlow;->executeJavascript(Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method public final loginUser(Ljava/util/Map;)V
    .locals 5
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
    .line 77
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    .line 78
    const-string v0, "email"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    const-string v1, "password"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    const-string v2, "user_id"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 81
    new-instance v4, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$2;

    invoke-direct {v4, p0, p1}, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$2;-><init>(Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;Ljava/util/Map;)V

    .line 77
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/openfeint/internal/OpenFeintInternal;->loginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 89
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
    .line 48
    .local p1, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->populateActionList(Ljava/util/List;)V

    .line 49
    const-string v0, "createUser"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v0, "loginUser"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v0, "cacheImage"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v0, "uploadImage"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v0, "clearImage"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v0, "decline"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v0, "getEmail"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public final uploadImage(Ljava/util/Map;)V
    .locals 3
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
    .line 99
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->this$0:Lcom/openfeint/internal/ui/IntroFlow;

    iget-object v1, v1, Lcom/openfeint/internal/ui/IntroFlow;->cachedImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/xp/users/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openfeint/api/resource/CurrentUser;->resourceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/profile_picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "apiUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->this$0:Lcom/openfeint/internal/ui/IntroFlow;

    iget-object v1, v1, Lcom/openfeint/internal/ui/IntroFlow;->cachedImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/openfeint/internal/ImagePicker;->compressAndUpload(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;)V

    .line 103
    .end local v0    # "apiUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method
