.class public Lch/kingdoms/ndk/NdkResourceManager;
.super Ljava/lang/Object;
.source "NdkResourceManager.java"


# static fields
.field private static s_asset:Landroid/content/res/AssetManager;

.field private static final s_memory:Lch/kingdoms/ndk/Memory;

.field private static final s_resourcesHash:Lch/kingdoms/ndk/ResourceHash;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lch/kingdoms/ndk/ResourceHash;

    invoke-direct {v0}, Lch/kingdoms/ndk/ResourceHash;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkResourceManager;->s_resourcesHash:Lch/kingdoms/ndk/ResourceHash;

    .line 20
    new-instance v0, Lch/kingdoms/ndk/Memory;

    invoke-direct {v0}, Lch/kingdoms/ndk/Memory;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkResourceManager;->s_memory:Lch/kingdoms/ndk/Memory;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourceID(Ljava/lang/String;)I
    .locals 4
    .param p0, "_name"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v1, Lch/kingdoms/ndk/NdkResourceManager;->s_resourcesHash:Lch/kingdoms/ndk/ResourceHash;

    invoke-virtual {v1, p0}, Lch/kingdoms/ndk/ResourceHash;->getResource(Ljava/lang/String;)Lch/kingdoms/ndk/Resource;

    move-result-object v0

    .line 54
    .local v0, "resource":Lch/kingdoms/ndk/Resource;
    if-nez v0, :cond_0

    .line 55
    const-string v1, "KD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NdkResourceManager.getResourceID : Resource("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v1, 0x0

    .line 62
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lch/kingdoms/ndk/Resource;->id:I

    goto :goto_0
.end method

.method public static getResourceSize(Ljava/lang/String;)I
    .locals 1
    .param p0, "_name"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v0, Lch/kingdoms/ndk/NdkResourceManager;->s_resourcesHash:Lch/kingdoms/ndk/ResourceHash;

    invoke-virtual {v0, p0}, Lch/kingdoms/ndk/ResourceHash;->getResource(Ljava/lang/String;)Lch/kingdoms/ndk/Resource;

    move-result-object v0

    iget v0, v0, Lch/kingdoms/ndk/Resource;->size:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 16
    .param p0, "_context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {}, Lch/kingdoms/ndk/NdkResourceManager;->initNdkResource()V

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    sput-object v10, Lch/kingdoms/ndk/NdkResourceManager;->s_asset:Landroid/content/res/AssetManager;

    .line 30
    const/4 v6, 0x1

    .line 31
    .local v6, "id":I
    :try_start_0
    sget-object v10, Lch/kingdoms/ndk/NdkResourceManager;->s_asset:Landroid/content/res/AssetManager;

    const-string v10, "dat,eng_dat,eng_txt,img,snd,txt"

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "dirs":[Ljava/lang/String;
    array-length v12, v1

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-lt v11, v12, :cond_0

    .line 50
    .end local v1    # "dirs":[Ljava/lang/String;
    :goto_1
    return-void

    .line 32
    .restart local v1    # "dirs":[Ljava/lang/String;
    :cond_0
    aget-object v0, v1, v11

    .line 34
    .local v0, "dir":Ljava/lang/String;
    sget-object v10, Lch/kingdoms/ndk/NdkResourceManager;->s_asset:Landroid/content/res/AssetManager;

    invoke-virtual {v10, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 35
    .local v5, "files":[Ljava/lang/String;
    array-length v13, v5

    const/4 v10, 0x0

    :goto_2
    if-lt v10, v13, :cond_1

    .line 32
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_0

    .line 35
    :cond_1
    aget-object v3, v5, v10

    .line 36
    .local v3, "file":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 37
    .local v8, "path":Ljava/lang/String;
    sget-object v14, Lch/kingdoms/ndk/NdkResourceManager;->s_asset:Landroid/content/res/AssetManager;

    invoke-virtual {v14, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 38
    .local v7, "is":Ljava/io/InputStream;
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v9

    .line 39
    .local v9, "size":I
    const-string v14, "[.]"

    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "fileNames":[Ljava/lang/String;
    sget-object v14, Lch/kingdoms/ndk/NdkResourceManager;->s_resourcesHash:Lch/kingdoms/ndk/ResourceHash;

    const/4 v15, 0x0

    aget-object v15, v4, v15

    invoke-virtual {v14, v15, v6, v9, v8}, Lch/kingdoms/ndk/ResourceHash;->put(Ljava/lang/String;IILjava/lang/String;)V

    .line 41
    add-int/lit8 v6, v6, 0x1

    .line 43
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 46
    .end local v0    # "dir":Ljava/lang/String;
    .end local v1    # "dirs":[Ljava/lang/String;
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "fileNames":[Ljava/lang/String;
    .end local v5    # "files":[Ljava/lang/String;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "size":I
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static native initNdkResource()V
.end method

.method public static loadResourceToBytes(III)V
    .locals 9
    .param p0, "_resId"    # I
    .param p1, "_memId"    # I
    .param p2, "_size"    # I

    .prologue
    .line 70
    sget-object v7, Lch/kingdoms/ndk/NdkResourceManager;->s_resourcesHash:Lch/kingdoms/ndk/ResourceHash;

    invoke-virtual {v7, p0}, Lch/kingdoms/ndk/ResourceHash;->getName(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "name":Ljava/lang/String;
    sget-object v7, Lch/kingdoms/ndk/NdkResourceManager;->s_resourcesHash:Lch/kingdoms/ndk/ResourceHash;

    invoke-virtual {v7, v5}, Lch/kingdoms/ndk/ResourceHash;->getResource(Ljava/lang/String;)Lch/kingdoms/ndk/Resource;

    move-result-object v6

    .line 74
    .local v6, "resource":Lch/kingdoms/ndk/Resource;
    :try_start_0
    sget-object v7, Lch/kingdoms/ndk/NdkResourceManager;->s_asset:Landroid/content/res/AssetManager;

    iget-object v8, v6, Lch/kingdoms/ndk/Resource;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 75
    .local v2, "is":Ljava/io/InputStream;
    new-array v0, p2, [B

    .line 77
    .local v0, "bytes":[B
    const/4 v4, 0x0

    .line 79
    .local v4, "nRead":I
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 80
    .local v3, "len":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_0

    .line 90
    sget-object v7, Lch/kingdoms/ndk/NdkResourceManager;->s_memory:Lch/kingdoms/ndk/Memory;

    invoke-virtual {v7, p1, v0}, Lch/kingdoms/ndk/Memory;->pushDataToNative(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0    # "bytes":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "len":I
    .end local v4    # "nRead":I
    :goto_1
    return-void

    .line 86
    .restart local v0    # "bytes":[B
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "len":I
    .restart local v4    # "nRead":I
    :cond_0
    add-int/2addr v4, v3

    .line 78
    goto :goto_0

    .line 97
    .end local v0    # "bytes":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "len":I
    .end local v4    # "nRead":I
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
