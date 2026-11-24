.class Lch/kingdoms/ndk/NdkSoundManager$SoundHash;
.super Ljava/lang/Object;
.source "NdkSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/ndk/NdkSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundHash"
.end annotation


# instance fields
.field private final f_isHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f_siHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->f_siHash:Ljava/util/HashMap;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->f_isHash:Ljava/util/HashMap;

    .line 205
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "_key"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->f_siHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(B)Z
    .locals 2
    .param p1, "_value"    # B

    .prologue
    .line 234
    iget-object v0, p0, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->f_isHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getKey(B)Ljava/lang/String;
    .locals 2
    .param p1, "_value"    # B

    .prologue
    .line 226
    iget-object v0, p0, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->f_isHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)B
    .locals 1
    .param p1, "_key"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->f_siHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->f_siHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->f_siHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Byte;)V
    .locals 1
    .param p1, "_key"    # Ljava/lang/String;
    .param p2, "_value"    # Ljava/lang/Byte;

    .prologue
    .line 208
    iget-object v0, p0, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->f_siHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lch/kingdoms/ndk/NdkSoundManager$SoundHash;->f_isHash:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method
