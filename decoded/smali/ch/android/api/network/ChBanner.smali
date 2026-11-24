.class public Lch/android/api/network/ChBanner;
.super Ljava/lang/Object;
.source "ChBanner.java"


# static fields
.field private static isOffBanner:Z


# instance fields
.field private final activity:Landroid/app/Activity;

.field private bannerBmp:Landroid/graphics/Bitmap;

.field private bannerView:Landroid/widget/ImageView;

.field private closeBtn:Landroid/widget/ImageView;

.field private final dba:Lch/kingdoms/android/db/DBAdapter;

.field private layout:Landroid/widget/RelativeLayout;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lch/android/api/network/ChBanner;->isOffBanner:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lch/kingdoms/android/db/DBAdapter;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uiHandler"    # Landroid/os/Handler;
    .param p3, "dba"    # Lch/kingdoms/android/db/DBAdapter;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lch/android/api/network/ChBanner;->activity:Landroid/app/Activity;

    .line 52
    iput-object p2, p0, Lch/android/api/network/ChBanner;->uiHandler:Landroid/os/Handler;

    .line 53
    iput-object p3, p0, Lch/android/api/network/ChBanner;->dba:Lch/kingdoms/android/db/DBAdapter;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lch/android/api/network/ChBanner;)Lch/kingdoms/android/db/DBAdapter;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lch/android/api/network/ChBanner;->dba:Lch/kingdoms/android/db/DBAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lch/android/api/network/ChBanner;Lcom/google/gson/JsonArray;)[Lch/lib/gsonobjects/BannerInfo;
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lch/android/api/network/ChBanner;->parse(Lcom/google/gson/JsonArray;)[Lch/lib/gsonobjects/BannerInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lch/android/api/network/ChBanner;Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lch/android/api/network/ChBanner;->layout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$11(Lch/android/api/network/ChBanner;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lch/android/api/network/ChBanner;->layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$12(Z)V
    .locals 0

    .prologue
    .line 48
    sput-boolean p0, Lch/android/api/network/ChBanner;->isOffBanner:Z

    return-void
.end method

.method static synthetic access$2(Lch/android/api/network/ChBanner;[Lch/lib/gsonobjects/BannerInfo;)Lch/lib/gsonobjects/BannerInfo;
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lch/android/api/network/ChBanner;->selectOne([Lch/lib/gsonobjects/BannerInfo;)Lch/lib/gsonobjects/BannerInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lch/android/api/network/ChBanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lch/android/api/network/ChBanner;->popUpBanner(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lch/android/api/network/ChBanner;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lch/android/api/network/ChBanner;->bannerBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5(Lch/android/api/network/ChBanner;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lch/android/api/network/ChBanner;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$6(Lch/android/api/network/ChBanner;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lch/android/api/network/ChBanner;->closeBtn:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$7(Lch/android/api/network/ChBanner;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lch/android/api/network/ChBanner;->closeBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lch/android/api/network/ChBanner;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lch/android/api/network/ChBanner;->bannerView:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$9(Lch/android/api/network/ChBanner;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lch/android/api/network/ChBanner;->bannerView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private parse(Lcom/google/gson/JsonArray;)[Lch/lib/gsonobjects/BannerInfo;
    .locals 5
    .param p1, "ja"    # Lcom/google/gson/JsonArray;

    .prologue
    .line 226
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 227
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    new-array v0, v3, [Lch/lib/gsonobjects/BannerInfo;

    .line 228
    .local v0, "bannerInfos":[Lch/lib/gsonobjects/BannerInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 232
    return-object v0

    .line 229
    :cond_0
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    const-class v4, Lch/lib/gsonobjects/BannerInfo;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/lib/gsonobjects/BannerInfo;

    aput-object v3, v0, v2

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private popUpBanner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "imgSrc"    # Ljava/lang/String;
    .param p2, "link"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 138
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 139
    .local v1, "conn":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v5

    .line 140
    .local v5, "size":I
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v0, v7, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 141
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    iput-object v7, p0, Lch/android/api/network/ChBanner;->bannerBmp:Landroid/graphics/Bitmap;

    .line 142
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lch/android/api/network/ChBanner;->bannerBmp:Landroid/graphics/Bitmap;

    .line 144
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 145
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lch/android/api/network/ChBanner;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 146
    iget-object v7, p0, Lch/android/api/network/ChBanner;->bannerBmp:Landroid/graphics/Bitmap;

    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 147
    iget v9, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    iget-object v10, p0, Lch/android/api/network/ChBanner;->bannerBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget-object v10, p0, Lch/android/api/network/ChBanner;->bannerBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/4 v10, 0x0

    .line 146
    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 149
    .local v4, "resizedBmp":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lch/android/api/network/ChBanner;->bannerBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    iput-object v4, p0, Lch/android/api/network/ChBanner;->bannerBmp:Landroid/graphics/Bitmap;

    .line 152
    iget-object v7, p0, Lch/android/api/network/ChBanner;->uiHandler:Landroid/os/Handler;

    new-instance v8, Lch/android/api/network/ChBanner$2;

    invoke-direct {v8, p0, p2}, Lch/android/api/network/ChBanner$2;-><init>(Lch/android/api/network/ChBanner;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 209
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "conn":Ljava/net/URLConnection;
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "resizedBmp":Landroid/graphics/Bitmap;
    .end local v5    # "size":I
    .end local v6    # "url":Ljava/net/URL;
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v3

    .line 202
    .local v3, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    .line 205
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 206
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 207
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private selectOne([Lch/lib/gsonobjects/BannerInfo;)Lch/lib/gsonobjects/BannerInfo;
    .locals 6
    .param p1, "objs"    # [Lch/lib/gsonobjects/BannerInfo;

    .prologue
    .line 212
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 214
    .local v2, "rand":Ljava/util/Random;
    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 216
    .local v0, "num":I
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lch/lib/gsonobjects/BannerInfo;->getLink()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lch/lib/gsonobjects/BannerInfo;->getLink()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "ch.kingdoms.market.compat"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    add-int/lit8 v3, v0, 0x1

    array-length v4, p1

    and-int v0, v3, v4

    .line 222
    :cond_0
    aget-object v3, p1, v0

    return-object v3
.end method


# virtual methods
.method public popUp()V
    .locals 3

    .prologue
    .line 57
    sget-boolean v2, Lch/android/api/network/ChBanner;->isOffBanner:Z

    if-eqz v2, :cond_0

    .line 133
    :goto_0
    return-void

    .line 61
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lch/android/api/network/ChBanner$1;

    invoke-direct {v2, p0}, Lch/android/api/network/ChBanner$1;-><init>(Lch/android/api/network/ChBanner;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 129
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    .end local v1    # "thread":Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    iget-object v1, p0, Lch/android/api/network/ChBanner;->layout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lch/android/api/network/ChBanner;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 238
    .local v0, "vg":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lch/android/api/network/ChBanner;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 240
    iput-object v2, p0, Lch/android/api/network/ChBanner;->layout:Landroid/widget/RelativeLayout;

    .line 242
    :cond_0
    iget-object v1, p0, Lch/android/api/network/ChBanner;->closeBtn:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 243
    iput-object v2, p0, Lch/android/api/network/ChBanner;->closeBtn:Landroid/widget/ImageView;

    .line 244
    iget-object v1, p0, Lch/android/api/network/ChBanner;->bannerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 245
    iput-object v2, p0, Lch/android/api/network/ChBanner;->bannerView:Landroid/widget/ImageView;

    .line 247
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method
