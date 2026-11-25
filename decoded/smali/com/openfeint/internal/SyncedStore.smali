.class public Lcom/openfeint/internal/SyncedStore;
.super Ljava/lang/Object;
.source "SyncedStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/SyncedStore$Editor;,
        Lcom/openfeint/internal/SyncedStore$Reader;
    }
.end annotation


# static fields
.field private static final FILENAME:Ljava/lang/String; = "of_prefs"

.field private static final TAG:Ljava/lang/String; = "DistributedPrefs"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/openfeint/internal/SyncedStore;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/SyncedStore;->mMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 83
    invoke-virtual {p0}, Lcom/openfeint/internal/SyncedStore;->load()V

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/openfeint/internal/SyncedStore;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/openfeint/internal/SyncedStore;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/openfeint/internal/SyncedStore;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method private mapFromStore(Ljava/io/File;)Ljava/util/HashMap;
    .locals 9
    .param p1, "myStore"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 147
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .local v5, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 150
    .local v3, "o":Ljava/lang/Object;
    if-eqz v3, :cond_9

    instance-of v6, v3, Ljava/util/HashMap;

    if-eqz v6, :cond_9

    .line 151
    check-cast v3, Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 163
    .end local v3    # "o":Ljava/lang/Object;
    if-eqz v5, :cond_1

    .line 164
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    :cond_0
    :goto_0
    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 172
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :goto_1
    return-object v3

    .line 165
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :cond_1
    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "DistributedPrefs"

    const-string v7, "IOException while cleaning up"

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v6, "DistributedPrefs"

    const-string v7, "Couldn\'t open of_prefs"

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    if-eqz v4, :cond_3

    .line 164
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 172
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    const/4 v3, 0x0

    goto :goto_1

    .line 165
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 168
    :catch_2
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "DistributedPrefs"

    const-string v7, "IOException while cleaning up"

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 155
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/StreamCorruptedException;
    :goto_4
    :try_start_6
    const-string v6, "DistributedPrefs"

    const-string v7, "StreamCorruptedException"

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 163
    if-eqz v4, :cond_4

    .line 164
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 168
    :catch_4
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "DistributedPrefs"

    const-string v7, "IOException while cleaning up"

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 165
    .local v0, "e":Ljava/io/StreamCorruptedException;
    :cond_4
    if-eqz v1, :cond_2

    .line 166
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 157
    .end local v0    # "e":Ljava/io/StreamCorruptedException;
    :catch_5
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    const-string v6, "DistributedPrefs"

    const-string v7, "IOException while reading"

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 163
    if-eqz v4, :cond_5

    .line 164
    :try_start_a
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 168
    :catch_6
    move-exception v0

    .line 169
    const-string v6, "DistributedPrefs"

    const-string v7, "IOException while cleaning up"

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 165
    :cond_5
    if-eqz v1, :cond_2

    .line 166
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_3

    .line 159
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_6
    :try_start_c
    const-string v6, "DistributedPrefs"

    const-string v7, "ClassNotFoundException"

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 163
    if-eqz v4, :cond_6

    .line 164
    :try_start_d
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_3

    .line 168
    :catch_8
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "DistributedPrefs"

    const-string v7, "IOException while cleaning up"

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 165
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :cond_6
    if-eqz v1, :cond_2

    .line 166
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_3

    .line 161
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v6

    .line 163
    :goto_7
    if-eqz v4, :cond_8

    .line 164
    :try_start_f
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 171
    :cond_7
    :goto_8
    throw v6

    .line 165
    :cond_8
    if-eqz v1, :cond_7

    .line 166
    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    goto :goto_8

    .line 168
    :catch_9
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "DistributedPrefs"

    const-string v8, "IOException while cleaning up"

    invoke-static {v7, v8}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 163
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "o":Ljava/lang/Object;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :cond_9
    if-eqz v5, :cond_a

    .line 164
    :try_start_11
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 165
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :cond_a
    if-eqz v2, :cond_b

    .line 166
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 168
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_a
    move-exception v0

    .line 169
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "DistributedPrefs"

    const-string v7, "IOException while cleaning up"

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 161
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v3    # "o":Ljava/lang/Object;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_7

    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_7

    .line 159
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_b
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_6

    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_c
    move-exception v0

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 157
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_d
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_5

    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_e
    move-exception v0

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto/16 :goto_5

    .line 155
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_f
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto/16 :goto_4

    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_10
    move-exception v0

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 153
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_11
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_12
    move-exception v0

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto/16 :goto_2
.end method


# virtual methods
.method edit()Lcom/openfeint/internal/SyncedStore$Editor;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 49
    new-instance v0, Lcom/openfeint/internal/SyncedStore$Editor;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/SyncedStore$Editor;-><init>(Lcom/openfeint/internal/SyncedStore;)V

    return-object v0
.end method

.method public load()V
    .locals 20

    .prologue
    .line 88
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/openfeint/internal/SyncedStore;->mMap:Ljava/util/HashMap;

    .line 89
    const/4 v6, 0x0

    .line 91
    .local v6, "mustSaveAfterLoad":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 93
    .local v12, "start":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/openfeint/internal/SyncedStore;->mContext:Landroid/content/Context;

    const-string v16, "of_prefs"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 95
    .local v8, "myStore":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v15}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 97
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/openfeint/internal/SyncedStore;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 98
    .local v11, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v15, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 99
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v7, 0x0

    .line 101
    .local v7, "myInfo":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_5

    .line 108
    :goto_0
    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    .line 109
    .local v9, "myStoreCPath":Ljava/lang/String;
    if-eqz v7, :cond_2

    iget-object v15, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 110
    iget-object v15, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 112
    .local v14, "underDataDir":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_6

    .line 124
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/openfeint/internal/SyncedStore;->mapFromStore(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/openfeint/internal/SyncedStore;->mMap:Ljava/util/HashMap;

    .line 127
    .end local v14    # "underDataDir":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/openfeint/internal/SyncedStore;->mMap:Ljava/util/HashMap;

    if-nez v15, :cond_3

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/openfeint/internal/SyncedStore;->mMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v15}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 134
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v7    # "myInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "myStoreCPath":Ljava/lang/String;
    .end local v11    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_2
    if-eqz v6, :cond_4

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/openfeint/internal/SyncedStore;->save()V

    .line 138
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v4, v15, v12

    .line 139
    .local v4, "elapsed":J
    const-string v15, "DistributedPrefs"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Loading prefs took "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " millis"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    .line 101
    .end local v4    # "elapsed":J
    .restart local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v7    # "myInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_5
    :try_start_1
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 102
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/SyncedStore;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 103
    move-object v7, v1

    .line 104
    goto/16 :goto_0

    .line 112
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "myStoreCPath":Ljava/lang/String;
    .restart local v14    # "underDataDir":Ljava/lang/String;
    :cond_6
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 113
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v10, Ljava/io/File;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v10, v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v10, "otherStore":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v18

    cmp-long v16, v16, v18

    if-gez v16, :cond_1

    .line 118
    const/4 v6, 0x1

    .line 120
    move-object v8, v10

    goto/16 :goto_1

    .line 128
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v7    # "myInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "myStoreCPath":Ljava/lang/String;
    .end local v10    # "otherStore":Ljava/io/File;
    .end local v11    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v14    # "underDataDir":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 129
    .local v3, "e1":Ljava/io/IOException;
    :try_start_2
    const-string v15, "DistributedPrefs"

    const-string v16, "broken"

    invoke-static/range {v15 .. v16}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v15}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_2

    .line 130
    .end local v3    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 132
    throw v15
.end method

.method read()Lcom/openfeint/internal/SyncedStore$Reader;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 69
    new-instance v0, Lcom/openfeint/internal/SyncedStore$Reader;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/SyncedStore$Reader;-><init>(Lcom/openfeint/internal/SyncedStore;)V

    return-object v0
.end method

.method public save()V
    .locals 7

    .prologue
    .line 176
    const/4 v3, 0x0

    .line 177
    .local v3, "os":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 179
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    iget-object v4, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 181
    :try_start_0
    iget-object v4, p0, Lcom/openfeint/internal/SyncedStore;->mContext:Landroid/content/Context;

    const-string v5, "of_prefs"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 182
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 183
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1
    iget-object v4, p0, Lcom/openfeint/internal/SyncedStore;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 188
    if-eqz v2, :cond_5

    .line 189
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 196
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v1, v2

    .line 199
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    :goto_1
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "DistributedPrefs"

    const-string v5, "Couldn\'t open of_prefs for writing"

    invoke-static {v4, v5}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    if-eqz v1, :cond_2

    .line 189
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    .line 190
    :cond_2
    if-eqz v3, :cond_1

    .line 191
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 193
    :catch_1
    move-exception v0

    .line 194
    :try_start_6
    const-string v4, "DistributedPrefs"

    const-string v5, "IOException while cleaning up"

    invoke-static {v4, v5}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 196
    iget-object v4, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    .line 195
    :catchall_0
    move-exception v4

    .line 196
    iget-object v5, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 197
    throw v4

    .line 186
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    .line 188
    :goto_4
    if-eqz v1, :cond_4

    .line 189
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 196
    :cond_3
    :goto_5
    iget-object v5, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 198
    :goto_6
    throw v4

    .line 190
    :cond_4
    if-eqz v3, :cond_3

    .line 191
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5

    .line 193
    :catch_2
    move-exception v0

    .line 194
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v5, "DistributedPrefs"

    const-string v6, "IOException while cleaning up"

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 196
    iget-object v5, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_6

    .line 195
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v4

    .line 196
    iget-object v5, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 197
    throw v4

    .line 190
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :cond_5
    if-eqz v3, :cond_0

    .line 191
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_0

    .line 193
    :catch_3
    move-exception v0

    .line 194
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_b
    const-string v4, "DistributedPrefs"

    const-string v5, "IOException while cleaning up"

    invoke-static {v4, v5}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 196
    iget-object v4, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v1, v2

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto/16 :goto_1

    .line 195
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_3
    move-exception v4

    .line 196
    iget-object v5, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 197
    throw v4

    .line 186
    :catchall_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_4

    .line 184
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto/16 :goto_2
.end method
