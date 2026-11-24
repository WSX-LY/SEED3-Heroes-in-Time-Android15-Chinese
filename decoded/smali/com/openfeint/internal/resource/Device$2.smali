.class Lcom/openfeint/internal/resource/Device$2;
.super Lcom/openfeint/internal/resource/ArrayResourceProperty;
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
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 19
    .local p1, "$anonymous0":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/openfeint/internal/resource/Resource;>;"
    invoke-direct {p0, p1}, Lcom/openfeint/internal/resource/ArrayResourceProperty;-><init>(Ljava/lang/Class;)V

    .line 1
    return-void
.end method


# virtual methods
.method public get(Lcom/openfeint/internal/resource/Resource;)Ljava/util/List;
    .locals 1
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openfeint/internal/resource/Resource;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/openfeint/internal/resource/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    check-cast p1, Lcom/openfeint/internal/resource/Device;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    iget-object v0, p1, Lcom/openfeint/internal/resource/Device;->users:Ljava/util/List;

    return-object v0
.end method

.method public set(Lcom/openfeint/internal/resource/Resource;Ljava/util/List;)V
    .locals 0
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openfeint/internal/resource/Resource;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "vals":Ljava/util/List;, "Ljava/util/List<*>;"
    check-cast p1, Lcom/openfeint/internal/resource/Device;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    iput-object p2, p1, Lcom/openfeint/internal/resource/Device;->users:Ljava/util/List;

    return-void
.end method
