.class public Lcom/openfeint/internal/offline/OfflineSupport;
.super Ljava/lang/Object;
.source "OfflineSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/offline/OfflineSupport$DB;,
        Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;,
        Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflineSupport"

.field private static final TEMPORARY_USER_ID:Ljava/lang/String; = "0"

.field private static db:Lcom/openfeint/internal/offline/OfflineSupport$DB;

.field private static updateInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static userID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 300
    sput-object v0, Lcom/openfeint/internal/offline/OfflineSupport;->db:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    .line 301
    sput-object v0, Lcom/openfeint/internal/offline/OfflineSupport;->userID:Ljava/lang/String;

    .line 302
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/openfeint/internal/offline/OfflineSupport;->updateInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/openfeint/internal/offline/OfflineSupport;->streq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 287
    invoke-static {p0}, Lcom/openfeint/internal/offline/OfflineSupport;->deleteDataFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/openfeint/internal/offline/OfflineSupport;->updateInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3()Lcom/openfeint/internal/offline/OfflineSupport$DB;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/openfeint/internal/offline/OfflineSupport;->db:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    return-object v0
.end method

.method static synthetic access$4()V
    .locals 0

    .prologue
    .line 574
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->save()V

    return-void
.end method

.method static synthetic access$5()V
    .locals 0

    .prologue
    .line 364
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->uploadScoresWithBlobs()V

    return-void
.end method

.method private static deleteDataFile(Ljava/lang/String;)V
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 289
    :try_start_0
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 290
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, p0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static filename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "forUserID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 305
    if-nez p0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-object v1

    .line 306
    :cond_1
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getAppID()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "appID":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "of.offline."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static fullPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 297
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, p0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getClientCompletionPercentage(Ljava/lang/String;)F
    .locals 2
    .param p0, "resourceID"    # Ljava/lang/String;

    .prologue
    .line 507
    sget-object v1, Lcom/openfeint/internal/offline/OfflineSupport;->db:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    invoke-virtual {v1, p0}, Lcom/openfeint/internal/offline/OfflineSupport$DB;->findAchievement(Ljava/lang/String;)Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    move-result-object v0

    .line 508
    .local v0, "a":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 509
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    goto :goto_0
.end method

.method private static isUserTemporary()Z
    .locals 2

    .prologue
    .line 324
    const-string v0, "0"

    sget-object v1, Lcom/openfeint/internal/offline/OfflineSupport;->userID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static now()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    sget-object v0, Lcom/openfeint/internal/resource/DateResourceProperty;->sDateParser:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static postOfflineScore(Lcom/openfeint/api/resource/Score;Lcom/openfeint/api/resource/Leaderboard;)V
    .locals 11
    .param p0, "s"    # Lcom/openfeint/api/resource/Score;
    .param p1, "l"    # Lcom/openfeint/api/resource/Leaderboard;

    .prologue
    .line 513
    sget-object v6, Lcom/openfeint/internal/offline/OfflineSupport;->userID:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    new-instance v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;

    invoke-direct {v4}, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;-><init>()V

    .line 516
    .local v4, "os":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    invoke-virtual {p1}, Lcom/openfeint/api/resource/Leaderboard;->resourceID()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->leaderboardID:Ljava/lang/String;

    .line 517
    iget-wide v6, p0, Lcom/openfeint/api/resource/Score;->score:J

    iput-wide v6, v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->score:J

    .line 518
    iget-object v6, p0, Lcom/openfeint/api/resource/Score;->displayText:Ljava/lang/String;

    iput-object v6, v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->displayText:Ljava/lang/String;

    .line 519
    iget-object v6, p0, Lcom/openfeint/api/resource/Score;->customData:Ljava/lang/String;

    iput-object v6, v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->customData:Ljava/lang/String;

    .line 520
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->now()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->timestamp:Ljava/lang/String;

    .line 521
    iget-object v6, p0, Lcom/openfeint/api/resource/Score;->blob:[B

    if-eqz v6, :cond_6

    .line 523
    const/4 v1, 0x0

    .line 524
    .local v1, "existingScore":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    sget-object v6, Lcom/openfeint/internal/offline/OfflineSupport;->db:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    iget-object v6, v6, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    .line 531
    :goto_1
    if-eqz v1, :cond_5

    .line 532
    iget-boolean v6, p1, Lcom/openfeint/api/resource/Leaderboard;->allowsWorseScores:Z

    if-nez v6, :cond_4

    .line 533
    iget-boolean v6, p1, Lcom/openfeint/api/resource/Leaderboard;->descendingSortOrder:Z

    if-eqz v6, :cond_3

    iget-wide v6, v1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->score:J

    iget-wide v8, p0, Lcom/openfeint/api/resource/Score;->score:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    .line 534
    :cond_3
    iget-boolean v6, p1, Lcom/openfeint/api/resource/Leaderboard;->descendingSortOrder:Z

    if-nez v6, :cond_0

    iget-wide v6, v1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->score:J

    iget-wide v8, p0, Lcom/openfeint/api/resource/Score;->score:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 536
    :cond_4
    iget-object v6, v1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->blobFileName:Ljava/lang/String;

    invoke-static {v6}, Lcom/openfeint/internal/offline/OfflineSupport;->deleteDataFile(Ljava/lang/String;)V

    .line 537
    sget-object v6, Lcom/openfeint/internal/offline/OfflineSupport;->db:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    iget-object v6, v6, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 544
    :cond_5
    const-string v2, "unknown.blob"

    .line 547
    .local v2, "filename":Ljava/lang/String;
    :try_start_0
    const-string v6, "SHA1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 548
    .local v3, "md":Ljava/security/MessageDigest;
    iget-object v6, p0, Lcom/openfeint/api/resource/Score;->blob:[B

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 549
    const-string v6, "%s.blob"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    invoke-static {v10}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([C)V

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 555
    .end local v3    # "md":Ljava/security/MessageDigest;
    :goto_2
    :try_start_1
    iget-object v6, p0, Lcom/openfeint/api/resource/Score;->blob:[B

    invoke-static {v2}, Lcom/openfeint/internal/offline/OfflineSupport;->fullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/openfeint/internal/Util;->saveFile([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 561
    iput-object v2, v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->blobFileName:Ljava/lang/String;

    .line 564
    .end local v1    # "existingScore":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    .end local v2    # "filename":Ljava/lang/String;
    :cond_6
    sget-object v6, Lcom/openfeint/internal/offline/OfflineSupport;->db:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    iget-object v6, v6, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->save()V

    .line 568
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->isUserTemporary()Z

    move-result v6

    if-nez v6, :cond_0

    .line 569
    const-string v6, "of_score_submitted_notification"

    invoke-static {v6}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v6

    .line 570
    const-string v7, "@drawable/of_icon_highscore_notification"

    sget-object v8, Lcom/openfeint/api/Notification$Category;->HighScore:Lcom/openfeint/api/Notification$Category;

    sget-object v9, Lcom/openfeint/api/Notification$Type;->Success:Lcom/openfeint/api/Notification$Type;

    .line 569
    invoke-static {v6, v7, v8, v9}, Lcom/openfeint/internal/notifications/SimpleNotification;->show(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V

    goto/16 :goto_0

    .line 524
    .restart local v1    # "existingScore":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;

    .line 525
    .local v5, "scan":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    iget-object v7, v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->leaderboardID:Ljava/lang/String;

    iget-object v8, v5, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->leaderboardID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 526
    move-object v1, v5

    .line 527
    goto/16 :goto_1

    .line 556
    .end local v5    # "scan":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    .restart local v2    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 550
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method static final removeAndUploadNext(Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;)V
    .locals 1
    .param p0, "os"    # Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;

    .prologue
    .line 359
    sget-object v0, Lcom/openfeint/internal/offline/OfflineSupport;->db:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    iget-object v0, v0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 360
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->save()V

    .line 361
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->uploadScoresWithBlobs()V

    .line 362
    return-void
.end method

.method private static removeDBForUser(Ljava/lang/String;)V
    .locals 1
    .param p0, "forUserID"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-static {p0}, Lcom/openfeint/internal/offline/OfflineSupport;->filename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/offline/OfflineSupport;->deleteDataFile(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method private static save()V
    .locals 2

    .prologue
    .line 575
    sget-object v1, Lcom/openfeint/internal/offline/OfflineSupport;->userID:Ljava/lang/String;

    invoke-static {v1}, Lcom/openfeint/internal/offline/OfflineSupport;->filename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/openfeint/internal/offline/OfflineSupport;->db:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    invoke-virtual {v1, v0}, Lcom/openfeint/internal/offline/OfflineSupport$DB;->save(Ljava/lang/String;)V

    .line 577
    :cond_0
    return-void
.end method

.method public static setUserDeclined()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/openfeint/internal/offline/OfflineSupport;->setUserID(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 2
    .param p0, "newUserID"    # Ljava/lang/String;

    .prologue
    .line 334
    if-eqz p0, :cond_0

    sget-object v1, Lcom/openfeint/internal/offline/OfflineSupport;->userID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-static {p0}, Lcom/openfeint/internal/offline/OfflineSupport;->filename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openfeint/internal/offline/OfflineSupport$DB;->load(Ljava/lang/String;)Lcom/openfeint/internal/offline/OfflineSupport$DB;

    move-result-object v0

    .line 338
    .local v0, "newUserDB":Lcom/openfeint/internal/offline/OfflineSupport$DB;
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->isUserTemporary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    sget-object v1, Lcom/openfeint/internal/offline/OfflineSupport;->db:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    invoke-virtual {v1, v0}, Lcom/openfeint/internal/offline/OfflineSupport$DB;->merge(Lcom/openfeint/internal/offline/OfflineSupport$DB;)V

    .line 341
    const-string v1, "0"

    invoke-static {v1}, Lcom/openfeint/internal/offline/OfflineSupport;->removeDBForUser(Ljava/lang/String;)V

    .line 346
    :goto_1
    sput-object p0, Lcom/openfeint/internal/offline/OfflineSupport;->userID:Ljava/lang/String;

    .line 348
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->trySubmitOfflineData()V

    goto :goto_0

    .line 344
    :cond_1
    sput-object v0, Lcom/openfeint/internal/offline/OfflineSupport;->db:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    goto :goto_1
.end method

.method public static setUserTemporary()V
    .locals 1

    .prologue
    .line 320
    const-string v0, "0"

    invoke-static {v0}, Lcom/openfeint/internal/offline/OfflineSupport;->setUserID(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method private static streq(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/String;
    .param p1, "rhs"    # Ljava/lang/String;

    .prologue
    .line 36
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static trySubmitOfflineData()V
    .locals 2

    .prologue
    .line 352
    sget-object v0, Lcom/openfeint/internal/offline/OfflineSupport;->userID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/openfeint/internal/offline/OfflineSupport;->userID:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/openfeint/api/OpenFeint;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->updateToServer()V

    .line 355
    :cond_0
    return-void
.end method

.method public static updateClientCompletionPercentage(Ljava/lang/String;F)V
    .locals 2
    .param p0, "resourceID"    # Ljava/lang/String;
    .param p1, "completionPercentage"    # F

    .prologue
    .line 473
    sget-object v1, Lcom/openfeint/internal/offline/OfflineSupport;->userID:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    sget-object v1, Lcom/openfeint/internal/offline/OfflineSupport;->db:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    invoke-virtual {v1, p0}, Lcom/openfeint/internal/offline/OfflineSupport$DB;->findAchievement(Ljava/lang/String;)Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    move-result-object v0

    .line 476
    .local v0, "a":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    if-nez v0, :cond_2

    .line 477
    new-instance v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    .end local v0    # "a":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    invoke-direct {v0}, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;-><init>()V

    .line 478
    .restart local v0    # "a":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    iput-object p0, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->resourceID:Ljava/lang/String;

    .line 479
    const/4 v1, 0x0

    iput v1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->serverCompletionPercentage:F

    .line 480
    iput p1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    .line 481
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->now()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->timestamp:Ljava/lang/String;

    .line 482
    sget-object v1, Lcom/openfeint/internal/offline/OfflineSupport;->db:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    iget-object v1, v1, Lcom/openfeint/internal/offline/OfflineSupport$DB;->achievements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->save()V

    goto :goto_0

    .line 484
    :cond_2
    iget v1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    cmpg-float v1, v1, p1

    if-gez v1, :cond_0

    .line 485
    iput p1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    .line 486
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->now()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->timestamp:Ljava/lang/String;

    .line 487
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->save()V

    goto :goto_0
.end method

.method public static updateServerCompletionPercentage(Ljava/lang/String;F)V
    .locals 2
    .param p0, "resourceID"    # Ljava/lang/String;
    .param p1, "completionPercentage"    # F

    .prologue
    .line 492
    sget-object v1, Lcom/openfeint/internal/offline/OfflineSupport;->userID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 504
    :goto_0
    return-void

    .line 494
    :cond_0
    sget-object v1, Lcom/openfeint/internal/offline/OfflineSupport;->db:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    invoke-virtual {v1, p0}, Lcom/openfeint/internal/offline/OfflineSupport$DB;->findAchievement(Ljava/lang/String;)Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    move-result-object v0

    .line 495
    .local v0, "a":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    if-nez v0, :cond_1

    .line 496
    new-instance v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    .end local v0    # "a":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    invoke-direct {v0}, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;-><init>()V

    .line 497
    .restart local v0    # "a":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    iput-object p0, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->resourceID:Ljava/lang/String;

    .line 498
    iput p1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    .line 499
    sget-object v1, Lcom/openfeint/internal/offline/OfflineSupport;->db:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    iget-object v1, v1, Lcom/openfeint/internal/offline/OfflineSupport$DB;->achievements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_1
    iput p1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->serverCompletionPercentage:F

    .line 502
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->now()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->timestamp:Ljava/lang/String;

    .line 503
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->save()V

    goto :goto_0
.end method

.method private static declared-synchronized updateToServer()V
    .locals 15

    .prologue
    .line 403
    const-class v8, Lcom/openfeint/internal/offline/OfflineSupport;

    monitor-enter v8

    :try_start_0
    sget-object v7, Lcom/openfeint/internal/offline/OfflineSupport;->updateInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 470
    .local v0, "clonedDB":Lcom/openfeint/internal/offline/OfflineSupport$DB;
    .local v1, "currAchievement":I
    .local v2, "currScore":I
    .local v4, "oal":Lcom/openfeint/internal/request/OrderedArgList;
    :goto_0
    monitor-exit v8

    return-void

    .line 405
    .end local v0    # "clonedDB":Lcom/openfeint/internal/offline/OfflineSupport$DB;
    .end local v1    # "currAchievement":I
    .end local v2    # "currScore":I
    .end local v4    # "oal":Lcom/openfeint/internal/request/OrderedArgList;
    :cond_0
    :try_start_1
    sget-object v7, Lcom/openfeint/internal/offline/OfflineSupport;->db:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    invoke-virtual {v7}, Lcom/openfeint/internal/offline/OfflineSupport$DB;->dup()Lcom/openfeint/internal/offline/OfflineSupport$DB;

    move-result-object v0

    .line 407
    .restart local v0    # "clonedDB":Lcom/openfeint/internal/offline/OfflineSupport$DB;
    new-instance v4, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v4}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    .line 408
    .restart local v4    # "oal":Lcom/openfeint/internal/request/OrderedArgList;
    const/4 v1, 0x0

    .line 409
    .restart local v1    # "currAchievement":I
    iget-object v7, v0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->achievements:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 419
    const/4 v2, 0x0

    .line 420
    .restart local v2    # "currScore":I
    iget-object v7, v0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 437
    if-nez v1, :cond_7

    if-nez v2, :cond_7

    .line 438
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->uploadScoresWithBlobs()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 403
    .end local v1    # "currAchievement":I
    .end local v2    # "currScore":I
    .end local v4    # "oal":Lcom/openfeint/internal/request/OrderedArgList;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 409
    .restart local v1    # "currAchievement":I
    .restart local v4    # "oal":Lcom/openfeint/internal/request/OrderedArgList;
    :cond_3
    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    .line 410
    .local v3, "oa":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    iget v9, v3, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    iget v10, v3, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->serverCompletionPercentage:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_1

    .line 411
    const-string v9, "OfflineSupport"

    const-string v10, "Updating achievement %s from known %f to %f completion"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v3, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->resourceID:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, v3, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->serverCompletionPercentage:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget v13, v3, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v9, "achievements[%d][id]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v3, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->resourceID:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v9, "achievements[%d][percent_complete]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget v10, v3, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v9, "achievements[%d][timestamp]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v3, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->timestamp:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 420
    .end local v3    # "oa":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    .restart local v2    # "currScore":I
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;

    .line 421
    .local v5, "os":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    iget-object v9, v5, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->blobFileName:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 422
    const-string v9, "OfflineSupport"

    const-string v10, "Posting score %d to leaderboard %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-wide v13, v5, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->score:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, v5, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->leaderboardID:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v9, "high_scores[%d][leaderboard_id]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v5, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->leaderboardID:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v9, "high_scores[%d][score]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, v5, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->score:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v9, v5, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->displayText:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 426
    const-string v9, "high_scores[%d][display_text]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v5, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->displayText:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_5
    iget-object v9, v5, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->customData:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 429
    const-string v9, "high_scores[%d][custom_data]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v5, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->customData:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_6
    const-string v9, "high_scores[%d][timestamp]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v5, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->timestamp:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 442
    .end local v5    # "os":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "/xp/games/"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v9

    invoke-virtual {v9}, Lcom/openfeint/internal/OpenFeintInternal;->getAppID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/offline_syncs"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 444
    .local v6, "path":Ljava/lang/String;
    new-instance v7, Lcom/openfeint/internal/offline/OfflineSupport$2;

    invoke-direct {v7, v4, v6, v0}, Lcom/openfeint/internal/offline/OfflineSupport$2;-><init>(Lcom/openfeint/internal/request/OrderedArgList;Ljava/lang/String;Lcom/openfeint/internal/offline/OfflineSupport$DB;)V

    .line 469
    invoke-virtual {v7}, Lcom/openfeint/internal/offline/OfflineSupport$2;->launch()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private static uploadScoresWithBlobs()V
    .locals 5

    .prologue
    .line 365
    sget-object v2, Lcom/openfeint/internal/offline/OfflineSupport;->db:Lcom/openfeint/internal/offline/OfflineSupport$DB;

    iget-object v2, v2, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v0, "os":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 399
    sget-object v2, Lcom/openfeint/internal/offline/OfflineSupport;->updateInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 400
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "os":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    check-cast v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;

    .line 366
    .restart local v0    # "os":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    iget-object v3, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->blobFileName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 368
    new-instance v1, Lcom/openfeint/api/resource/Score;

    iget-wide v2, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->score:J

    invoke-direct {v1, v2, v3}, Lcom/openfeint/api/resource/Score;-><init>(J)V

    .line 369
    .local v1, "s":Lcom/openfeint/api/resource/Score;
    iget-object v2, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->customData:Ljava/lang/String;

    iput-object v2, v1, Lcom/openfeint/api/resource/Score;->customData:Ljava/lang/String;

    .line 370
    iget-object v2, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->displayText:Ljava/lang/String;

    iput-object v2, v1, Lcom/openfeint/api/resource/Score;->displayText:Ljava/lang/String;

    .line 372
    :try_start_0
    iget-object v2, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->blobFileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/openfeint/internal/offline/OfflineSupport;->fullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/openfeint/internal/Util;->readWholeFile(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/openfeint/api/resource/Score;->blob:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_1
    iget-object v2, v1, Lcom/openfeint/api/resource/Score;->blob:[B

    if-nez v2, :cond_2

    .line 378
    invoke-static {v0}, Lcom/openfeint/internal/offline/OfflineSupport;->removeAndUploadNext(Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;)V

    goto :goto_0

    .line 380
    :cond_2
    new-instance v2, Lcom/openfeint/api/resource/Leaderboard;

    iget-object v3, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->leaderboardID:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/openfeint/api/resource/Leaderboard;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->timestamp:Ljava/lang/String;

    new-instance v4, Lcom/openfeint/internal/offline/OfflineSupport$1;

    invoke-direct {v4, v0}, Lcom/openfeint/internal/offline/OfflineSupport$1;-><init>(Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/openfeint/api/resource/Score;->submitToFromOffline(Lcom/openfeint/api/resource/Leaderboard;Ljava/lang/String;Lcom/openfeint/api/resource/Score$SubmitToCB;)V

    goto :goto_0

    .line 373
    :catch_0
    move-exception v2

    goto :goto_1
.end method
