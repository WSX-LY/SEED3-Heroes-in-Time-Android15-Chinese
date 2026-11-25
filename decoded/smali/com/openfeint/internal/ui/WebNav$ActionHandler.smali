.class public Lcom/openfeint/internal/ui/WebNav$ActionHandler;
.super Ljava/lang/Object;
.source "WebNav.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/WebNav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ActionHandler"
.end annotation


# static fields
.field private static final WEBUI_PREFS:Ljava/lang/String; = "OFWebUI"

.field private static final WEBUI_SETTING_PREFIX:Ljava/lang/String; = "OFWebUISetting_"


# instance fields
.field mActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWebNav:Lcom/openfeint/internal/ui/WebNav;

.field final synthetic this$0:Lcom/openfeint/internal/ui/WebNav;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/ui/WebNav;Lcom/openfeint/internal/ui/WebNav;)V
    .locals 1
    .param p2, "webNav"    # Lcom/openfeint/internal/ui/WebNav;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    iput-object p2, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mActionList:Ljava/util/List;

    .line 581
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mActionList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->populateActionList(Ljava/util/List;)V

    .line 582
    return-void
.end method

.method static synthetic access$0(Lcom/openfeint/internal/ui/WebNav$ActionHandler;)Lcom/openfeint/internal/ui/WebNav;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->this$0:Lcom/openfeint/internal/ui/WebNav;

    return-object v0
.end method

.method private parseQueryString(Landroid/net/Uri;)Ljava/util/Map;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 676
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->parseQueryString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private parseQueryString(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p1, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 689
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 691
    .local v0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 692
    const-string v4, "&"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 694
    .local v2, "pairs":[Ljava/lang/String;
    array-length v6, v2

    move v4, v5

    :goto_0
    if-lt v4, v6, :cond_1

    .line 704
    .end local v2    # "pairs":[Ljava/lang/String;
    :cond_0
    return-object v0

    .line 694
    .restart local v2    # "pairs":[Ljava/lang/String;
    :cond_1
    aget-object v3, v2, v4

    .line 695
    .local v3, "stringPair":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "pair":[Ljava/lang/String;
    array-length v7, v1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 697
    aget-object v7, v1, v5

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 699
    :cond_2
    aget-object v7, v1, v5

    const/4 v8, 0x0

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public alert(Ljava/util/Map;)V
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
    .line 798
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 799
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "title"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 800
    const-string v1, "message"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 801
    const-string v1, "of_ok"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 802
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 803
    return-void
.end method

.method public apiRequest(Ljava/util/Map;)V
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
    .line 716
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "request_id"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 717
    .local v2, "requestID":Ljava/lang/String;
    const-string v3, "params"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->parseQueryString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 718
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "httpParams"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->parseQueryString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 721
    .local v0, "httpParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "path"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 722
    const-string v4, "method"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/openfeint/internal/ui/WebNav$ActionHandler$1;

    invoke-direct {v5, p0, v2}, Lcom/openfeint/internal/ui/WebNav$ActionHandler$1;-><init>(Lcom/openfeint/internal/ui/WebNav$ActionHandler;Ljava/lang/String;)V

    .line 720
    invoke-static {v3, v4, v1, v0, v5}, Lcom/openfeint/internal/OpenFeintInternal;->genericRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 734
    return-void
.end method

.method public back(Ljava/util/Map;)V
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
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 772
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/openfeint/internal/ui/WebNav;->fade(Z)V

    .line 773
    const-string v1, "root"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 774
    .local v0, "root":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 775
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    iput v3, v1, Lcom/openfeint/internal/ui/WebNav;->pageStackCount:I

    .line 778
    :cond_0
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    iget v1, v1, Lcom/openfeint/internal/ui/WebNav;->pageStackCount:I

    if-le v1, v3, :cond_1

    .line 779
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    iget v2, v1, Lcom/openfeint/internal/ui/WebNav;->pageStackCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/openfeint/internal/ui/WebNav;->pageStackCount:I

    .line 781
    :cond_1
    return-void
.end method

.method public contentLoaded(Ljava/util/Map;)V
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
    .line 737
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "keepLoader"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "keepLoader"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 738
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->hideLoader(Ljava/util/Map;)V

    .line 739
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->this$0:Lcom/openfeint/internal/ui/WebNav;

    const-string v0, "title"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/openfeint/internal/ui/WebNav;->setTitle(Ljava/lang/CharSequence;)V

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/ui/WebNav;->fade(Z)V

    .line 743
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-static {v0}, Lcom/openfeint/internal/ui/WebNav;->access$0(Lcom/openfeint/internal/ui/WebNav;)V

    .line 744
    return-void
.end method

.method public dashboard(Ljava/util/Map;)V
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
    .line 905
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/openfeint/api/ui/Dashboard;->openFromSpotlight()V

    .line 906
    return-void
.end method

.method public dismiss(Ljava/util/Map;)V
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
    .line 806
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-virtual {v0}, Lcom/openfeint/internal/ui/WebNav;->finish()V

    .line 807
    return-void
.end method

.method public dispatch(Landroid/net/Uri;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 631
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v6, "action"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 634
    invoke-direct {p0, p1}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->parseQueryString(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v3

    .line 635
    .local v3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "actionName":Ljava/lang/String;
    const-string v5, "log"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 639
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 640
    .local v2, "escapedOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "params"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 641
    .local v4, "params":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "password"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 642
    const-string v5, "params"

    const-string v6, "---FILTERED---"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    :cond_0
    const-string v5, "WebUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ACTION: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    .end local v2    # "escapedOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "params":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mActionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 651
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/util/Map;

    aput-object v8, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 664
    .end local v0    # "actionName":Ljava/lang/String;
    .end local v3    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 652
    .restart local v0    # "actionName":Ljava/lang/String;
    .restart local v3    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 653
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "WebUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mActionList contains this method, but it is not implemented: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 654
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 655
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "WebUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unhandled Exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 658
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v5, "WebUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UNHANDLED ACTION: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 662
    .end local v0    # "actionName":Ljava/lang/String;
    .end local v3    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    const-string v5, "WebUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UNHANDLED MESSAGE TYPE: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public downloadBlob(Ljava/util/Map;)V
    .locals 15
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
    .line 870
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "score"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 871
    .local v8, "scoreJSON":Ljava/lang/String;
    const-string v10, "onError"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 872
    .local v5, "onError":Ljava/lang/String;
    const-string v10, "onSuccess"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 875
    .local v6, "onSuccess":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    invoke-direct {v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;-><init>()V

    .line 876
    .local v4, "jsonFactory":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v2

    .line 877
    .local v2, "jp":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    new-instance v3, Lcom/openfeint/internal/JsonResourceParser;

    invoke-direct {v3, v2}, Lcom/openfeint/internal/JsonResourceParser;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V

    .line 878
    .local v3, "jrp":Lcom/openfeint/internal/JsonResourceParser;
    invoke-virtual {v3}, Lcom/openfeint/internal/JsonResourceParser;->parse()Ljava/lang/Object;

    move-result-object v9

    .line 880
    .local v9, "scoreObject":Ljava/lang/Object;
    if-eqz v9, :cond_0

    instance-of v10, v9, Lcom/openfeint/api/resource/Score;

    if-eqz v10, :cond_0

    .line 881
    move-object v0, v9

    check-cast v0, Lcom/openfeint/api/resource/Score;

    move-object v7, v0

    .line 882
    .local v7, "score":Lcom/openfeint/api/resource/Score;
    new-instance v10, Lcom/openfeint/internal/ui/WebNav$ActionHandler$3;

    invoke-direct {v10, p0, v6, v7, v5}, Lcom/openfeint/internal/ui/WebNav$ActionHandler$3;-><init>(Lcom/openfeint/internal/ui/WebNav$ActionHandler;Ljava/lang/String;Lcom/openfeint/api/resource/Score;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Lcom/openfeint/api/resource/Score;->downloadBlob(Lcom/openfeint/api/resource/Score$DownloadBlobCB;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    .end local v2    # "jp":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .end local v3    # "jrp":Lcom/openfeint/internal/JsonResourceParser;
    .end local v4    # "jsonFactory":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    .end local v7    # "score":Lcom/openfeint/api/resource/Score;
    .end local v9    # "scoreObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 896
    :catch_0
    move-exception v1

    .line 897
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v5, :cond_0

    .line 898
    iget-object v10, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->this$0:Lcom/openfeint/internal/ui/WebNav;

    const-string v11, "%s(%s)"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mActionList:Ljava/util/List;

    return-object v0
.end method

.method public hideLoader(Ljava/util/Map;)V
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
    .line 789
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public isApplicationInstalled(Ljava/util/Map;)V
    .locals 10
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
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 820
    const/4 v1, 0x0

    .line 822
    .local v1, "installed":Z
    iget-object v5, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    invoke-virtual {v5}, Lcom/openfeint/internal/ui/WebNav;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 824
    .local v3, "manager":Landroid/content/pm/PackageManager;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 825
    .local v2, "installedApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const-string v5, "package_name"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 827
    .local v4, "searchString":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 833
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->this$0:Lcom/openfeint/internal/ui/WebNav;

    const-string v7, "%s(%s)"

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Object;

    .line 834
    const-string v5, "callback"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v8, v9

    const/4 v9, 0x1

    .line 835
    if-eqz v1, :cond_2

    const-string v5, "true"

    :goto_1
    aput-object v5, v8, v9

    .line 833
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    .line 836
    return-void

    .line 827
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 828
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 829
    const/4 v1, 0x1

    goto :goto_0

    .line 835
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    const-string v5, "false"

    goto :goto_1
.end method

.method public log(Ljava/util/Map;)V
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
    .line 792
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "message"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 793
    .local v0, "message":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 794
    const-string v2, "WebUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "WEBLOG: "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :cond_0
    return-void
.end method

.method public openBrowser(Ljava/util/Map;)V
    .locals 8
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
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 855
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    const-class v5, Lcom/openfeint/internal/ui/NativeBrowser;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 856
    .local v1, "browserIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->this$0:Lcom/openfeint/internal/ui/WebNav;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4, v5}, Lcom/openfeint/internal/ui/WebNav;->access$3(Lcom/openfeint/internal/ui/WebNav;Ljava/util/Map;)V

    .line 857
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "src"

    aput-object v5, v4, v3

    const/4 v5, 0x1

    const-string v6, "callback"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "on_cancel"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "on_failure"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "timeout"

    aput-object v6, v4, v5

    array-length v5, v4

    :goto_0
    if-lt v3, v5, :cond_0

    .line 866
    iget-object v3, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->this$0:Lcom/openfeint/internal/ui/WebNav;

    const/16 v4, 0x63dd

    invoke-virtual {v3, v1, v4}, Lcom/openfeint/internal/ui/WebNav;->startActivityForResult(Landroid/content/Intent;I)V

    .line 867
    return-void

    .line 857
    :cond_0
    aget-object v0, v4, v3

    .line 858
    .local v0, "arg":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 859
    .local v2, "val":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 861
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-static {v6}, Lcom/openfeint/internal/ui/WebNav;->access$4(Lcom/openfeint/internal/ui/WebNav;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "com.openfeint.internal.ui.NativeBrowser.argument."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public openMarket(Ljava/util/Map;)V
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
    .line 810
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "package_name"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 811
    .local v1, "packageName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 812
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market://details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 811
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 816
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    invoke-virtual {v2, v0}, Lcom/openfeint/internal/ui/WebNav;->startActivity(Landroid/content/Intent;)V

    .line 817
    return-void
.end method

.method public openYoutubePlayer(Ljava/util/Map;)V
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
    .line 839
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "video_id"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 840
    .local v2, "videoID":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "vnd.youtube:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 842
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-virtual {v3}, Lcom/openfeint/internal/ui/WebNav;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 843
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 844
    iget-object v3, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    const-string v4, "of_no_video"

    invoke-static {v4}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 848
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v3, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    invoke-virtual {v3, v0}, Lcom/openfeint/internal/ui/WebNav;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
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
    .line 595
    .local p1, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "log"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    const-string v0, "apiRequest"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    const-string v0, "contentLoaded"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    const-string v0, "startLoading"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    const-string v0, "back"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    const-string v0, "showLoader"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    const-string v0, "hideLoader"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    const-string v0, "alert"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    const-string v0, "dismiss"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    const-string v0, "openMarket"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    const-string v0, "isApplicationInstalled"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    const-string v0, "openYoutubePlayer"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    const-string v0, "profilePicture"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    const-string v0, "openBrowser"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    const-string v0, "downloadBlob"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    const-string v0, "dashboard"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    const-string v0, "readSetting"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    const-string v0, "writeSetting"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    const-string v0, "setParentalControlsEnabled"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    return-void
.end method

.method public final profilePicture(Ljava/util/Map;)V
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
    .line 851
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-static {v0}, Lcom/openfeint/internal/ImagePicker;->show(Landroid/app/Activity;)V

    .line 852
    return-void
.end method

.method public readSetting(Ljava/util/Map;)V
    .locals 11
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
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 912
    const-string v6, "key"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 913
    .local v1, "k":Ljava/lang/String;
    const-string v6, "callback"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 914
    .local v0, "cb":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 915
    if-eqz v1, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OFWebUISetting_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 916
    .local v2, "key":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "OFWebUI"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 918
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 919
    .local v4, "val":Ljava/lang/String;
    const-string v5, "WebUI"

    const-string v6, "readSetting(%s) => %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v8

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v5, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->this$0:Lcom/openfeint/internal/ui/WebNav;

    const-string v6, "%s(%s)"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v8

    if-eqz v4, :cond_2

    .end local v4    # "val":Ljava/lang/String;
    :goto_1
    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    .line 922
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    :cond_1
    move-object v2, v5

    .line 915
    goto :goto_0

    .line 920
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    .restart local v4    # "val":Ljava/lang/String;
    :cond_2
    const-string v4, "null"

    goto :goto_1
.end method

.method public setParentalControlsEnabled(Ljava/util/Map;)V
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
    .line 936
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "parentalControlsEnabled"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 937
    .local v0, "v":Ljava/lang/String;
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/openfeint/internal/OpenFeintInternal;->setParentalControlsEnabled(Z)V

    .line 938
    return-void
.end method

.method public showLoader(Ljava/util/Map;)V
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
    .line 785
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public startLoading(Ljava/util/Map;)V
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
    .line 747
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/ui/WebNav;->fade(Z)V

    .line 748
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->showLoader(Ljava/util/Map;)V

    .line 750
    const-string v0, "path"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 751
    new-instance v1, Lcom/openfeint/internal/ui/WebNav$ActionHandler$2;

    invoke-direct {v1, p0}, Lcom/openfeint/internal/ui/WebNav$ActionHandler$2;-><init>(Lcom/openfeint/internal/ui/WebNav$ActionHandler;)V

    .line 750
    invoke-static {v0, v1}, Lcom/openfeint/internal/ui/WebViewCache;->trackPath(Ljava/lang/String;Lcom/openfeint/internal/ui/WebViewCacheCallback;)Z

    .line 768
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    iget v1, v0, Lcom/openfeint/internal/ui/WebNav;->pageStackCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/openfeint/internal/ui/WebNav;->pageStackCount:I

    .line 769
    return-void
.end method

.method public writeSetting(Ljava/util/Map;)V
    .locals 7
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
    .line 925
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "key"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 926
    .local v1, "k":Ljava/lang/String;
    const-string v4, "value"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 927
    .local v3, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 928
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OFWebUISetting_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 929
    .local v2, "key":Ljava/lang/String;
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "OFWebUI"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 930
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 931
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 933
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method
