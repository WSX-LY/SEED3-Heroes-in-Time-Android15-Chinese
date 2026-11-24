.class Lcom/openfeint/internal/resource/Device$1;
.super Lcom/openfeint/internal/resource/ResourceClass;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/resource/Device;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous1"    # Ljava/lang/String;

    .prologue
    .line 17
    .local p1, "$anonymous0":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/openfeint/internal/resource/Resource;>;"
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/resource/ResourceClass;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public factory()Lcom/openfeint/internal/resource/Resource;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/openfeint/internal/resource/Device;

    invoke-direct {v0}, Lcom/openfeint/internal/resource/Device;-><init>()V

    return-object v0
.end method
