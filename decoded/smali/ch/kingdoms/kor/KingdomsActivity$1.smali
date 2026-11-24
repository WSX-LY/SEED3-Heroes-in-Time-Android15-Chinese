.class Lch/kingdoms/kor/KingdomsActivity$1;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Lch/android/api/pipelinethread/MessageHandlable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity;->updateHackApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/kor/KingdomsActivity;

.field private final synthetic val$dba:Lch/kingdoms/android/db/DBAdapter;


# direct methods
.method constructor <init>(Lch/kingdoms/kor/KingdomsActivity;Lch/kingdoms/android/db/DBAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$1;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    iput-object p2, p0, Lch/kingdoms/kor/KingdomsActivity$1;->val$dba:Lch/kingdoms/android/db/DBAdapter;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 233
    :try_start_0
    new-instance v5, Ljava/net/URL;

    const-string v6, "http://ch-games.appspot.com/androidmemoryhacks"

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 234
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 235
    .local v0, "conn":Ljava/net/URLConnection;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v3, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 237
    .local v3, "isr":Ljava/io/InputStreamReader;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 238
    .local v2, "gson":Lcom/google/gson/Gson;
    const-class v6, Lch/lib/gsonobjects/MemoryHackApplications;

    invoke-virtual {v2, v3, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lch/lib/gsonobjects/MemoryHackApplications;

    .line 240
    .local v4, "mhas":Lch/lib/gsonobjects/MemoryHackApplications;
    iget-object v6, p0, Lch/kingdoms/kor/KingdomsActivity$1;->val$dba:Lch/kingdoms/android/db/DBAdapter;

    const-string v7, "memoryhackapps"

    invoke-virtual {v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lch/kingdoms/android/db/DBAdapter;->setData(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 249
    .end local v0    # "conn":Ljava/net/URLConnection;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "mhas":Lch/lib/gsonobjects/MemoryHackApplications;
    .end local v5    # "url":Ljava/net/URL;
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 244
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 245
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v1

    .line 247
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
