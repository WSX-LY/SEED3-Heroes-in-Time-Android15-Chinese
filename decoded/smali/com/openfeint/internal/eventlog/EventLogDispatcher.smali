.class public Lcom/openfeint/internal/eventlog/EventLogDispatcher;
.super Ljava/lang/Object;
.source "EventLogDispatcher.java"


# static fields
.field public static final ACCEPTED_OF:Ljava/lang/String; = "accepted_of.openfeint.com"

.field public static final DASHBOARD_END:Ljava/lang/String; = "dashboard_end.openfeint.com"

.field public static final DASHBOARD_START:Ljava/lang/String; = "dashboard_start.openfeint.com"

.field public static final DECLINED_OF:Ljava/lang/String; = "declined_of.openfeint.com"

.field public static final ENABLED_OF:Ljava/lang/String; = "enabled_of.openfeint.com"

.field public static final GAME_BACKGROUND:Ljava/lang/String; = "game_background.openfeint.com"

.field public static final GAME_EXIT:Ljava/lang/String; = "game_exit.openfeint.com"

.field public static final GAME_FOREGROUND:Ljava/lang/String; = "game_foreground.openfeint.com"

.field public static final GAME_START:Ljava/lang/String; = "game_start.openfeint.com"

.field public static final LOGIN_SUCESS:Ljava/lang/String; = "login_success.openfeint.com"

.field public static final LOGOUT_SUCESS:Ljava/lang/String; = "logout_success.openfeint.com"

.field public static final NEW_USER:Ljava/lang/String; = "new_user.openfeint.com"

.field public static final PROMPT_ENABLE_OF:Ljava/lang/String; = "prompt_enable_of.openfeint.com"

.field private static instance:Lcom/openfeint/internal/eventlog/EventLogDispatcher; = null

.field public static final tag:Ljava/lang/String; = "EventLogDispatcher"


# instance fields
.field private subscription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/openfeint/internal/eventlog/IEventListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->subscription:Ljava/util/Map;

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->instance:Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    invoke-direct {v0}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;-><init>()V

    sput-object v0, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->instance:Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    .line 38
    :cond_0
    sget-object v0, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->instance:Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    return-object v0
.end method


# virtual methods
.method public postEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/Object;

    .prologue
    .line 43
    iget-object v4, p0, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->subscription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    iget-object v4, p0, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->subscription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 45
    .local v0, "goodListeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 46
    .local v1, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 53
    .end local v0    # "goodListeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;>;"
    .end local v1    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 47
    .restart local v0    # "goodListeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;>;"
    .restart local v1    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openfeint/internal/eventlog/IEventListener;

    .line 49
    .local v3, "listener":Lcom/openfeint/internal/eventlog/IEventListener;
    const-string v4, "EventLogDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "posteEvent:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lcom/openfeint/internal/eventlog/IEventListener;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {v3, p1, p2}, Lcom/openfeint/internal/eventlog/IEventListener;->handleEvent(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public subscribe(Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/openfeint/internal/eventlog/IEventListener;

    .prologue
    .line 57
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/openfeint/internal/eventlog/IEventListener;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 58
    :cond_0
    const/4 v1, 0x0

    .line 68
    :goto_0
    return v1

    .line 59
    :cond_1
    const-string v1, "EventLogDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "subscribe:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/openfeint/internal/eventlog/IEventListener;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->subscription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 61
    .local v0, "eventMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;>;"
    if-nez v0, :cond_2

    .line 62
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "eventMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    .restart local v0    # "eventMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;>;"
    invoke-interface {p2}, Lcom/openfeint/internal/eventlog/IEventListener;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :goto_1
    iget-object v1, p0, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->subscription:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const/4 v1, 0x1

    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {p2}, Lcom/openfeint/internal/eventlog/IEventListener;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public unSubscribe(Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/openfeint/internal/eventlog/IEventListener;

    .prologue
    .line 72
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/openfeint/internal/eventlog/IEventListener;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 73
    :cond_0
    const/4 v1, 0x0

    .line 81
    :goto_0
    return v1

    .line 74
    :cond_1
    const-string v1, "EventLogDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unsubscribe:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/openfeint/internal/eventlog/IEventListener;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->subscription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 76
    .local v0, "eventMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;>;"
    if-eqz v0, :cond_2

    .line 79
    invoke-interface {p2}, Lcom/openfeint/internal/eventlog/IEventListener;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
