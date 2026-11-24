.class public Lcom/openfeint/internal/offline/OfflineSupport$DB;
.super Ljava/lang/Object;
.source "OfflineSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/offline/OfflineSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DB"
.end annotation


# static fields
.field private static final STREAM_VERSION:I


# instance fields
.field public achievements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;",
            ">;"
        }
    .end annotation
.end field

.field public scores:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->achievements:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    .line 93
    return-void
.end method

.method public static load(Ljava/lang/String;)Lcom/openfeint/internal/offline/OfflineSupport$DB;
    .locals 15
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 183
    new-instance v7, Lcom/openfeint/internal/offline/OfflineSupport$DB;

    invoke-direct {v7}, Lcom/openfeint/internal/offline/OfflineSupport$DB;-><init>()V

    .line 184
    .local v7, "rv":Lcom/openfeint/internal/offline/OfflineSupport$DB;
    const/4 v5, 0x0

    .line 186
    .local v5, "ois":Ljava/io/ObjectInputStream;
    if-eqz p0, :cond_0

    .line 188
    :try_start_0
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v10

    invoke-virtual {v10}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v10

    invoke-static {v10}, Lcom/openfeint/internal/Encryption;->decryptionWrap(Ljava/io/InputStream;)Ljavax/crypto/CipherInputStream;

    move-result-object v2

    .line 189
    .local v2, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .local v6, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v9

    .line 191
    .local v9, "streamVersion":I
    packed-switch v9, :pswitch_data_0

    .line 219
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Unrecognized stream version %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 221
    .end local v9    # "streamVersion":I
    :catch_0
    move-exception v1

    move-object v5, v6

    .line 222
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :goto_0
    :try_start_2
    const-string v10, "OfflineSupport"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Couldn\'t load offline achievements - "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v10, v7, Lcom/openfeint/internal/offline/OfflineSupport$DB;->achievements:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 224
    iget-object v10, v7, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 230
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v7

    .line 194
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v9    # "streamVersion":I
    :pswitch_0
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 195
    .local v3, "numAchievements":I
    :goto_2
    if-gtz v3, :cond_1

    .line 204
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readInt()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v4

    .line 205
    .local v4, "numScores":I
    :goto_3
    if-gtz v4, :cond_2

    .line 226
    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v5, v6

    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 196
    .end local v4    # "numScores":I
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "ois":Ljava/io/ObjectInputStream;
    :cond_1
    :try_start_6
    new-instance v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    invoke-direct {v0}, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;-><init>()V

    .line 197
    .local v0, "a":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->resourceID:Ljava/lang/String;

    .line 198
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v10

    iput v10, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    .line 199
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v10

    iput v10, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->serverCompletionPercentage:F

    .line 200
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->timestamp:Ljava/lang/String;

    .line 201
    iget-object v10, v7, Lcom/openfeint/internal/offline/OfflineSupport$DB;->achievements:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 206
    .end local v0    # "a":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    .restart local v4    # "numScores":I
    :cond_2
    new-instance v8, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;

    invoke-direct {v8}, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;-><init>()V

    .line 207
    .local v8, "s":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v8, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->leaderboardID:Ljava/lang/String;

    .line 208
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v10

    iput-wide v10, v8, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->score:J

    .line 209
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v8, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->displayText:Ljava/lang/String;

    .line 210
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v8, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->customData:Ljava/lang/String;

    .line 211
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v8, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->blobFileName:Ljava/lang/String;

    .line 212
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v8, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->timestamp:Ljava/lang/String;

    .line 213
    iget-object v10, v7, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 205
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 225
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "numAchievements":I
    .end local v4    # "numScores":I
    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .end local v8    # "s":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    .end local v9    # "streamVersion":I
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception v10

    .line 226
    :goto_4
    if-eqz v5, :cond_3

    :try_start_7
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 227
    :cond_3
    :goto_5
    throw v10

    .line 226
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "numAchievements":I
    .restart local v4    # "numScores":I
    .restart local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v9    # "streamVersion":I
    :catch_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_1

    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "numAchievements":I
    .end local v4    # "numScores":I
    .end local v9    # "streamVersion":I
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    goto/16 :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    goto :goto_5

    .line 225
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v6    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 221
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    goto/16 :goto_0

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "numAchievements":I
    .restart local v4    # "numScores":I
    .restart local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v9    # "streamVersion":I
    :cond_4
    move-object v5, v6

    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_1

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->achievements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 274
    iget-object v0, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 275
    return-void
.end method

.method public dup()Lcom/openfeint/internal/offline/OfflineSupport$DB;
    .locals 6

    .prologue
    .line 101
    new-instance v1, Lcom/openfeint/internal/offline/OfflineSupport$DB;

    invoke-direct {v1}, Lcom/openfeint/internal/offline/OfflineSupport$DB;-><init>()V

    .line 102
    .local v1, "rv":Lcom/openfeint/internal/offline/OfflineSupport$DB;
    iget-object v3, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    iget-object v3, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->achievements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 104
    return-object v1

    .line 102
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;

    .local v2, "s":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    iget-object v4, v1, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->dup()Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    .end local v2    # "s":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    .local v0, "a":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    iget-object v4, v1, Lcom/openfeint/internal/offline/OfflineSupport$DB;->achievements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->dup()Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public findAchievement(Ljava/lang/String;)Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    .locals 3
    .param p1, "resourceID"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v1, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->achievements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 283
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 278
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    .line 279
    .local v0, "a":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    iget-object v2, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->resourceID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public merge(Lcom/openfeint/internal/offline/OfflineSupport$DB;)V
    .locals 5
    .param p1, "newUserDB"    # Lcom/openfeint/internal/offline/OfflineSupport$DB;

    .prologue
    .line 110
    iget-object v2, p1, Lcom/openfeint/internal/offline/OfflineSupport$DB;->achievements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    iget-object v2, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    return-void

    .line 110
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    .line 111
    .local v1, "newUserAchievement":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    iget-object v3, v1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->resourceID:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/openfeint/internal/offline/OfflineSupport$DB;->findAchievement(Ljava/lang/String;)Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    move-result-object v0

    .line 112
    .local v0, "currentUserAchievement":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    if-nez v0, :cond_1

    .line 114
    iget-object v3, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->achievements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->dup()Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_1
    iget v3, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    iget v4, v1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 118
    iget v3, v1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    iput v3, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    .line 119
    iget-object v3, v1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->timestamp:Ljava/lang/String;

    iput-object v3, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->timestamp:Ljava/lang/String;

    .line 123
    :cond_2
    iget v3, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->serverCompletionPercentage:F

    .line 124
    iget v4, v1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->serverCompletionPercentage:F

    .line 122
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->serverCompletionPercentage:F

    goto :goto_0
.end method

.method public removeReferencedBlobs()V
    .locals 3

    .prologue
    .line 267
    iget-object v1, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    return-void

    .line 267
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;

    .line 268
    .local v0, "os":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    iget-object v2, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->blobFileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/openfeint/internal/offline/OfflineSupport;->access$1(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public save(Ljava/lang/String;)V
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    const/4 v3, 0x0

    .line 239
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/openfeint/internal/Encryption;->encryptionWrap(Ljava/io/OutputStream;)Ljavax/crypto/CipherOutputStream;

    move-result-object v3

    .line 240
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, v5}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 242
    iget-object v5, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->achievements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 243
    iget-object v5, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->achievements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 249
    iget-object v5, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 250
    iget-object v5, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 258
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 262
    :cond_0
    :goto_2
    if-eqz v3, :cond_7

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    .line 264
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    :cond_1
    :goto_3
    return-void

    .line 243
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :cond_2
    :try_start_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    .line 244
    .local v0, "a":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    iget-object v6, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->resourceID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 245
    iget v6, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    invoke-virtual {v2, v6}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 246
    iget v6, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->serverCompletionPercentage:F

    invoke-virtual {v2, v6}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 247
    iget-object v6, v0, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->timestamp:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 259
    .end local v0    # "a":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    :catch_0
    move-exception v5

    move-object v1, v2

    .line 261
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    :goto_4
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 262
    :cond_3
    :goto_5
    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    goto :goto_3

    .line 250
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :cond_4
    :try_start_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;

    .line 251
    .local v4, "s":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    iget-object v6, v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->leaderboardID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 252
    iget-wide v6, v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->score:J

    invoke-virtual {v2, v6, v7}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 253
    iget-object v6, v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->displayText:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 254
    iget-object v6, v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->customData:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 255
    iget-object v6, v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->blobFileName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 256
    iget-object v6, v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->timestamp:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 260
    .end local v4    # "s":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    :catchall_0
    move-exception v5

    move-object v1, v2

    .line 261
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    :goto_6
    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 262
    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 263
    :cond_6
    :goto_8
    throw v5

    .line 262
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 261
    :catch_3
    move-exception v5

    goto :goto_5

    :catch_4
    move-exception v6

    goto :goto_7

    .line 262
    :catch_5
    move-exception v6

    goto :goto_8

    .line 261
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catch_6
    move-exception v5

    goto :goto_2

    .line 260
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v5

    goto :goto_6

    .line 259
    :catch_7
    move-exception v5

    goto :goto_4

    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :cond_7
    move-object v1, v2

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_3
.end method

.method public updateOnUpload(Lcom/openfeint/internal/offline/OfflineSupport$DB;)V
    .locals 9
    .param p1, "otherDB"    # Lcom/openfeint/internal/offline/OfflineSupport$DB;

    .prologue
    .line 140
    iget-object v6, p1, Lcom/openfeint/internal/offline/OfflineSupport$DB;->achievements:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 157
    iget-object v3, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    .line 158
    .local v3, "oldScores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 180
    return-void

    .line 140
    .end local v3    # "oldScores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    .line 141
    .local v4, "otherAchievement":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    iget-object v7, v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->resourceID:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/openfeint/internal/offline/OfflineSupport$DB;->findAchievement(Ljava/lang/String;)Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    move-result-object v1

    .line 142
    .local v1, "myAchievement":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    if-nez v1, :cond_2

    .line 144
    invoke-virtual {v4}, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->dup()Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;

    move-result-object v1

    .line 145
    iget-object v7, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->achievements:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_2
    iget v7, v1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->serverCompletionPercentage:F

    .line 151
    iget v8, v4, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->clientCompletionPercentage:F

    .line 149
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v1, Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;->serverCompletionPercentage:F

    goto :goto_0

    .line 159
    .end local v1    # "myAchievement":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    .end local v4    # "otherAchievement":Lcom/openfeint/internal/offline/OfflineSupport$OfflineAchievement;
    .restart local v3    # "oldScores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;

    .line 161
    .local v2, "myScore":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    iget-object v7, v2, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->blobFileName:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 162
    iget-object v7, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 167
    :cond_4
    const/4 v0, 0x0

    .line 168
    .local v0, "found":Z
    iget-object v7, p1, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 176
    :goto_2
    if-nez v0, :cond_0

    .line 177
    iget-object v7, p0, Lcom/openfeint/internal/offline/OfflineSupport$DB;->scores:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;

    .line 169
    .local v5, "otherScore":Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;
    invoke-virtual {v2, v5}, Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;->eq(Lcom/openfeint/internal/offline/OfflineSupport$OfflineScore;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 170
    const/4 v0, 0x1

    .line 171
    goto :goto_2
.end method
