.class public Lcom/openfeint/internal/JsonResourceParser;
.super Ljava/lang/Object;
.source "JsonResourceParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JsonResourceParser"


# instance fields
.field private mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V
    .locals 0
    .param p1, "parser"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    .line 26
    return-void
.end method

.method private parseArray()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openfeint/internal/resource/Resource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v1, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 161
    .local v0, "tok":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 167
    :goto_0
    return-object v1

    .line 163
    :cond_0
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    .line 164
    new-instance v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    const-string v2, "Wanted START_ARRAY"

    iget-object v3, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCurrentLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v1

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/openfeint/internal/JsonResourceParser;->parseOpenedArray()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method private parseHash()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v1, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 129
    .local v0, "tok":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 132
    :goto_0
    return-object v1

    .line 130
    :cond_0
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    .line 131
    new-instance v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    const-string v2, "Expected START_OBJECT"

    iget-object v3, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCurrentLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v1

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/openfeint/internal/JsonResourceParser;->parseOpenedHash()Ljava/util/HashMap;

    move-result-object v1

    goto :goto_0
.end method

.method private parseOpenedArray()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openfeint/internal/resource/Resource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/openfeint/internal/resource/Resource;>;"
    :goto_0
    iget-object v1, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    .line 178
    return-object v0

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/openfeint/internal/JsonResourceParser;->parseResource()Lcom/openfeint/internal/resource/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private parseOpenedHash()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v1, "resources":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    iget-object v3, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_0

    .line 144
    return-object v1

    .line 139
    :cond_0
    iget-object v3, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "className":Ljava/lang/String;
    iget-object v3, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 141
    iget-object v3, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v2

    .line 142
    .local v2, "v":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private parseOpenedResource(Lcom/openfeint/internal/resource/ResourceClass;)Lcom/openfeint/internal/resource/Resource;
    .locals 11
    .param p1, "resourceClass"    # Lcom/openfeint/internal/resource/ResourceClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/openfeint/internal/resource/ResourceClass;->factory()Lcom/openfeint/internal/resource/Resource;

    move-result-object v7

    .line 90
    .local v7, "resource":Lcom/openfeint/internal/resource/Resource;
    :goto_0
    iget-object v8, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v8

    sget-object v9, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v8, v9, :cond_0

    .line 121
    iget-object v8, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v8

    sget-object v9, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v8, v9, :cond_7

    .line 122
    new-instance v8, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Expected END_OBJECT of "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p1, Lcom/openfeint/internal/resource/ResourceClass;->mResourceName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v10}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCurrentLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v8

    .line 91
    :cond_0
    iget-object v8, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "name":Ljava/lang/String;
    iget-object v8, p1, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/openfeint/internal/resource/ResourceProperty;

    .line 93
    .local v5, "prop":Lcom/openfeint/internal/resource/ResourceProperty;
    if-nez v5, :cond_1

    .line 95
    iget-object v8, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 96
    iget-object v8, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    goto :goto_0

    .line 97
    :cond_1
    instance-of v8, v5, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;

    if-eqz v8, :cond_2

    move-object v4, v5

    .line 98
    check-cast v4, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;

    .line 99
    .local v4, "pprop":Lcom/openfeint/internal/resource/PrimitiveResourceProperty;
    iget-object v8, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 100
    iget-object v8, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v4, v7, v8}, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;->parse(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V

    goto :goto_0

    .line 101
    .end local v4    # "pprop":Lcom/openfeint/internal/resource/PrimitiveResourceProperty;
    :cond_2
    instance-of v8, v5, Lcom/openfeint/internal/resource/NestedResourceProperty;

    if-eqz v8, :cond_4

    move-object v3, v5

    .line 102
    check-cast v3, Lcom/openfeint/internal/resource/NestedResourceProperty;

    .line 103
    .local v3, "nprop":Lcom/openfeint/internal/resource/NestedResourceProperty;
    invoke-virtual {v3}, Lcom/openfeint/internal/resource/NestedResourceProperty;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcom/openfeint/internal/resource/Resource;->getKlass(Ljava/lang/Class;)Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v6

    .line 104
    .local v6, "rc":Lcom/openfeint/internal/resource/ResourceClass;
    if-eqz v6, :cond_3

    .line 105
    invoke-direct {p0, v6}, Lcom/openfeint/internal/JsonResourceParser;->parseResource(Lcom/openfeint/internal/resource/ResourceClass;)Lcom/openfeint/internal/resource/Resource;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/openfeint/internal/resource/NestedResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/resource/Resource;)V

    goto :goto_0

    .line 107
    :cond_3
    const-string v8, "JsonResourceParser"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "unknown "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/openfeint/internal/resource/NestedResourceProperty;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    .end local v3    # "nprop":Lcom/openfeint/internal/resource/NestedResourceProperty;
    .end local v6    # "rc":Lcom/openfeint/internal/resource/ResourceClass;
    :cond_4
    instance-of v8, v5, Lcom/openfeint/internal/resource/ArrayResourceProperty;

    if-eqz v8, :cond_5

    move-object v0, v5

    .line 110
    check-cast v0, Lcom/openfeint/internal/resource/ArrayResourceProperty;

    .line 111
    .local v0, "aprop":Lcom/openfeint/internal/resource/ArrayResourceProperty;
    invoke-direct {p0}, Lcom/openfeint/internal/JsonResourceParser;->parseArray()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/openfeint/internal/resource/ArrayResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Ljava/util/List;)V

    goto/16 :goto_0

    .line 112
    .end local v0    # "aprop":Lcom/openfeint/internal/resource/ArrayResourceProperty;
    :cond_5
    instance-of v8, v5, Lcom/openfeint/internal/resource/HashIntResourceProperty;

    if-eqz v8, :cond_6

    move-object v1, v5

    .line 113
    check-cast v1, Lcom/openfeint/internal/resource/HashIntResourceProperty;

    .line 114
    .local v1, "hprop":Lcom/openfeint/internal/resource/HashIntResourceProperty;
    invoke-direct {p0}, Lcom/openfeint/internal/JsonResourceParser;->parseHash()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/openfeint/internal/resource/HashIntResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 116
    .end local v1    # "hprop":Lcom/openfeint/internal/resource/HashIntResourceProperty;
    :cond_6
    const-string v8, "JsonResourceParser"

    const-string v9, "Totally don\'t know what to do about this property"

    invoke-static {v8, v9}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v8, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    goto/16 :goto_0

    .line 124
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "prop":Lcom/openfeint/internal/resource/ResourceProperty;
    :cond_7
    return-object v7
.end method

.method private parseResource()Lcom/openfeint/internal/resource/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v3, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_0

    new-instance v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    const-string v4, "Couldn\'t find wrapper object."

    iget-object v5, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v3

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->getKlass(Ljava/lang/String;)Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v1

    .line 151
    .local v1, "klass":Lcom/openfeint/internal/resource/ResourceClass;
    if-nez v1, :cond_1

    new-instance v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Don\'t know class \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v3

    .line 152
    :cond_1
    invoke-direct {p0, v1}, Lcom/openfeint/internal/JsonResourceParser;->parseResource(Lcom/openfeint/internal/resource/ResourceClass;)Lcom/openfeint/internal/resource/Resource;

    move-result-object v2

    .line 153
    .local v2, "rv":Lcom/openfeint/internal/resource/Resource;
    iget-object v3, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_2

    new-instance v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    const-string v4, "Expected only one k/v in wrapper object."

    iget-object v5, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v3

    .line 154
    :cond_2
    return-object v2
.end method

.method private parseResource(Lcom/openfeint/internal/resource/ResourceClass;)Lcom/openfeint/internal/resource/Resource;
    .locals 4
    .param p1, "resourceClass"    # Lcom/openfeint/internal/resource/ResourceClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v1, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 78
    .local v0, "tok":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 83
    :goto_0
    return-object v1

    .line 80
    :cond_0
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    .line 81
    new-instance v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected START_OBJECT of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/openfeint/internal/resource/ResourceClass;->mResourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCurrentLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v1

    .line 83
    :cond_1
    invoke-direct {p0, p1}, Lcom/openfeint/internal/JsonResourceParser;->parseOpenedResource(Lcom/openfeint/internal/resource/ResourceClass;)Lcom/openfeint/internal/resource/Resource;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public parse()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v5, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 31
    .local v1, "firstTok":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    if-nez v1, :cond_1

    .line 34
    const/4 v3, 0x0

    .line 58
    :cond_0
    return-object v3

    .line 37
    :cond_1
    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v1, v5, :cond_2

    new-instance v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    const-string v6, "Couldn\'t find toplevel wrapper object."

    iget-object v7, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v5

    .line 38
    :cond_2
    iget-object v5, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_3

    new-instance v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    const-string v6, "Couldn\'t find toplevel wrapper object."

    iget-object v7, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v5

    .line 39
    :cond_3
    iget-object v5, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "classOrArrayName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 43
    .local v3, "rv":Ljava/lang/Object;
    iget-object v5, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v4

    .line 44
    .local v4, "tok":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_4

    .line 46
    invoke-direct {p0}, Lcom/openfeint/internal/JsonResourceParser;->parseOpenedArray()Ljava/util/ArrayList;

    move-result-object v3

    .line 56
    .end local v3    # "rv":Ljava/lang/Object;
    :goto_0
    iget-object v5, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_0

    new-instance v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    const-string v6, "Expected only one k/v in toplevel wrapper object."

    iget-object v7, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v5

    .line 47
    .restart local v3    # "rv":Ljava/lang/Object;
    :cond_4
    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_6

    .line 49
    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->getKlass(Ljava/lang/String;)Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v2

    .line 50
    .local v2, "klass":Lcom/openfeint/internal/resource/ResourceClass;
    if-nez v2, :cond_5

    new-instance v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown toplevel class \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v5

    .line 51
    :cond_5
    invoke-direct {p0, v2}, Lcom/openfeint/internal/JsonResourceParser;->parseOpenedResource(Lcom/openfeint/internal/resource/ResourceClass;)Lcom/openfeint/internal/resource/Resource;

    move-result-object v3

    .local v3, "rv":Lcom/openfeint/internal/resource/Resource;
    goto :goto_0

    .line 53
    .end local v2    # "klass":Lcom/openfeint/internal/resource/ResourceClass;
    .local v3, "rv":Ljava/lang/Object;
    :cond_6
    new-instance v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    const-string v6, "Expected object or array at top level."

    iget-object v7, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v5
.end method

.method public parse(Lcom/openfeint/internal/resource/ResourceClass;)Ljava/lang/Object;
    .locals 4
    .param p1, "resourceClass"    # Lcom/openfeint/internal/resource/ResourceClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v1, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 64
    .local v0, "firstTok":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    if-nez v0, :cond_0

    .line 67
    const/4 v1, 0x0

    .line 71
    :goto_0
    return-object v1

    .line 70
    :cond_0
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    new-instance v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    const-string v2, "Couldn\'t find toplevel wrapper object."

    iget-object v3, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v1

    .line 71
    :cond_1
    invoke-direct {p0, p1}, Lcom/openfeint/internal/JsonResourceParser;->parseOpenedResource(Lcom/openfeint/internal/resource/ResourceClass;)Lcom/openfeint/internal/resource/Resource;

    move-result-object v1

    goto :goto_0
.end method
