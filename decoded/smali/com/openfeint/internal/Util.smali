.class public Lcom/openfeint/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Util"

.field public static final VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/openfeint/internal/Util;->VERSION:I

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64HMACSHA1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "rawKey"    # Ljava/lang/String;
    .param p1, "rawString"    # Ljava/lang/String;

    .prologue
    .line 302
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 303
    :cond_0
    const/4 v3, 0x0

    .line 316
    :goto_0
    return-object v3

    .line 305
    :cond_1
    const/4 v3, 0x0

    .line 307
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "HmacSHA1"

    invoke-direct {v1, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 308
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "HmacSHA1"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 309
    .local v2, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 310
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 311
    .local v0, "bytes":[B
    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0

    .line 314
    .end local v0    # "bytes":[B
    .end local v1    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 313
    :catch_1
    move-exception v5

    goto :goto_0

    .line 312
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method public static compareVersionStrings(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p0, "lhs"    # Ljava/lang/String;
    .param p1, "rhs"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v9, "\\."

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 49
    .local v6, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "lhsa":[Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, "rhsa":[Ljava/lang/String;
    array-length v9, v5

    array-length v10, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 52
    .local v3, "lb":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 72
    array-length v9, v5

    array-length v10, v7

    sub-int v0, v9, v10

    :cond_0
    :goto_1
    return v0

    .line 53
    :cond_1
    const/4 v4, 0x0

    .local v4, "leftAsInt":I
    const/4 v8, 0x0

    .line 55
    .local v8, "rightAsInt":I
    :try_start_0
    aget-object v9, v5, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 62
    :try_start_1
    aget-object v9, v7, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 68
    sub-int v0, v4, v8

    .line 69
    .local v0, "delta":I
    if-nez v0, :cond_0

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "delta":I
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v9, "Util"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "compareVersionStrings(\""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\",\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"): Bad version component "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v5, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, -0x1

    goto :goto_1

    .line 63
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 64
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string v9, "Util"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "compareVersionStrings(\""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\",\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"): Bad version component "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v5, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p0, "srcDir"    # Ljava/io/File;
    .param p1, "dstDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 114
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "children":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 123
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 116
    .restart local v0    # "children":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_1
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    invoke-static {v2, v3}, Lcom/openfeint/internal/Util;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    invoke-static {p0, p1}, Lcom/openfeint/internal/Util;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 127
    .local v0, "in":Ljava/io/InputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 128
    .local v1, "out":Ljava/io/OutputStream;
    invoke-static {v0, v1}, Lcom/openfeint/internal/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 129
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {p0, p1}, Lcom/openfeint/internal/Util;->copyStreamAndLeaveInputOpen(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 143
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 144
    return-void
.end method

.method public static copyStreamAndLeaveInputOpen(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    const/16 v2, 0x4000

    new-array v0, v2, [B

    .line 135
    .local v0, "copyBuffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-gtz v1, :cond_0

    .line 138
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 139
    return-void

    .line 136
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static createSymbolic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "dst"    # Ljava/lang/String;
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ln -s "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/Util;->run(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static deleteFiles(Ljava/io/File;)V
    .locals 5
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 96
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "files":[Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 103
    .end local v1    # "files":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 104
    return-void

    .line 98
    .restart local v1    # "files":[Ljava/lang/String;
    :cond_1
    aget-object v2, v1, v3

    .line 99
    .local v2, "name":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .local v0, "child":Ljava/io/File;
    invoke-static {v0}, Lcom/openfeint/internal/Util;->deleteFiles(Ljava/io/File;)V

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 4

    .prologue
    .line 167
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 168
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 169
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 170
    return-object v0
.end method

.method public static getDpiName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 289
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 290
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 291
    .local v1, "winMan":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 292
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 293
    const-string v2, "udpi"

    .line 297
    :goto_0
    return-object v2

    .line 294
    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    .line 295
    const-string v2, "hdpi"

    goto :goto_0

    .line 297
    :cond_1
    const-string v2, "mdpi"

    goto :goto_0
.end method

.method public static getObjFromJson([B)Ljava/lang/Object;
    .locals 6
    .param p0, "json"    # [B

    .prologue
    .line 264
    new-instance v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    invoke-direct {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;-><init>()V

    .line 266
    .local v3, "jsonFactory":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    :try_start_0
    invoke-virtual {v3, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->createJsonParser([B)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 267
    .local v1, "jp":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    new-instance v2, Lcom/openfeint/internal/JsonResourceParser;

    invoke-direct {v2, v1}, Lcom/openfeint/internal/JsonResourceParser;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V

    .line 268
    .local v2, "jrp":Lcom/openfeint/internal/JsonResourceParser;
    invoke-virtual {v2}, Lcom/openfeint/internal/JsonResourceParser;->parse()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 272
    .end local v1    # "jp":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .end local v2    # "jrp":Lcom/openfeint/internal/JsonResourceParser;
    :goto_0
    return-object v4

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Util"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getObjFromJson([BLcom/openfeint/internal/resource/ResourceClass;)Ljava/lang/Object;
    .locals 7
    .param p0, "json"    # [B
    .param p1, "resourceClass"    # Lcom/openfeint/internal/resource/ResourceClass;

    .prologue
    .line 276
    new-instance v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    invoke-direct {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;-><init>()V

    .line 277
    .local v3, "jsonFactory":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    const-string v4, "Util"

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4, v5}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :try_start_0
    invoke-virtual {v3, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->createJsonParser([B)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 280
    .local v1, "jp":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    new-instance v2, Lcom/openfeint/internal/JsonResourceParser;

    invoke-direct {v2, v1}, Lcom/openfeint/internal/JsonResourceParser;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V

    .line 281
    .local v2, "jrp":Lcom/openfeint/internal/JsonResourceParser;
    invoke-virtual {v2, p1}, Lcom/openfeint/internal/JsonResourceParser;->parse(Lcom/openfeint/internal/resource/ResourceClass;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 285
    .end local v1    # "jp":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .end local v2    # "jrp":Lcom/openfeint/internal/JsonResourceParser;
    :goto_0
    return-object v4

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "json error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getObjFromJsonFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 247
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 248
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/openfeint/internal/Util;->getObjFromJsonStream(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 251
    .end local v0    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 249
    :catch_0
    move-exception v1

    .line 251
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getObjFromJsonStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    invoke-direct {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;-><init>()V

    .line 256
    .local v2, "jsonFactory":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    invoke-virtual {v2, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 257
    .local v0, "jp":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    new-instance v1, Lcom/openfeint/internal/JsonResourceParser;

    invoke-direct {v1, v0}, Lcom/openfeint/internal/JsonResourceParser;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V

    .line 258
    .local v1, "jrp":Lcom/openfeint/internal/JsonResourceParser;
    invoke-virtual {v1}, Lcom/openfeint/internal/JsonResourceParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 259
    .local v3, "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 260
    return-object v3
.end method

.method public static hexSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "rawString"    # Ljava/lang/String;

    .prologue
    .line 320
    if-nez p0, :cond_0

    .line 321
    const/4 v2, 0x0

    .line 331
    :goto_0
    return-object v2

    .line 323
    :cond_0
    const/4 v2, 0x0

    .line 325
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 326
    .local v1, "md":Ljava/security/MessageDigest;
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 327
    .local v0, "bytes":[B
    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_0

    .line 329
    .end local v0    # "bytes":[B
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 328
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static isPadVersion()Z
    .locals 2

    .prologue
    .line 42
    sget v0, Lcom/openfeint/internal/Util;->VERSION:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSymblic(Ljava/io/File;)Z
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    :goto_0
    return v0

    .line 189
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static moveWebCache(Landroid/content/Context;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 205
    invoke-static {p0}, Lcom/openfeint/internal/Util;->noSdcardPermission(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "webviewCache"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    .local v0, "cache":Ljava/io/File;
    invoke-static {v0}, Lcom/openfeint/internal/Util;->isSymblic(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 211
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "state":Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "openfeint/cache"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 216
    .local v1, "sdcard":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 217
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 219
    :cond_2
    invoke-static {v0}, Lcom/openfeint/internal/Util;->deleteFiles(Ljava/io/File;)V

    .line 220
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/openfeint/internal/Util;->createSymbolic(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static noPermission(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 224
    const/4 v0, -0x1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static noSdcardPermission()Z
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/Util;->noSdcardPermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static noSdcardPermission(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 233
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, p0}, Lcom/openfeint/internal/Util;->noPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static readWholeFile(Ljava/lang/String;)[B
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v3, v4

    .line 239
    .local v3, "len":I
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 240
    .local v2, "in":Ljava/io/InputStream;
    new-array v0, v3, [B

    .line 241
    .local v0, "b":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 242
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 243
    return-object v0
.end method

.method public static run(Ljava/lang/String;)V
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 175
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 176
    const-string v1, "Util"

    invoke-static {v1, p0}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Util"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveFile([BLjava/lang/String;)V
    .locals 3
    .param p0, "in"    # [B
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 149
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 150
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 151
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 152
    return-void
.end method

.method public static saveStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {p0, p1}, Lcom/openfeint/internal/Util;->saveStreamAndLeaveInputOpen(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 164
    return-void
.end method

.method public static saveStreamAndLeaveInputOpen(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 157
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 158
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-static {p0, v1}, Lcom/openfeint/internal/Util;->copyStreamAndLeaveInputOpen(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 159
    return-void
.end method

.method public static sdcardReady(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-static {p0}, Lcom/openfeint/internal/Util;->noSdcardPermission(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setOrientation(Landroid/app/Activity;)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 76
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getSettings()Ljava/util/Map;

    move-result-object v1

    const-string v2, "RequestedOrientation"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 78
    .local v0, "orientation":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public static final toByteArray(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/16 v0, 0x1000

    .line 85
    .local v0, "CHUNK_SIZE":I
    const/16 v4, 0x1000

    new-array v3, v4, [B

    .line 86
    .local v3, "readBuffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    .local v1, "accumulator":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    if-gtz v2, :cond_0

    .line 91
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 92
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 89
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method
