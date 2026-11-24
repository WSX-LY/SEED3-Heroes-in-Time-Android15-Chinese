.class public final Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;
.super Ljava/lang/Object;
.source "BufferRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;,
        Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;
    }
.end annotation


# static fields
.field public static final DEFAULT_WRITE_CONCAT_BUFFER_LEN:I = 0x7d0


# instance fields
.field protected final mByteBuffers:[[B

.field protected final mCharBuffers:[[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->values()[Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->mByteBuffers:[[B

    .line 55
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->values()[Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[C

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->mCharBuffers:[[C

    .line 57
    return-void
.end method

.method private balloc(I)[B
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 109
    new-array v0, p1, [B

    return-object v0
.end method

.method private calloc(I)[C
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 114
    new-array v0, p1, [C

    return-object v0
.end method


# virtual methods
.method public allocByteBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B
    .locals 4
    .param p1, "type"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->ordinal()I

    move-result v1

    .line 62
    .local v1, "ix":I
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->mByteBuffers:[[B

    aget-object v0, v2, v1

    .line 63
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    .line 64
    invoke-static {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->access$2(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->balloc(I)[B

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->mByteBuffers:[[B

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_0
.end method

.method public allocCharBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C
    .locals 1
    .param p1, "type"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    return-object v0
.end method

.method public allocCharBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C
    .locals 4
    .param p1, "type"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;
    .param p2, "minSize"    # I

    .prologue
    .line 83
    invoke-static {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->access$2(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;)I

    move-result v2

    if-le v2, p2, :cond_0

    .line 84
    invoke-static {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->access$2(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;)I

    move-result p2

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->ordinal()I

    move-result v1

    .line 87
    .local v1, "ix":I
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->mCharBuffers:[[C

    aget-object v0, v2, v1

    .line 88
    .local v0, "buffer":[C
    if-eqz v0, :cond_1

    array-length v2, v0

    if-ge v2, p2, :cond_2

    .line 89
    :cond_1
    invoke-direct {p0, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->calloc(I)[C

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 91
    :cond_2
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->mCharBuffers:[[C

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_0
.end method

.method public releaseByteBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V
    .locals 2
    .param p1, "type"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;
    .param p2, "buffer"    # [B

    .prologue
    .line 73
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->mByteBuffers:[[B

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 74
    return-void
.end method

.method public releaseCharBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V
    .locals 2
    .param p1, "type"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;
    .param p2, "buffer"    # [C

    .prologue
    .line 98
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->mCharBuffers:[[C

    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 99
    return-void
.end method
