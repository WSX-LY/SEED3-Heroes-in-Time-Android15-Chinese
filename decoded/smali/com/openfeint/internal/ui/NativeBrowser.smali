.class public Lcom/openfeint/internal/ui/NativeBrowser;
.super Lcom/openfeint/internal/ui/NestedWindow;
.source "NativeBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/ui/NativeBrowser$JSInterface;
    }
.end annotation


# static fields
.field public static final INTENT_ARG_PREFIX:Ljava/lang/String; = "com.openfeint.internal.ui.NativeBrowser.argument."


# instance fields
.field private mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHandler:Landroid/os/Handler;

.field private mTimeoutWatchdog:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/openfeint/internal/ui/NestedWindow;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/openfeint/internal/ui/NativeBrowser;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    return-void
.end method

.method static synthetic access$0(Lcom/openfeint/internal/ui/NativeBrowser;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/openfeint/internal/ui/NativeBrowser;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1(Lcom/openfeint/internal/ui/NativeBrowser;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/openfeint/internal/ui/NativeBrowser;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/openfeint/internal/ui/NativeBrowser;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/openfeint/internal/ui/NativeBrowser;->mTimeoutWatchdog:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/openfeint/internal/ui/NativeBrowser;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/openfeint/internal/ui/NativeBrowser;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$4(Lcom/openfeint/internal/ui/NativeBrowser;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/openfeint/internal/ui/NativeBrowser;->mTimeoutWatchdog:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 39
    invoke-super {p0, p1}, Lcom/openfeint/internal/ui/NestedWindow;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/NativeBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "com.openfeint.internal.ui.NativeBrowser.argument.src"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "src":Ljava/lang/String;
    const-string v3, "com.openfeint.internal.ui.NativeBrowser.argument.timeout"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "timeout":Ljava/lang/String;
    iget-object v3, p0, Lcom/openfeint/internal/ui/NativeBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 48
    iget-object v3, p0, Lcom/openfeint/internal/ui/NativeBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/openfeint/internal/ui/NativeBrowser$JSInterface;

    invoke-direct {v4, p0}, Lcom/openfeint/internal/ui/NativeBrowser$JSInterface;-><init>(Lcom/openfeint/internal/ui/NativeBrowser;)V

    const-string v5, "NativeBrowser"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/openfeint/internal/ui/NativeBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/openfeint/internal/ui/NativeBrowser$1;

    invoke-direct {v4, p0}, Lcom/openfeint/internal/ui/NativeBrowser$1;-><init>(Lcom/openfeint/internal/ui/NativeBrowser;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 74
    iget-object v3, p0, Lcom/openfeint/internal/ui/NativeBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Landroid/webkit/WebChromeClient;

    invoke-direct {v4}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 76
    iget-object v3, p0, Lcom/openfeint/internal/ui/NativeBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 78
    if-eqz v2, :cond_0

    .line 79
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/openfeint/internal/ui/NativeBrowser;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v3, Lcom/openfeint/internal/ui/NativeBrowser$2;

    invoke-direct {v3, p0}, Lcom/openfeint/internal/ui/NativeBrowser$2;-><init>(Lcom/openfeint/internal/ui/NativeBrowser;)V

    iput-object v3, p0, Lcom/openfeint/internal/ui/NativeBrowser;->mTimeoutWatchdog:Ljava/lang/Runnable;

    .line 92
    iget-object v3, p0, Lcom/openfeint/internal/ui/NativeBrowser;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/openfeint/internal/ui/NativeBrowser;->mTimeoutWatchdog:Ljava/lang/Runnable;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    :cond_0
    invoke-virtual {p0, v7}, Lcom/openfeint/internal/ui/NativeBrowser;->fade(Z)V

    .line 96
    return-void
.end method
