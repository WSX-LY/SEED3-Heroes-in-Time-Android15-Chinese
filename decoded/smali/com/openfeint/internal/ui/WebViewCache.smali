.class public Lcom/openfeint/internal/ui/WebViewCache;
.super Ljava/lang/Object;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;,
        Lcom/openfeint/internal/ui/WebViewCache$ManifestData;,
        Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;,
        Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;,
        Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;,
        Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;,
        Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;
    }
.end annotation


# static fields
.field private static final ManifestRequestKey:Ljava/lang/String; = "manifest"

.field private static final OPENFEINT_ROOT:Ljava/lang/String; = "openfeint"

.field static final TAG:Ljava/lang/String; = "WebViewCache"

.field private static final WEBUI:Ljava/lang/String; = "webui"

.field private static diskError:Z = false

.field static final kBatchLoaded:I = 0x2

.field static final kBatchRetryDelayMillis:J = 0x1388L

.field static final kClientManifestReady:I = 0x3

.field static final kDataLoaded:I = 0x1

.field static final kFinishWhenClientReady:I = 0x4

.field static final kNumBatchRetries:I = 0x3

.field static final kServerManifestReady:I

.field public static manifestProductOverride:Ljava/lang/String;

.field private static rootPath:Ljava/lang/String;

.field private static rootUri:Ljava/lang/String;

.field static sInstance:Lcom/openfeint/internal/ui/WebViewCache;

.field public static serverOverride:Ljava/net/URI;


# instance fields
.field appContext:Landroid/content/Context;

.field batchesAreBroken:Z

.field clientManifest:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field delegate:Lcom/openfeint/internal/ui/WebViewCacheCallback;

.field finishWhenClientManifestDone:Z

.field globalsFinished:Z

.field loadingFinished:Z

.field mDelayHandler:Landroid/os/Handler;

.field mHandler:Landroid/os/Handler;

.field pathsToLoad:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field prioritizedPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

.field final serverURI:Ljava/net/URI;

.field trackedItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;",
            ">;"
        }
    .end annotation
.end field

.field trackedPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    sput-boolean v0, Lcom/openfeint/internal/ui/WebViewCache;->diskError:Z

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "_appContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-boolean v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->loadingFinished:Z

    .line 187
    iput-boolean v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->globalsFinished:Z

    .line 193
    iput-boolean v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->batchesAreBroken:Z

    .line 194
    iput-boolean v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->finishWhenClientManifestDone:Z

    .line 202
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->getServerURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverURI:Ljava/net/URI;

    .line 403
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    .line 404
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedPaths:Ljava/util/Set;

    .line 405
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedItems:Ljava/util/Map;

    .line 406
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    .line 407
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    .line 409
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->mDelayHandler:Landroid/os/Handler;

    .line 410
    new-instance v0, Lcom/openfeint/internal/ui/WebViewCache$3;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/ui/WebViewCache$3;-><init>(Lcom/openfeint/internal/ui/WebViewCache;)V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->mHandler:Landroid/os/Handler;

    .line 443
    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    invoke-static {p0}, Lcom/openfeint/internal/ui/WebViewCache;->getManifestPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/openfeint/internal/ui/WebViewCache;)V
    .locals 0

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->finishWhenClientManifestReady()V

    return-void
.end method

.method static synthetic access$10(Lcom/openfeint/internal/ui/WebViewCache;)V
    .locals 0

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->finishWithoutLoading()V

    return-void
.end method

.method static synthetic access$11(Lcom/openfeint/internal/ui/WebViewCache;I[BLjava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .locals 0

    .prologue
    .line 910
    invoke-direct/range {p0 .. p6}, Lcom/openfeint/internal/ui/WebViewCache;->handleBatchBody(I[BLjava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    return-void
.end method

.method static synthetic access$12(Lcom/openfeint/internal/ui/WebViewCache;Ljava/util/Set;I)V
    .locals 0

    .prologue
    .line 888
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/ui/WebViewCache;->batchRequest(Ljava/util/Set;I)V

    return-void
.end method

.method static synthetic access$13(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .locals 0

    .prologue
    .line 871
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/openfeint/internal/ui/WebViewCache;->batchFetch(Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    return-void
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->rootPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/openfeint/internal/ui/WebViewCache;)V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->sync()V

    return-void
.end method

.method static synthetic access$4(Lcom/openfeint/internal/ui/WebViewCache;)V
    .locals 0

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->deleteAll()V

    return-void
.end method

.method static synthetic access$5(Lcom/openfeint/internal/ui/WebViewCache;)V
    .locals 0

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->clientManifestReady()V

    return-void
.end method

.method static synthetic access$6(Lcom/openfeint/internal/ui/WebViewCache;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/openfeint/internal/ui/WebViewCache;->copyDefaultBackground(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$7(Lcom/openfeint/internal/ui/WebViewCache;)V
    .locals 0

    .prologue
    .line 820
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->triggerUpdates()V

    return-void
.end method

.method static synthetic access$8(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1036
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/ui/WebViewCache;->finishItem(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/openfeint/internal/ui/WebViewCache;Ljava/util/Set;Z)V
    .locals 0

    .prologue
    .line 1042
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/ui/WebViewCache;->finishItems(Ljava/util/Set;Z)V

    return-void
.end method

.method private batchFetch(Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .locals 6
    .param p1, "originalUrl"    # Ljava/lang/String;
    .param p2, "currentUrl"    # Ljava/lang/String;
    .param p3, "retriesLeft"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 872
    .local p4, "paths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/openfeint/internal/ui/WebViewCache$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/ui/WebViewCache$4;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    .line 881
    invoke-virtual {v0}, Lcom/openfeint/internal/ui/WebViewCache$4;->launch()V

    .line 882
    return-void
.end method

.method private batchRequest(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 885
    .local p1, "paths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/openfeint/internal/ui/WebViewCache;->batchRequest(Ljava/util/Set;I)V

    .line 886
    return-void
.end method

.method private batchRequest(Ljava/util/Set;I)V
    .locals 8
    .param p2, "numRetries"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 889
    .local p1, "paths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "WebViewCache"

    const-string v4, "Syncing %d items"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    new-instance v1, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v1}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    .line 893
    .local v1, "oal":Lcom/openfeint/internal/request/OrderedArgList;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 899
    new-instance v3, Lcom/openfeint/internal/ui/WebViewCache$5;

    invoke-direct {v3, p0, v1, p2, p1}, Lcom/openfeint/internal/ui/WebViewCache$5;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Lcom/openfeint/internal/request/OrderedArgList;ILjava/util/Set;)V

    .line 907
    invoke-virtual {v3}, Lcom/openfeint/internal/ui/WebViewCache$5;->launch()V

    .line 908
    return-void

    .line 893
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 894
    .local v2, "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v4, v4, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    .line 895
    .local v0, "manifestItem":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    const-string v4, "files[][path]"

    iget-object v5, v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->path:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v4, "files[][hash]"

    iget-object v5, v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->hash:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clientManifestReady()V
    .locals 4

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->getDefaultClientManifest()Ljava/util/Map;

    move-result-object v1

    .line 696
    .local v1, "obj":Ljava/util/Map;
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 697
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 698
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 699
    return-void
.end method

.method private copyDefaultBackground(Ljava/io/File;)V
    .locals 5
    .param p1, "baseDir"    # Ljava/io/File;

    .prologue
    .line 619
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 620
    .local v0, "defaultItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "webui"

    invoke-direct {p0, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->gatherDefaultItems(Ljava/lang/String;Ljava/util/Set;)V

    .line 621
    invoke-direct {p0, v0}, Lcom/openfeint/internal/ui/WebViewCache;->stripUnused(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 622
    const-string v3, "webui/manifest.plist"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 623
    const-string v3, "webui/javascripts/"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copyDirectory(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 624
    const-string v3, "webui/stylesheets/"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copyDirectory(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 625
    const-string v3, "webui/intro/"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copyDirectory(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 626
    iget-object v3, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/openfeint/internal/Util;->getDpiName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mdpi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 627
    const-string v3, "webui/images/space.grid.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 628
    const-string v3, "webui/images/button.gray.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 629
    const-string v3, "webui/images/button.gray.hit.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 630
    const-string v3, "webui/images/button.green.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 631
    const-string v3, "webui/images/button.green.hit.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 632
    const-string v3, "webui/images/logo.small.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 633
    const-string v3, "webui/images/header_bg.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 634
    const-string v3, "webui/images/loading.spinner.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 635
    const-string v3, "webui/images/input.text.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 636
    const-string v3, "webui/images/frame.small.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 637
    const-string v3, "webui/images/icon.leaf.gray.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 638
    const-string v3, "webui/images/tab.divider.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 639
    const-string v3, "webui/images/tab.active_indicator.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 641
    const-string v3, "webui/images/logo.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 642
    const-string v3, "webui/images/header_bg.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 643
    const-string v3, "webui/images/loading.spinner.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 644
    const-string v3, "webui/images/icon.user.male.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 645
    const-string v3, "webui/images/intro.leaderboards.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 646
    const-string v3, "webui/images/intro.friends.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 647
    const-string v3, "webui/images/intro.achievements.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 648
    const-string v3, "webui/images/intro.games.mdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 677
    :goto_0
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getSettings()Ljava/util/Map;

    move-result-object v3

    const-string v4, "com.openfeint.internal.InternalSettings.WebUIDelayUntilCopyFinished"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 679
    .local v1, "delayReadyCall":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 680
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 684
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->clientManifestReady()V

    .line 692
    :cond_0
    return-void

    .line 652
    .end local v1    # "delayReadyCall":Z
    :cond_1
    const-string v3, "webui/images/space.grid.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 653
    const-string v3, "webui/images/button.gray.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 654
    const-string v3, "webui/images/button.gray.hit.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 655
    const-string v3, "webui/images/button.green.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 656
    const-string v3, "webui/images/button.green.hit.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 657
    const-string v3, "webui/images/logo.small.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 658
    const-string v3, "webui/images/header_bg.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 659
    const-string v3, "webui/images/loading.spinner.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 660
    const-string v3, "webui/images/input.text.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 661
    const-string v3, "webui/images/frame.small.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 662
    const-string v3, "webui/images/icon.leaf.gray.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 663
    const-string v3, "webui/images/tab.divider.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 664
    const-string v3, "webui/images/tab.active_indicator.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 666
    const-string v3, "webui/images/logo.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 667
    const-string v3, "webui/images/header_bg.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 668
    const-string v3, "webui/images/loading.spinner.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 669
    const-string v3, "webui/images/icon.user.male.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 670
    const-string v3, "webui/images/intro.leaderboards.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 671
    const-string v3, "webui/images/intro.friends.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 672
    const-string v3, "webui/images/intro.achievements.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 673
    const-string v3, "webui/images/intro.games.hdpi.png"

    invoke-direct {p0, p1, v3, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_0

    .line 677
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 680
    .restart local v1    # "delayReadyCall":Z
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 681
    .local v2, "path":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/openfeint/internal/ui/WebViewCache;->copySingleItem(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    .line 686
    .end local v2    # "path":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->clientManifestReady()V

    .line 688
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 689
    .restart local v2    # "path":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/openfeint/internal/ui/WebViewCache;->copySingleItem(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private copyDirectory(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 610
    .local p3, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 611
    .local v0, "dirItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 614
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 615
    return-void

    .line 611
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 612
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 614
    .end local v1    # "path":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "path":Ljava/lang/String;
    invoke-direct {p0, p1, v1, p3}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1
.end method

.method private copySingleItem(Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 578
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 579
    .local v1, "filePath":Ljava/io/File;
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 580
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 582
    .local v4, "reader":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 583
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 584
    .local v2, "fileStream":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 585
    .local v5, "writer":Ljava/io/DataOutputStream;
    invoke-static {v4, v5}, Lcom/openfeint/internal/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    .end local v1    # "filePath":Ljava/io/File;
    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "reader":Ljava/io/DataInputStream;
    .end local v5    # "writer":Ljava/io/DataOutputStream;
    :goto_0
    return-void

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "WebViewCache"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p3, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/ui/WebViewCache;->copySingleItem(Ljava/io/File;Ljava/lang/String;)V

    .line 605
    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 607
    :cond_0
    return-void
.end method

.method private deleteAll()V
    .locals 4

    .prologue
    .line 549
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 550
    .local v0, "baseDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "webui"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 551
    .local v1, "webui":Ljava/io/File;
    invoke-static {v1}, Lcom/openfeint/internal/Util;->deleteFiles(Ljava/io/File;)V

    .line 552
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    const-string v3, "manifest.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 553
    return-void
.end method

.method public static diskError()V
    .locals 3

    .prologue
    .line 220
    const/4 v1, 0x1

    sput-boolean v1, Lcom/openfeint/internal/ui/WebViewCache;->diskError:Z

    .line 221
    sget-object v1, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v1, v1, Lcom/openfeint/internal/ui/WebViewCache;->trackedPaths:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "pathAndCb":Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    sget-object v1, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v1, v1, Lcom/openfeint/internal/ui/WebViewCache;->trackedPaths:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 225
    sget-object v1, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {v1}, Lcom/openfeint/internal/ui/WebViewCache;->finishWithoutLoading()V

    .line 226
    return-void

    .line 221
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "pathAndCb":Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;
    check-cast v0, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;

    .line 222
    .restart local v0    # "pathAndCb":Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;
    iget-object v2, v0, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->callback:Lcom/openfeint/internal/ui/WebViewCacheCallback;

    invoke-virtual {v2}, Lcom/openfeint/internal/ui/WebViewCacheCallback;->failLoaded()V

    goto :goto_0
.end method

.method private finishGlobals()V
    .locals 10

    .prologue
    .line 944
    iget-object v5, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedPaths:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 956
    iget-object v5, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedPaths:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 959
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 960
    .local v4, "priorityDependents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 967
    iget-object v5, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 968
    iget-object v5, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 970
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/openfeint/internal/ui/WebViewCache;->globalsFinished:Z

    .line 971
    return-void

    .line 944
    .end local v4    # "priorityDependents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;

    .line 945
    .local v3, "pathAndCb":Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    iget-object v7, v3, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->path:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 946
    iget-object v6, v3, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->callback:Lcom/openfeint/internal/ui/WebViewCacheCallback;

    iget-object v7, v3, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/openfeint/internal/ui/WebViewCacheCallback;->pathLoaded(Ljava/lang/String;)V

    goto :goto_0

    .line 950
    :cond_2
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v6, v6, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    iget-object v7, v3, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->path:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    .line 951
    .local v0, "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    new-instance v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    invoke-direct {v1, v0}, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;-><init>(Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;)V

    .line 952
    .local v1, "newItem":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    iget-object v6, v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v6, v7}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 953
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedItems:Ljava/util/Map;

    iget-object v7, v3, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->path:Ljava/lang/String;

    new-instance v8, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;

    iget-object v9, v3, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->callback:Lcom/openfeint/internal/ui/WebViewCacheCallback;

    invoke-direct {v8, v1, v9}, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;-><init>(Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;Lcom/openfeint/internal/ui/WebViewCacheCallback;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 960
    .end local v0    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .end local v1    # "newItem":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .end local v3    # "pathAndCb":Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;
    .restart local v4    # "priorityDependents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 961
    .local v2, "path":Ljava/lang/String;
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 962
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v6, v6, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    .line 963
    .restart local v0    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    if-eqz v0, :cond_0

    .line 964
    iget-object v6, v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private finishItem(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1037
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1038
    .local v0, "tiny":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1039
    invoke-direct {p0, v0, p2, v1}, Lcom/openfeint/internal/ui/WebViewCache;->finishItems(Ljava/util/Set;ZZ)V

    .line 1040
    return-void
.end method

.method private finishItems(Ljava/util/Set;Z)V
    .locals 1
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1043
    .local p1, "paths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/openfeint/internal/ui/WebViewCache;->finishItems(Ljava/util/Set;ZZ)V

    .line 1044
    return-void
.end method

.method private finishItems(Ljava/util/Set;ZZ)V
    .locals 11
    .param p2, "succeeded"    # Z
    .param p3, "wasSingular"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1047
    .local p1, "paths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    if-nez v8, :cond_0

    .line 1094
    :goto_0
    return-void

    .line 1049
    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 1052
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/openfeint/internal/ui/WebViewCache;->batchesAreBroken:Z

    .line 1093
    :goto_1
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->loadNextItem()V

    goto :goto_0

    .line 1055
    :cond_1
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedItems:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1058
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v8, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1059
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v8, v8, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    invoke-interface {v8, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1060
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    invoke-interface {v8, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1063
    iget-boolean v8, p0, Lcom/openfeint/internal/ui/WebViewCache;->globalsFinished:Z

    if-eqz v8, :cond_3

    .line 1064
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1065
    .local v6, "pathsToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedItems:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1072
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1078
    .end local v6    # "pathsToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v8

    new-array v5, v8, [Ljava/lang/String;

    .line 1079
    .local v5, "pathsArray":[Ljava/lang/String;
    array-length v8, v5

    new-array v0, v8, [Ljava/lang/String;

    .line 1080
    .local v0, "hashArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1081
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1090
    invoke-static {v5, v0}, Lcom/openfeint/internal/db/DB;->setClientManifestBatch([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 1055
    .end local v0    # "hashArray":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "pathsArray":[Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;

    .line 1056
    .local v3, "itemAndCb":Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;
    iget-object v9, v3, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;->item:Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    iget-object v9, v9, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    invoke-interface {v9, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 1065
    .end local v3    # "itemAndCb":Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;
    .restart local v6    # "pathsToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;

    .line 1066
    .restart local v3    # "itemAndCb":Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;
    iget-object v9, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    iget-object v10, v3, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;->item:Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    iget-object v10, v10, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->path:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v3, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;->item:Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    iget-object v9, v9, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 1067
    iget-object v9, v3, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;->item:Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    iget-object v9, v9, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->path:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1068
    iget-object v9, v3, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;->callback:Lcom/openfeint/internal/ui/WebViewCacheCallback;

    iget-object v10, v3, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;->item:Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    iget-object v10, v10, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/openfeint/internal/ui/WebViewCacheCallback;->pathLoaded(Ljava/lang/String;)V

    goto :goto_3

    .line 1072
    .end local v3    # "itemAndCb":Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1073
    .local v7, "removePath":Ljava/lang/String;
    iget-object v9, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedItems:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1081
    .end local v6    # "pathsToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "removePath":Ljava/lang/String;
    .restart local v0    # "hashArray":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v5    # "pathsArray":[Ljava/lang/String;
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1082
    .local v4, "path":Ljava/lang/String;
    if-eqz p2, :cond_8

    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v8, v8, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    iget-object v1, v8, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->hash:Ljava/lang/String;

    .line 1084
    .local v1, "hashValue":Ljava/lang/String;
    :goto_6
    aput-object v4, v5, v2

    .line 1085
    aput-object v1, v0, v2

    .line 1086
    add-int/lit8 v2, v2, 0x1

    .line 1088
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache;->clientManifest:Ljava/util/Map;

    invoke-interface {v8, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1082
    .end local v1    # "hashValue":Ljava/lang/String;
    :cond_8
    const-string v1, "INVALID"

    goto :goto_6
.end method

.method private finishLoading()V
    .locals 1

    .prologue
    .line 867
    sget-object v0, Lcom/openfeint/internal/db/DB;->storeHelper:Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    invoke-virtual {v0}, Lcom/openfeint/internal/db/DB$DataStorageHelperX;->close()V

    .line 868
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->loadingFinished:Z

    .line 869
    return-void
.end method

.method private finishWhenClientManifestReady()V
    .locals 4

    .prologue
    .line 840
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 841
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 842
    return-void
.end method

.method private finishWithoutLoading()V
    .locals 4

    .prologue
    .line 845
    const-string v1, "WebViewCache"

    const-string v2, "finishWithoutLoading"

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->finishLoading()V

    .line 854
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedPaths:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 857
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedPaths:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 858
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 859
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    if-nez v1, :cond_0

    .line 860
    :try_start_0
    new-instance v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;-><init>([B)V

    iput-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v1, v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 863
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 864
    return-void

    .line 854
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;

    .line 855
    .local v0, "pathAndCb":Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;
    iget-object v2, v0, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->callback:Lcom/openfeint/internal/ui/WebViewCacheCallback;

    iget-object v3, v0, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/openfeint/internal/ui/WebViewCacheCallback;->pathLoaded(Ljava/lang/String;)V

    goto :goto_0

    .line 861
    .end local v0    # "pathAndCb":Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static fullOuterJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "fields"    # Ljava/lang/String;
    .param p1, "table1"    # Ljava/lang/String;
    .param p2, "table2"    # Ljava/lang/String;
    .param p3, "condition"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1188
    const-string v2, "SELECT %s from %s LEFT OUTER JOIN %s ON %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p0, v3, v4

    aput-object p1, v3, v5

    aput-object p2, v3, v6

    aput-object p3, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, "join1":Ljava/lang/String;
    const-string v2, "SELECT %s from %s LEFT OUTER JOIN %s ON %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p0, v3, v4

    aput-object p2, v3, v5

    aput-object p1, v3, v6

    aput-object p3, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1190
    .local v1, "join2":Ljava/lang/String;
    const-string v2, "%s UNION %s;"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private gatherDefaultItems(Ljava/lang/String;Ljava/util/Set;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 557
    .local p2, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v5, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 558
    .local v4, "stuff":[Ljava/lang/String;
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 574
    .end local v4    # "stuff":[Ljava/lang/String;
    :goto_1
    return-void

    .line 558
    .restart local v4    # "stuff":[Ljava/lang/String;
    :cond_0
    aget-object v3, v4, v5

    .line 559
    .local v3, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 561
    .local v2, "fullpath":Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 562
    .local v0, "check":Ljava/io/InputStream;
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 558
    .end local v0    # "check":Ljava/io/InputStream;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 565
    :catch_0
    move-exception v1

    .line 567
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-direct {p0, v2, p2}, Lcom/openfeint/internal/ui/WebViewCache;->gatherDefaultItems(Ljava/lang/String;Ljava/util/Set;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 570
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fullpath":Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "stuff":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 571
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "WebViewCache"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getDefaultClientManifest()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 754
    const/4 v5, 0x0

    .line 755
    .local v5, "result":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 757
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v6, Lcom/openfeint/internal/db/DB;->storeHelper:Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    invoke-virtual {v6}, Lcom/openfeint/internal/db/DB$DataStorageHelperX;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 758
    const-string v6, "SELECT * FROM manifest"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 759
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 761
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 762
    .local v3, "outManifest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 764
    :cond_0
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 765
    .local v4, "path":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 766
    .local v2, "hash":Ljava/lang/String;
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    .line 763
    if-nez v6, :cond_0

    .line 768
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 769
    const-string v6, "WebViewCache"

    const-string v7, "create client Manifest from db"

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 781
    .end local v2    # "hash":Ljava/lang/String;
    .end local v3    # "outManifest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "path":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 772
    :catch_0
    move-exception v1

    .line 773
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->diskError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 778
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 781
    .end local v1    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :goto_1
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->getDefaultClientManifestFromAsset()Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    .line 774
    :catch_1
    move-exception v1

    .line 776
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v6, "WebViewCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SQLite exception. "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 778
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v6

    goto :goto_1

    .line 777
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 778
    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 779
    :goto_2
    throw v6

    .line 778
    :cond_1
    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_1

    .restart local v2    # "hash":Ljava/lang/String;
    .restart local v3    # "outManifest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "path":Ljava/lang/String;
    :catch_4
    move-exception v6

    goto :goto_0

    .end local v2    # "hash":Ljava/lang/String;
    .end local v3    # "outManifest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "path":Ljava/lang/String;
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_5
    move-exception v6

    goto :goto_1

    .end local v1    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_6
    move-exception v7

    goto :goto_2
.end method

.method private getDefaultClientManifestFromAsset()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 787
    new-instance v3, Ljava/io/File;

    sget-object v7, Lcom/openfeint/internal/ui/WebViewCache;->rootPath:Ljava/lang/String;

    const-string v8, "manifest.plist"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .local v3, "manifestFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 790
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 791
    .local v5, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 792
    .local v4, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v6

    .line 793
    .local v6, "xr":Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;

    const/4 v7, 0x0

    invoke-direct {v1, p0, v7}, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;)V

    .line 794
    .local v1, "handler":Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;
    invoke-interface {v6, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 795
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 796
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v6, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 797
    invoke-virtual {v1}, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->getOutputMap()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 803
    .end local v1    # "handler":Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v6    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    return-object v7

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "WebViewCache"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public static final getItemAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "itemPath"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/openfeint/internal/ui/WebViewCache;->rootPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getItemUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "itemPath"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/openfeint/internal/ui/WebViewCache;->rootUri:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getManifestPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 815
    const-string v0, "android"

    .line 816
    .local v0, "platform":Ljava/lang/String;
    sget-object v2, Lcom/openfeint/internal/ui/WebViewCache;->manifestProductOverride:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v1, Lcom/openfeint/internal/ui/WebViewCache;->manifestProductOverride:Ljava/lang/String;

    .line 817
    .local v1, "product":Ljava/lang/String;
    :goto_0
    const-string v2, "/webui/manifest/%s.%s.%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "android"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    invoke-static {p0}, Lcom/openfeint/internal/Util;->getDpiName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 816
    .end local v1    # "product":Ljava/lang/String;
    :cond_0
    const-string v1, "embed"

    goto :goto_0
.end method

.method private static final getServerURI()Ljava/net/URI;
    .locals 3

    .prologue
    .line 807
    :try_start_0
    sget-object v1, Lcom/openfeint/internal/ui/WebViewCache;->serverOverride:Ljava/net/URI;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/openfeint/internal/ui/WebViewCache;->serverOverride:Ljava/net/URI;

    .line 810
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 808
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/net/URI;

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getServerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleBatchBody(I[BLjava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .locals 8
    .param p1, "responseCode"    # I
    .param p2, "body"    # [B
    .param p3, "originalUrl"    # Ljava/lang/String;
    .param p4, "currentUrl"    # Ljava/lang/String;
    .param p5, "retriesLeft"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "paths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 911
    const/16 v0, 0xc8

    if-gt v0, p1, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    .line 912
    invoke-direct {p0, p6, p2}, Lcom/openfeint/internal/ui/WebViewCache;->processBatch(Ljava/util/Set;[B)V

    .line 939
    :goto_0
    return-void

    .line 913
    :cond_0
    const/16 v0, 0x12e

    if-eq v0, p1, :cond_1

    const/16 v0, 0x12f

    if-ne v0, p1, :cond_2

    .line 915
    :cond_1
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/openfeint/internal/ui/WebViewCache;->batchFetch(Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    goto :goto_0

    .line 916
    :cond_2
    if-eqz p1, :cond_3

    const/16 v0, 0x190

    if-gt v0, p1, :cond_5

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_5

    .line 917
    :cond_3
    if-lez p5, :cond_4

    .line 919
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->mDelayHandler:Landroid/os/Handler;

    new-instance v0, Lcom/openfeint/internal/ui/WebViewCache$6;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/ui/WebViewCache$6;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    .line 928
    const-wide/16 v1, 0x1388

    .line 919
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 931
    :cond_4
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v2, v1, v1, p6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 932
    .local v6, "msg":Landroid/os/Message;
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 936
    .end local v6    # "msg":Landroid/os/Message;
    :cond_5
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v2, v1, v1, p6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 937
    .restart local v6    # "msg":Landroid/os/Message;
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)Lcom/openfeint/internal/ui/WebViewCache;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {v0}, Lcom/openfeint/internal/ui/WebViewCache;->finishWithoutLoading()V

    .line 63
    :cond_0
    new-instance v0, Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/ui/WebViewCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    .line 64
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    return-object v0
.end method

.method public static isDiskError()Z
    .locals 1

    .prologue
    .line 726
    sget-boolean v0, Lcom/openfeint/internal/ui/WebViewCache;->diskError:Z

    return v0
.end method

.method public static isLoaded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/ui/WebViewCache;->isLoadedInner(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isLoadedInner(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->loadingFinished:Z

    .line 399
    :goto_0
    return v0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadNextItem()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 974
    const-string v2, "WebViewCache"

    const-string v3, "loadNextItem"

    invoke-static {v2, v3}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v2, v2, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    iget-object v3, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 977
    iget-boolean v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->globalsFinished:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v2, v2, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 978
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->finishGlobals()V

    .line 981
    :cond_0
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    iget-object v3, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 983
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v2, v2, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    add-int v1, v2, v3

    .line 985
    .local v1, "numGlobalsAndPrioritized":I
    iget-boolean v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->batchesAreBroken:Z

    if-nez v2, :cond_1

    if-le v1, v4, :cond_1

    .line 986
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 987
    .local v0, "combinedGlobalsAndPrio":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v2, v2, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 988
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 989
    invoke-direct {p0, v0}, Lcom/openfeint/internal/ui/WebViewCache;->batchRequest(Ljava/util/Set;)V

    .line 1006
    .end local v0    # "combinedGlobalsAndPrio":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 991
    :cond_1
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v2, v2, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 992
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v2, v2, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/openfeint/internal/ui/WebViewCache;->singleRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 994
    :cond_2
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 995
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/openfeint/internal/ui/WebViewCache;->singleRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 997
    :cond_3
    iget-boolean v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->batchesAreBroken:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-le v2, v4, :cond_4

    .line 998
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/openfeint/internal/ui/WebViewCache;->batchRequest(Ljava/util/Set;)V

    goto :goto_0

    .line 1000
    :cond_4
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1001
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/openfeint/internal/ui/WebViewCache;->singleRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 1004
    :cond_5
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->finishLoading()V

    goto :goto_0
.end method

.method public static prioritize(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/ui/WebViewCache;->prioritizeInner(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private prioritizeInner(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1097
    iget-boolean v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->loadingFinished:Z

    if-eqz v2, :cond_1

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1098
    :cond_1
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1099
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    if-eqz v2, :cond_0

    .line 1101
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v2, v2, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    .line 1102
    .local v0, "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    if-eqz v0, :cond_0

    .line 1103
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1106
    .local v1, "loadingDependents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1107
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1108
    const-string v2, "WebViewCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Prioritizing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processBatch(Ljava/util/Set;[B)V
    .locals 10
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .local p1, "paths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1118
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1119
    .local v1, "fetchedPaths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/zip/ZipInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1121
    .local v5, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v4, 0x0

    .line 1122
    .local v4, "ze":Ljava/util/zip/ZipEntry;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-nez v4, :cond_1

    .line 1134
    :goto_1
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1135
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-static {v6, v9, v7, v8, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1136
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1141
    :goto_2
    return-void

    .line 1123
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1124
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1125
    .local v2, "finalPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/openfeint/internal/ui/WebViewCache;->rootPath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/Util;->saveStreamAndLeaveInputOpen(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1126
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1129
    .end local v2    # "finalPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1131
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "WebViewCache"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1138
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->mHandler:Landroid/os/Handler;

    invoke-static {v6, v9, v8, v8, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1139
    .restart local v3    # "msg":Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method

.method public static recover()Z
    .locals 1

    .prologue
    .line 730
    sget-boolean v0, Lcom/openfeint/internal/ui/WebViewCache;->diskError:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 731
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-virtual {v0}, Lcom/openfeint/internal/ui/WebViewCache;->recoverInternal()Z

    move-result v0

    goto :goto_0
.end method

.method private final singleRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "finalPath"    # Ljava/lang/String;

    .prologue
    .line 1009
    const-string v0, "WebViewCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Syncing item: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    new-instance v0, Lcom/openfeint/internal/ui/WebViewCache$7;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/internal/ui/WebViewCache$7;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v0}, Lcom/openfeint/internal/ui/WebViewCache$7;->launch()V

    .line 1034
    return-void
.end method

.method public static start()V
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {v0}, Lcom/openfeint/internal/ui/WebViewCache;->updateExternalStorageState()V

    .line 167
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {v0}, Lcom/openfeint/internal/ui/WebViewCache;->sync()V

    .line 168
    return-void
.end method

.method private stripUnused(Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, "table":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/openfeint/internal/Util;->getDpiName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "currentDpi":Ljava/lang/String;
    const-string v4, "mdpi"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, ".hdpi."

    .line 595
    .local v3, "test":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 596
    .local v2, "reducedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 599
    return-object v2

    .line 594
    .end local v2    # "reducedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "test":Ljava/lang/String;
    :cond_1
    const-string v3, ".mdpi."

    goto :goto_0

    .line 596
    .restart local v2    # "reducedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "test":Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 597
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private sync()V
    .locals 3

    .prologue
    .line 467
    const-string v1, "WebViewCache"

    const-string v2, "--- WebViewCache Sync ---"

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    new-instance v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;

    const-string v1, "manifest"

    invoke-direct {v0, p0, v1}, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;)V

    .line 470
    .local v0, "req":Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;
    invoke-virtual {v0}, Lcom/openfeint/internal/ui/WebViewCache$ManifestRequest;->launch()V

    .line 471
    return-void
.end method

.method public static testOnlyManifestItems()[Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1194
    sget-object v7, Lcom/openfeint/internal/db/DB;->storeHelper:Lcom/openfeint/internal/db/DB$DataStorageHelperX;

    invoke-virtual {v7}, Lcom/openfeint/internal/db/DB$DataStorageHelperX;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1196
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 1198
    .local v4, "result":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;>;"
    :try_start_0
    const-string v7, "server_manifest.path, server_manifest.hash, manifest.hash"

    const-string v8, "server_manifest"

    const-string v9, "manifest"

    const-string v10, "server_manifest.path = manifest.path"

    invoke-static {v7, v8, v9, v10}, Lcom/openfeint/internal/ui/WebViewCache;->fullOuterJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 1200
    invoke-virtual {v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1203
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 1204
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1206
    :cond_0
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1207
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1208
    const/4 v7, 0x1

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1209
    .local v6, "serverHash":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1210
    .local v0, "clientHash":Ljava/lang/String;
    new-instance v7, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;

    invoke-direct {v7, v3, v0, v6}, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    .end local v0    # "clientHash":Ljava/lang/String;
    .end local v6    # "serverHash":Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1205
    if-nez v7, :cond_0

    .line 1216
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1220
    :goto_0
    new-array v7, v11, [Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;

    .line 1221
    .local v5, "rv":[Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;
    new-instance v7, Lcom/openfeint/internal/ui/WebViewCache$8;

    invoke-direct {v7}, Lcom/openfeint/internal/ui/WebViewCache$8;-><init>()V

    invoke-static {v5, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1227
    return-object v5

    .line 1214
    .end local v5    # "rv":[Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;
    :catch_0
    move-exception v7

    .line 1216
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_0

    .line 1215
    :catchall_0
    move-exception v7

    .line 1216
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1217
    :goto_1
    throw v7

    .line 1216
    :catch_2
    move-exception v8

    goto :goto_1

    :catch_3
    move-exception v7

    goto :goto_0
.end method

.method public static trackPath(Ljava/lang/String;Lcom/openfeint/internal/ui/WebViewCacheCallback;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "cb"    # Lcom/openfeint/internal/ui/WebViewCacheCallback;

    .prologue
    .line 72
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/internal/ui/WebViewCache;->trackPathInner(Ljava/lang/String;Lcom/openfeint/internal/ui/WebViewCacheCallback;)Z

    move-result v0

    return v0
.end method

.method private trackPathInner(Ljava/lang/String;Lcom/openfeint/internal/ui/WebViewCacheCallback;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "cb"    # Lcom/openfeint/internal/ui/WebViewCacheCallback;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 368
    iget-boolean v4, p0, Lcom/openfeint/internal/ui/WebViewCache;->loadingFinished:Z

    if-eqz v4, :cond_0

    .line 369
    invoke-virtual {p2, p1}, Lcom/openfeint/internal/ui/WebViewCacheCallback;->pathLoaded(Ljava/lang/String;)V

    .line 390
    :goto_0
    return v2

    .line 372
    :cond_0
    iget-object v4, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    if-nez v4, :cond_1

    .line 373
    invoke-virtual {p2}, Lcom/openfeint/internal/ui/WebViewCacheCallback;->onTrackingNeeded()V

    .line 374
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedPaths:Ljava/util/Set;

    new-instance v4, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;

    invoke-direct {v4, p1, p2}, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;-><init>(Ljava/lang/String;Lcom/openfeint/internal/ui/WebViewCacheCallback;)V

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 375
    goto :goto_0

    .line 378
    :cond_1
    iget-object v4, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v4, v4, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    .line 379
    .local v0, "loadedItem":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    if-eqz v0, :cond_2

    .line 381
    invoke-virtual {p2}, Lcom/openfeint/internal/ui/WebViewCacheCallback;->onTrackingNeeded()V

    .line 382
    new-instance v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    invoke-direct {v1, v0}, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;-><init>(Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;)V

    .line 383
    .local v1, "newItem":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    iget-object v2, v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    iget-object v4, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 384
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedItems:Ljava/util/Map;

    new-instance v4, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;

    invoke-direct {v4, v1, p2}, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;-><init>(Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;Lcom/openfeint/internal/ui/WebViewCacheCallback;)V

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    .line 385
    goto :goto_0

    .line 389
    .end local v1    # "newItem":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    :cond_2
    invoke-virtual {p2, p1}, Lcom/openfeint/internal/ui/WebViewCacheCallback;->pathLoaded(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private triggerUpdates()V
    .locals 5

    .prologue
    .line 822
    const-string v1, "WebViewCache"

    const-string v2, "loadedManifest"

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache;->clientManifest:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 827
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v1, v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 833
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->loadNextItem()V

    .line 837
    :cond_1
    :goto_1
    return-void

    .line 827
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    .line 828
    .local v0, "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    iget-object v2, v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->hash:Ljava/lang/String;

    iget-object v3, p0, Lcom/openfeint/internal/ui/WebViewCache;->clientManifest:Ljava/util/Map;

    iget-object v4, v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->path:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 829
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    iget-object v3, v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->path:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 834
    .end local v0    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    :cond_3
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache;->clientManifest:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/openfeint/internal/ui/WebViewCache;->finishWhenClientManifestDone:Z

    if-eqz v1, :cond_1

    .line 835
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->finishWithoutLoading()V

    goto :goto_1
.end method

.method private updateExternalStorageState()V
    .locals 5

    .prologue
    .line 448
    invoke-static {}, Lcom/openfeint/internal/Util;->noSdcardPermission()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 449
    const-string v3, "WebViewCache"

    const-string v4, "no sdcard permission"

    invoke-static {v3, v4}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/WebViewCache;->setRootUriInternal()V

    .line 463
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "state":Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 456
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 457
    .local v1, "sdcard":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "openfeint"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 458
    .local v0, "feintRoot":Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/ui/WebViewCache;->setRootUriSdcard(Ljava/io/File;)V

    goto :goto_0

    .line 460
    .end local v0    # "feintRoot":Ljava/io/File;
    .end local v1    # "sdcard":Ljava/io/File;
    :cond_1
    const-string v3, "WebViewCache"

    invoke-static {v3, v2}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/WebViewCache;->setRootUriInternal()V

    goto :goto_0
.end method


# virtual methods
.method markSyncRequired()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 735
    iput-boolean v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->loadingFinished:Z

    .line 736
    iput-boolean v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->globalsFinished:Z

    .line 737
    iput-boolean v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->finishWhenClientManifestDone:Z

    .line 738
    return-void
.end method

.method recoverInternal()Z
    .locals 2

    .prologue
    .line 741
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/openfeint/internal/db/DB;->recover(Landroid/content/Context;)Z

    move-result v0

    .line 742
    .local v0, "success":Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    .line 743
    if-eqz v0, :cond_0

    .line 744
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->getDefaultClientManifestFromAsset()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache;->clientManifest:Ljava/util/Map;

    .line 745
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache;->clientManifest:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 747
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/WebViewCache;->markSyncRequired()V

    .line 748
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->sync()V

    .line 749
    return v0

    .line 745
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setRootUriInternal()V
    .locals 7

    .prologue
    .line 138
    const-string v5, "WebViewCache"

    const-string v6, "can\'t use sdcard"

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v5, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, "baseDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v5, "webui"

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .local v3, "rootDir":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/openfeint/internal/ui/WebViewCache;->rootPath:Ljava/lang/String;

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/openfeint/internal/ui/WebViewCache;->rootPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/openfeint/internal/ui/WebViewCache;->rootUri:Ljava/lang/String;

    .line 143
    new-instance v2, Ljava/io/File;

    const-string v5, "webui"

    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .local v2, "inPhoneWebui":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    .line 145
    .local v1, "hasInPhoneData":Z
    if-nez v1, :cond_0

    .line 146
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/openfeint/internal/ui/WebViewCache$2;

    invoke-direct {v5, p0, v0}, Lcom/openfeint/internal/ui/WebViewCache$2;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 151
    .local v4, "t":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 155
    .end local v4    # "t":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->clientManifestReady()V

    goto :goto_0
.end method

.method public final setRootUriSdcard(Ljava/io/File;)V
    .locals 9
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 81
    new-instance v5, Ljava/io/File;

    const-string v6, "webui"

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v5, "webui":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x0

    .line 83
    .local v1, "copyDefault":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 84
    new-instance v3, Ljava/io/File;

    const-string v6, ".nomedia"

    invoke-direct {v3, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    .local v3, "noMedia":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/WebViewCache;->setRootUriInternal()V

    .line 135
    .end local v3    # "noMedia":Ljava/io/File;
    :goto_2
    return-void

    .line 82
    .end local v1    # "copyDefault":Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 95
    .restart local v1    # "copyDefault":Z
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/openfeint/internal/ui/WebViewCache;->rootPath:Ljava/lang/String;

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "file://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/openfeint/internal/ui/WebViewCache;->rootPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/openfeint/internal/ui/WebViewCache;->rootUri:Ljava/lang/String;

    .line 97
    if-eqz v1, :cond_3

    .line 98
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 99
    .local v0, "baseDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v6, "webui"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .local v2, "inPhoneWebui":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    :try_start_1
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    const-string v7, "manifest.db"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 105
    new-instance v7, Ljava/io/File;

    const-string v8, "manifest.db"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    invoke-static {v6, v7}, Lcom/openfeint/internal/Util;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :cond_2
    :goto_3
    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/openfeint/internal/ui/WebViewCache$1;

    invoke-direct {v6, p0, v2, v5, v0}, Lcom/openfeint/internal/ui/WebViewCache$1;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    .local v4, "t":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 131
    .end local v0    # "baseDir":Ljava/io/File;
    .end local v2    # "inPhoneWebui":Ljava/io/File;
    .end local v4    # "t":Ljava/lang/Thread;
    :cond_3
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->clientManifestReady()V

    .line 134
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->deleteAll()V

    goto :goto_2

    .line 87
    .restart local v3    # "noMedia":Ljava/io/File;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 106
    .end local v3    # "noMedia":Ljava/io/File;
    .restart local v0    # "baseDir":Ljava/io/File;
    .restart local v2    # "inPhoneWebui":Ljava/io/File;
    :catch_1
    move-exception v6

    goto :goto_3
.end method
