.class Lcom/openfeint/internal/resource/ParentalControl$2;
.super Lcom/openfeint/internal/resource/BooleanResourceProperty;
.source "ParentalControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/resource/ParentalControl;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/openfeint/internal/resource/BooleanResourceProperty;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public get(Lcom/openfeint/internal/resource/Resource;)Z
    .locals 1
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 14
    check-cast p1, Lcom/openfeint/internal/resource/ParentalControl;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    iget-boolean v0, p1, Lcom/openfeint/internal/resource/ParentalControl;->enabled:Z

    return v0
.end method

.method public set(Lcom/openfeint/internal/resource/Resource;Z)V
    .locals 0
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "val"    # Z

    .prologue
    .line 14
    check-cast p1, Lcom/openfeint/internal/resource/ParentalControl;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    iput-boolean p2, p1, Lcom/openfeint/internal/resource/ParentalControl;->enabled:Z

    return-void
.end method
