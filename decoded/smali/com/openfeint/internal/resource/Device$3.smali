.class Lcom/openfeint/internal/resource/Device$3;
.super Lcom/openfeint/internal/resource/NestedResourceProperty;
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
    .line 20
    .local p1, "$anonymous0":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/openfeint/internal/resource/Resource;>;"
    invoke-direct {p0, p1}, Lcom/openfeint/internal/resource/NestedResourceProperty;-><init>(Ljava/lang/Class;)V

    .line 1
    return-void
.end method


# virtual methods
.method public get(Lcom/openfeint/internal/resource/Resource;)Lcom/openfeint/internal/resource/Resource;
    .locals 1
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 20
    check-cast p1, Lcom/openfeint/internal/resource/Device;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    iget-object v0, p1, Lcom/openfeint/internal/resource/Device;->parental_control:Lcom/openfeint/internal/resource/ParentalControl;

    return-object v0
.end method

.method public set(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/resource/Resource;)V
    .locals 0
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "val"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 20
    check-cast p1, Lcom/openfeint/internal/resource/Device;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    check-cast p2, Lcom/openfeint/internal/resource/ParentalControl;

    .end local p2    # "val":Lcom/openfeint/internal/resource/Resource;
    iput-object p2, p1, Lcom/openfeint/internal/resource/Device;->parental_control:Lcom/openfeint/internal/resource/ParentalControl;

    return-void
.end method
