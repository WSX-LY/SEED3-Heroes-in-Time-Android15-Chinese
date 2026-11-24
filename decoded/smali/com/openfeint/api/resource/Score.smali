.class public Lcom/openfeint/api/resource/Score;
.super Lcom/openfeint/internal/resource/Resource;
.source "Score.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/api/resource/Score$BlobDownloadedDelegate;,
        Lcom/openfeint/api/resource/Score$DownloadBlobCB;,
        Lcom/openfeint/api/resource/Score$SubmitToCB;
    }
.end annotation


# instance fields
.field public blob:[B

.field private blobUploadParameters:Lcom/openfeint/internal/resource/BlobUploadParameters;

.field private blobUrl:Ljava/lang/String;

.field public customData:Ljava/lang/String;

.field public displayText:Ljava/lang/String;

.field public latitude:D

.field public leaderboardId:I

.field public longitude:D

.field public rank:I

.field public score:J

.field public user:Lcom/openfeint/api/resource/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/openfeint/internal/resource/Resource;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "score"    # J

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/openfeint/internal/resource/Resource;-><init>()V

    iput-wide p1, p0, Lcom/openfeint/api/resource/Score;->score:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .param p1, "score"    # J
    .param p3, "displayText"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/openfeint/internal/resource/Resource;-><init>()V

    iput-wide p1, p0, Lcom/openfeint/api/resource/Score;->score:J

    iput-object p3, p0, Lcom/openfeint/api/resource/Score;->displayText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/openfeint/api/resource/Score;)Lcom/openfeint/internal/resource/BlobUploadParameters;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/openfeint/api/resource/Score;->blobUploadParameters:Lcom/openfeint/internal/resource/BlobUploadParameters;

    return-object v0
.end method

.method static synthetic access$1(Lcom/openfeint/api/resource/Score;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/openfeint/api/resource/Score;->blobUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/openfeint/api/resource/Score;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/openfeint/api/resource/Score;->blobUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/openfeint/api/resource/Score;Lcom/openfeint/internal/resource/BlobUploadParameters;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/openfeint/api/resource/Score;->blobUploadParameters:Lcom/openfeint/internal/resource/BlobUploadParameters;

    return-void
.end method

.method public static getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
    .locals 5

    .prologue
    .line 325
    new-instance v0, Lcom/openfeint/api/resource/Score$3;

    const-class v1, Lcom/openfeint/api/resource/Score;

    const-string v2, "high_score"

    invoke-direct {v0, v1, v2}, Lcom/openfeint/api/resource/Score$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 327
    .local v0, "klass":Lcom/openfeint/internal/resource/ResourceClass;
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "score"

    new-instance v3, Lcom/openfeint/api/resource/Score$4;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Score$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "rank"

    new-instance v3, Lcom/openfeint/api/resource/Score$5;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Score$5;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "leaderboard_id"

    new-instance v3, Lcom/openfeint/api/resource/Score$6;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Score$6;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "display_text"

    new-instance v3, Lcom/openfeint/api/resource/Score$7;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Score$7;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "custom_data"

    new-instance v3, Lcom/openfeint/api/resource/Score$8;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Score$8;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "lat"

    new-instance v3, Lcom/openfeint/api/resource/Score$9;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Score$9;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "lng"

    new-instance v3, Lcom/openfeint/api/resource/Score$10;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Score$10;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "user"

    new-instance v3, Lcom/openfeint/api/resource/Score$11;

    const-class v4, Lcom/openfeint/api/resource/User;

    invoke-direct {v3, v4}, Lcom/openfeint/api/resource/Score$11;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "blob_url"

    new-instance v3, Lcom/openfeint/api/resource/Score$12;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Score$12;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "blob_upload_parameters"

    new-instance v3, Lcom/openfeint/api/resource/Score$13;

    const-class v4, Lcom/openfeint/internal/resource/BlobUploadParameters;

    invoke-direct {v3, v4}, Lcom/openfeint/api/resource/Score$13;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    return-object v0
.end method

.method public static setBlobDownloadedDelegate(Lcom/openfeint/api/resource/Score$BlobDownloadedDelegate;)V
    .locals 0
    .param p0, "delegate"    # Lcom/openfeint/api/resource/Score$BlobDownloadedDelegate;

    .prologue
    .line 313
    sput-object p0, Lcom/openfeint/internal/resource/ScoreBlobDelegate;->sBlobDownloadedDelegate:Lcom/openfeint/api/resource/Score$BlobDownloadedDelegate;

    .line 314
    return-void
.end method

.method private submitToInternal(Lcom/openfeint/api/resource/Leaderboard;Ljava/lang/String;Lcom/openfeint/api/resource/Score$SubmitToCB;Z)V
    .locals 9
    .param p1, "leaderboard"    # Lcom/openfeint/api/resource/Leaderboard;
    .param p2, "timestamp"    # Ljava/lang/String;
    .param p3, "cb"    # Lcom/openfeint/api/resource/Score$SubmitToCB;
    .param p4, "fromOffline"    # Z

    .prologue
    const/4 v6, 0x0

    .line 169
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/openfeint/api/resource/Leaderboard;->resourceID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/openfeint/api/resource/Leaderboard;->resourceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 170
    :cond_0
    if-eqz p3, :cond_1

    .line 171
    const-string v1, "No leaderboard ID provided.  Please provide a leaderboard ID from the Dev Dashboard."

    invoke-virtual {p3, v1}, Lcom/openfeint/api/resource/Score$SubmitToCB;->onFailure(Ljava/lang/String;)V

    .line 256
    :cond_1
    :goto_0
    return-void

    .line 176
    :cond_2
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->isUserLoggedIn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 178
    invoke-static {p0, p1}, Lcom/openfeint/internal/offline/OfflineSupport;->postOfflineScore(Lcom/openfeint/api/resource/Score;Lcom/openfeint/api/resource/Leaderboard;)V

    .line 179
    if-eqz p3, :cond_1

    .line 180
    invoke-virtual {p3, v6}, Lcom/openfeint/api/resource/Score$SubmitToCB;->onSuccess(Z)V

    goto :goto_0

    .line 185
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "/xp/games/"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openfeint/internal/OpenFeintInternal;->getAppID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/leaderboards/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/openfeint/api/resource/Leaderboard;->resourceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/high_scores"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "path":Ljava/lang/String;
    new-instance v2, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v2}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    .line 189
    .local v2, "args":Lcom/openfeint/internal/request/OrderedArgList;
    const-string v1, "high_score[score]"

    new-instance v4, Ljava/lang/Long;

    iget-wide v7, p0, Lcom/openfeint/api/resource/Score;->score:J

    invoke-direct {v4, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/openfeint/api/resource/Score;->displayText:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 191
    const-string v1, "high_score[display_text]"

    iget-object v4, p0, Lcom/openfeint/api/resource/Score;->displayText:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_4
    iget-object v1, p0, Lcom/openfeint/api/resource/Score;->blob:[B

    if-eqz v1, :cond_5

    const/4 v6, 0x1

    .line 194
    .local v6, "uploadBlob":Z
    :cond_5
    const-string v4, "high_score[has_blob]"

    if-eqz v6, :cond_7

    const-string v1, "1"

    :goto_1
    invoke-virtual {v2, v4, v1}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-eqz p2, :cond_6

    .line 197
    const-string v1, "high_score[timestamp]"

    invoke-virtual {v2, v1, p2}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_6
    new-instance v0, Lcom/openfeint/api/resource/Score$1;

    move-object v1, p0

    move v4, p4

    move-object v5, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/openfeint/api/resource/Score$1;-><init>(Lcom/openfeint/api/resource/Score;Lcom/openfeint/internal/request/OrderedArgList;Ljava/lang/String;ZLcom/openfeint/api/resource/Score$SubmitToCB;ZLcom/openfeint/api/resource/Leaderboard;)V

    .line 255
    .local v0, "req":Lcom/openfeint/internal/request/JSONRequest;
    invoke-virtual {v0}, Lcom/openfeint/internal/request/JSONRequest;->launch()V

    goto :goto_0

    .line 194
    .end local v0    # "req":Lcom/openfeint/internal/request/JSONRequest;
    :cond_7
    const-string v1, "0"

    goto :goto_1
.end method


# virtual methods
.method public downloadBlob(Lcom/openfeint/api/resource/Score$DownloadBlobCB;)V
    .locals 2
    .param p1, "cb"    # Lcom/openfeint/api/resource/Score$DownloadBlobCB;

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/openfeint/api/resource/Score;->hasBlob()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    new-instance v0, Lcom/openfeint/api/resource/Score$2;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/api/resource/Score$2;-><init>(Lcom/openfeint/api/resource/Score;Lcom/openfeint/api/resource/Score$DownloadBlobCB;)V

    .line 285
    .local v0, "req":Lcom/openfeint/internal/request/DownloadRequest;
    invoke-virtual {v0}, Lcom/openfeint/internal/request/DownloadRequest;->launch()V

    .line 289
    .end local v0    # "req":Lcom/openfeint/internal/request/DownloadRequest;
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    if-eqz p1, :cond_0

    .line 287
    const-string v1, "of_no_blob"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/openfeint/api/resource/Score$DownloadBlobCB;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasBlob()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/openfeint/api/resource/Score;->blobUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public submitTo(Lcom/openfeint/api/resource/Leaderboard;Lcom/openfeint/api/resource/Score$SubmitToCB;)V
    .locals 2
    .param p1, "leaderboard"    # Lcom/openfeint/api/resource/Leaderboard;
    .param p2, "cb"    # Lcom/openfeint/api/resource/Score$SubmitToCB;

    .prologue
    .line 158
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/openfeint/api/resource/Score;->submitToInternal(Lcom/openfeint/api/resource/Leaderboard;Ljava/lang/String;Lcom/openfeint/api/resource/Score$SubmitToCB;Z)V

    .line 159
    return-void
.end method

.method public submitToFromOffline(Lcom/openfeint/api/resource/Leaderboard;Ljava/lang/String;Lcom/openfeint/api/resource/Score$SubmitToCB;)V
    .locals 1
    .param p1, "leaderboard"    # Lcom/openfeint/api/resource/Leaderboard;
    .param p2, "timestamp"    # Ljava/lang/String;
    .param p3, "cb"    # Lcom/openfeint/api/resource/Score$SubmitToCB;

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/openfeint/api/resource/Score;->submitToInternal(Lcom/openfeint/api/resource/Leaderboard;Ljava/lang/String;Lcom/openfeint/api/resource/Score$SubmitToCB;Z)V

    .line 165
    return-void
.end method
