.class Lch/kingdoms/ndk/Resource;
.super Ljava/lang/Object;
.source "NdkResourceManager.java"


# instance fields
.field public final id:I

.field public final path:Ljava/lang/String;

.field public final size:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "_id"    # I
    .param p2, "_size"    # I
    .param p3, "_path"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lch/kingdoms/ndk/Resource;->id:I

    .line 125
    iput p2, p0, Lch/kingdoms/ndk/Resource;->size:I

    .line 126
    iput-object p3, p0, Lch/kingdoms/ndk/Resource;->path:Ljava/lang/String;

    .line 127
    return-void
.end method
