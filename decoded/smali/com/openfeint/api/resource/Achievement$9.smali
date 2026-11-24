.class Lcom/openfeint/api/resource/Achievement$9;
.super Lcom/openfeint/internal/resource/IntResourceProperty;
.source "Achievement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Achievement;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/openfeint/internal/resource/IntResourceProperty;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public get(Lcom/openfeint/internal/resource/Resource;)I
    .locals 1
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 387
    check-cast p1, Lcom/openfeint/api/resource/Achievement;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    iget v0, p1, Lcom/openfeint/api/resource/Achievement;->gamerscore:I

    return v0
.end method

.method public set(Lcom/openfeint/internal/resource/Resource;I)V
    .locals 0
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "val"    # I

    .prologue
    .line 387
    check-cast p1, Lcom/openfeint/api/resource/Achievement;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    iput p2, p1, Lcom/openfeint/api/resource/Achievement;->gamerscore:I

    return-void
.end method
