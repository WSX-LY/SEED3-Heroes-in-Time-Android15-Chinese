.class Lcom/openfeint/api/resource/Score$12;
.super Lcom/openfeint/internal/resource/StringResourceProperty;
.source "Score.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Score;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/openfeint/internal/resource/StringResourceProperty;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public get(Lcom/openfeint/internal/resource/Resource;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 335
    check-cast p1, Lcom/openfeint/api/resource/Score;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    invoke-static {p1}, Lcom/openfeint/api/resource/Score;->access$1(Lcom/openfeint/api/resource/Score;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/openfeint/internal/resource/Resource;Ljava/lang/String;)V
    .locals 0
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 335
    check-cast p1, Lcom/openfeint/api/resource/Score;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    invoke-static {p1, p2}, Lcom/openfeint/api/resource/Score;->access$2(Lcom/openfeint/api/resource/Score;Ljava/lang/String;)V

    return-void
.end method
