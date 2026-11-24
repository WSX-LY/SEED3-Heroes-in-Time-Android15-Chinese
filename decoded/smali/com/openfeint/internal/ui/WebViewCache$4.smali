.class Lcom/openfeint/internal/ui/WebViewCache$4;
.super Lcom/openfeint/internal/request/BaseRequest;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/WebViewCache;->batchFetch(Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/WebViewCache;

.field private final synthetic val$currentUrl:Ljava/lang/String;

.field private final synthetic val$originalUrl:Ljava/lang/String;

.field private final synthetic val$paths:Ljava/util/Set;

.field private final synthetic val$retriesLeft:I


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iput-object p2, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->val$originalUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->val$currentUrl:Ljava/lang/String;

    iput p4, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->val$retriesLeft:I

    iput-object p5, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->val$paths:Ljava/util/Set;

    .line 872
    invoke-direct {p0}, Lcom/openfeint/internal/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 874
    const-string v0, "GET"

    return-object v0
.end method

.method public onResponse(I[B)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "body"    # [B

    .prologue
    .line 877
    return-void
.end method

.method public onResponseOffMainThread(I[B)V
    .locals 7
    .param p1, "responseCode"    # I
    .param p2, "body"    # [B

    .prologue
    .line 879
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v3, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->val$originalUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->val$currentUrl:Ljava/lang/String;

    iget v5, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->val$retriesLeft:I

    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->val$paths:Ljava/util/Set;

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/openfeint/internal/ui/WebViewCache;->access$11(Lcom/openfeint/internal/ui/WebViewCache;I[BLjava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    .line 880
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 875
    const-string v0, ""

    return-object v0
.end method

.method public signed()Z
    .locals 1

    .prologue
    .line 873
    const/4 v0, 0x0

    return v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->val$originalUrl:Ljava/lang/String;

    return-object v0
.end method
