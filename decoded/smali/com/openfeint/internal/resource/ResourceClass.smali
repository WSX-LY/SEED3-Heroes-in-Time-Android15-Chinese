.class public abstract Lcom/openfeint/internal/resource/ResourceClass;
.super Ljava/lang/Object;
.source "ResourceClass.java"


# instance fields
.field public mObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/openfeint/internal/resource/Resource;",
            ">;"
        }
    .end annotation
.end field

.field public mProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/openfeint/internal/resource/ResourceProperty;",
            ">;"
        }
    .end annotation
.end field

.field public mResourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p2, "resourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/openfeint/internal/resource/Resource;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/openfeint/internal/resource/Resource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/openfeint/internal/resource/ResourceClass;->mObjectClass:Ljava/lang/Class;

    .line 26
    iput-object p2, p0, Lcom/openfeint/internal/resource/ResourceClass;->mResourceName:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    .line 30
    invoke-direct {p0, p1}, Lcom/openfeint/internal/resource/ResourceClass;->mixinParentProperties(Ljava/lang/Class;)V

    .line 31
    return-void
.end method

.method private mixinParentProperties(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lcom/openfeint/internal/resource/Resource;

    if-eq p1, v3, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 15
    .local v2, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v2}, Lcom/openfeint/internal/resource/ResourceClass;->mixinParentProperties(Ljava/lang/Class;)V

    .line 17
    invoke-static {v2}, Lcom/openfeint/internal/resource/Resource;->getKlass(Ljava/lang/Class;)Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    .line 18
    .local v0, "klass":Lcom/openfeint/internal/resource/ResourceClass;
    iget-object v3, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 22
    .end local v0    # "klass":Lcom/openfeint/internal/resource/ResourceClass;
    .end local v2    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void

    .line 18
    .restart local v0    # "klass":Lcom/openfeint/internal/resource/ResourceClass;
    .restart local v2    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 19
    .local v1, "propName":Ljava/lang/String;
    iget-object v5, p0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openfeint/internal/resource/ResourceProperty;

    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public abstract factory()Lcom/openfeint/internal/resource/Resource;
.end method
