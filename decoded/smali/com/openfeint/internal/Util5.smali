.class public Lcom/openfeint/internal/Util5;
.super Ljava/lang/Object;
.source "Util5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountNameEclair(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 15
    :try_start_0
    const-string v6, "android.accounts.AccountManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 16
    .local v3, "cAccountManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "get"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 17
    .local v4, "get":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    .local v0, "accountManager":Ljava/lang/Object;
    const-string v6, "getAccountsByType"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 19
    .local v5, "getAccountsByType":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "com.google"

    aput-object v8, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 20
    .local v1, "accounts":[Ljava/lang/Object;
    const-string v6, "android.accounts.Account"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 21
    .local v2, "cAccount":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "name"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .end local v0    # "accountManager":Ljava/lang/Object;
    .end local v1    # "accounts":[Ljava/lang/Object;
    .end local v2    # "cAccount":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "cAccountManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "get":Ljava/lang/reflect/Method;
    .end local v5    # "getAccountsByType":Ljava/lang/reflect/Method;
    :goto_0
    return-object v6

    .line 22
    :catch_0
    move-exception v6

    .line 24
    const/4 v6, 0x0

    goto :goto_0
.end method
