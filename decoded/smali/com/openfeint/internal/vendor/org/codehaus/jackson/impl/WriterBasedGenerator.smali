.class public final Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;
.super Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;
.source "WriterBasedGenerator.java"


# static fields
.field static final HEX_CHARS:[C

.field static final SHORT_WRITE:I = 0x20


# instance fields
.field protected _entityBuffer:[C

.field protected final _ioContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

.field protected _outputBuffer:[C

.field protected _outputEnd:I

.field protected _outputHead:I

.field protected _outputTail:I

.field protected final _writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;ILcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;Ljava/io/Writer;)V
    .locals 1
    .param p1, "ctxt"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I
    .param p3, "codec"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;
    .param p4, "w"    # Ljava/io/Writer;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;-><init>(ILcom/openfeint/internal/vendor/org/codehaus/jackson/ObjectCodec;)V

    .line 55
    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 61
    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 85
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    .line 86
    iput-object p4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    .line 87
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 88
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    array-length v0, v0

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    .line 89
    return-void
.end method

.method private _appendSingleEscape(I[CI)V
    .locals 4
    .param p1, "escCode"    # I
    .param p2, "buf"    # [C
    .param p3, "ptr"    # I

    .prologue
    const/16 v3, 0x5c

    const/16 v2, 0x30

    .line 1007
    if-gez p1, :cond_0

    .line 1008
    add-int/lit8 v1, p1, 0x1

    neg-int v0, v1

    .line 1009
    .local v0, "value":I
    aput-char v3, p2, p3

    .line 1010
    add-int/lit8 p3, p3, 0x1

    const/16 v1, 0x75

    aput-char v1, p2, p3

    .line 1012
    add-int/lit8 p3, p3, 0x1

    aput-char v2, p2, p3

    .line 1013
    add-int/lit8 p3, p3, 0x1

    aput-char v2, p2, p3

    .line 1014
    add-int/lit8 p3, p3, 0x1

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v2, v0, 0x4

    aget-char v1, v1, v2

    aput-char v1, p2, p3

    .line 1015
    add-int/lit8 p3, p3, 0x1

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v2, v0, 0xf

    aget-char v1, v1, v2

    aput-char v1, p2, p3

    .line 1020
    .end local v0    # "value":I
    :goto_0
    return-void

    .line 1017
    :cond_0
    aput-char v3, p2, p3

    .line 1018
    add-int/lit8 v1, p3, 0x1

    int-to-char v2, p1

    aput-char v2, p2, v1

    goto :goto_0
.end method

.method private _writeLongString(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 792
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 793
    .local v3, "textLen":I
    const/4 v1, 0x0

    .line 795
    .local v1, "offset":I
    :cond_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    .line 796
    .local v0, "max":I
    add-int v4, v1, v0

    if-le v4, v3, :cond_1

    .line 797
    sub-int v2, v3, v1

    .line 798
    .local v2, "segmentLen":I
    :goto_0
    add-int v4, v1, v2

    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 799
    invoke-direct {p0, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeSegment(I)V

    .line 800
    add-int/2addr v1, v2

    .line 801
    if-lt v1, v3, :cond_0

    .line 802
    return-void

    .end local v2    # "segmentLen":I
    :cond_1
    move v2, v0

    .line 797
    goto :goto_0
.end method

.method private final _writeNull()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x6c

    .line 965
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 966
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 968
    :cond_0
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 969
    .local v1, "ptr":I
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 970
    .local v0, "buf":[C
    const/16 v2, 0x6e

    aput-char v2, v0, v1

    .line 971
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 972
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 973
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 974
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 975
    return-void
.end method

.method private final _writeQuotedInt(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 417
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 421
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 422
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 423
    return-void
.end method

.method private final _writeQuotedLong(J)V
    .locals 4
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 442
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 446
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/NumberOutput;->outputLong(J[CI)I

    move-result v0

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 447
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 448
    return-void
.end method

.method private final _writeQuotedRaw(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 528
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 532
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    .line 533
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 534
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 537
    return-void
.end method

.method private final _writeSegment(I)V
    .locals 10
    .param p1, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 815
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getOutputEscapes()[I

    move-result-object v2

    .line 816
    .local v2, "escCodes":[I
    array-length v3, v2

    .line 818
    .local v3, "escLen":I
    const/4 v6, 0x0

    .line 821
    .local v6, "ptr":I
    :goto_0
    if-lt v6, p1, :cond_1

    .line 862
    :cond_0
    return-void

    .line 823
    :cond_1
    move v7, v6

    .line 825
    .local v7, "start":I
    :cond_2
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget-char v0, v8, v6

    .line 826
    .local v0, "c":C
    if-ge v0, v3, :cond_4

    aget v8, v2, v0

    if-eqz v8, :cond_4

    .line 838
    :goto_1
    sub-int v4, v6, v7

    .line 839
    .local v4, "flushLen":I
    if-lez v4, :cond_3

    .line 840
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v8, v9, v7, v4}, Ljava/io/Writer;->write([CII)V

    .line 841
    if-ge v6, p1, :cond_0

    .line 849
    :cond_3
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget-char v8, v8, v6

    aget v1, v2, v8

    .line 850
    .local v1, "escCode":I
    add-int/lit8 v6, v6, 0x1

    .line 851
    if-gez v1, :cond_5

    const/4 v5, 0x6

    .line 853
    .local v5, "needLen":I
    :goto_2
    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v5, v8, :cond_6

    .line 854
    invoke-direct {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeSingleEscape(I)V

    goto :goto_0

    .line 829
    .end local v1    # "escCode":I
    .end local v4    # "flushLen":I
    .end local v5    # "needLen":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p1, :cond_2

    goto :goto_1

    .line 851
    .restart local v1    # "escCode":I
    .restart local v4    # "flushLen":I
    :cond_5
    const/4 v5, 0x2

    goto :goto_2

    .line 857
    .restart local v5    # "needLen":I
    :cond_6
    sub-int/2addr v6, v5

    .line 858
    iget-object v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-direct {p0, v1, v8, v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_appendSingleEscape(I[CI)V

    goto :goto_0
.end method

.method private _writeSingleEscape(I)V
    .locals 8
    .param p1, "escCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x30

    const/4 v6, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 984
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    .line 985
    .local v0, "buf":[C
    if-nez v0, :cond_0

    .line 986
    new-array v0, v6, [C

    .line 987
    const/16 v2, 0x5c

    aput-char v2, v0, v5

    .line 988
    aput-char v7, v0, v4

    .line 989
    const/4 v2, 0x3

    aput-char v7, v0, v2

    .line 992
    :cond_0
    if-gez p1, :cond_1

    .line 993
    add-int/lit8 v2, p1, 0x1

    neg-int v1, v2

    .line 994
    .local v1, "value":I
    const/16 v2, 0x75

    aput-char v2, v0, v3

    .line 996
    const/4 v2, 0x4

    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 997
    const/4 v2, 0x5

    sget-object v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 998
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/Writer;->write([CII)V

    .line 1003
    .end local v1    # "value":I
    :goto_0
    return-void

    .line 1000
    :cond_1
    int-to-char v2, p1

    aput-char v2, v0, v3

    .line 1001
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method private _writeString(Ljava/lang/String;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 720
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 721
    .local v6, "len":I
    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v6, v9, :cond_1

    .line 722
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeLongString(Ljava/lang/String;)V

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v9, v6

    iget v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v9, v10, :cond_2

    .line 729
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 731
    :cond_2
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v11, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v9, v6, v10, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 734
    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int v1, v9, v6

    .line 735
    .local v1, "end":I
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getOutputEscapes()[I

    move-result-object v3

    .line 736
    .local v3, "escCodes":[I
    array-length v4, v3

    .line 739
    .local v4, "escLen":I
    :goto_1
    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-ge v9, v1, :cond_0

    .line 743
    :cond_3
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v0, v9, v10

    .line 744
    .local v0, "c":C
    if-ge v0, v4, :cond_5

    aget v9, v3, v0

    if-eqz v9, :cond_5

    .line 756
    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int v5, v9, v10

    .line 757
    .local v5, "flushLen":I
    if-lez v5, :cond_4

    .line 758
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v11, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    invoke-virtual {v9, v10, v11, v5}, Ljava/io/Writer;->write([CII)V

    .line 764
    :cond_4
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v10, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v9, v9, v10

    aget v2, v3, v9

    .line 765
    .local v2, "escCode":I
    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 766
    if-gez v2, :cond_6

    const/4 v7, 0x6

    .line 768
    .local v7, "needLen":I
    :goto_2
    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v7, v9, :cond_7

    .line 769
    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iput v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 770
    invoke-direct {p0, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeSingleEscape(I)V

    goto :goto_1

    .line 747
    .end local v2    # "escCode":I
    .end local v5    # "flushLen":I
    .end local v7    # "needLen":I
    :cond_5
    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v9, v1, :cond_3

    goto :goto_0

    .line 766
    .restart local v2    # "escCode":I
    .restart local v5    # "flushLen":I
    :cond_6
    const/4 v7, 0x2

    goto :goto_2

    .line 773
    .restart local v7    # "needLen":I
    :cond_7
    iget v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v8, v9, v7

    .line 774
    .local v8, "ptr":I
    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 775
    iget-object v9, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-direct {p0, v2, v9, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_appendSingleEscape(I[CI)V

    goto :goto_1
.end method

.method private _writeString([CII)V
    .locals 9
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 875
    add-int/2addr p3, p2

    .line 876
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/CharTypes;->getOutputEscapes()[I

    move-result-object v2

    .line 877
    .local v2, "escCodes":[I
    array-length v3, v2

    .line 878
    .local v3, "escLen":I
    :goto_0
    if-lt p2, p3, :cond_1

    .line 920
    :cond_0
    return-void

    .line 879
    :cond_1
    move v6, p2

    .line 882
    .local v6, "start":I
    :cond_2
    aget-char v0, p1, p2

    .line 883
    .local v0, "c":C
    if-ge v0, v3, :cond_6

    aget v7, v2, v0

    if-eqz v7, :cond_6

    .line 892
    :goto_1
    sub-int v5, p2, v6

    .line 893
    .local v5, "newAmount":I
    const/16 v7, 0x20

    if-ge v5, v7, :cond_7

    .line 895
    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v7, v5

    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v7, v8, :cond_3

    .line 896
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 898
    :cond_3
    if-lez v5, :cond_4

    .line 899
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v6, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 900
    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 907
    :cond_4
    :goto_2
    if-ge p2, p3, :cond_0

    .line 911
    aget-char v7, p1, p2

    aget v1, v2, v7

    .line 912
    .local v1, "escCode":I
    add-int/lit8 p2, p2, 0x1

    .line 913
    if-gez v1, :cond_8

    const/4 v4, 0x6

    .line 914
    .local v4, "needLen":I
    :goto_3
    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v7, v4

    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v7, v8, :cond_5

    .line 915
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 917
    :cond_5
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-direct {p0, v1, v7, v8}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_appendSingleEscape(I[CI)V

    .line 918
    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0

    .line 886
    .end local v1    # "escCode":I
    .end local v4    # "needLen":I
    .end local v5    # "newAmount":I
    :cond_6
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_2

    goto :goto_1

    .line 903
    .restart local v5    # "newAmount":I
    :cond_7
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 904
    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v7, p1, v6, v5}, Ljava/io/Writer;->write([CII)V

    goto :goto_2

    .line 913
    .restart local v1    # "escCode":I
    :cond_8
    const/4 v4, 0x2

    goto :goto_3
.end method

.method private writeRawLong(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 347
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v3, v4, v5

    .line 349
    .local v3, "room":I
    iget-object v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v6, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 350
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 351
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 352
    move v2, v3

    .line 353
    .local v2, "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v4, v3

    .line 355
    .local v1, "len":I
    :goto_0
    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-gt v1, v4, :cond_0

    .line 365
    add-int v4, v2, v1

    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v2, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 366
    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 367
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 368
    return-void

    .line 356
    :cond_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    .line 357
    .local v0, "amount":I
    add-int v4, v2, v0

    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v2, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 358
    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 359
    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 360
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 361
    add-int/2addr v2, v0

    .line 362
    sub-int/2addr v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected final _flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1024
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int v0, v2, v3

    .line 1025
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 1026
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1027
    .local v1, "offset":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1028
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    .line 1030
    .end local v1    # "offset":I
    :cond_0
    return-void
.end method

.method protected _releaseBuffers()V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 700
    .local v0, "buf":[C
    if-eqz v0, :cond_0

    .line 701
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 702
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->releaseConcatBuffer([C)V

    .line 704
    :cond_0
    return-void
.end method

.method protected final _verifyPrettyValueWrite(Ljava/lang/String;I)V
    .locals 1
    .param p1, "typeMsg"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 617
    packed-switch p2, :pswitch_data_0

    .line 636
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_cantHappen()V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 619
    :pswitch_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;->writeArrayValueSeparator(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 622
    :pswitch_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;->writeObjectFieldValueSeparator(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 625
    :pswitch_2
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;->writeRootValueSeparator(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 629
    :pswitch_3
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->inArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;->beforeArrayValues(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->inObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final _verifyValueWrite(Ljava/lang/String;)V
    .locals 4
    .param p1, "typeMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 582
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->writeValue()I

    move-result v1

    .line 583
    .local v1, "status":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can not "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expecting field name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_reportError(Ljava/lang/String;)V

    .line 586
    :cond_0
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    if-nez v2, :cond_2

    .line 588
    packed-switch v1, :pswitch_data_0

    .line 611
    :goto_0
    return-void

    .line 590
    :pswitch_0
    const/16 v0, 0x2c

    .line 602
    .local v0, "c":C
    :goto_1
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 605
    :cond_1
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v0, v2, v3

    .line 606
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0

    .line 593
    .end local v0    # "c":C
    :pswitch_1
    const/16 v0, 0x3a

    .line 594
    .restart local v0    # "c":C
    goto :goto_1

    .line 596
    .end local v0    # "c":C
    :pswitch_2
    const/16 v0, 0x20

    .line 597
    .restart local v0    # "c":C
    goto :goto_1

    .line 610
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyPrettyValueWrite(Ljava/lang/String;I)V

    goto :goto_0

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected _writeBinary(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;[BII)V
    .locals 9
    .param p1, "b64variant"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;
    .param p2, "input"    # [B
    .param p3, "inputPtr"    # I
    .param p4, "inputEnd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 926
    add-int/lit8 v4, p4, -0x3

    .line 928
    .local v4, "safeInputEnd":I
    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    add-int/lit8 v5, v6, -0x6

    .line 929
    .local v5, "safeOutputEnd":I
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v6

    shr-int/lit8 v1, v6, 0x2

    .local v1, "chunksBeforeLF":I
    move v3, p3

    .line 932
    .end local p3    # "inputPtr":I
    .local v3, "inputPtr":I
    :goto_0
    if-le v3, v4, :cond_2

    .line 950
    sub-int v2, p4, v3

    .line 951
    .local v2, "inputLeft":I
    if-lez v2, :cond_4

    .line 952
    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v6, v5, :cond_0

    .line 953
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 955
    :cond_0
    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v6, p2, v3

    shl-int/lit8 v0, v6, 0x10

    .line 956
    .local v0, "b24":I
    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    .line 957
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v0, v6

    move p3, v3

    .line 959
    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    :cond_1
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v0, v2, v6, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->encodeBase64Partial(II[CI)I

    move-result v6

    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 961
    .end local v0    # "b24":I
    :goto_1
    return-void

    .line 933
    .end local v2    # "inputLeft":I
    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :cond_2
    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v6, v5, :cond_3

    .line 934
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 937
    :cond_3
    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v6, p2, v3

    shl-int/lit8 v0, v6, 0x8

    .line 938
    .restart local v0    # "b24":I
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v0, v6

    .line 939
    shl-int/lit8 v6, v0, 0x8

    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v7, p2, v3

    and-int/lit16 v7, v7, 0xff

    or-int v0, v6, v7

    .line 940
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v0, v6, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->encodeBase64Chunk(I[CI)I

    move-result v6

    iput v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 941
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_5

    .line 943
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v8, 0x5c

    aput-char v8, v6, v7

    .line 944
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v8, 0x6e

    aput-char v8, v6, v7

    .line 945
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v6

    shr-int/lit8 v1, v6, 0x2

    move v3, p3

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_0

    .end local v0    # "b24":I
    .restart local v2    # "inputLeft":I
    :cond_4
    move p3, v3

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    goto :goto_1

    .end local v2    # "inputLeft":I
    .restart local v0    # "b24":I
    :cond_5
    move v3, p3

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_0
.end method

.method protected _writeEndArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 111
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    .line 115
    return-void
.end method

.method protected _writeEndObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 131
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    .line 135
    return-void
.end method

.method protected _writeFieldName(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "commaBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 141
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writePPFieldName(Ljava/lang/String;Z)V

    .line 170
    :goto_0
    return-void

    .line 146
    :cond_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 149
    :cond_1
    if-eqz p2, :cond_2

    .line 150
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    .line 156
    :cond_2
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 157
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 164
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    .line 166
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_4

    .line 167
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method protected final _writePPFieldName(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "commaBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 179
    if-eqz p2, :cond_2

    .line 180
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;->writeObjectEntrySeparator(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V

    .line 185
    :goto_0
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 190
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    .line 191
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 198
    :goto_1
    return-void

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 196
    :cond_3
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected _writeStartArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 101
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    .line 105
    return-void
.end method

.method protected _writeStartObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 121
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    .line 125
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-super {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonGeneratorBase;->close()V

    .line 665
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    if-eqz v1, :cond_1

    .line 666
    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 668
    :goto_0
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->getOutputContext()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 669
    .local v0, "ctxt":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonStreamContext;
    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->writeEndArray()V

    goto :goto_0

    .line 671
    :cond_0
    invoke-virtual {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->writeEndObject()V

    goto :goto_0

    .line 678
    .end local v0    # "ctxt":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonStreamContext;
    :cond_1
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 686
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 687
    :cond_2
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 693
    :goto_1
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_releaseBuffers()V

    .line 694
    return-void

    .line 690
    :cond_3
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 652
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 653
    return-void
.end method

.method public writeBinary(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;[BII)V
    .locals 4
    .param p1, "b64variant"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 380
    const-string v0, "write binary value"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 382
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 386
    add-int v0, p3, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeBinary(Lcom/openfeint/internal/vendor/org/codehaus/jackson/Base64Variant;[BII)V

    .line 388
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 392
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 5
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x65

    .line 543
    const-string v2, "write boolean value"

    invoke-virtual {p0, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 544
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 547
    :cond_0
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 548
    .local v1, "ptr":I
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 549
    .local v0, "buf":[C
    if-eqz p1, :cond_1

    .line 550
    const/16 v2, 0x74

    aput-char v2, v0, v1

    .line 551
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x72

    aput-char v2, v0, v1

    .line 552
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 553
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 561
    :goto_0
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 562
    return-void

    .line 555
    :cond_1
    const/16 v2, 0x66

    aput-char v2, v0, v1

    .line 556
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x61

    aput-char v2, v0, v1

    .line 557
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    .line 558
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x73

    aput-char v2, v0, v1

    .line 559
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    goto :goto_0
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 568
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 569
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    .line 570
    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_1

    .line 473
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    :cond_0
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->writeString(Ljava/lang/String;)V

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 480
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(F)V
    .locals 1
    .param p1, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_1

    .line 489
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    :cond_0
    sget-object v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 491
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->writeString(Ljava/lang/String;)V

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 496
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 404
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 406
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 409
    :cond_0
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 410
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedInt(I)V

    .line 414
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeNumber(J)V
    .locals 2
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 429
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 430
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 431
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedLong(J)V

    .line 439
    :goto_0
    return-void

    .line 434
    :cond_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/io/NumberOutput;->outputLong(J[CI)I

    move-result v0

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "encodedValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 518
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 519
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 520
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    .line 524
    :goto_0
    return-void

    .line 522
    :cond_0
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "value"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 504
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 505
    if-nez p1, :cond_0

    .line 506
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    .line 512
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 508
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 456
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 457
    if-nez p1, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    .line 464
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 460
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 462
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeRaw(C)V
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 314
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char p1, v0, v1

    .line 318
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 256
    .local v0, "len":I
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v1, v2, v3

    .line 258
    .local v1, "room":I
    if-nez v1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 260
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v1, v2, v3

    .line 263
    :cond_0
    if-lt v1, v0, :cond_1

    .line 264
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v4, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 265
    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRawLong(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 276
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 278
    .local v0, "room":I
    if-ge v0, p3, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 280
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 283
    :cond_0
    if-lt v0, p3, :cond_1

    .line 284
    add-int v1, p2, p3

    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 285
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_1
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRawLong(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeRaw([CII)V
    .locals 3
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 296
    const/16 v1, 0x20

    if-ge p3, v1, :cond_1

    .line 297
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 298
    .local v0, "room":I
    if-le p3, v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 308
    .end local v0    # "room":I
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 307
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 324
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 332
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0, p1, p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;II)V

    .line 334
    return-void
.end method

.method public writeRawValue([CII)V
    .locals 1
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 340
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0, p1, p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw([CII)V

    .line 342
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 210
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 211
    if-nez p1, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    .line 225
    :goto_0
    return-void

    .line 215
    :cond_0
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 219
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    .line 221
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method public writeString([CII)V
    .locals 4
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 231
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 232
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 236
    invoke-direct {p0, p1, p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_writeString([CII)V

    .line 238
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 242
    return-void
.end method
