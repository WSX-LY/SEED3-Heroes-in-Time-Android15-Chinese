.class public abstract Lcom/openfeint/internal/resource/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Resource"

.field private static sNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/openfeint/internal/resource/ResourceClass;",
            ">;"
        }
    .end annotation
.end field

.field private static sSubclassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/openfeint/internal/resource/Resource;",
            ">;",
            "Lcom/openfeint/internal/resource/ResourceClass;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/openfeint/internal/resource/Resource;->sSubclassMap:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/openfeint/internal/resource/Resource;->sNameMap:Ljava/util/HashMap;

    .line 165
    invoke-static {}, Lcom/openfeint/internal/resource/Resource;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 166
    invoke-static {}, Lcom/openfeint/internal/resource/ServerException;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 167
    invoke-static {}, Lcom/openfeint/internal/resource/Device;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 168
    invoke-static {}, Lcom/openfeint/internal/resource/ParentalControl;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 169
    invoke-static {}, Lcom/openfeint/api/resource/ServerTimestamp;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 170
    invoke-static {}, Lcom/openfeint/internal/resource/BlobUploadParameters;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 172
    invoke-static {}, Lcom/openfeint/api/resource/Achievement;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 173
    invoke-static {}, Lcom/openfeint/api/resource/Leaderboard;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 174
    invoke-static {}, Lcom/openfeint/api/resource/Score;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 175
    invoke-static {}, Lcom/openfeint/api/resource/User;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 178
    invoke-static {}, Lcom/openfeint/api/resource/CurrentUser;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKlass(Ljava/lang/Class;)Lcom/openfeint/internal/resource/ResourceClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/openfeint/internal/resource/ResourceClass;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/openfeint/internal/resource/Resource;->sSubclassMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/resource/ResourceClass;

    return-object v0
.end method

.method public static getKlass(Ljava/lang/String;)Lcom/openfeint/internal/resource/ResourceClass;
    .locals 1
    .param p0, "klassName"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v0, Lcom/openfeint/internal/resource/Resource;->sNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/resource/ResourceClass;

    return-object v0
.end method

.method public static getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lcom/openfeint/internal/resource/Resource$1;

    const-class v1, Lcom/openfeint/internal/resource/Resource;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/openfeint/internal/resource/Resource$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 50
    .local v0, "klass":Lcom/openfeint/internal/resource/ResourceClass;
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "id"

    new-instance v3, Lcom/openfeint/internal/resource/Resource$2;

    invoke-direct {v3}, Lcom/openfeint/internal/resource/Resource$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-object v0
.end method

.method public static registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V
    .locals 2
    .param p0, "klass"    # Lcom/openfeint/internal/resource/ResourceClass;

    .prologue
    .line 33
    sget-object v0, Lcom/openfeint/internal/resource/Resource;->sSubclassMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/openfeint/internal/resource/ResourceClass;->mObjectClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/openfeint/internal/resource/ResourceClass;->mResourceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/openfeint/internal/resource/Resource;->sNameMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/openfeint/internal/resource/ResourceClass;->mResourceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    return-void
.end method

.method private final unguardedShallowCopy(Lcom/openfeint/internal/resource/Resource;)V
    .locals 6
    .param p1, "otherResource"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/openfeint/internal/resource/Resource;->getKlass(Ljava/lang/Class;)Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v1

    .line 150
    .local v1, "rc":Lcom/openfeint/internal/resource/ResourceClass;
    iget-object v3, v1, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 160
    return-void

    .line 150
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 151
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/openfeint/internal/resource/ResourceProperty;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openfeint/internal/resource/ResourceProperty;

    .line 152
    .local v2, "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    instance-of v3, v2, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;

    if-eqz v3, :cond_2

    .line 153
    check-cast v2, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;

    .end local v2    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    invoke-virtual {v2, p0, p1}, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;->copy(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/resource/Resource;)V

    goto :goto_0

    .line 154
    .restart local v2    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    :cond_2
    instance-of v3, v2, Lcom/openfeint/internal/resource/ArrayResourceProperty;

    if-eqz v3, :cond_3

    move-object v3, v2

    .line 155
    check-cast v3, Lcom/openfeint/internal/resource/ArrayResourceProperty;

    check-cast v2, Lcom/openfeint/internal/resource/ArrayResourceProperty;

    .end local v2    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    invoke-virtual {v2, p1}, Lcom/openfeint/internal/resource/ArrayResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Lcom/openfeint/internal/resource/ArrayResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Ljava/util/List;)V

    goto :goto_0

    .line 156
    .restart local v2    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    :cond_3
    instance-of v3, v2, Lcom/openfeint/internal/resource/NestedResourceProperty;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 157
    check-cast v3, Lcom/openfeint/internal/resource/NestedResourceProperty;

    check-cast v2, Lcom/openfeint/internal/resource/NestedResourceProperty;

    .end local v2    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    invoke-virtual {v2, p1}, Lcom/openfeint/internal/resource/NestedResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Lcom/openfeint/internal/resource/Resource;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Lcom/openfeint/internal/resource/NestedResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/resource/Resource;)V

    goto :goto_0
.end method


# virtual methods
.method public final generate()Ljava/lang/String;
    .locals 6

    .prologue
    .line 62
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 63
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    invoke-direct {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;-><init>()V

    .line 65
    .local v1, "jf":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;

    move-result-object v2

    .line 66
    .local v2, "jg":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    invoke-virtual {p0, v2}, Lcom/openfeint/internal/resource/Resource;->generate(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V

    .line 67
    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v2    # "jg":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    :goto_0
    return-object v4

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Resource"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final generate(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V
    .locals 12
    .param p1, "generator"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/openfeint/internal/resource/Resource;->getKlass(Ljava/lang/Class;)Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v6

    .line 77
    .local v6, "rc":Lcom/openfeint/internal/resource/ResourceClass;
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 78
    iget-object v9, v6, Lcom/openfeint/internal/resource/ResourceClass;->mResourceName:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 80
    iget-object v9, v6, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 122
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 123
    return-void

    .line 80
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/openfeint/internal/resource/ResourceProperty;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/openfeint/internal/resource/ResourceProperty;

    .line 82
    .local v8, "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    instance-of v9, v8, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;

    if-eqz v9, :cond_2

    .line 83
    check-cast v8, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;

    .end local v8    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, p0, p1, v9}, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;->generate(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .restart local v8    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    :cond_2
    instance-of v9, v8, Lcom/openfeint/internal/resource/ArrayResourceProperty;

    if-eqz v9, :cond_4

    move-object v0, v8

    .line 85
    check-cast v0, Lcom/openfeint/internal/resource/ArrayResourceProperty;

    .line 86
    .local v0, "arp":Lcom/openfeint/internal/resource/ArrayResourceProperty;
    invoke-virtual {v0, p0}, Lcom/openfeint/internal/resource/ArrayResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Ljava/util/List;

    move-result-object v7

    .line 87
    .local v7, "resources":Ljava/util/List;, "Ljava/util/List<+Lcom/openfeint/internal/resource/Resource;>;"
    if-eqz v7, :cond_0

    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Lcom/openfeint/internal/resource/ArrayResourceProperty;->elementType()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/openfeint/internal/resource/Resource;->getKlass(Ljava/lang/Class;)Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v3

    .line 91
    .local v3, "erc":Lcom/openfeint/internal/resource/ResourceClass;
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 92
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v11, v3, Lcom/openfeint/internal/resource/ResourceClass;->mResourceName:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "s"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 95
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 99
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 100
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 95
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openfeint/internal/resource/Resource;

    .line 96
    .local v4, "r":Lcom/openfeint/internal/resource/Resource;
    invoke-virtual {v4, p1}, Lcom/openfeint/internal/resource/Resource;->generate(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 102
    .end local v0    # "arp":Lcom/openfeint/internal/resource/ArrayResourceProperty;
    .end local v3    # "erc":Lcom/openfeint/internal/resource/ResourceClass;
    .end local v4    # "r":Lcom/openfeint/internal/resource/Resource;
    .end local v7    # "resources":Ljava/util/List;, "Ljava/util/List<+Lcom/openfeint/internal/resource/Resource;>;"
    :cond_4
    instance-of v9, v8, Lcom/openfeint/internal/resource/NestedResourceProperty;

    if-eqz v9, :cond_5

    .line 103
    check-cast v8, Lcom/openfeint/internal/resource/NestedResourceProperty;

    .end local v8    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    invoke-virtual {v8, p0}, Lcom/openfeint/internal/resource/NestedResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Lcom/openfeint/internal/resource/Resource;

    move-result-object v4

    .line 104
    .restart local v4    # "r":Lcom/openfeint/internal/resource/Resource;
    if-eqz v4, :cond_0

    .line 105
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v4, p1}, Lcom/openfeint/internal/resource/Resource;->generate(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V

    goto/16 :goto_0

    .line 108
    .end local v4    # "r":Lcom/openfeint/internal/resource/Resource;
    .restart local v8    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    :cond_5
    instance-of v9, v8, Lcom/openfeint/internal/resource/HashIntResourceProperty;

    if-eqz v9, :cond_0

    .line 109
    check-cast v8, Lcom/openfeint/internal/resource/HashIntResourceProperty;

    .end local v8    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    invoke-virtual {v8, p0}, Lcom/openfeint/internal/resource/HashIntResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Ljava/util/HashMap;

    move-result-object v5

    .line 110
    .local v5, "r":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 111
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 113
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6

    .line 117
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    goto/16 :goto_0

    .line 113
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 114
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 115
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    goto :goto_2
.end method

.method public final generateToStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;-><init>()V

    .line 56
    .local v0, "jf":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v0, p1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;

    move-result-object v1

    .line 57
    .local v1, "jg":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    invoke-virtual {p0, v1}, Lcom/openfeint/internal/resource/Resource;->generate(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V

    .line 58
    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->close()V

    .line 59
    return-void
.end method

.method public resourceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/openfeint/internal/resource/Resource;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public setResourceID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/openfeint/internal/resource/Resource;->mID:Ljava/lang/String;

    return-void
.end method

.method public final shallowCopy(Lcom/openfeint/internal/resource/Resource;)V
    .locals 2
    .param p1, "otherResource"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You can only shallowCopy the same type of resource"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    invoke-direct {p0, p1}, Lcom/openfeint/internal/resource/Resource;->unguardedShallowCopy(Lcom/openfeint/internal/resource/Resource;)V

    .line 131
    return-void
.end method

.method public final shallowCopyAncestorType(Lcom/openfeint/internal/resource/Resource;)V
    .locals 5
    .param p1, "otherResource"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 135
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 136
    .local v1, "o":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lcom/openfeint/internal/resource/Resource;

    if-eq v1, v2, :cond_2

    .line 137
    :goto_0
    if-eq v0, v1, :cond_0

    const-class v2, Lcom/openfeint/internal/resource/Resource;

    if-ne v0, v2, :cond_1

    .line 140
    :cond_0
    const-class v2, Lcom/openfeint/internal/resource/Resource;

    if-ne v0, v2, :cond_2

    .line 141
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is not a superclass of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_2
    invoke-direct {p0, p1}, Lcom/openfeint/internal/resource/Resource;->unguardedShallowCopy(Lcom/openfeint/internal/resource/Resource;)V

    .line 146
    return-void
.end method
