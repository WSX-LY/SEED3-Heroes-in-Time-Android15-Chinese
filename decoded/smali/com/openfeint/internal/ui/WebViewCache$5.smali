.class Lcom/openfeint/internal/ui/WebViewCache$5;
.super Lcom/openfeint/internal/request/BaseRequest;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/WebViewCache;->batchRequest(Ljava/util/Set;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/WebViewCache;

.field private final synthetic val$numRetries:I

.field private final synthetic val$paths:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;Lcom/openfeint/internal/request/OrderedArgList;ILjava/util/Set;)V
    .locals 0
    .param p2, "$anonymous0"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$5;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iput p3, p0, Lcom/openfeint/internal/ui/WebViewCache$5;->val$numRetries:I

    iput-object p4, p0, Lcom/openfeint/internal/ui/WebViewCache$5;->val$paths:Ljava/util/Set;

    .line 899
    invoke-direct {p0, p2}, Lcom/openfeint/internal/request/BaseRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 901
    const-string v0, "POST"

    return-object v0
.end method

.method public onResponse(I[B)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "body"    # [B

    .prologue
    .line 906
    return-void
.end method

.method protected onResponseOffMainThread(I[B)V
    .locals 7
    .param p1, "responseCode"    # I
    .param p2, "body"    # [B

    .prologue
    .line 904
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$5;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-virtual {p0}, Lcom/openfeint/internal/ui/WebViewCache$5;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/openfeint/internal/ui/WebViewCache$5;->currentURL()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/openfeint/internal/ui/WebViewCache$5;->val$numRetries:I

    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache$5;->val$paths:Ljava/util/Set;

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/openfeint/internal/ui/WebViewCache;->access$11(Lcom/openfeint/internal/ui/WebViewCache;I[BLjava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    .line 905
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 902
    const-string v0, "/webui/assets"

    return-object v0
.end method

.method public signed()Z
    .locals 1

    .prologue
    .line 900
    const/4 v0, 0x0

    return v0
.end method
