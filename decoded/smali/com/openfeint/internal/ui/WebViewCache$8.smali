.class Lcom/openfeint/internal/ui/WebViewCache$8;
.super Ljava/lang/Object;
.source "WebViewCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/WebViewCache;->testOnlyManifestItems()[Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;)I
    .locals 2
    .param p1, "lhs"    # Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;
    .param p2, "rhs"    # Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;

    .prologue
    .line 1223
    iget-object v0, p1, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;->path:Ljava/lang/String;

    iget-object v1, p2, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;

    check-cast p2, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;

    invoke-virtual {p0, p1, p2}, Lcom/openfeint/internal/ui/WebViewCache$8;->compare(Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;)I

    move-result v0

    return v0
.end method
