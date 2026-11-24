.class Lch/android/api/network/ChBanner$1;
.super Ljava/lang/Object;
.source "ChBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/network/ChBanner;->popUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/android/api/network/ChBanner;


# direct methods
.method constructor <init>(Lch/android/api/network/ChBanner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/network/ChBanner$1;->this$0:Lch/android/api/network/ChBanner;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 65
    const/4 v10, 0x0

    .line 67
    .local v10, "isNeedUpdate":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/network/ChBanner$1;->this$0:Lch/android/api/network/ChBanner;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lch/android/api/network/ChBanner;->access$0(Lch/android/api/network/ChBanner;)Lch/kingdoms/android/db/DBAdapter;

    move-result-object v17

    const-string v18, "bannerinfoupdatetime"

    invoke-virtual/range {v17 .. v18}, Lch/kingdoms/android/db/DBAdapter;->getData(Ljava/lang/String;)[B

    move-result-object v15

    .line 68
    .local v15, "updateTimeBytes":[B
    if-nez v15, :cond_4

    .line 69
    const/4 v10, 0x1

    .line 80
    :cond_0
    :goto_0
    const/4 v3, 0x0

    check-cast v3, [Lch/lib/gsonobjects/BannerInfo;

    .line 81
    .local v3, "bannerInfos":[Lch/lib/gsonobjects/BannerInfo;
    if-nez v10, :cond_1

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/network/ChBanner$1;->this$0:Lch/android/api/network/ChBanner;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lch/android/api/network/ChBanner;->access$0(Lch/android/api/network/ChBanner;)Lch/kingdoms/android/db/DBAdapter;

    move-result-object v17

    const-string v18, "bannerinfo"

    invoke-virtual/range {v17 .. v18}, Lch/kingdoms/android/db/DBAdapter;->getData(Ljava/lang/String;)[B

    move-result-object v5

    .line 83
    .local v5, "bytes":[B
    if-nez v5, :cond_5

    .line 84
    const/4 v10, 0x1

    .line 100
    .end local v5    # "bytes":[B
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    .line 102
    :try_start_0
    new-instance v16, Ljava/net/URL;

    const-string v17, "http://ch-games.appspot.com/bannerinfo"

    invoke-direct/range {v16 .. v17}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 103
    .local v16, "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 105
    .local v6, "conn":Ljava/net/URLConnection;
    new-instance v12, Lcom/google/gson/JsonParser;

    invoke-direct {v12}, Lcom/google/gson/JsonParser;-><init>()V

    .line 106
    .local v12, "jp":Lcom/google/gson/JsonParser;
    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v11

    .line 107
    .local v11, "ja":Lcom/google/gson/JsonArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/network/ChBanner$1;->this$0:Lch/android/api/network/ChBanner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lch/android/api/network/ChBanner;->access$1(Lch/android/api/network/ChBanner;Lcom/google/gson/JsonArray;)[Lch/lib/gsonobjects/BannerInfo;

    move-result-object v3

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/network/ChBanner$1;->this$0:Lch/android/api/network/ChBanner;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lch/android/api/network/ChBanner;->access$0(Lch/android/api/network/ChBanner;)Lch/kingdoms/android/db/DBAdapter;

    move-result-object v17

    const-string v18, "bannerinfo"

    invoke-virtual {v11}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lch/kingdoms/android/db/DBAdapter;->setData(Ljava/lang/String;[B)Z

    .line 110
    const/16 v17, 0x8

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 111
    .local v4, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/network/ChBanner$1;->this$0:Lch/android/api/network/ChBanner;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lch/android/api/network/ChBanner;->access$0(Lch/android/api/network/ChBanner;)Lch/kingdoms/android/db/DBAdapter;

    move-result-object v17

    const-string v18, "bannerinfoupdatetime"

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lch/kingdoms/android/db/DBAdapter;->setData(Ljava/lang/String;[B)Z

    .line 113
    const-string v17, "KD"

    const-string v18, "update data"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 122
    .end local v4    # "bb":Ljava/nio/ByteBuffer;
    .end local v6    # "conn":Ljava/net/URLConnection;
    .end local v11    # "ja":Lcom/google/gson/JsonArray;
    .end local v12    # "jp":Lcom/google/gson/JsonParser;
    .end local v16    # "url":Ljava/net/URL;
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/network/ChBanner$1;->this$0:Lch/android/api/network/ChBanner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lch/android/api/network/ChBanner;->access$2(Lch/android/api/network/ChBanner;[Lch/lib/gsonobjects/BannerInfo;)Lch/lib/gsonobjects/BannerInfo;

    move-result-object v2

    .line 124
    .local v2, "bannerInfo":Lch/lib/gsonobjects/BannerInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/network/ChBanner$1;->this$0:Lch/android/api/network/ChBanner;

    move-object/from16 v17, v0

    invoke-virtual {v2}, Lch/lib/gsonobjects/BannerInfo;->getImageSrc()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v2}, Lch/lib/gsonobjects/BannerInfo;->getLink()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lch/android/api/network/ChBanner;->access$3(Lch/android/api/network/ChBanner;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v2    # "bannerInfo":Lch/lib/gsonobjects/BannerInfo;
    :cond_3
    return-void

    .line 72
    .end local v3    # "bannerInfos":[Lch/lib/gsonobjects/BannerInfo;
    :cond_4
    invoke-static {v15}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v13

    .line 73
    .local v13, "updateTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 74
    .local v7, "currentTime":J
    sub-long v17, v7, v13

    const-wide/32 v19, 0x240c8400

    cmp-long v17, v17, v19

    if-lez v17, :cond_0

    .line 75
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 87
    .end local v7    # "currentTime":J
    .end local v13    # "updateTime":J
    .restart local v3    # "bannerInfos":[Lch/lib/gsonobjects/BannerInfo;
    .restart local v5    # "bytes":[B
    :cond_5
    new-instance v12, Lcom/google/gson/JsonParser;

    invoke-direct {v12}, Lcom/google/gson/JsonParser;-><init>()V

    .line 89
    .restart local v12    # "jp":Lcom/google/gson/JsonParser;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/android/api/network/ChBanner$1;->this$0:Lch/android/api/network/ChBanner;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/String;

    const-string v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lch/android/api/network/ChBanner;->access$1(Lch/android/api/network/ChBanner;Lcom/google/gson/JsonArray;)[Lch/lib/gsonobjects/BannerInfo;
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto/16 :goto_1

    .line 91
    :catch_0
    move-exception v9

    .line 93
    .local v9, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v9}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto/16 :goto_1

    .line 94
    .end local v9    # "e":Lcom/google/gson/JsonSyntaxException;
    :catch_1
    move-exception v9

    .line 96
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_1

    .line 114
    .end local v5    # "bytes":[B
    .end local v9    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v12    # "jp":Lcom/google/gson/JsonParser;
    :catch_2
    move-exception v9

    .line 116
    .local v9, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v9}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_2

    .line 117
    .end local v9    # "e":Ljava/net/MalformedURLException;
    :catch_3
    move-exception v9

    .line 118
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
