.class public Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
.super Ljava/lang/Object;
.source "JsonFactory.java"


# static fields
.field static final DEFAULT_GENERATOR_FEATURE_FLAGS:I

.field static final DEFAULT_PARSER_FEATURE_FLAGS:I

.field static final _recyclerRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _generatorFeatures:I

.field protected _objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

.field protected _parserFeatures:I

.field protected _rootByteSymbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

.field protected _rootCharSymbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    .line 78
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    .line 91
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;)V

    return-void
.end method

.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;)V
    .locals 1
    .param p1, "oc"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->createRoot()Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    .line 107
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->createRoot()Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_rootByteSymbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 124
    sget v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    .line 126
    sget v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    .line 140
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    return-void
.end method


# virtual methods
.method protected _createContext(Ljava/lang/Object;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .locals 2
    .param p1, "srcRef"    # Ljava/lang/Object;
    .param p2, "resourceManaged"    # Z

    .prologue
    .line 511
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method protected _createJsonGenerator(Ljava/io/Writer;Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "ctxt"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;ILcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;Ljava/io/Writer;)V

    return-object v0
.end method

.method protected _createJsonParser(Ljava/io/InputStream;Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "ctxt"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 520
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;

    invoke-direct {v0, p2, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)V

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_rootByteSymbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->constructParser(ILcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method protected _createJsonParser(Ljava/io/Reader;Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .locals 6
    .param p1, "r"    # Ljava/io/Reader;
    .param p2, "ctxt"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 526
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    .line 527
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v3

    .line 528
    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    .line 527
    invoke-virtual {v1, v3, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->makeChild(ZZ)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v5

    move-object v1, p2

    move-object v3, p1

    .line 526
    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ReaderBasedParser;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    return-object v0
.end method

.method protected _createJsonParser([BIILcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "ctxt"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 535
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;[BII)V

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_rootByteSymbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ByteSourceBootstrapper;->constructParser(ILcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/CharsToNameCanonicalizer;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method protected _createWriter(Ljava/io/OutputStream;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;)Ljava/io/Writer;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "enc"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;
    .param p3, "ctxt"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    if-ne p2, v0, :cond_0

    .line 593
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;

    invoke-direct {v0, p3, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/UTF8Writer;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;Ljava/io/OutputStream;)V

    .line 596
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public _getBufferRecycler()Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;
    .locals 4

    .prologue
    .line 555
    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 556
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 558
    .local v0, "br":Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;
    :goto_0
    if-nez v0, :cond_0

    .line 559
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    .end local v0    # "br":Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;
    invoke-direct {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;-><init>()V

    .line 560
    .restart local v0    # "br":Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;
    if-nez v1, :cond_0

    .line 561
    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 564
    :cond_0
    return-object v0

    .line 556
    .end local v0    # "br":Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    move-object v0, v2

    goto :goto_0
.end method

.method protected _optimizedStreamFromURL(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    const-string v1, "file"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 582
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 584
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 587
    .end local v0    # "host":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public final configure(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    .locals 0
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 238
    if-eqz p2, :cond_0

    .line 239
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->enable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    .line 243
    :goto_0
    return-object p0

    .line 241
    :cond_0
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->disable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    goto :goto_0
.end method

.method public final configure(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    .locals 0
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 156
    if-eqz p2, :cond_0

    .line 157
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->enable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    .line 161
    :goto_0
    return-object p0

    .line 159
    :cond_0
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->disable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    goto :goto_0
.end method

.method public createJsonGenerator(Ljava/io/File;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .locals 3
    .param p1, "f"    # Ljava/io/File;
    .param p2, "enc"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 495
    .local v1, "out":Ljava/io/OutputStream;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 496
    .local v0, "ctxt":Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    invoke-virtual {v0, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->setEncoding(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;)V

    .line 497
    invoke-virtual {p0, v1, p2, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createWriter(Ljava/io/OutputStream;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createJsonGenerator(Ljava/io/Writer;Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;

    move-result-object v2

    return-object v2
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "enc"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 452
    .local v0, "ctxt":Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    invoke-virtual {v0, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->setEncoding(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;)V

    .line 453
    invoke-virtual {p0, p1, p2, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createWriter(Ljava/io/OutputStream;Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createJsonGenerator(Ljava/io/Writer;Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;

    move-result-object v1

    return-object v1
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 473
    .local v0, "ctxt":Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createJsonGenerator(Ljava/io/Writer;Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;

    move-result-object v1

    return-object v1
.end method

.method public createJsonParser(Ljava/io/File;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .locals 2
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/Reader;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .locals 1
    .param p1, "r"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/Reader;Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 420
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, "r":Ljava/io/Reader;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/Reader;Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v1

    return-object v1
.end method

.method public createJsonParser(Ljava/net/URL;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_optimizedStreamFromURL(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser([B)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 407
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createJsonParser([BIILcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser([BII)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 413
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_createJsonParser([BIILcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public disable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    .locals 2
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 265
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    .line 266
    return-object p0
.end method

.method public disable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    .locals 2
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 182
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    .line 183
    return-object p0
.end method

.method public final disableGeneratorFeature(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->disable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    .line 292
    return-void
.end method

.method public final disableParserFeature(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->disable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    .line 209
    return-void
.end method

.method public enable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    .locals 2
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 254
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    .line 255
    return-object p0
.end method

.method public enable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    .locals 2
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 171
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    .line 172
    return-object p0
.end method

.method public final enableGeneratorFeature(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->enable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    .line 285
    return-void
.end method

.method public final enableParserFeature(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->enable(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    .line 202
    return-void
.end method

.method public getCodec()Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public final isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 2
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 275
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z
    .locals 2
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 192
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isGeneratorFeatureEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    return v0
.end method

.method public final isParserFeatureEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;)Z
    .locals 2
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 222
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCodec(Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    .locals 0
    .param p1, "oc"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->_objectCodec:Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;

    .line 316
    return-object p0
.end method

.method public final setGeneratorFeature(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;Z)V
    .locals 0
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->configure(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    .line 299
    return-void
.end method

.method public final setParserFeature(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;Z)V
    .locals 0
    .param p1, "f"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->configure(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser$Feature;Z)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    .line 216
    return-void
.end method
