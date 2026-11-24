.class public final Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;
.super Ljava/lang/Object;
.source "TextBuffer.java"


# static fields
.field static final MAX_SEGMENT_LEN:I = 0x40000

.field static final NO_CHARS:[C


# instance fields
.field private final _allocator:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

.field private _currentSegment:[C

.field private _currentSize:I

.field private _hasSegments:Z

.field private _inputBuffer:[C

.field private _inputLen:I

.field private _inputStart:I

.field private _resultArray:[C

.field private _resultString:Ljava/lang/String;

.field private _segmentSize:I

.field private _segments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;)V
    .locals 1
    .param p1, "allocator"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 122
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_allocator:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    .line 123
    return-void
.end method

.method private final _charArray(I)[C
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 639
    new-array v0, p1, [C

    return-object v0
.end method

.method private buildResultArray()[C
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 605
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 606
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 635
    :goto_0
    return-object v5

    .line 611
    :cond_0
    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v7, :cond_2

    .line 612
    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    if-ge v7, v8, :cond_1

    .line 613
    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    goto :goto_0

    .line 615
    :cond_1
    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-direct {p0, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v5

    .line 616
    .local v5, "result":[C
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 617
    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 616
    invoke-static {v7, v8, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 619
    .end local v5    # "result":[C
    :cond_2
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->size()I

    move-result v6

    .line 620
    .local v6, "size":I
    if-ge v6, v8, :cond_3

    .line 621
    sget-object v5, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    goto :goto_0

    .line 623
    :cond_3
    const/4 v4, 0x0

    .line 624
    .local v4, "offset":I
    invoke-direct {p0, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v5

    .line 625
    .restart local v5    # "result":[C
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 626
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "len":I
    :goto_1
    if-lt v2, v3, :cond_5

    .line 633
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_4
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-static {v7, v10, v5, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 627
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    :cond_5
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 628
    .local v0, "curr":[C
    array-length v1, v0

    .line 629
    .local v1, "currLen":I
    invoke-static {v0, v10, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 630
    add-int/2addr v4, v1

    .line 626
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private final clearSegments()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 227
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 228
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 229
    return-void
.end method

.method private expand(I)V
    .locals 5
    .param p1, "minNewSegmentSize"    # I

    .prologue
    .line 585
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 586
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 589
    .local v0, "curr":[C
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 590
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    array-length v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 592
    array-length v1, v0

    .line 594
    .local v1, "oldLen":I
    shr-int/lit8 v2, v1, 0x1

    .line 595
    .local v2, "sizeAddition":I
    if-ge v2, p1, :cond_1

    .line 596
    move v2, p1

    .line 598
    :cond_1
    const/high16 v3, 0x40000

    add-int v4, v1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v0

    .line 599
    const/4 v3, 0x0

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 600
    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 601
    return-void
.end method

.method private final findBuffer(I)[C
    .locals 2
    .param p1, "needed"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_allocator:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    return-object v0
.end method

.method private unshare(I)V
    .locals 6
    .param p1, "needExtra"    # I

    .prologue
    const/4 v5, 0x0

    .line 559
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 560
    .local v2, "sharedLen":I
    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 561
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 562
    .local v0, "inputBuf":[C
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 563
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 564
    .local v3, "start":I
    const/4 v4, -0x1

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 567
    add-int v1, v2, p1

    .line 568
    .local v1, "needed":I
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    array-length v4, v4

    if-le v1, v4, :cond_1

    .line 569
    :cond_0
    invoke-direct {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v4

    iput-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 571
    :cond_1
    if-lez v2, :cond_2

    .line 572
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-static {v0, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    :cond_2
    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 575
    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 576
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    const/4 v2, 0x0

    .line 376
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v1, :cond_0

    .line 377
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->unshare(I)V

    .line 379
    :cond_0
    iput-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 380
    iput-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 382
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 383
    .local v0, "curr":[C
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 384
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->expand(I)V

    .line 385
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 387
    :cond_1
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    aput-char p1, v0, v1

    .line 388
    return-void
.end method

.method public append(Ljava/lang/String;II)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 424
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v2, :cond_0

    .line 425
    invoke-direct {p0, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->unshare(I)V

    .line 427
    :cond_0
    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 428
    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 431
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 432
    .local v0, "curr":[C
    array-length v2, v0

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    sub-int v1, v2, v3

    .line 433
    .local v1, "max":I
    if-lt v1, p3, :cond_1

    .line 434
    add-int v2, p2, p3

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-virtual {p1, p2, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 435
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 450
    :goto_0
    return-void

    .line 438
    :cond_1
    if-lez v1, :cond_2

    .line 439
    add-int v2, p2, v1

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-virtual {p1, p2, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 440
    sub-int/2addr p3, v1

    .line 441
    add-int/2addr p2, v1

    .line 446
    :cond_2
    invoke-direct {p0, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->expand(I)V

    .line 447
    add-int v2, p2, p3

    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 448
    iput p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    goto :goto_0
.end method

.method public append([CII)V
    .locals 4
    .param p1, "c"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 393
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v2, :cond_0

    .line 394
    invoke-direct {p0, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->unshare(I)V

    .line 396
    :cond_0
    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 397
    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 400
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 401
    .local v0, "curr":[C
    array-length v2, v0

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    sub-int v1, v2, v3

    .line 403
    .local v1, "max":I
    if-lt v1, p3, :cond_1

    .line 404
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 419
    :goto_0
    return-void

    .line 408
    :cond_1
    if-lez v1, :cond_2

    .line 409
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    add-int/2addr p2, v1

    .line 411
    sub-int/2addr p3, v1

    .line 415
    :cond_2
    invoke-direct {p0, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->expand(I)V

    .line 416
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    iput p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    goto :goto_0
.end method

.method public contentsAsArray()[C
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 319
    .local v0, "result":[C
    if-nez v0, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->buildResultArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 322
    :cond_0
    return-object v0
.end method

.method public contentsAsDecimal()Ljava/math/BigDecimal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    .line 345
    :goto_0
    return-object v0

    .line 337
    :cond_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_1

    .line 338
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_0

    .line 341
    :cond_1
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    if-nez v0, :cond_2

    .line 342
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_0

    .line 345
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->contentsAsArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_0
.end method

.method public contentsAsDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public contentsAsString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 279
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 281
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v6, :cond_1

    .line 282
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    iput-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 313
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    :goto_1
    return-object v6

    .line 285
    :cond_1
    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v6, :cond_3

    .line 286
    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_2

    .line 287
    const-string v6, ""

    iput-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_1

    .line 289
    :cond_2
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    iput-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_0

    .line 292
    :cond_3
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 293
    .local v5, "segLen":I
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 295
    .local v1, "currLen":I
    if-nez v5, :cond_5

    .line 296
    if-nez v1, :cond_4

    const-string v6, ""

    :goto_2
    iput-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-direct {v6, v7, v8, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    .line 298
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    add-int v6, v5, v1

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 300
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 301
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "len":I
    :goto_3
    if-lt v2, v3, :cond_7

    .line 307
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_6
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-virtual {v4, v6, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_0

    .line 302
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    :cond_7
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 303
    .local v0, "curr":[C
    array-length v6, v0

    invoke-virtual {v4, v0, v8, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public emptyAndGetCurrentSegment()[C
    .locals 2

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->resetWithEmpty()V

    .line 481
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 482
    .local v0, "curr":[C
    if-nez v0, :cond_0

    .line 483
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 485
    :cond_0
    return-object v0
.end method

.method public ensureNotShared()V
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    .line 370
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->unshare(I)V

    .line 372
    :cond_0
    return-void
.end method

.method public expandCurrentSegment()[C
    .locals 6

    .prologue
    const/high16 v5, 0x40000

    const/4 v4, 0x0

    .line 520
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 522
    .local v0, "curr":[C
    array-length v1, v0

    .line 524
    .local v1, "len":I
    if-ne v1, v5, :cond_0

    .line 525
    const v2, 0x40001

    .line 526
    .local v2, "newLen":I
    :goto_0
    invoke-direct {p0, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v3

    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 527
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 528
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    return-object v3

    .line 525
    .end local v2    # "newLen":I
    :cond_0
    shr-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v1

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0
.end method

.method public finishCurrentSegment()[C
    .locals 5

    .prologue
    .line 498
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 499
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    .line 501
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 502
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    array-length v2, v3

    .line 504
    .local v2, "oldLen":I
    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 506
    shr-int/lit8 v3, v2, 0x1

    add-int/2addr v3, v2

    const/high16 v4, 0x40000

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 507
    .local v1, "newLen":I
    invoke-direct {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v0

    .line 508
    .local v0, "curr":[C
    const/4 v3, 0x0

    iput v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 509
    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 510
    return-object v0
.end method

.method public getCurrentSegment()[C
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 464
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v1, :cond_1

    .line 465
    invoke-direct {p0, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->unshare(I)V

    .line 475
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    return-object v1

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 468
    .local v0, "curr":[C
    if-nez v0, :cond_2

    .line 469
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v1

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    goto :goto_0

    .line 470
    :cond_2
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 472
    invoke-direct {p0, v3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->expand(I)V

    goto :goto_0
.end method

.method public getCurrentSegmentSize()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    return v0
.end method

.method public getTextBuffer()[C
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 268
    :goto_0
    return-object v0

    .line 264
    :cond_0
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->contentsAsArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method public getTextOffset()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseBuffers()V
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_allocator:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->resetWithEmpty()V

    .line 140
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 141
    .local v0, "buf":[C
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 142
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_allocator:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;

    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v1, v2, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    .line 144
    .end local v0    # "buf":[C
    :cond_0
    return-void
.end method

.method public resetWithCopy([CII)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 191
    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 193
    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 195
    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 196
    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 199
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 204
    :cond_0
    :goto_0
    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 205
    invoke-virtual {p0, p1, p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->append([CII)V

    .line 206
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-nez v0, :cond_0

    .line 202
    invoke-direct {p0, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    goto :goto_0
.end method

.method public resetWithEmpty()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 152
    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 154
    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 156
    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 157
    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 160
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 163
    :cond_0
    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 164
    return-void
.end method

.method public resetWithShared([CII)V
    .locals 1
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 179
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 180
    iput p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 181
    iput p3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 184
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 187
    :cond_0
    return-void
.end method

.method public setCurrentLength(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 493
    iput p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 494
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 241
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    .line 242
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 245
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
