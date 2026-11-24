.class public Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;
.super Ljava/lang/Object;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/WebViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestOnlyManifestItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;
    }
.end annotation


# instance fields
.field public clientHash:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public serverHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_path"    # Ljava/lang/String;
    .param p2, "_clientHash"    # Ljava/lang/String;
    .param p3, "_serverHash"    # Ljava/lang/String;

    .prologue
    .line 1148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1149
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;->path:Ljava/lang/String;

    .line 1150
    iput-object p2, p0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;->clientHash:Ljava/lang/String;

    .line 1151
    iput-object p3, p0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;->serverHash:Ljava/lang/String;

    .line 1152
    return-void
.end method

.method public static syncAndOpenDashboard()V
    .locals 2

    .prologue
    .line 1176
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    iget-boolean v0, v0, Lcom/openfeint/internal/ui/WebViewCache;->loadingFinished:Z

    if-nez v0, :cond_0

    .line 1177
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    .line 1178
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-static {v0}, Lcom/openfeint/internal/ui/WebViewCache;->access$3(Lcom/openfeint/internal/ui/WebViewCache;)V

    .line 1180
    :cond_0
    invoke-static {}, Lcom/openfeint/api/ui/Dashboard;->open()V

    .line 1181
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 3

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;->path:Ljava/lang/String;

    const-string v1, "INVALID"

    invoke-static {v0, v1}, Lcom/openfeint/internal/db/DB;->setClientManifest(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v0, v0, Lcom/openfeint/internal/ui/WebViewCache;->clientManifest:Ljava/util/Map;

    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;->path:Ljava/lang/String;

    const-string v2, "INVALID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->access$2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/openfeint/internal/Util;->deleteFiles(Ljava/io/File;)V

    .line 1173
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-virtual {v0}, Lcom/openfeint/internal/ui/WebViewCache;->markSyncRequired()V

    .line 1174
    return-void
.end method

.method public status()Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;
    .locals 2

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;->clientHash:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;->NotYetDownloaded:Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    .line 1163
    :goto_0
    return-object v0

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;->serverHash:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;->NotOnServer:Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    goto :goto_0

    .line 1162
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;->serverHash:Ljava/lang/String;

    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;->clientHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;->UpToDate:Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    goto :goto_0

    .line 1163
    :cond_2
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;->OutOfDate:Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    goto :goto_0
.end method
