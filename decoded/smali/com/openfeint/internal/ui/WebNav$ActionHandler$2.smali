.class Lcom/openfeint/internal/ui/WebNav$ActionHandler$2;
.super Lcom/openfeint/internal/ui/WebViewCacheCallback;
.source "WebNav.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/WebNav$ActionHandler;->startLoading(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openfeint/internal/ui/WebNav$ActionHandler;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebNav$ActionHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler$2;->this$1:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    .line 751
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCacheCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failLoaded()V
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler$2;->this$1:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    invoke-static {v0}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->access$0(Lcom/openfeint/internal/ui/WebNav$ActionHandler;)Lcom/openfeint/internal/ui/WebNav;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/ui/WebNav;->access$1(Lcom/openfeint/internal/ui/WebNav;)V

    .line 760
    return-void
.end method

.method public onTrackingNeeded()V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler$2;->this$1:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    invoke-static {v0}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->access$0(Lcom/openfeint/internal/ui/WebNav$ActionHandler;)Lcom/openfeint/internal/ui/WebNav;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/ui/WebNav;->access$2(Lcom/openfeint/internal/ui/WebNav;)V

    .line 765
    return-void
.end method

.method public pathLoaded(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemPath"    # Ljava/lang/String;

    .prologue
    .line 754
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler$2;->this$1:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    invoke-static {v0}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->access$0(Lcom/openfeint/internal/ui/WebNav$ActionHandler;)Lcom/openfeint/internal/ui/WebNav;

    move-result-object v0

    const-string v1, "OF.navigateToUrlCallback()"

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    .line 755
    return-void
.end method
