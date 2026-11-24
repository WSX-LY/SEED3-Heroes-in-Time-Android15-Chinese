.class Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;
.super Ljava/lang/Object;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/WebViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathAndCallback"
.end annotation


# instance fields
.field public final callback:Lcom/openfeint/internal/ui/WebViewCacheCallback;

.field public final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/openfeint/internal/ui/WebViewCacheCallback;)V
    .locals 0
    .param p1, "_path"    # Ljava/lang/String;
    .param p2, "_cb"    # Lcom/openfeint/internal/ui/WebViewCacheCallback;

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->path:Ljava/lang/String;

    .line 363
    iput-object p2, p0, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->callback:Lcom/openfeint/internal/ui/WebViewCacheCallback;

    .line 364
    return-void
.end method
