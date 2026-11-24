.class public Lcom/openfeint/internal/JsonCoder;
.super Ljava/lang/Object;
.source "JsonCoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JsonCoder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generate(Ljava/lang/Object;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V
    .locals 9
    .param p0, "objectToGenerate"    # Ljava/lang/Object;
    .param p1, "jsonGenerator"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 124
    .end local p0    # "objectToGenerate":Ljava/lang/Object;
    :goto_0
    return-void

    .line 80
    .restart local p0    # "objectToGenerate":Ljava/lang/Object;
    :cond_0
    instance-of v6, p0, Ljava/util/Date;

    if-eqz v6, :cond_1

    .line 81
    invoke-static {}, Lcom/openfeint/internal/JsonCoder;->makeDateParser()Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_1
    instance-of v6, p0, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 84
    check-cast p0, Ljava/lang/String;

    .end local p0    # "objectToGenerate":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    .restart local p0    # "objectToGenerate":Ljava/lang/Object;
    :cond_2
    instance-of v6, p0, Ljava/util/Map;

    if-eqz v6, :cond_4

    .line 86
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    move-object v4, p0

    .line 87
    check-cast v4, Ljava/util/Map;

    .line 88
    .local v4, "objectAsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 92
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 88
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 90
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/openfeint/internal/JsonCoder;->generate(Ljava/lang/Object;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 93
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v4    # "objectAsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    instance-of v6, p0, Ljava/util/List;

    if-eqz v6, :cond_6

    .line 94
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    move-object v3, p0

    .line 95
    check-cast v3, Ljava/util/List;

    .line 96
    .local v3, "objectAsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 99
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    goto :goto_0

    .line 96
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, "nestedObject":Ljava/lang/Object;
    invoke-static {v1, p1}, Lcom/openfeint/internal/JsonCoder;->generate(Ljava/lang/Object;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_2

    .line 100
    .end local v1    # "nestedObject":Ljava/lang/Object;
    .end local v3    # "objectAsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_6
    instance-of v6, p0, [Ljava/lang/Object;

    if-eqz v6, :cond_8

    .line 101
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    move-object v2, p0

    .line 102
    check-cast v2, [Ljava/lang/Object;

    .line 103
    .local v2, "objectAsArray":[Ljava/lang/Object;
    array-length v7, v2

    const/4 v6, 0x0

    :goto_3
    if-lt v6, v7, :cond_7

    .line 106
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    goto :goto_0

    .line 103
    :cond_7
    aget-object v1, v2, v6

    .line 104
    .restart local v1    # "nestedObject":Ljava/lang/Object;
    invoke-static {v1, p1}, Lcom/openfeint/internal/JsonCoder;->generate(Ljava/lang/Object;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V

    .line 103
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 107
    .end local v1    # "nestedObject":Ljava/lang/Object;
    .end local v2    # "objectAsArray":[Ljava/lang/Object;
    :cond_8
    instance-of v6, p0, Ljava/lang/Number;

    if-eqz v6, :cond_f

    move-object v5, p0

    .line 108
    check-cast v5, Ljava/lang/Number;

    .line 110
    .local v5, "objectAsNumber":Ljava/lang/Number;
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    goto/16 :goto_0

    .line 111
    :cond_9
    instance-of v6, v5, Ljava/lang/Float;

    if-eqz v6, :cond_a

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeNumber(F)V

    goto/16 :goto_0

    .line 112
    :cond_a
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_b

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    goto/16 :goto_0

    .line 113
    :cond_b
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    goto/16 :goto_0

    .line 114
    :cond_c
    instance-of v6, v5, Ljava/lang/Byte;

    if-eqz v6, :cond_d

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    goto/16 :goto_0

    .line 115
    :cond_d
    instance-of v6, v5, Ljava/lang/Short;

    if-eqz v6, :cond_e

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    goto/16 :goto_0

    .line 116
    :cond_e
    new-instance v6, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unhandled number type "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 118
    .end local v5    # "objectAsNumber":Ljava/lang/Number;
    :cond_f
    instance-of v6, p0, Ljava/lang/Boolean;

    if-eqz v6, :cond_10

    .line 119
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "objectToGenerate":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p1, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 122
    .restart local p0    # "objectToGenerate":Ljava/lang/Object;
    :cond_10
    new-instance v6, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t generate JSON for object of class "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static generateJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "objectToGenerate"    # Ljava/lang/Object;

    .prologue
    .line 35
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 36
    .local v3, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    invoke-direct {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;-><init>()V

    .line 38
    .local v1, "jsonFactory":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;

    move-result-object v2

    .line 39
    .local v2, "jsonGenerator":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    invoke-static {p0, v2}, Lcom/openfeint/internal/JsonCoder;->generate(Ljava/lang/Object;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V

    .line 40
    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v2    # "jsonGenerator":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    :goto_0
    return-object v4

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "exception":Ljava/lang/Exception;
    const-string v4, "JsonCoder"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static generateJson(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 6
    .param p0, "objectToGenerate"    # Ljava/lang/Object;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    invoke-direct {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;-><init>()V

    .line 56
    .local v2, "jsonFactory":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    const/4 v3, 0x0

    .line 58
    .local v3, "jsonGenerator":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    :try_start_0
    sget-object v4, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {v2, p1, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;

    move-result-object v3

    .line 59
    invoke-static {p0, v3}, Lcom/openfeint/internal/JsonCoder;->generate(Ljava/lang/Object;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V
    :try_end_0
    .catch Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :try_start_1
    invoke-virtual {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 67
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "jsonException":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
    :try_start_2
    const-string v4, "JsonCoder"

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :try_start_3
    invoke-virtual {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    .line 62
    .end local v1    # "jsonException":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
    :catch_2
    move-exception v0

    .line 63
    .local v0, "castException":Ljava/lang/ClassCastException;
    :try_start_4
    const-string v4, "JsonCoder"

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    :try_start_5
    invoke-virtual {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_0

    .line 64
    .end local v0    # "castException":Ljava/lang/ClassCastException;
    :catchall_0
    move-exception v4

    .line 65
    :try_start_6
    invoke-virtual {v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 66
    :goto_1
    throw v4

    .line 65
    :catch_4
    move-exception v5

    goto :goto_1

    :catch_5
    move-exception v4

    goto :goto_0
.end method

.method static makeDateParser()Ljava/text/DateFormat;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "p":Ljava/text/DateFormat;
    const-string v1, "Zulu"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 132
    return-object v0
.end method

.method private static parse(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;
    .locals 8
    .param p0, "jsonParser"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 178
    .local v0, "currToken":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;
    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v5, v0, :cond_2

    .line 179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v3, "listToReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_1

    .line 208
    .end local v3    # "listToReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_0
    :goto_1
    return-object v3

    .line 181
    .restart local v3    # "listToReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    invoke-static {p0}, Lcom/openfeint/internal/JsonCoder;->parse(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    .end local v3    # "listToReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v5, v0, :cond_5

    .line 185
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v4, "mapToReturn":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_2
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_3

    .line 192
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_4

    new-instance v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;

    const-string v6, "Garbage in object"

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCurrentLocation()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonLocation;)V

    throw v5

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 189
    invoke-static {p0}, Lcom/openfeint/internal/JsonCoder;->parse(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .line 190
    .local v2, "fieldValue":Ljava/lang/Object;
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v2    # "fieldValue":Ljava/lang/Object;
    :cond_4
    move-object v3, v4

    .line 193
    goto :goto_1

    .line 194
    .end local v4    # "mapToReturn":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_FALSE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v5, v0, :cond_6

    .line 195
    new-instance v3, Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_1

    .line 196
    :cond_6
    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v5, v0, :cond_7

    .line 197
    new-instance v3, Ljava/lang/Boolean;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_1

    .line 198
    :cond_7
    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-eq v5, v0, :cond_0

    .line 200
    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v5, v0, :cond_8

    .line 201
    new-instance v3, Ljava/lang/Double;

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1

    .line 202
    :cond_8
    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v5, v0, :cond_9

    .line 203
    new-instance v3, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    .line 204
    :cond_9
    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    if-ne v5, v0, :cond_a

    .line 205
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 207
    :cond_a
    const-string v5, "JsonCoder"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " no idea dude "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 142
    :try_start_0
    new-instance v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    invoke-direct {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;-><init>()V

    invoke-virtual {v2, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 143
    .local v1, "jsonParser":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 144
    invoke-static {v1}, Lcom/openfeint/internal/JsonCoder;->parse(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 149
    .end local v1    # "jsonParser":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    :goto_0
    return-object v2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "ioException":Ljava/io/IOException;
    const-string v2, "JsonCoder"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static parse([B)Ljava/lang/Object;
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 159
    :try_start_0
    new-instance v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    invoke-direct {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;-><init>()V

    invoke-virtual {v2, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->createJsonParser([B)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 160
    .local v1, "jsonParser":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;->nextToken()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonToken;

    .line 161
    invoke-static {v1}, Lcom/openfeint/internal/JsonCoder;->parse(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 166
    .end local v1    # "jsonParser":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    :goto_0
    return-object v2

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "ioException":Ljava/io/IOException;
    const-string v2, "JsonCoder"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v2, 0x0

    goto :goto_0
.end method
