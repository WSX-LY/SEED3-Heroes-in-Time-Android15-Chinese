.class Lch/kingdoms/ndk/ResourceHash;
.super Ljava/lang/Object;
.source "NdkResourceManager.java"


# instance fields
.field private final f_idNameHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f_resourcesHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lch/kingdoms/ndk/Resource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/kingdoms/ndk/ResourceHash;->f_resourcesHash:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/kingdoms/ndk/ResourceHash;->f_idNameHash:Ljava/util/HashMap;

    .line 104
    return-void
.end method


# virtual methods
.method public getName(I)Ljava/lang/String;
    .locals 2
    .param p1, "_id"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lch/kingdoms/ndk/ResourceHash;->f_idNameHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lch/kingdoms/ndk/Resource;
    .locals 1
    .param p1, "_name"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lch/kingdoms/ndk/ResourceHash;->f_resourcesHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/kingdoms/ndk/Resource;

    return-object v0
.end method

.method public put(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_id"    # I
    .param p3, "_size"    # I
    .param p4, "_path"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lch/kingdoms/ndk/ResourceHash;->f_idNameHash:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lch/kingdoms/ndk/ResourceHash;->f_resourcesHash:Ljava/util/HashMap;

    new-instance v1, Lch/kingdoms/ndk/Resource;

    invoke-direct {v1, p2, p3, p4}, Lch/kingdoms/ndk/Resource;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method
