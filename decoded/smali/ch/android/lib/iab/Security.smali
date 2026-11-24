.class Lch/android/lib/iab/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/android/lib/iab/Security$VerifiedPurchase;
    }
.end annotation


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "Security"

.field private static sKnownNonces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lch/android/lib/iab/Security;->RANDOM:Ljava/security/SecureRandom;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lch/android/lib/iab/Security;->sKnownNonces:Ljava/util/HashSet;

    .line 37
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateNonce()J
    .locals 4

    .prologue
    .line 79
    sget-object v2, Lch/android/lib/iab/Security;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 80
    .local v0, "nonce":J
    sget-object v2, Lch/android/lib/iab/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    return-wide v0
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    .line 259
    :try_start_0
    invoke-static {p0}, Lch/android/lib/iab/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 260
    .local v0, "decodedKey":[B
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 261
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lch/android/lib/iab/utils/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    return-object v3

    .line 262
    .end local v0    # "decodedKey":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 264
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 265
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "Security"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 267
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v1

    .line 268
    .local v1, "e":Lch/android/lib/iab/utils/Base64DecoderException;
    const-string v3, "Security"

    const-string v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static isNonceKnown(J)Z
    .locals 2
    .param p0, "nonce"    # J

    .prologue
    .line 89
    sget-object v0, Lch/android/lib/iab/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeNonce(J)V
    .locals 2
    .param p0, "nonce"    # J

    .prologue
    .line 85
    sget-object v0, Lch/android/lib/iab/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 284
    const-string v3, "Security"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "signature: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :try_start_0
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 289
    .local v1, "sig":Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 290
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update([B)V

    .line 291
    invoke-static {p2}, Lch/android/lib/iab/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 292
    const-string v3, "Security"

    const-string v4, "Signature verification failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lch/android/lib/iab/utils/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 305
    .end local v1    # "sig":Ljava/security/Signature;
    :goto_0
    return v2

    .line 295
    .restart local v1    # "sig":Ljava/security/Signature;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "Security"

    const-string v4, "NoSuchAlgorithmException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 299
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v3, "Security"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 301
    .local v0, "e":Ljava/security/SignatureException;
    const-string v3, "Security"

    const-string v4, "Signature exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_3
    move-exception v0

    .line 303
    .local v0, "e":Lch/android/lib/iab/utils/Base64DecoderException;
    const-string v3, "Security"

    const-string v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 29
    .param p0, "signedData"    # Ljava/lang/String;
    .param p1, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lch/android/lib/iab/Security$VerifiedPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 106
    const-string v3, "Security"

    const-string v27, "data is null"

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/16 v24, 0x0

    .line 247
    :goto_0
    return-object v24

    .line 110
    :cond_0
    const-string v3, "Security"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "signedData: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/16 v26, 0x0

    .line 113
    .local v26, "verified":Z
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 129
    const/16 v3, 0x188

    new-array v13, v3, [C

    fill-array-data v13, :array_0

    .line 180
    .local v13, "chs":[C
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    .local v23, "publicKeyBuffer":Ljava/lang/StringBuffer;
    array-length v0, v13

    move/from16 v27, v0

    const/4 v3, 0x0

    :goto_1
    move/from16 v0, v27

    if-lt v3, v0, :cond_1

    .line 185
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 187
    .local v11, "base64EncodedPublicKey":Ljava/lang/String;
    invoke-static {v11}, Lch/android/lib/iab/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v19

    .line 188
    .local v19, "key":Ljava/security/PublicKey;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lch/android/lib/iab/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v26

    .line 189
    if-nez v26, :cond_2

    .line 190
    const-string v3, "Security"

    const-string v27, "signature does not match data."

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/16 v24, 0x0

    goto :goto_0

    .line 182
    .end local v11    # "base64EncodedPublicKey":Ljava/lang/String;
    .end local v19    # "key":Ljava/security/PublicKey;
    :cond_1
    aget-char v12, v13, v3

    .line 183
    .local v12, "ch":C
    const v28, 0xffff

    xor-int v28, v28, v12

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 196
    .end local v12    # "ch":C
    .end local v13    # "chs":[C
    .end local v23    # "publicKeyBuffer":Ljava/lang/StringBuffer;
    :cond_2
    const/16 v18, 0x0

    .line 197
    .local v18, "jTransactionsArray":Lorg/json/JSONArray;
    const/16 v22, 0x0

    .line 198
    .local v22, "numTransactions":I
    const-wide/16 v20, 0x0

    .line 200
    .local v20, "nonce":J
    :try_start_0
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    .local v17, "jObject":Lorg/json/JSONObject;
    const-string v3, "nonce"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 204
    const-string v3, "orders"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 205
    if-eqz v18, :cond_3

    .line 206
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 212
    :cond_3
    invoke-static/range {v20 .. v21}, Lch/android/lib/iab/Security;->isNonceKnown(J)Z

    move-result v3

    if-nez v3, :cond_4

    .line 213
    const-string v3, "Security"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Nonce not found: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 208
    .end local v17    # "jObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v14

    .line 209
    .local v14, "e":Lorg/json/JSONException;
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 217
    .end local v14    # "e":Lorg/json/JSONException;
    .restart local v17    # "jObject":Lorg/json/JSONObject;
    :cond_4
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v24, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lch/android/lib/iab/Security$VerifiedPurchase;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move/from16 v0, v22

    if-lt v15, v0, :cond_5

    .line 246
    invoke-static/range {v20 .. v21}, Lch/android/lib/iab/Security;->removeNonce(J)V

    goto/16 :goto_0

    .line 220
    :cond_5
    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 221
    .local v16, "jElement":Lorg/json/JSONObject;
    const-string v3, "purchaseState"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 222
    .local v25, "response":I
    invoke-static/range {v25 .. v25}, Lch/android/lib/iab/Consts$PurchaseState;->valueOf(I)Lch/android/lib/iab/Consts$PurchaseState;

    move-result-object v4

    .line 223
    .local v4, "purchaseState":Lch/android/lib/iab/Consts$PurchaseState;
    const-string v3, "productId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, "productId":Ljava/lang/String;
    const-string v3, "packageName"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    const-string v3, "purchaseTime"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 227
    .local v8, "purchaseTime":J
    const-string v3, "orderId"

    const-string v27, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "orderId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 229
    .local v5, "notifyId":Ljava/lang/String;
    const-string v3, "notificationId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 230
    const-string v3, "notificationId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 232
    :cond_6
    const-string v3, "developerPayload"

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 236
    .local v10, "developerPayload":Ljava/lang/String;
    sget-object v3, Lch/android/lib/iab/Consts$PurchaseState;->PURCHASED:Lch/android/lib/iab/Consts$PurchaseState;

    if-ne v4, v3, :cond_7

    if-nez v26, :cond_7

    .line 219
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 239
    :cond_7
    new-instance v3, Lch/android/lib/iab/Security$VerifiedPurchase;

    .line 240
    invoke-direct/range {v3 .. v10}, Lch/android/lib/iab/Security$VerifiedPurchase;-><init>(Lch/android/lib/iab/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 239
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 242
    .end local v4    # "purchaseState":Lch/android/lib/iab/Consts$PurchaseState;
    .end local v5    # "notifyId":Ljava/lang/String;
    .end local v6    # "productId":Ljava/lang/String;
    .end local v7    # "orderId":Ljava/lang/String;
    .end local v8    # "purchaseTime":J
    .end local v10    # "developerPayload":Ljava/lang/String;
    .end local v16    # "jElement":Lorg/json/JSONObject;
    .end local v25    # "response":I
    :catch_1
    move-exception v14

    .line 243
    .restart local v14    # "e":Lorg/json/JSONException;
    const-string v3, "Security"

    const-string v27, "JSON exception: "

    move-object/from16 v0, v27

    invoke-static {v3, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 129
    nop

    :array_0
    .array-data 2
        -0x4es
        -0x4as
        -0x4as
        -0x43s
        -0x4as
        -0x6bs
        -0x42s
        -0x4fs
        -0x43s
        -0x68s
        -0x6cs
        -0x72s
        -0x69s
        -0x6cs
        -0x6as
        -0x48s
        -0x3as
        -0x78s
        -0x31s
        -0x43s
        -0x42s
        -0x52s
        -0x46s
        -0x47s
        -0x42s
        -0x42s
        -0x50s
        -0x44s
        -0x42s
        -0x52s
        -0x39s
        -0x42s
        -0x4es
        -0x4as
        -0x4as
        -0x43s
        -0x44s
        -0x68s
        -0x4cs
        -0x44s
        -0x42s
        -0x52s
        -0x46s
        -0x42s
        -0x75s
        -0x42s
        -0x38s
        -0x31s
        -0x75s
        -0x36s
        -0x54s
        -0x34s
        -0x30s
        -0x42s
        -0x36s
        -0x46s
        -0x4cs
        -0x71s
        -0x68s
        -0x70s
        -0x48s
        -0x65s
        -0x56s
        -0x6as
        -0x37s
        -0x6as
        -0x77s
        -0x50s
        -0x42s
        -0x67s
        -0x31s
        -0x62s
        -0x6bs
        -0x30s
        -0x5bs
        -0x54s
        -0x5as
        -0x38s
        -0x33s
        -0x51s
        -0x6ds
        -0x35s
        -0x38s
        -0x48s
        -0x54s
        -0x47s
        -0x31s
        -0x42s
        -0x63s
        -0x5as
        -0x2cs
        -0x74s
        -0x73s
        -0x36s
        -0x6bs
        -0x33s
        -0x6ds
        -0x73s
        -0x4ds
        -0x35s
        -0x48s
        -0x48s
        -0x42s
        -0x70s
        -0x2cs
        -0x45s
        -0x6cs
        -0x36s
        -0x32s
        -0x65s
        -0x6ds
        -0x59s
        -0x62s
        -0x52s
        -0x69s
        -0x5bs
        -0x36s
        -0x4fs
        -0x4ds
        -0x37s
        -0x39s
        -0x74s
        -0x71s
        -0x76s
        -0x54s
        -0x33s
        -0x5bs
        -0x6fs
        -0x44s
        -0x4fs
        -0x6ds
        -0x33s
        -0x30s
        -0x75s
        -0x50s
        -0x75s
        -0x53s
        -0x30s
        -0x45s
        -0x46s
        -0x57s
        -0x4es
        -0x55s
        -0x67s
        -0x34s
        -0x32s
        -0x6fs
        -0x78s
        -0x5as
        -0x3as
        -0x5bs
        -0x54s
        -0x52s
        -0x5bs
        -0x75s
        -0x34s
        -0x30s
        -0x71s
        -0x48s
        -0x6fs
        -0x69s
        -0x4es
        -0x4as
        -0x33s
        -0x54s
        -0x52s
        -0x79s
        -0x44s
        -0x4fs
        -0x32s
        -0x68s
        -0x47s
        -0x5bs
        -0x4as
        -0x31s
        -0x70s
        -0x4es
        -0x52s
        -0x74s
        -0x76s
        -0x4cs
        -0x6es
        -0x74s
        -0x64s
        -0x34s
        -0x49s
        -0x70s
        -0x62s
        -0x75s
        -0x52s
        -0x66s
        -0x5as
        -0x4fs
        -0x37s
        -0x75s
        -0x58s
        -0x32s
        -0x65s
        -0x5bs
        -0x36s
        -0x42s
        -0x4fs
        -0x5as
        -0x6cs
        -0x4fs
        -0x70s
        -0x5bs
        -0x50s
        -0x56s
        -0x78s
        -0x62s
        -0x79s
        -0x69s
        -0x58s
        -0x39s
        -0x76s
        -0x70s
        -0x4fs
        -0x6as
        -0x7bs
        -0x55s
        -0x59s
        -0x43s
        -0x50s
        -0x49s
        -0x4ds
        -0x2cs
        -0x68s
        -0x50s
        -0x69s
        -0x2cs
        -0x45s
        -0x78s
        -0x49s
        -0x75s
        -0x72s
        -0x68s
        -0x5as
        -0x3as
        -0x5bs
        -0x50s
        -0x48s
        -0x4cs
        -0x51s
        -0x74s
        -0x54s
        -0x6as
        -0x39s
        -0x65s
        -0x4as
        -0x49s
        -0x49s
        -0x53s
        -0x6bs
        -0x34s
        -0x74s
        -0x42s
        -0x33s
        -0x44s
        -0x5bs
        -0x75s
        -0x42s
        -0x6fs
        -0x38s
        -0x73s
        -0x30s
        -0x74s
        -0x63s
        -0x4fs
        -0x6bs
        -0x31s
        -0x46s
        -0x4bs
        -0x4fs
        -0x68s
        -0x6es
        -0x48s
        -0x3as
        -0x5as
        -0x59s
        -0x38s
        -0x58s
        -0x71s
        -0x6ds
        -0x7bs
        -0x56s
        -0x31s
        -0x6bs
        -0x6bs
        -0x44s
        -0x4ds
        -0x3as
        -0x72s
        -0x48s
        -0x43s
        -0x37s
        -0x35s
        -0x39s
        -0x2cs
        -0x34s
        -0x72s
        -0x56s
        -0x35s
        -0x4ds
        -0x48s
        -0x6cs
        -0x34s
        -0x45s
        -0x38s
        -0x70s
        -0x5bs
        -0x69s
        -0x70s
        -0x38s
        -0x42s
        -0x64s
        -0x45s
        -0x46s
        -0x6bs
        -0x6es
        -0x6es
        -0x79s
        -0x42s
        -0x4es
        -0x49s
        -0x4fs
        -0x7as
        -0x5as
        -0x70s
        -0x64s
        -0x4as
        -0x35s
        -0x43s
        -0x70s
        -0x7bs
        -0x5bs
        -0x74s
        -0x2cs
        -0x4cs
        -0x67s
        -0x75s
        -0x65s
        -0x4bs
        -0x5as
        -0x6fs
        -0x54s
        -0x30s
        -0x75s
        -0x7as
        -0x6ds
        -0x65s
        -0x4bs
        -0x4fs
        -0x47s
        -0x69s
        -0x51s
        -0x50s
        -0x57s
        -0x46s
        -0x54s
        -0x62s
        -0x75s
        -0x64s
        -0x30s
        -0x4es
        -0x6bs
        -0x42s
        -0x69s
        -0x44s
        -0x5bs
        -0x47s
        -0x37s
        -0x7as
        -0x77s
        -0x59s
        -0x4es
        -0x35s
        -0x43s
        -0x52s
        -0x39s
        -0x73s
        -0x78s
        -0x4ds
        -0x64s
        -0x65s
        -0x52s
        -0x4as
        -0x45s
        -0x42s
        -0x52s
        -0x42s
        -0x43s
    .end array-data
.end method
