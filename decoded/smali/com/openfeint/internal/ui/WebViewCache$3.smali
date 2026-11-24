.class Lcom/openfeint/internal/ui/WebViewCache$3;
.super Landroid/os/Handler;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/WebViewCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/WebViewCache;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$3;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    .line 410
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 417
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 441
    :goto_0
    return-void

    .line 419
    :pswitch_0
    const-string v0, "WebViewCache"

    const-string v1, "kServerManifestReady"

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$3;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iput-object v0, v1, Lcom/openfeint/internal/ui/WebViewCache;->serverManifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    .line 421
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$3;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-static {v0}, Lcom/openfeint/internal/ui/WebViewCache;->access$7(Lcom/openfeint/internal/ui/WebViewCache;)V

    goto :goto_0

    .line 424
    :pswitch_1
    iget-object v3, p0, Lcom/openfeint/internal/ui/WebViewCache$3;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-lez v4, :cond_0

    :goto_1
    invoke-static {v3, v0, v1}, Lcom/openfeint/internal/ui/WebViewCache;->access$8(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 427
    :pswitch_2
    iget-object v3, p0, Lcom/openfeint/internal/ui/WebViewCache$3;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-lez v4, :cond_1

    :goto_2
    invoke-static {v3, v0, v1}, Lcom/openfeint/internal/ui/WebViewCache;->access$9(Lcom/openfeint/internal/ui/WebViewCache;Ljava/util/Set;Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 430
    :pswitch_3
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$3;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iput-object v0, v1, Lcom/openfeint/internal/ui/WebViewCache;->clientManifest:Ljava/util/Map;

    .line 431
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$3;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-static {v0}, Lcom/openfeint/internal/ui/WebViewCache;->access$7(Lcom/openfeint/internal/ui/WebViewCache;)V

    goto :goto_0

    .line 434
    :pswitch_4
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$3;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v0, v0, Lcom/openfeint/internal/ui/WebViewCache;->clientManifest:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$3;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-static {v0}, Lcom/openfeint/internal/ui/WebViewCache;->access$10(Lcom/openfeint/internal/ui/WebViewCache;)V

    goto :goto_0

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$3;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iput-boolean v1, v0, Lcom/openfeint/internal/ui/WebViewCache;->finishWhenClientManifestDone:Z

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
