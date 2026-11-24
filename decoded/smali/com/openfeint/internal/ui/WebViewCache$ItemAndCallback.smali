.class Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;
.super Ljava/lang/Object;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/WebViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemAndCallback"
.end annotation


# instance fields
.field public final callback:Lcom/openfeint/internal/ui/WebViewCacheCallback;

.field public final item:Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;Lcom/openfeint/internal/ui/WebViewCacheCallback;)V
    .locals 0
    .param p1, "_item"    # Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .param p2, "_cb"    # Lcom/openfeint/internal/ui/WebViewCacheCallback;

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;->item:Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    .line 354
    iput-object p2, p0, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;->callback:Lcom/openfeint/internal/ui/WebViewCacheCallback;

    .line 355
    return-void
.end method
