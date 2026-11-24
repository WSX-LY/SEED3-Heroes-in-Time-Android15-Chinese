.class public Lcom/openfeint/internal/request/Client;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/request/Client$Executor;,
        Lcom/openfeint/internal/request/Client$GzipDecompressingEntity;
    }
.end annotation


# static fields
.field private static final EXCESS_THREAD_LIFETIME:I = 0x1e

.field private static final MAX_THREADS:I = 0x4

.field private static final MIN_THREADS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HTTPClient"


# instance fields
.field private mCookieStore:Lcom/openfeint/internal/CookieStore;

.field final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mForceOffline:Z

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mSigner:Lcom/openfeint/internal/request/Signer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/SyncedStore;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;
    .param p3, "prefs"    # Lcom/openfeint/internal/SyncedStore;

    .prologue
    .line 112
    invoke-static {}, Lcom/openfeint/internal/request/Client;->makeCCM()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 114
    new-instance v0, Lcom/openfeint/internal/request/Client$Executor;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/request/Client$Executor;-><init>(Lcom/openfeint/internal/request/Client;)V

    iput-object v0, p0, Lcom/openfeint/internal/request/Client;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 116
    new-instance v0, Lcom/openfeint/internal/request/Signer;

    invoke-direct {v0, p1, p2}, Lcom/openfeint/internal/request/Signer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/openfeint/internal/request/Client;->mSigner:Lcom/openfeint/internal/request/Signer;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/request/Client;->mMainThreadHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/openfeint/internal/CookieStore;

    invoke-direct {v0, p3}, Lcom/openfeint/internal/CookieStore;-><init>(Lcom/openfeint/internal/SyncedStore;)V

    iput-object v0, p0, Lcom/openfeint/internal/request/Client;->mCookieStore:Lcom/openfeint/internal/CookieStore;

    .line 120
    iget-object v0, p0, Lcom/openfeint/internal/request/Client;->mCookieStore:Lcom/openfeint/internal/CookieStore;

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/request/Client;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 123
    new-instance v0, Lcom/openfeint/internal/request/Client$1;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/request/Client$1;-><init>(Lcom/openfeint/internal/request/Client;)V

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/request/Client;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 131
    new-instance v0, Lcom/openfeint/internal/request/Client$2;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/request/Client$2;-><init>(Lcom/openfeint/internal/request/Client;)V

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/request/Client;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 150
    return-void
.end method

.method static synthetic access$0(Lcom/openfeint/internal/request/Client;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/openfeint/internal/request/Client;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/openfeint/internal/request/Client;)Lcom/openfeint/internal/request/Signer;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/openfeint/internal/request/Client;->mSigner:Lcom/openfeint/internal/request/Signer;

    return-object v0
.end method

.method static synthetic access$2(Lcom/openfeint/internal/request/Client;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/openfeint/internal/request/Client;->mForceOffline:Z

    return v0
.end method

.method static final makeCCM()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 6

    .prologue
    .line 92
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 93
    .local v1, "sr":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 94
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 96
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 98
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    return-object v0
.end method


# virtual methods
.method public final makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V
    .locals 2
    .param p1, "req"    # Lcom/openfeint/internal/request/BaseRequest;

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/openfeint/internal/request/BaseRequest;->timeout()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/openfeint/internal/request/Client;->makeRequest(Lcom/openfeint/internal/request/BaseRequest;J)V

    .line 154
    return-void
.end method

.method public final makeRequest(Lcom/openfeint/internal/request/BaseRequest;J)V
    .locals 7
    .param p1, "req"    # Lcom/openfeint/internal/request/BaseRequest;
    .param p2, "timeoutMillis"    # J

    .prologue
    .line 158
    new-instance v6, Lcom/openfeint/internal/request/Client$3;

    invoke-direct {v6, p0, p1}, Lcom/openfeint/internal/request/Client$3;-><init>(Lcom/openfeint/internal/request/Client;Lcom/openfeint/internal/request/BaseRequest;)V

    .line 164
    .local v6, "onResponse":Ljava/lang/Runnable;
    new-instance v2, Lcom/openfeint/internal/request/Client$4;

    invoke-direct {v2, p0, p1, v6}, Lcom/openfeint/internal/request/Client$4;-><init>(Lcom/openfeint/internal/request/Client;Lcom/openfeint/internal/request/BaseRequest;Ljava/lang/Runnable;)V

    .line 177
    .local v2, "onTimeout":Ljava/lang/Runnable;
    new-instance v0, Lcom/openfeint/internal/request/Client$5;

    move-object v1, p0

    move-wide v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/openfeint/internal/request/Client$5;-><init>(Lcom/openfeint/internal/request/Client;Ljava/lang/Runnable;JLcom/openfeint/internal/request/BaseRequest;Ljava/lang/Runnable;)V

    .line 188
    .local v0, "requestRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/openfeint/internal/request/Client;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/openfeint/internal/request/BaseRequest;->setFuture(Ljava/util/concurrent/Future;)V

    .line 189
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/openfeint/internal/request/Client;->mCookieStore:Lcom/openfeint/internal/CookieStore;

    invoke-virtual {v0, p1}, Lcom/openfeint/internal/CookieStore;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 59
    const-string v0, "mForceOffline"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/openfeint/internal/request/Client;->mForceOffline:Z

    .line 60
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/openfeint/internal/request/Client;->mCookieStore:Lcom/openfeint/internal/CookieStore;

    invoke-virtual {v0, p1}, Lcom/openfeint/internal/CookieStore;->saveInstanceState(Landroid/os/Bundle;)V

    .line 54
    const-string v0, "mForceOffline"

    iget-boolean v1, p0, Lcom/openfeint/internal/request/Client;->mForceOffline:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    return-void
.end method

.method public toggleForceOffline()Z
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/openfeint/internal/request/Client;->mForceOffline:Z

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openfeint/internal/request/Client;->mForceOffline:Z

    .line 65
    const-string v0, "HTTPClient"

    const-string v1, "forceOffline = FALSE"

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    iget-boolean v0, p0, Lcom/openfeint/internal/request/Client;->mForceOffline:Z

    return v0

    .line 67
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openfeint/internal/request/Client;->mForceOffline:Z

    .line 68
    const-string v0, "HTTPClient"

    const-string v1, "forceOffline = TRUE"

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
