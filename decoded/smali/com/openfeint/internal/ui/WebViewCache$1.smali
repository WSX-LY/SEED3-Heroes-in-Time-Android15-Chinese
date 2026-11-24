.class Lcom/openfeint/internal/ui/WebViewCache$1;
.super Ljava/lang/Object;
.source "WebViewCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/WebViewCache;->setRootUriSdcard(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/WebViewCache;

.field private final synthetic val$baseDir:Ljava/io/File;

.field private final synthetic val$inPhoneWebui:Ljava/io/File;

.field private final synthetic val$webui:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$1;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iput-object p2, p0, Lcom/openfeint/internal/ui/WebViewCache$1;->val$inPhoneWebui:Ljava/io/File;

    iput-object p3, p0, Lcom/openfeint/internal/ui/WebViewCache$1;->val$webui:Ljava/io/File;

    iput-object p4, p0, Lcom/openfeint/internal/ui/WebViewCache$1;->val$baseDir:Ljava/io/File;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$1;->val$inPhoneWebui:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$1;->val$inPhoneWebui:Ljava/io/File;

    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache$1;->val$webui:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/openfeint/internal/Util;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 114
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$1;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-static {v1}, Lcom/openfeint/internal/ui/WebViewCache;->access$4(Lcom/openfeint/internal/ui/WebViewCache;)V

    .line 115
    const-string v1, "WebViewCache"

    const-string v2, "copy in phone data finish"

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$1;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-static {v1}, Lcom/openfeint/internal/ui/WebViewCache;->access$5(Lcom/openfeint/internal/ui/WebViewCache;)V

    .line 126
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v1, "WebViewCache"

    const-string v2, "copy from asset"

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$1;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache$1;->val$baseDir:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/openfeint/internal/ui/WebViewCache;->access$6(Lcom/openfeint/internal/ui/WebViewCache;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "WebViewCache"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$1;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-virtual {v1}, Lcom/openfeint/internal/ui/WebViewCache;->setRootUriInternal()V

    goto :goto_0
.end method
