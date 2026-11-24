.class public Lcom/openfeint/internal/ui/WebNav$WebNavClient;
.super Landroid/webkit/WebViewClient;
.source "WebNav.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/WebNav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WebNavClient"
.end annotation


# instance fields
.field mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

.field final synthetic this$0:Lcom/openfeint/internal/ui/WebNav;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/ui/WebNav;Lcom/openfeint/internal/ui/WebNav$ActionHandler;)V
    .locals 0
    .param p2, "anActionHandler"    # Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 367
    iput-object p2, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    .line 368
    return-void
.end method

.method static synthetic access$0(Lcom/openfeint/internal/ui/WebNav$WebNavClient;)Lcom/openfeint/internal/ui/WebNav;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    return-object v0
.end method


# virtual methods
.method protected attemptRecovery(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->recover()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/ui/WebNav;->load(Z)V

    .line 415
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 416
    const-string v1, "of_crash_report_query"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 417
    const-string v1, "of_no"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/openfeint/internal/ui/WebNav$WebNavClient$1;

    invoke-direct {v2, p0}, Lcom/openfeint/internal/ui/WebNav$WebNavClient$1;-><init>(Lcom/openfeint/internal/ui/WebNav$WebNavClient;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 423
    const-string v1, "of_yes"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/openfeint/internal/ui/WebNav$WebNavClient$2;

    invoke-direct {v2, p0}, Lcom/openfeint/internal/ui/WebNav$WebNavClient$2;-><init>(Lcom/openfeint/internal/ui/WebNav$WebNavClient;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->isDiskError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-virtual {v0}, Lcom/openfeint/internal/ui/WebNav;->finish()V

    goto :goto_0
.end method

.method public loadInitialContent()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    .line 452
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v5

    .line 453
    .local v5, "of":Lcom/openfeint/internal/OpenFeintInternal;
    invoke-virtual {v5}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v4

    .line 454
    .local v4, "localUser":Lcom/openfeint/api/resource/User;
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-virtual {v8}, Lcom/openfeint/internal/ui/WebNav;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v6, v8, Landroid/content/res/Configuration;->orientation:I

    .line 456
    .local v6, "orientation":I
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 457
    .local v7, "user":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_0

    .line 458
    const-string v8, "id"

    invoke-virtual {v4}, Lcom/openfeint/api/resource/User;->resourceID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string v8, "name"

    iget-object v9, v4, Lcom/openfeint/api/resource/User;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 463
    .local v2, "game":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "id"

    invoke-virtual {v5}, Lcom/openfeint/internal/OpenFeintInternal;->getAppID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v8, "name"

    invoke-virtual {v5}, Lcom/openfeint/internal/OpenFeintInternal;->getAppName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string v8, "version"

    invoke-virtual {v5}, Lcom/openfeint/internal/OpenFeintInternal;->getAppVersion()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v8

    invoke-virtual {v8}, Lcom/openfeint/internal/OpenFeintInternal;->getDeviceParams()Ljava/util/Map;

    move-result-object v1

    .line 468
    .local v1, "device":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "parentalControls"

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v9

    invoke-virtual {v9}, Lcom/openfeint/internal/OpenFeintInternal;->parentalControlsEnabled()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 471
    .local v0, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "platform"

    const-string v9, "android"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v8, "clientVersion"

    invoke-virtual {v5}, Lcom/openfeint/internal/OpenFeintInternal;->getOFVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string v8, "hasNativeInterface"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v8, "dpi"

    iget-object v9, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-static {v9}, Lcom/openfeint/internal/Util;->getDpiName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string v8, "locale"

    iget-object v9, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-virtual {v9}, Lcom/openfeint/internal/ui/WebNav;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string v8, "user"

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v8, "game"

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v8, "device"

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v8, "actions"

    new-instance v9, Lorg/json/JSONArray;

    iget-object v10, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-virtual {v10}, Lcom/openfeint/internal/ui/WebNav;->getActionHandler()Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->getActionList()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string v9, "orientation"

    .line 482
    const/4 v8, 0x2

    if-ne v6, v8, :cond_1

    .line 483
    const-string v8, "landscape"

    .line 481
    :goto_0
    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string v8, "serverUrl"

    invoke-virtual {v5}, Lcom/openfeint/internal/OpenFeintInternal;->getServerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 490
    .local v3, "json":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    const-string v9, "OF.init.clientBoot(%s)"

    new-array v10, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    .line 493
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    iget-object v8, v8, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    invoke-virtual {v8}, Lcom/openfeint/internal/ui/WebNav;->loadInitialContent()V

    .line 494
    return-void

    .line 483
    .end local v3    # "json":Lorg/json/JSONObject;
    :cond_1
    const-string v8, "portrait"

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    iget-boolean v0, v0, Lcom/openfeint/internal/ui/WebNav;->mIsPageLoaded:Z

    if-eqz v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/openfeint/internal/ui/WebNav;->mIsPageLoaded:Z

    .line 404
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    iget-boolean v0, v0, Lcom/openfeint/internal/ui/WebNav;->mIsFrameworkLoaded:Z

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->loadInitialContent()V

    goto :goto_0

    .line 407
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->attemptRecovery(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->hideLoader(Ljava/util/Map;)V

    .line 397
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "stringUrl"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 377
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 386
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 380
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openfeint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 381
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    invoke-virtual {v1, v0}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->dispatch(Landroid/net/Uri;)V

    goto :goto_0

    .line 383
    :cond_2
    const-string v1, "WebUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UNHANDLED PROTOCOL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected submitCrashReport()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 437
    .local v0, "crashReport":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "console"

    new-instance v4, Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    iget-object v5, v5, Lcom/openfeint/internal/ui/WebNav;->mPreloadConsoleOutput:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 441
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 442
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "crash_report"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v3, "/webui/crash_report"

    const-string v4, "POST"

    invoke-static {v3, v4, v2, v6, v6}, Lcom/openfeint/internal/OpenFeintInternal;->genericRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 444
    return-void
.end method
