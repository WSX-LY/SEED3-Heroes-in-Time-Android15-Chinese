.class Lcom/openfeint/api/resource/CloudStorage$1;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "CloudStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/CloudStorage;->list(Lcom/openfeint/api/resource/CloudStorage$ListCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cb:Lcom/openfeint/api/resource/CloudStorage$ListCB;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/openfeint/api/resource/CloudStorage$ListCB;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/api/resource/CloudStorage$1;->val$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/openfeint/api/resource/CloudStorage$1;->val$cb:Lcom/openfeint/api/resource/CloudStorage$ListCB;

    .line 73
    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "GET"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$1;->val$cb:Lcom/openfeint/api/resource/CloudStorage$ListCB;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$1;->val$cb:Lcom/openfeint/api/resource/CloudStorage$ListCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/CloudStorage$ListCB;->onFailure(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$1;->val$cb:Lcom/openfeint/api/resource/CloudStorage$ListCB;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$1;->val$cb:Lcom/openfeint/api/resource/CloudStorage$ListCB;

    check-cast p1, Ljava/util/List;

    .end local p1    # "responseBody":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/CloudStorage$ListCB;->onSuccess(Ljava/util/List;)V

    .line 112
    :cond_0
    return-void
.end method

.method protected parseJson([B)Ljava/lang/Object;
    .locals 9
    .param p1, "bodyStream"    # [B

    .prologue
    .line 79
    invoke-static {p1}, Lcom/openfeint/internal/Util;->getObjFromJson([B)Ljava/lang/Object;

    move-result-object v4

    .line 80
    .local v4, "o":Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v6, v4, Lcom/openfeint/internal/resource/ServerException;

    if-eqz v6, :cond_0

    .line 104
    .end local v4    # "o":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 83
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    invoke-direct {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;-><init>()V

    .line 85
    .local v3, "jsonFactory":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->createJsonParser([B)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v2

    .line 88
    .local v2, "jp":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v6, v7, :cond_1

    new-instance v6, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    const-string v7, "Couldn\'t find toplevel wrapper object."

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v2    # "jp":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/openfeint/api/resource/CloudStorage$1;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v4, Lcom/openfeint/internal/resource/ServerException;

    .end local v4    # "o":Ljava/lang/Object;
    const-string v6, "JSONError"

    const-string v7, "Unexpected response format"

    invoke-direct {v4, v6, v7}, Lcom/openfeint/internal/resource/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "jp":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v6, v7, :cond_2

    new-instance v6, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    const-string v7, "Couldn\'t find toplevel wrapper object."

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v6

    .line 90
    :cond_2
    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "hopefullyCloudStorages":Ljava/lang/String;
    const-string v6, "save_cards"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    const-string v7, "Couldn\'t find toplevel wrapper object."

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v6

    .line 92
    :cond_3
    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v6, v7, :cond_4

    new-instance v6, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    const-string v7, "Couldn\'t find savecard array."

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v6

    .line 93
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v5, "rv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v6, v7, :cond_5

    move-object v4, v5

    .line 99
    goto :goto_0

    .line 95
    :cond_5
    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v6, v7, :cond_6

    new-instance v6, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    const-string v7, "Unexpected non-string in savecard array."

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v6

    .line 96
    :cond_6
    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/openfeint/api/resource/CloudStorage$1;->val$path:Ljava/lang/String;

    return-object v0
.end method

.method public wantsLogin()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method
