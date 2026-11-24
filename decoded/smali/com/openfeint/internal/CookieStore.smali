.class public Lcom/openfeint/internal/CookieStore;
.super Lorg/apache/http/impl/client/BasicCookieStore;
.source "CookieStore.java"


# static fields
.field static final COOKIE_PREFIX:Ljava/lang/String; = "_of_cookie_"

.field static final COOKIE_PREFIX_LEN:I

.field static final COOKIE_VALUE_TAG:Ljava/lang/String; = "value"

.field static final COOKIE_VALUE_TAG_LEN:I

.field static final tag:Ljava/lang/String; = "CookieStore"


# instance fields
.field mSharedPreferences:Lcom/openfeint/internal/SyncedStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "_of_cookie_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/openfeint/internal/CookieStore;->COOKIE_PREFIX_LEN:I

    .line 20
    const-string v0, "value"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/openfeint/internal/CookieStore;->COOKIE_VALUE_TAG_LEN:I

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/openfeint/internal/SyncedStore;)V
    .locals 8
    .param p1, "sp"    # Lcom/openfeint/internal/SyncedStore;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/openfeint/internal/CookieStore;->mSharedPreferences:Lcom/openfeint/internal/SyncedStore;

    .line 45
    iget-object v4, p0, Lcom/openfeint/internal/CookieStore;->mSharedPreferences:Lcom/openfeint/internal/SyncedStore;

    invoke-virtual {v4}, Lcom/openfeint/internal/SyncedStore;->read()Lcom/openfeint/internal/SyncedStore$Reader;

    move-result-object v3

    .line 47
    .local v3, "r":Lcom/openfeint/internal/SyncedStore$Reader;
    :try_start_0
    invoke-virtual {v3}, Lcom/openfeint/internal/SyncedStore$Reader;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 55
    invoke-virtual {v3}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 58
    return-void

    .line 47
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    .local v2, "k":Ljava/lang/String;
    const-string v5, "_of_cookie_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "value"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 49
    sget v5, Lcom/openfeint/internal/CookieStore;->COOKIE_PREFIX_LEN:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sget v7, Lcom/openfeint/internal/CookieStore;->COOKIE_VALUE_TAG_LEN:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "cookieName":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/openfeint/internal/CookieStore;->cookieFromPrefs(Lcom/openfeint/internal/SyncedStore$Reader;Ljava/lang/String;)Lorg/apache/http/impl/cookie/BasicClientCookie;

    move-result-object v0

    .line 51
    .local v0, "c":Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-super {p0, v0}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    .end local v0    # "c":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v1    # "cookieName":Ljava/lang/String;
    .end local v2    # "k":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 55
    invoke-virtual {v3}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 56
    throw v4
.end method

.method private cookieFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lorg/apache/http/impl/cookie/BasicClientCookie;
    .locals 8
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "cookieName"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_of_cookie_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "prefix":Ljava/lang/String;
    const/4 v0, 0x0

    .line 64
    .local v0, "c":Lorg/apache/http/impl/cookie/BasicClientCookie;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "cookieValue":Ljava/lang/String;
    if-nez v4, :cond_0

    const/4 v6, 0x0

    .line 79
    :goto_0
    return-object v6

    .line 67
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "path"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "cookiePath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "domain"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "cookieDomain":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "expiry"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "cookieExpiry":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    .end local v0    # "c":Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-direct {v0, p2, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .restart local v0    # "c":Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-virtual {v0, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 75
    if-eqz v2, :cond_1

    .line 76
    invoke-static {v2}, Lcom/openfeint/internal/CookieStore;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    :cond_1
    move-object v6, v0

    .line 79
    goto :goto_0
.end method

.method private cookieFromPrefs(Lcom/openfeint/internal/SyncedStore$Reader;Ljava/lang/String;)Lorg/apache/http/impl/cookie/BasicClientCookie;
    .locals 9
    .param p1, "r"    # Lcom/openfeint/internal/SyncedStore$Reader;
    .param p2, "cookieName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_of_cookie_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "prefix":Ljava/lang/String;
    const/4 v0, 0x0

    .line 86
    .local v0, "c":Lorg/apache/http/impl/cookie/BasicClientCookie;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v6}, Lcom/openfeint/internal/SyncedStore$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "cookieValue":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 99
    :goto_0
    return-object v6

    .line 89
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "path"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v6}, Lcom/openfeint/internal/SyncedStore$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "cookiePath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "domain"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v6}, Lcom/openfeint/internal/SyncedStore$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "cookieDomain":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "expiry"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v6}, Lcom/openfeint/internal/SyncedStore$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "cookieExpiry":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    .end local v0    # "c":Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-direct {v0, p2, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .restart local v0    # "c":Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-virtual {v0, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 97
    invoke-static {v2}, Lcom/openfeint/internal/CookieStore;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    move-object v6, v0

    .line 99
    goto :goto_0
.end method

.method private cookieToBundle(Lorg/apache/http/cookie/Cookie;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "b"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_of_cookie_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_of_cookie_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_of_cookie_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "domain"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    .line 108
    .local v0, "expiryDate":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_of_cookie_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "expiry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/openfeint/internal/CookieStore;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method private cookieToPrefs(Lorg/apache/http/cookie/Cookie;Lcom/openfeint/internal/SyncedStore$Editor;)V
    .locals 3
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "e"    # Lcom/openfeint/internal/SyncedStore$Editor;

    .prologue
    .line 114
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_of_cookie_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/openfeint/internal/SyncedStore$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_of_cookie_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/openfeint/internal/SyncedStore$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_of_cookie_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "domain"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/openfeint/internal/SyncedStore$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_of_cookie_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expiry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/openfeint/internal/CookieStore;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/openfeint/internal/SyncedStore$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private static final dateFromString(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 176
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 179
    :goto_0
    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Lorg/apache/http/impl/cookie/DateParseException;
    const-string v1, "CookieStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t parse date: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final stringFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;

    .prologue
    .line 171
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addCookie(Lorg/apache/http/cookie/Cookie;)V
    .locals 8
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 125
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 128
    .local v1, "existing":Lorg/apache/http/cookie/Cookie;
    iget-object v6, p0, Lcom/openfeint/internal/CookieStore;->mSharedPreferences:Lcom/openfeint/internal/SyncedStore;

    invoke-virtual {v6}, Lcom/openfeint/internal/SyncedStore;->read()Lcom/openfeint/internal/SyncedStore$Reader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 130
    .local v5, "r":Lcom/openfeint/internal/SyncedStore$Reader;
    :try_start_1
    invoke-direct {p0, v5, v3}, Lcom/openfeint/internal/CookieStore;->cookieFromPrefs(Lcom/openfeint/internal/SyncedStore$Reader;Ljava/lang/String;)Lorg/apache/http/impl/cookie/BasicClientCookie;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 132
    :try_start_2
    invoke-virtual {v5}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 135
    if-eqz v1, :cond_0

    .line 136
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 137
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 138
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 139
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 141
    :cond_0
    iget-object v6, p0, Lcom/openfeint/internal/CookieStore;->mSharedPreferences:Lcom/openfeint/internal/SyncedStore;

    invoke-virtual {v6}, Lcom/openfeint/internal/SyncedStore;->edit()Lcom/openfeint/internal/SyncedStore$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 144
    .local v0, "e":Lcom/openfeint/internal/SyncedStore$Editor;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_of_cookie_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 152
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/openfeint/internal/CookieStore;->cookieToPrefs(Lorg/apache/http/cookie/Cookie;Lcom/openfeint/internal/SyncedStore$Editor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 156
    :cond_2
    :try_start_4
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 159
    .end local v0    # "e":Lcom/openfeint/internal/SyncedStore$Editor;
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_3
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v6

    .line 132
    :try_start_5
    invoke-virtual {v5}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 133
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 124
    .end local v1    # "existing":Lorg/apache/http/cookie/Cookie;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "r":Lcom/openfeint/internal/SyncedStore$Reader;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 145
    .restart local v0    # "e":Lcom/openfeint/internal/SyncedStore$Editor;
    .restart local v1    # "existing":Lorg/apache/http/cookie/Cookie;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "prefix":Ljava/lang/String;
    .restart local v5    # "r":Lcom/openfeint/internal/SyncedStore$Reader;
    :cond_4
    :try_start_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 146
    .local v2, "k":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 147
    invoke-virtual {v0, v2}, Lcom/openfeint/internal/SyncedStore$Editor;->remove(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 155
    .end local v2    # "k":Ljava/lang/String;
    .end local v4    # "prefix":Ljava/lang/String;
    :catchall_2
    move-exception v6

    .line 156
    :try_start_7
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    .line 157
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public declared-synchronized clearCookies(Lcom/openfeint/internal/SyncedStore$Editor;)V
    .locals 3
    .param p1, "e"    # Lcom/openfeint/internal/SyncedStore$Editor;

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/openfeint/internal/SyncedStore$Editor;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    invoke-super {p0}, Lorg/apache/http/impl/client/BasicCookieStore;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 162
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    .local v0, "k":Ljava/lang/String;
    const-string v2, "_of_cookie_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {p1, v0}, Lcom/openfeint/internal/SyncedStore$Editor;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
    .end local v0    # "k":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized restoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 38
    monitor-exit p0

    return-void

    .line 31
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    .local v2, "k":Ljava/lang/String;
    const-string v4, "_of_cookie_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "value"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    sget v4, Lcom/openfeint/internal/CookieStore;->COOKIE_PREFIX_LEN:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/openfeint/internal/CookieStore;->COOKIE_VALUE_TAG_LEN:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "cookieName":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/openfeint/internal/CookieStore;->cookieFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lorg/apache/http/impl/cookie/BasicClientCookie;

    move-result-object v0

    .line 35
    .local v0, "c":Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-super {p0, v0}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 31
    .end local v0    # "c":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v1    # "cookieName":Ljava/lang/String;
    .end local v2    # "k":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized saveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/http/impl/client/BasicCookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 28
    monitor-exit p0

    return-void

    .line 25
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 26
    .local v0, "c":Lorg/apache/http/cookie/Cookie;
    invoke-direct {p0, v0, p1}, Lcom/openfeint/internal/CookieStore;->cookieToBundle(Lorg/apache/http/cookie/Cookie;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 25
    .end local v0    # "c":Lorg/apache/http/cookie/Cookie;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
