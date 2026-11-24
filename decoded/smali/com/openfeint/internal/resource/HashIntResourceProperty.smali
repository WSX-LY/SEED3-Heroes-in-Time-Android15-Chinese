.class public abstract Lcom/openfeint/internal/resource/HashIntResourceProperty;
.super Lcom/openfeint/internal/resource/ResourceProperty;
.source "HashIntResourceProperty.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/openfeint/internal/resource/ResourceProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract get(Lcom/openfeint/internal/resource/Resource;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openfeint/internal/resource/Resource;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract set(Lcom/openfeint/internal/resource/Resource;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openfeint/internal/resource/Resource;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
