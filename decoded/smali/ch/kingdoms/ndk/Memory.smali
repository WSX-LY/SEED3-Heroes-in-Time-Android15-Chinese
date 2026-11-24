.class Lch/kingdoms/ndk/Memory;
.super Ljava/lang/Object;
.source "NdkResourceManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native callNativePushData(I[B)V
.end method


# virtual methods
.method public pushDataToNative(I[B)V
    .locals 0
    .param p1, "_id"    # I
    .param p2, "_data"    # [B

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lch/kingdoms/ndk/Memory;->callNativePushData(I[B)V

    .line 139
    return-void
.end method
