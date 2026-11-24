.class public final enum Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;
.super Ljava/lang/Enum;
.source "BufferRecycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ByteBufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

.field public static final enum READ_IO_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

.field public static final enum WRITE_CONCAT_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

.field public static final enum WRITE_ENCODING_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;


# instance fields
.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v2, 0xfa0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    const-string v1, "READ_IO_BUFFER"

    invoke-direct {v0, v1, v3, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    .line 24
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    const-string v1, "WRITE_ENCODING_BUFFER"

    .line 28
    invoke-direct {v0, v1, v4, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    .line 30
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    const-string v1, "WRITE_CONCAT_BUFFER"

    .line 34
    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v5, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_CONCAT_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_CONCAT_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->ENUM$VALUES:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "size"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->size:I

    return-void
.end method

.method static synthetic access$2(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->size:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    return-object v0
.end method

.method public static values()[Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;->ENUM$VALUES:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    array-length v1, v0

    new-array v2, v1, [Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
