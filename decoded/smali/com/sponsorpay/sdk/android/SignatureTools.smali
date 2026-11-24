.class public Lcom/sponsorpay/sdk/android/SignatureTools;
.super Ljava/lang/Object;
.source "SignatureTools.java"


# static fields
.field public static final NO_SHA1_RESULT:Ljava/lang/String; = "nosha1"

.field private static final SHA1_ALGORITHM:Ljava/lang/String; = "SHA1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArray2Hex([B)Ljava/lang/String;
    .locals 8
    .param p0, "hash"    # [B

    .prologue
    const/4 v3, 0x0

    .line 92
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 93
    .local v1, "formatter":Ljava/util/Formatter;
    array-length v4, p0

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 96
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 93
    :cond_0
    aget-byte v0, p0, v2

    .line 94
    .local v0, "b":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static generateSignatureForParameters(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "secretToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 46
    .local v2, "orderedKeys":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 50
    .local v3, "orderedKeysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v0, ""

    .line 52
    .local v0, "concatenatedOrderedParams":Ljava/lang/String;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 59
    invoke-static {v0, p1}, Lcom/sponsorpay/sdk/android/SignatureTools;->generateSignatureForString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 53
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 54
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 56
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%s=%s&"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static generateSignatureForString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "secretToken"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "textPlusKey":Ljava/lang/String;
    const-string v1, "nosha1"

    .line 79
    .local v1, "digestString":Ljava/lang/String;
    :try_start_0
    const-string v5, "SHA1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 80
    .local v3, "sha1":Ljava/security/MessageDigest;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 81
    .local v0, "digestBytes":[B
    invoke-static {v0}, Lcom/sponsorpay/sdk/android/SignatureTools;->byteArray2Hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    .end local v0    # "digestBytes":[B
    .end local v3    # "sha1":Ljava/security/MessageDigest;
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "UrlBuilder"

    const-string v6, "SHA1 algorithm not available."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method
