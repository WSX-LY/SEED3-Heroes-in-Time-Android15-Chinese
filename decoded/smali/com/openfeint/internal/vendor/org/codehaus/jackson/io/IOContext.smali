.class public final Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
.super Ljava/lang/Object;
.source "IOContext.java"


# instance fields
.field final _bufferRecycler:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

.field protected _concatCBuffer:[C

.field protected _encoding:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

.field protected final _managedResource:Z

.field protected _nameCopyBuffer:[C

.field protected _readIOBuffer:[B

.field final _sourceRef:Ljava/lang/Object;

.field protected _tokenCBuffer:[C

.field protected _writeEncodingBuffer:[B


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "br"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;
    .param p2, "sourceRef"    # Ljava/lang/Object;
    .param p3, "managedResource"    # Z

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    .line 70
    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_writeEncodingBuffer:[B

    .line 77
    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_tokenCBuffer:[C

    .line 84
    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_concatCBuffer:[C

    .line 92
    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    .line 102
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    .line 103
    iput-object p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_sourceRef:Ljava/lang/Object;

    .line 104
    iput-boolean p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_managedResource:Z

    .line 105
    return-void
.end method


# virtual methods
.method public allocConcatBuffer()[C
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_concatCBuffer:[C

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocConcatBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_concatCBuffer:[C

    .line 171
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_concatCBuffer:[C

    return-object v0
.end method

.method public allocNameCopyBuffer(I)[C
    .locals 2
    .param p1, "minSize"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocNameCopyBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    .line 180
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    return-object v0
.end method

.method public allocReadIOBuffer()[B
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocReadIOBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->allocByteBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    .line 144
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    return-object v0
.end method

.method public allocTokenBuffer()[C
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_tokenCBuffer:[C

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocTokenBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_tokenCBuffer:[C

    .line 162
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_tokenCBuffer:[C

    return-object v0
.end method

.method public allocWriteEncodingBuffer()[B
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_writeEncodingBuffer:[B

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocWriteEncodingBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->allocByteBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_writeEncodingBuffer:[B

    .line 153
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_writeEncodingBuffer:[B

    return-object v0
.end method

.method public constructTextBuffer()Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    invoke-direct {v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;)V

    return-object v0
.end method

.method public getEncoding()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_encoding:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    return-object v0
.end method

.method public getSourceReference()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_sourceRef:Ljava/lang/Object;

    return-object v0
.end method

.method public isResourceManaged()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_managedResource:Z

    return v0
.end method

.method public releaseConcatBuffer([C)V
    .locals 2
    .param p1, "buf"    # [C

    .prologue
    .line 228
    if-eqz p1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_concatCBuffer:[C

    if-eq p1, v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_concatCBuffer:[C

    .line 233
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    .line 235
    :cond_1
    return-void
.end method

.method public releaseNameCopyBuffer([C)V
    .locals 2
    .param p1, "buf"    # [C

    .prologue
    .line 239
    if-eqz p1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    if-eq p1, v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    .line 244
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    .line 246
    :cond_1
    return-void
.end method

.method public releaseReadIOBuffer([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 189
    if-eqz p1, :cond_1

    .line 193
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    if-eq p1, v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    .line 197
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->releaseByteBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V

    .line 199
    :cond_1
    return-void
.end method

.method public releaseTokenBuffer([C)V
    .locals 2
    .param p1, "buf"    # [C

    .prologue
    .line 217
    if-eqz p1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_tokenCBuffer:[C

    if-eq p1, v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_tokenCBuffer:[C

    .line 222
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    .line 224
    :cond_1
    return-void
.end method

.method public releaseWriteEncodingBuffer([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 203
    if-eqz p1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_writeEncodingBuffer:[B

    if-eq p1, v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_writeEncodingBuffer:[B

    .line 211
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_bufferRecycler:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->releaseByteBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V

    .line 213
    :cond_1
    return-void
.end method

.method public setEncoding(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;)V
    .locals 0
    .param p1, "enc"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->_encoding:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonEncoding;

    .line 110
    return-void
.end method
