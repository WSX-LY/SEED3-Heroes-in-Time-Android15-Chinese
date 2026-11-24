.class public Lcom/openfeint/internal/Encryption;
.super Ljava/lang/Object;
.source "Encryption.java"


# static fields
.field private static final INSTANCE:Ljava/lang/String; = "PBEWithSHA256And256BitAES-CBC-BC"

.field private static final SALT_ITERATIONS:I = 0xa

.field private static final SALT_LENGTH:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Encryption"

.field private static secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/io/File;)Ljava/io/InputStream;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/openfeint/internal/Encryption;->decryptionWrap(Ljava/io/InputStream;)Ljavax/crypto/CipherInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static decrypt([B)[B
    .locals 2
    .param p0, "input"    # [B

    .prologue
    .line 115
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lcom/openfeint/internal/Encryption;->decryptionWrap(Ljava/io/InputStream;)Ljavax/crypto/CipherInputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/openfeint/internal/Util;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 117
    :goto_0
    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decryptFile(Ljava/lang/String;)[B
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/openfeint/internal/Encryption;->decrypt(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/Util;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptionWrap(Ljava/io/InputStream;)Ljavax/crypto/CipherInputStream;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/16 v5, 0xa

    .line 55
    const/16 v4, 0xa

    :try_start_0
    new-array v3, v4, [B

    .line 56
    .local v3, "salt":[B
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Couldn\'t read entire salt"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v3    # "salt":[B
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Encryption"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v4, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v4

    .line 58
    .restart local v3    # "salt":[B
    :cond_0
    :try_start_1
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 59
    .local v2, "pbeParamSpec":Ljavax/crypto/spec/PBEParameterSpec;
    const-string v4, "PBEWithSHA256And256BitAES-CBC-BC"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 60
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    sget-object v5, Lcom/openfeint/internal/Encryption;->secretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v4, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 62
    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-direct {v4, p0, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/openfeint/internal/Encryption;->encryptionWrap(Ljava/io/OutputStream;)Ljavax/crypto/CipherOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt([BLjava/lang/String;)Z
    .locals 2
    .param p0, "in"    # [B
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    invoke-static {p1}, Lcom/openfeint/internal/Encryption;->encrypt(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 124
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    .line 125
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    const/4 v1, 0x1

    .line 130
    .end local v0    # "os":Ljava/io/OutputStream;
    :goto_0
    return v1

    .line 127
    :catch_0
    move-exception v1

    .line 130
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static encrypt([B)[B
    .locals 4
    .param p0, "input"    # [B

    .prologue
    .line 139
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 140
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Lcom/openfeint/internal/Encryption;->encryptionWrap(Ljava/io/OutputStream;)Ljavax/crypto/CipherOutputStream;

    move-result-object v2

    .line 141
    .local v2, "enc":Ljavax/crypto/CipherOutputStream;
    invoke-virtual {v2, p0}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 142
    invoke-virtual {v2}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 143
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 145
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "enc":Ljavax/crypto/CipherOutputStream;
    :goto_0
    return-object v3

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static encryptionWrap(Ljava/io/OutputStream;)Ljavax/crypto/CipherOutputStream;
    .locals 6
    .param p0, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 38
    const/16 v4, 0xa

    :try_start_0
    new-array v3, v4, [B

    .line 39
    .local v3, "salt":[B
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 40
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 42
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 43
    .local v2, "pbeParamSpec":Ljavax/crypto/spec/PBEParameterSpec;
    const-string v4, "PBEWithSHA256And256BitAES-CBC-BC"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 44
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    sget-object v5, Lcom/openfeint/internal/Encryption;->secretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v4, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 46
    new-instance v4, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v4, p0, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v2    # "pbeParamSpec":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3    # "salt":[B
    :goto_0
    return-object v4

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Encryption"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static init(Ljava/lang/String;)Z
    .locals 10
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 75
    :try_start_0
    new-instance v7, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-direct {v7, v9}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 76
    .local v7, "pbeKeySpec":Ljavax/crypto/spec/PBEKeySpec;
    const-string v9, "PBEWithSHA256And256BitAES-CBC-BC"

    invoke-static {v9}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    .line 77
    .local v6, "keyFac":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v6, v7}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v9

    sput-object v9, Lcom/openfeint/internal/Encryption;->secretKey:Ljavax/crypto/SecretKey;

    .line 80
    const-string v9, "PBEWithSHA256And256BitAES-CBC-BC"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 82
    .local v8, "testString":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Lcom/openfeint/internal/Encryption;->encryptionWrap(Ljava/io/OutputStream;)Ljavax/crypto/CipherOutputStream;

    move-result-object v2

    .line 84
    .local v2, "cos":Ljavax/crypto/CipherOutputStream;
    invoke-virtual {v2, v8}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 85
    invoke-virtual {v2}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 86
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 87
    .local v5, "encryptedContents":[B
    array-length v9, v5

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/Exception;

    invoke-direct {v9}, Ljava/lang/Exception;-><init>()V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "cos":Ljavax/crypto/CipherOutputStream;
    .end local v5    # "encryptedContents":[B
    .end local v6    # "keyFac":Ljavax/crypto/SecretKeyFactory;
    .end local v7    # "pbeKeySpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v8    # "testString":[B
    :catch_0
    move-exception v4

    .line 94
    .local v4, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    sput-object v9, Lcom/openfeint/internal/Encryption;->secretKey:Ljavax/crypto/SecretKey;

    .line 95
    const/4 v9, 0x0

    .line 98
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    return v9

    .line 89
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "cos":Ljavax/crypto/CipherOutputStream;
    .restart local v5    # "encryptedContents":[B
    .restart local v6    # "keyFac":Ljavax/crypto/SecretKeyFactory;
    .restart local v7    # "pbeKeySpec":Ljavax/crypto/spec/PBEKeySpec;
    .restart local v8    # "testString":[B
    :cond_0
    :try_start_1
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v9}, Lcom/openfeint/internal/Encryption;->decryptionWrap(Ljava/io/InputStream;)Ljavax/crypto/CipherInputStream;

    move-result-object v1

    .line 90
    .local v1, "cis":Ljavax/crypto/CipherInputStream;
    invoke-static {v1}, Lcom/openfeint/internal/Util;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 91
    .local v3, "decryptedContents":[B
    invoke-static {v3, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/Exception;

    invoke-direct {v9}, Ljava/lang/Exception;-><init>()V

    throw v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    :cond_1
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public static initialized()Z
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/openfeint/internal/Encryption;->secretKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
