.class public Lcom/openfeint/api/resource/Achievement;
.super Lcom/openfeint/internal/resource/Resource;
.source "Achievement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/api/resource/Achievement$DownloadIconCB;,
        Lcom/openfeint/api/resource/Achievement$ListCB;,
        Lcom/openfeint/api/resource/Achievement$LoadCB;,
        Lcom/openfeint/api/resource/Achievement$UnlockCB;,
        Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;
    }
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public endVersion:Ljava/lang/String;

.field public gamerscore:I

.field public iconUrl:Ljava/lang/String;

.field public isSecret:Z

.field public isUnlocked:Z

.field public percentComplete:F

.field public position:I

.field public startVersion:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public unlockDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/openfeint/internal/resource/Resource;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceID"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/openfeint/internal/resource/Resource;-><init>()V

    invoke-virtual {p0, p1}, Lcom/openfeint/api/resource/Achievement;->setResourceID(Ljava/lang/String;)V

    return-void
.end method

.method public static getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
    .locals 4

    .prologue
    .line 383
    new-instance v0, Lcom/openfeint/api/resource/Achievement$6;

    const-class v1, Lcom/openfeint/api/resource/Achievement;

    const-string v2, "achievement"

    invoke-direct {v0, v1, v2}, Lcom/openfeint/api/resource/Achievement$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 385
    .local v0, "klass":Lcom/openfeint/internal/resource/ResourceClass;
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "title"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$7;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$7;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "description"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$8;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$8;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "gamerscore"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$9;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$9;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "icon_url"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$10;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$10;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "is_secret"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$11;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$11;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "is_unlocked"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$12;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$12;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "percent_complete"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$13;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$13;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "unlocked_at"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$14;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$14;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "position"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$15;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$15;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "end_version"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$16;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$16;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "start_version"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$17;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$17;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-object v0
.end method

.method public static list(Lcom/openfeint/api/resource/Achievement$ListCB;)V
    .locals 4
    .param p0, "cb"    # Lcom/openfeint/api/resource/Achievement$ListCB;

    .prologue
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/xp/games/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getAppID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/achievements"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Lcom/openfeint/api/resource/Achievement$1;

    invoke-direct {v1, v0, p0}, Lcom/openfeint/api/resource/Achievement$1;-><init>(Ljava/lang/String;Lcom/openfeint/api/resource/Achievement$ListCB;)V

    .line 135
    .local v1, "req":Lcom/openfeint/internal/request/JSONRequest;
    invoke-virtual {v1}, Lcom/openfeint/internal/request/JSONRequest;->launch()V

    .line 136
    return-void
.end method


# virtual methods
.method public downloadIcon(Lcom/openfeint/api/resource/Achievement$DownloadIconCB;)V
    .locals 2
    .param p1, "cb"    # Lcom/openfeint/api/resource/Achievement$DownloadIconCB;

    .prologue
    .line 155
    iget-object v1, p0, Lcom/openfeint/api/resource/Achievement;->iconUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 156
    if-eqz p1, :cond_0

    .line 157
    const-string v1, "of_null_icon_url"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/openfeint/api/resource/Achievement$DownloadIconCB;->onFailure(Ljava/lang/String;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    new-instance v0, Lcom/openfeint/api/resource/Achievement$2;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/api/resource/Achievement$2;-><init>(Lcom/openfeint/api/resource/Achievement;Lcom/openfeint/api/resource/Achievement$DownloadIconCB;)V

    .line 181
    .local v0, "req":Lcom/openfeint/internal/request/BitmapRequest;
    invoke-virtual {v0}, Lcom/openfeint/internal/request/BitmapRequest;->launch()V

    goto :goto_0
.end method

.method public load(Lcom/openfeint/api/resource/Achievement$LoadCB;)V
    .locals 5
    .param p1, "cb"    # Lcom/openfeint/api/resource/Achievement$LoadCB;

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/openfeint/api/resource/Achievement;->resourceID()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "resID":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 345
    if-eqz p1, :cond_0

    .line 346
    const-string v3, "of_achievement_load_null"

    invoke-static {v3}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/openfeint/api/resource/Achievement$LoadCB;->onFailure(Ljava/lang/String;)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/xp/games/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openfeint/internal/OpenFeintInternal;->getAppID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/achievements/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Lcom/openfeint/api/resource/Achievement$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/openfeint/api/resource/Achievement$5;-><init>(Lcom/openfeint/api/resource/Achievement;Ljava/lang/String;Lcom/openfeint/api/resource/Achievement$LoadCB;)V

    .line 371
    .local v1, "req":Lcom/openfeint/internal/request/JSONRequest;
    invoke-virtual {v1}, Lcom/openfeint/internal/request/JSONRequest;->launch()V

    goto :goto_0
.end method

.method public unlock(Lcom/openfeint/api/resource/Achievement$UnlockCB;)V
    .locals 2
    .param p1, "cb"    # Lcom/openfeint/api/resource/Achievement$UnlockCB;

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "upCB":Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;
    if-eqz p1, :cond_0

    .line 203
    new-instance v0, Lcom/openfeint/api/resource/Achievement$3;

    .end local v0    # "upCB":Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;
    invoke-direct {v0, p0, p1}, Lcom/openfeint/api/resource/Achievement$3;-><init>(Lcom/openfeint/api/resource/Achievement;Lcom/openfeint/api/resource/Achievement$UnlockCB;)V

    .line 212
    .restart local v0    # "upCB":Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;
    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p0, v1, v0}, Lcom/openfeint/api/resource/Achievement;->updateProgression(FLcom/openfeint/api/resource/Achievement$UpdateProgressionCB;)V

    .line 213
    return-void
.end method

.method public updateProgression(FLcom/openfeint/api/resource/Achievement$UpdateProgressionCB;)V
    .locals 8
    .param p1, "pctComplete"    # F
    .param p2, "cb"    # Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    .line 237
    cmpg-float v7, p1, v6

    if-gez v7, :cond_1

    .line 239
    .local v6, "clampedPctComplete":F
    :goto_0
    invoke-virtual {p0}, Lcom/openfeint/api/resource/Achievement;->resourceID()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "resID":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 243
    if-eqz p2, :cond_0

    .line 244
    const-string v1, "of_achievement_unlock_null"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;->onFailure(Ljava/lang/String;)V

    .line 322
    :cond_0
    :goto_1
    return-void

    .line 237
    .end local v4    # "resID":Ljava/lang/String;
    .end local v6    # "clampedPctComplete":F
    :cond_1
    cmpl-float v7, p1, v1

    if-lez v7, :cond_2

    move v6, v1

    goto :goto_0

    :cond_2
    move v6, p1

    goto :goto_0

    .line 250
    .restart local v4    # "resID":Ljava/lang/String;
    .restart local v6    # "clampedPctComplete":F
    :cond_3
    invoke-static {v4}, Lcom/openfeint/internal/offline/OfflineSupport;->getClientCompletionPercentage(Ljava/lang/String;)F

    move-result v7

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_4

    .line 251
    if-eqz p2, :cond_0

    .line 252
    invoke-virtual {p2, v5}, Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;->onSuccess(Z)V

    goto :goto_1

    .line 258
    :cond_4
    invoke-static {v4, v6}, Lcom/openfeint/internal/offline/OfflineSupport;->updateClientCompletionPercentage(Ljava/lang/String;F)V

    .line 260
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v7

    invoke-virtual {v7}, Lcom/openfeint/internal/OpenFeintInternal;->getUserID()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    .line 262
    invoke-static {v4}, Lcom/openfeint/internal/offline/OfflineSupport;->getClientCompletionPercentage(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lcom/openfeint/api/resource/Achievement;->percentComplete:F

    .line 263
    iget v7, p0, Lcom/openfeint/api/resource/Achievement;->percentComplete:F

    cmpl-float v1, v7, v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/openfeint/api/resource/Achievement;->isUnlocked:Z

    .line 264
    if-eqz p2, :cond_0

    .line 265
    invoke-virtual {p2, v5}, Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;->onSuccess(Z)V

    goto :goto_1

    :cond_5
    move v1, v5

    .line 263
    goto :goto_2

    .line 270
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "/xp/games/"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/openfeint/internal/OpenFeintInternal;->getAppID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/achievements/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/unlock"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "path":Ljava/lang/String;
    new-instance v2, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v2}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    .line 273
    .local v2, "args":Lcom/openfeint/internal/request/OrderedArgList;
    const-string v1, "percent_complete"

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v5}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v0, Lcom/openfeint/api/resource/Achievement$4;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/openfeint/api/resource/Achievement$4;-><init>(Lcom/openfeint/api/resource/Achievement;Lcom/openfeint/internal/request/OrderedArgList;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;F)V

    .line 321
    .local v0, "req":Lcom/openfeint/internal/request/JSONRequest;
    invoke-virtual {v0}, Lcom/openfeint/internal/request/JSONRequest;->launch()V

    goto :goto_1
.end method
