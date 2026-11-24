.class public Lch/kingdoms/ndk/NdkSoundManager;
.super Ljava/lang/Object;
.source "NdkSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/ndk/NdkSoundManager$SoundHash;
    }
.end annotation


# static fields
.field private static MAX_VOL:I

.field private static bgmIndex:I

.field private static f_asset:Landroid/content/res/AssetManager;

.field private static f_audio:Landroid/media/AudioManager;

.field private static f_bgmHash:Lch/kingdoms/ndk/NdkSoundManager$SoundHash;

.field private static f_bgmPlayer:Landroid/media/MediaPlayer;

.field private static f_effectHash:Lch/kingdoms/ndk/NdkSoundManager$SoundHash;

.field private static f_effectPlayer:Landroid/media/SoundPool;

.field private static f_loadedIdHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static isBgmPlaying:Z

.field private static isOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 33
    sput v0, Lch/kingdoms/ndk/NdkSoundManager;->bgmIndex:I

    .line 34
    sput v0, Lch/kingdoms/ndk/NdkSoundManager;->MAX_VOL:I

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBgmHash()Lch/kingdoms/ndk/NdkSoundManager$SoundHash;
    .locals 4

    .prologue
    .line 72
    new-instance v0, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;

    invoke-direct {v0}, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;-><init>()V

    .line 73
    .local v0, "bgmHash":Lch/kingdoms/ndk/NdkSoundManager$SoundHash;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 76
    return-object v0

    .line 74
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SND_Bg"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static createEffectHash()Lch/kingdoms/ndk/NdkSoundManager$SoundHash;
    .locals 4

    .prologue
    .line 80
    new-instance v0, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;

    invoke-direct {v0}, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;-><init>()V

    .line 81
    .local v0, "effectHash":Lch/kingdoms/ndk/NdkSoundManager$SoundHash;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x26

    if-lt v1, v2, :cond_0

    .line 84
    return-object v0

    .line 82
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SND_Eff"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1e

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getMaxVolume()I
    .locals 1

    .prologue
    .line 195
    sget v0, Lch/kingdoms/ndk/NdkSoundManager;->MAX_VOL:I

    return v0
.end method

.method public static getSoundIndex(Ljava/lang/String;)B
    .locals 1
    .param p0, "_name"    # Ljava/lang/String;

    .prologue
    .line 171
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_effectHash:Lch/kingdoms/ndk/NdkSoundManager$SoundHash;

    invoke-virtual {v0, p0}, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_effectHash:Lch/kingdoms/ndk/NdkSoundManager$SoundHash;

    invoke-virtual {v0, p0}, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->getValue(Ljava/lang/String;)B

    move-result v0

    .line 182
    :goto_0
    return v0

    .line 176
    :cond_0
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmHash:Lch/kingdoms/ndk/NdkSoundManager$SoundHash;

    invoke-virtual {v0, p0}, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmHash:Lch/kingdoms/ndk/NdkSoundManager$SoundHash;

    invoke-virtual {v0, p0}, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->getValue(Ljava/lang/String;)B

    move-result v0

    goto :goto_0

    .line 182
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getVolume()I
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_audio:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 10
    .param p0, "_context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    sput-object v4, Lch/kingdoms/ndk/NdkSoundManager;->f_asset:Landroid/content/res/AssetManager;

    .line 40
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    sput-object v4, Lch/kingdoms/ndk/NdkSoundManager;->f_audio:Landroid/media/AudioManager;

    .line 42
    invoke-static {}, Lch/kingdoms/ndk/NdkSoundManager;->createBgmHash()Lch/kingdoms/ndk/NdkSoundManager$SoundHash;

    move-result-object v4

    sput-object v4, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmHash:Lch/kingdoms/ndk/NdkSoundManager$SoundHash;

    .line 43
    invoke-static {}, Lch/kingdoms/ndk/NdkSoundManager;->createEffectHash()Lch/kingdoms/ndk/NdkSoundManager$SoundHash;

    move-result-object v4

    sput-object v4, Lch/kingdoms/ndk/NdkSoundManager;->f_effectHash:Lch/kingdoms/ndk/NdkSoundManager$SoundHash;

    .line 45
    new-instance v4, Landroid/media/SoundPool;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v9, v6}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v4, Lch/kingdoms/ndk/NdkSoundManager;->f_effectPlayer:Landroid/media/SoundPool;

    .line 47
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lch/kingdoms/ndk/NdkSoundManager;->f_loadedIdHash:Ljava/util/HashMap;

    .line 49
    :try_start_0
    sget-object v4, Lch/kingdoms/ndk/NdkSoundManager;->f_effectHash:Lch/kingdoms/ndk/NdkSoundManager$SoundHash;

    invoke-virtual {v4}, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->getValues()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 61
    :goto_1
    sput-boolean v8, Lch/kingdoms/ndk/NdkSoundManager;->isBgmPlaying:Z

    .line 62
    sget-object v4, Lch/kingdoms/ndk/NdkSoundManager;->f_audio:Landroid/media/AudioManager;

    invoke-virtual {v4, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    sput v4, Lch/kingdoms/ndk/NdkSoundManager;->MAX_VOL:I

    .line 64
    sput-boolean v8, Lch/kingdoms/ndk/NdkSoundManager;->isOn:Z

    .line 65
    return-void

    .line 49
    :cond_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    .line 50
    .local v3, "value":Ljava/lang/Byte;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "snd/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lch/kingdoms/ndk/NdkSoundManager;->f_effectHash:Lch/kingdoms/ndk/NdkSoundManager$SoundHash;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    invoke-virtual {v6, v7}, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->getKey(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ogg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "name":Ljava/lang/String;
    sget-object v5, Lch/kingdoms/ndk/NdkSoundManager;->f_asset:Landroid/content/res/AssetManager;

    invoke-virtual {v5, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 52
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    sget-object v5, Lch/kingdoms/ndk/NdkSoundManager;->f_loadedIdHash:Ljava/util/HashMap;

    sget-object v6, Lch/kingdoms/ndk/NdkSoundManager;->f_effectPlayer:Landroid/media/SoundPool;

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 55
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Byte;
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    const-string v4, "KD"

    const-string v5, "SoundManager.SoundManager : SoundEffect AssetFileDescripter open is failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lch/kingdoms/ndk/NdkSoundManager;->isBgmPlaying:Z

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lch/kingdoms/ndk/NdkSoundManager;->isBgmPlaying:Z

    goto :goto_0
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-boolean v0, Lch/kingdoms/ndk/NdkSoundManager;->isBgmPlaying:Z

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 143
    const/4 v0, 0x1

    sput-boolean v0, Lch/kingdoms/ndk/NdkSoundManager;->isBgmPlaying:Z

    .line 145
    :cond_0
    return-void
.end method

.method public static playSound(BI)V
    .locals 10
    .param p0, "_index"    # B
    .param p1, "_isLoop"    # I

    .prologue
    const/4 v6, 0x0

    .line 88
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "KD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NdkSoundManager.playSound : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    sget-boolean v0, Lch/kingdoms/ndk/NdkSoundManager;->isOn:Z

    if-nez v0, :cond_1

    .line 128
    :goto_0
    return-void

    .line 95
    :cond_1
    :try_start_0
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_effectHash:Lch/kingdoms/ndk/NdkSoundManager$SoundHash;

    invoke-virtual {v0, p0}, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->containsValue(B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_effectPlayer:Landroid/media/SoundPool;

    sget-object v1, Lch/kingdoms/ndk/NdkSoundManager;->f_loadedIdHash:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v8

    .line 124
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 125
    const-string v0, "KD"

    const-string v1, "SoundManager.playSound : Bgm AssetFileDescripter open is failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    .end local v8    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmHash:Lch/kingdoms/ndk/NdkSoundManager$SoundHash;

    invoke-virtual {v0, p0}, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->containsValue(B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 99
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    .line 100
    sget v0, Lch/kingdoms/ndk/NdkSoundManager;->bgmIndex:I

    if-ne v0, p0, :cond_3

    .line 102
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 106
    :cond_3
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 107
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 110
    :cond_4
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "snd/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmHash:Lch/kingdoms/ndk/NdkSoundManager$SoundHash;

    invoke-virtual {v1, p0}, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->getKey(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ogg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 112
    .local v9, "fileName":Ljava/lang/String;
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_asset:Landroid/content/res/AssetManager;

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 113
    .local v7, "afd":Landroid/content/res/AssetFileDescriptor;
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 114
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 115
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 116
    sget-object v1, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_5

    move v0, v6

    :goto_1
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 117
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 118
    sput p0, Lch/kingdoms/ndk/NdkSoundManager;->bgmIndex:I

    goto/16 :goto_0

    .line 116
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 120
    .end local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "fileName":Ljava/lang/String;
    :cond_6
    const-string v0, "KD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SoundManager.playSound : no such sound id : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static releaseResources()V
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_effectPlayer:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 162
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 165
    :cond_0
    return-void
.end method

.method public static setSoundOn(Z)V
    .locals 0
    .param p0, "isOn"    # Z

    .prologue
    .line 68
    sput-boolean p0, Lch/kingdoms/ndk/NdkSoundManager;->isOn:Z

    .line 69
    return-void
.end method

.method public static setVolume(I)V
    .locals 3
    .param p0, "_vol"    # I

    .prologue
    .line 190
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_audio:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 192
    return-void
.end method

.method public static stopSound()V
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 158
    :cond_0
    return-void
.end method

.method public static stratSound()V
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lch/kingdoms/ndk/NdkSoundManager;->f_bgmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 151
    :cond_0
    return-void
.end method
