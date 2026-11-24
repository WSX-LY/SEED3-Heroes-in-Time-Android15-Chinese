.class public Lcom/openfeint/internal/BaseActionInvoker;
.super Ljava/lang/Object;
.source "BaseActionInvoker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseActionInvoker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public dashboard(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 0
    .param p1, "args"    # Ljava/lang/Object;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    check-cast p1, Ljava/lang/String;

    .end local p1    # "args":Ljava/lang/Object;
    invoke-static {p1}, Lcom/openfeint/api/ui/Dashboard;->openPath(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public intent(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 15
    .param p1, "args"    # Ljava/lang/Object;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    move-object/from16 v8, p1

    check-cast v8, Ljava/util/Map;

    .line 38
    .local v8, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 40
    .local v4, "i":Landroid/content/Intent;
    const-string v11, "action"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    .local v1, "actionType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 42
    const-class v5, Landroid/content/Intent;

    .line 43
    .local v5, "intentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 44
    .local v3, "f":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_0

    .line 45
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 46
    .local v7, "o":Ljava/lang/Object;
    check-cast v7, Ljava/lang/String;

    .end local v7    # "o":Ljava/lang/Object;
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "intentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-string v11, "uri"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 51
    .local v10, "uri":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 52
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 53
    .local v9, "parsedUri":Landroid/net/Uri;
    if-eqz v9, :cond_4

    .line 54
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    .line 55
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {v4, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 65
    :cond_1
    const/high16 v11, 0x10000000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    const-string v11, "extras"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 68
    .local v2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_3

    .line 69
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_6

    .line 79
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void

    .line 59
    .end local v2    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    new-instance v11, Ljava/lang/Exception;

    const-string v12, "parse url:{%s} failed"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11

    .line 63
    .end local v9    # "parsedUri":Landroid/net/Uri;
    :cond_5
    new-instance v11, Ljava/lang/Exception;

    const-string v12, "url is null"

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11

    .line 69
    .restart local v2    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "parsedUri":Landroid/net/Uri;
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 71
    .local v6, "k":Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 72
    .restart local v7    # "o":Ljava/lang/Object;
    instance-of v12, v7, Ljava/lang/String;

    if-eqz v12, :cond_7

    .line 73
    check-cast v7, Ljava/lang/String;

    .end local v7    # "o":Ljava/lang/Object;
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 74
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_7
    instance-of v12, v7, Ljava/lang/Number;

    if-eqz v12, :cond_2

    .line 75
    check-cast v7, Ljava/lang/Number;

    .end local v7    # "o":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-virtual {v4, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public final invokeAction(Ljava/util/Map;Landroid/content/Context;)V
    .locals 9
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 86
    :try_start_0
    const-string v5, "BaseActionInvoker"

    const-string v6, "action to invoke is null"

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    .local v0, "actionKey":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 91
    .local v1, "args":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 92
    .local v4, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/openfeint/internal/BaseActionInvoker;>;"
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Object;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v4, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 93
    .local v3, "m":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_2

    .line 94
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v3, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 98
    .end local v0    # "actionKey":Ljava/lang/String;
    .end local v1    # "args":Ljava/lang/Object;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/openfeint/internal/BaseActionInvoker;>;"
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "BaseActionInvoker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error invoking action: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "actionKey":Ljava/lang/String;
    .restart local v1    # "args":Ljava/lang/Object;
    .restart local v3    # "m":Ljava/lang/reflect/Method;
    .restart local v4    # "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/openfeint/internal/BaseActionInvoker;>;"
    :cond_2
    :try_start_1
    const-string v6, "BaseActionInvoker"

    const-string v7, "method is null"

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public login(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 2
    .param p1, "args"    # Ljava/lang/Object;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->launchIntroFlow(Z)V

    .line 25
    return-void
.end method

.method public settings(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 0
    .param p1, "args"    # Ljava/lang/Object;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 32
    check-cast p1, Ljava/lang/String;

    .end local p1    # "args":Ljava/lang/Object;
    invoke-static {p1}, Lcom/openfeint/internal/ui/Settings;->open(Ljava/lang/String;)V

    .line 33
    return-void
.end method
