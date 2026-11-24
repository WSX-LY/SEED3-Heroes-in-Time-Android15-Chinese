.class public final Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    }
.end annotation


# static fields
.field protected static final DEFAULT_TABLE_SIZE:I = 0x40

.field static final INITIAL_COLLISION_LEN:I = 0x20

.field static final LAST_VALID_BUCKET:I = 0xfe

.field static final MAX_ENTRIES_FOR_REUSE:I = 0x1770

.field protected static final MAX_TABLE_SIZE:I = 0x10000

.field static final MIN_HASH_SIZE:I = 0x10


# instance fields
.field private _collCount:I

.field private _collEnd:I

.field private _collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

.field private _collListShared:Z

.field private _count:I

.field final _intern:Z

.field private _mainHash:[I

.field private _mainHashMask:I

.field private _mainHashShared:Z

.field private _mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

.field private _mainNamesShared:Z

.field private transient _needRehash:Z

.field final _parent:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;


# direct methods
.method private constructor <init>(IZ)V
    .locals 2
    .param p1, "hashSize"    # I
    .param p2, "intern"    # Z

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 209
    iput-boolean p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_intern:Z

    .line 213
    const/16 v1, 0x10

    if-ge p1, v1, :cond_1

    .line 214
    const/16 p1, 0x10

    .line 227
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->initTables(I)V

    .line 228
    return-void

    .line 219
    :cond_1
    add-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 220
    const/16 v0, 0x10

    .line 221
    .local v0, "curr":I
    :goto_1
    if-lt v0, p1, :cond_2

    .line 224
    move p1, v0

    goto :goto_0

    .line 222
    :cond_2
    add-int/2addr v0, v0

    goto :goto_1
.end method

.method private constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;Z)V
    .locals 2
    .param p1, "parent"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .param p2, "intern"    # Z

    .prologue
    const/4 v1, 0x1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 236
    iput-boolean p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_intern:Z

    .line 239
    iget v0, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 240
    iget v0, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 241
    iget-object v0, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 242
    iget-object v0, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    .line 243
    iget-object v0, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 244
    iget v0, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 245
    iget v0, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 248
    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 249
    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 250
    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 251
    return-void
.end method

.method private _addSymbol(ILcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;)V
    .locals 9
    .param p1, "hash"    # I
    .param p2, "symbol"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    .prologue
    const/4 v8, 0x1

    .line 617
    iget-boolean v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    if-eqz v5, :cond_0

    .line 618
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->unshareMain()V

    .line 621
    :cond_0
    iget-boolean v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    if-eqz v5, :cond_1

    .line 622
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->rehash()V

    .line 625
    :cond_1
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 630
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v4, p1, v5

    .line 631
    .local v4, "ix":I
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    aget-object v5, v5, v4

    if-nez v5, :cond_4

    .line 632
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    shl-int/lit8 v6, p1, 0x8

    aput v6, v5, v4

    .line 633
    iget-boolean v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    if-eqz v5, :cond_2

    .line 634
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->unshareNames()V

    .line 636
    :cond_2
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    aput-object p2, v5, v4

    .line 673
    :goto_0
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    array-length v3, v5

    .line 674
    .local v3, "hashSize":I
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    shr-int/lit8 v6, v3, 0x1

    if-le v5, v6, :cond_3

    .line 675
    shr-int/lit8 v2, v3, 0x2

    .line 679
    .local v2, "hashQuarter":I
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    sub-int v6, v3, v2

    if-le v5, v6, :cond_9

    .line 680
    iput-boolean v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 686
    .end local v2    # "hashQuarter":I
    :cond_3
    :goto_1
    return-void

    .line 641
    .end local v3    # "hashSize":I
    :cond_4
    iget-boolean v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    if-eqz v5, :cond_5

    .line 642
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->unshareCollision()V

    .line 645
    :cond_5
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 646
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v1, v5, v4

    .line 647
    .local v1, "entryValue":I
    and-int/lit16 v0, v1, 0xff

    .line 648
    .local v0, "bucket":I
    if-nez v0, :cond_8

    .line 649
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    const/16 v6, 0xfe

    if-gt v5, v6, :cond_7

    .line 650
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 651
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 653
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    array-length v5, v5

    if-lt v0, v5, :cond_6

    .line 654
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->expandCollision()V

    .line 660
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    and-int/lit16 v6, v1, -0x100

    add-int/lit8 v7, v0, 0x1

    or-int/2addr v6, v7

    aput v6, v5, v4

    .line 666
    :goto_3
    iget-object v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    new-instance v6, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iget-object v7, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v7, v7, v0

    invoke-direct {v6, p2, v7}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V

    aput-object v6, v5, v0

    goto :goto_0

    .line 657
    :cond_7
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findBestBucket()I

    move-result v0

    goto :goto_2

    .line 662
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 681
    .end local v0    # "bucket":I
    .end local v1    # "entryValue":I
    .restart local v2    # "hashQuarter":I
    .restart local v3    # "hashSize":I
    :cond_9
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    if-lt v5, v2, :cond_3

    .line 682
    iput-boolean v8, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    goto :goto_1
.end method

.method public static final calcHash(I)I
    .locals 2
    .param p0, "firstQuad"    # I

    .prologue
    .line 506
    move v0, p0

    .line 507
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 508
    ushr-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    .line 509
    return v0
.end method

.method public static final calcHash(II)I
    .locals 2
    .param p0, "firstQuad"    # I
    .param p1, "secondQuad"    # I

    .prologue
    .line 514
    mul-int/lit8 v1, p0, 0x1f

    add-int v0, v1, p1

    .line 519
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 520
    ushr-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    .line 521
    return v0
.end method

.method public static final calcHash([II)I
    .locals 4
    .param p0, "quads"    # [I
    .param p1, "qlen"    # I

    .prologue
    .line 527
    const/4 v2, 0x0

    aget v0, p0, v2

    .line 528
    .local v0, "hash":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 532
    ushr-int/lit8 v2, v0, 0x10

    xor-int/2addr v0, v2

    .line 533
    ushr-int/lit8 v2, v0, 0x8

    xor-int/2addr v0, v2

    .line 535
    return v0

    .line 529
    :cond_0
    mul-int/lit8 v2, v0, 0x1f

    aget v3, p0, v1

    add-int v0, v2, v3

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static constructName(ILjava/lang/String;[II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 8
    .param p0, "hash"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "quads"    # [I
    .param p3, "qlen"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 884
    const/4 v0, 0x4

    if-ge p3, v0, :cond_0

    .line 885
    packed-switch p3, :pswitch_data_0

    .line 896
    :cond_0
    new-array v6, p3, [I

    .line 897
    .local v6, "buf":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-lt v7, p3, :cond_1

    .line 900
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/NameN;

    invoke-direct {v0, p1, p0, v6, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/NameN;-><init>(Ljava/lang/String;I[II)V

    .end local v6    # "buf":[I
    .end local v7    # "i":I
    :goto_1
    return-object v0

    .line 887
    :pswitch_0
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name1;

    aget v1, p2, v1

    invoke-direct {v0, p1, p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name1;-><init>(Ljava/lang/String;II)V

    goto :goto_1

    .line 889
    :pswitch_1
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name2;

    aget v1, p2, v1

    aget v2, p2, v2

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name2;-><init>(Ljava/lang/String;III)V

    goto :goto_1

    .line 891
    :pswitch_2
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name3;

    aget v3, p2, v1

    aget v4, p2, v2

    const/4 v1, 0x2

    aget v5, p2, v1

    move-object v1, p1

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name3;-><init>(Ljava/lang/String;IIII)V

    goto :goto_1

    .line 898
    .restart local v6    # "buf":[I
    .restart local v7    # "i":I
    :cond_1
    aget v0, p2, v7

    aput v0, v6, v7

    .line 897
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 885
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createRoot()Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .locals 3

    .prologue
    .line 174
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;-><init>(IZ)V

    return-object v0
.end method

.method private expandCollision()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 859
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 860
    .local v1, "old":[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    array-length v0, v1

    .line 861
    .local v0, "len":I
    add-int v2, v0, v0

    new-array v2, v2, [Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 862
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 863
    return-void
.end method

.method private findBestBucket()I
    .locals 7

    .prologue
    .line 802
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 803
    .local v2, "buckets":[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    const v0, 0x7fffffff

    .line 804
    .local v0, "bestCount":I
    const/4 v1, -0x1

    .line 806
    .local v1, "bestIx":I
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .local v5, "len":I
    :goto_0
    if-lt v4, v5, :cond_1

    move v4, v1

    .line 816
    .end local v4    # "i":I
    :cond_0
    return v4

    .line 807
    .restart local v4    # "i":I
    :cond_1
    aget-object v6, v2, v4

    invoke-virtual {v6}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->length()I

    move-result v3

    .line 808
    .local v3, "count":I
    if-ge v3, v0, :cond_2

    .line 809
    const/4 v6, 0x1

    if-eq v3, v6, :cond_0

    .line 812
    move v0, v3

    .line 813
    move v1, v4

    .line 806
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getEmptyName()Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 1

    .prologue
    .line 330
    invoke-static {}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name1;->getEmptyName()Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name1;

    move-result-object v0

    return-object v0
.end method

.method private initTables(I)V
    .locals 2
    .param p1, "hashSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 255
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 256
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 257
    new-array v0, p1, [Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    .line 258
    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 259
    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 260
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 264
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 266
    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 267
    return-void
.end method

.method private markAsShared()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 306
    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 307
    iput-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 308
    return-void
.end method

.method private declared-synchronized mergeChild(Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;)V
    .locals 3
    .param p1, "child"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 273
    .local v0, "childCount":I
    iget v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v1, :cond_0

    .line 301
    :goto_0
    monitor-exit p0

    return-void

    .line 283
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->size()I

    move-result v1

    const/16 v2, 0x1770

    if-le v1, v2, :cond_1

    .line 289
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->initTables(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 272
    .end local v0    # "childCount":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 291
    .restart local v0    # "childCount":I
    :cond_1
    :try_start_2
    iget v1, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 292
    iget-object v1, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 293
    iget-object v1, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    .line 294
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 295
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 296
    iget v1, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 297
    iget-object v1, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 298
    iget v1, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 299
    iget v1, p1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private nukeSymbols()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 787
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 788
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 789
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 790
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 791
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 792
    iput v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 793
    return-void
.end method

.method private rehash()V
    .locals 19

    .prologue
    .line 690
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 692
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 698
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 699
    .local v11, "oldMainHash":[I
    array-length v7, v11

    .line 700
    .local v7, "len":I
    add-int v8, v7, v7

    .line 705
    .local v8, "newLen":I
    const/high16 v16, 0x10000

    move/from16 v0, v16

    if-le v8, v0, :cond_1

    .line 706
    invoke-direct/range {p0 .. p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->nukeSymbols()V

    .line 779
    :cond_0
    return-void

    .line 710
    :cond_1
    new-array v0, v8, [I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 711
    add-int/lit8 v16, v8, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 712
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    .line 713
    .local v12, "oldNames":[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    new-array v0, v8, [Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    .line 714
    const/4 v14, 0x0

    .line 715
    .local v14, "symbolsSeen":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v7, :cond_2

    .line 730
    move-object/from16 v0, p0

    iget v10, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 731
    .local v10, "oldEnd":I
    if-eqz v10, :cond_0

    .line 735
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 736
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 737
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 739
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 740
    .local v9, "oldBuckets":[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    array-length v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 741
    const/4 v5, 0x0

    :goto_1
    if-lt v5, v10, :cond_4

    .line 776
    move-object/from16 v0, p0

    iget v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v14, v0, :cond_0

    .line 777
    new-instance v16, Ljava/lang/RuntimeException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Internal error: count after rehash "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "; should be "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 716
    .end local v9    # "oldBuckets":[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    .end local v10    # "oldEnd":I
    :cond_2
    aget-object v13, v12, v5

    .line 717
    .local v13, "symbol":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    if-eqz v13, :cond_3

    .line 718
    add-int/lit8 v14, v14, 0x1

    .line 719
    invoke-virtual {v13}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;->hashCode()I

    move-result v4

    .line 720
    .local v4, "hash":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    move/from16 v16, v0

    and-int v6, v4, v16

    .line 721
    .local v6, "ix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-object/from16 v16, v0

    aput-object v13, v16, v6

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    move-object/from16 v16, v0

    shl-int/lit8 v17, v4, 0x8

    aput v17, v16, v6

    .line 715
    .end local v4    # "hash":I
    .end local v6    # "ix":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 742
    .end local v13    # "symbol":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .restart local v9    # "oldBuckets":[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    .restart local v10    # "oldEnd":I
    :cond_4
    aget-object v3, v9, v5

    .local v3, "curr":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_2
    if-nez v3, :cond_5

    .line 741
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 743
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 744
    iget-object v13, v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    .line 745
    .restart local v13    # "symbol":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    invoke-virtual {v13}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;->hashCode()I

    move-result v4

    .line 746
    .restart local v4    # "hash":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    move/from16 v16, v0

    and-int v6, v4, v16

    .line 747
    .restart local v6    # "ix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    move-object/from16 v16, v0

    aget v15, v16, v6

    .line 748
    .local v15, "val":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    if-nez v16, :cond_6

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    move-object/from16 v16, v0

    shl-int/lit8 v17, v4, 0x8

    aput v17, v16, v6

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-object/from16 v16, v0

    aput-object v13, v16, v6

    .line 742
    :goto_3
    iget-object v3, v3, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_2

    .line 752
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 753
    and-int/lit16 v2, v15, 0xff

    .line 754
    .local v2, "bucket":I
    if-nez v2, :cond_9

    .line 755
    move-object/from16 v0, p0

    iget v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    move/from16 v16, v0

    const/16 v17, 0xfe

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_8

    .line 756
    move-object/from16 v0, p0

    iget v2, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 757
    move-object/from16 v0, p0

    iget v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v2, v0, :cond_7

    .line 760
    invoke-direct/range {p0 .. p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->expandCollision()V

    .line 766
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    move-object/from16 v16, v0

    and-int/lit16 v0, v15, -0x100

    move/from16 v17, v0

    add-int/lit8 v18, v2, 0x1

    or-int v17, v17, v18

    aput v17, v16, v6

    .line 771
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v16, v0

    new-instance v17, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v18, v0

    aget-object v18, v18, v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v13, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V

    aput-object v17, v16, v2

    goto :goto_3

    .line 763
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->findBestBucket()I

    move-result v2

    goto :goto_4

    .line 768
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_5
.end method

.method private unshareCollision()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 837
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 838
    .local v1, "old":[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    if-nez v1, :cond_0

    .line 839
    const/16 v2, 0x20

    new-array v2, v2, [Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 845
    :goto_0
    iput-boolean v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 846
    return-void

    .line 841
    :cond_0
    array-length v0, v1

    .line 842
    .local v0, "len":I
    new-array v2, v0, [Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 843
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private unshareMain()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 827
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 828
    .local v1, "old":[I
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    array-length v0, v2

    .line 830
    .local v0, "len":I
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 831
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    iput-boolean v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 833
    return-void
.end method

.method private unshareNames()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 850
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    .line 851
    .local v1, "old":[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    array-length v0, v1

    .line 852
    .local v0, "len":I
    new-array v2, v0, [Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    iput-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    .line 853
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 854
    iput-boolean v3, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 855
    return-void
.end method


# virtual methods
.method public addName(Ljava/lang/String;[II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "symbolStr"    # Ljava/lang/String;
    .param p2, "quads"    # [I
    .param p3, "qlen"    # I

    .prologue
    .line 489
    iget-boolean v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_intern:Z

    if-eqz v2, :cond_0

    .line 490
    sget-object v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/InternCache;->instance:Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/InternCache;

    invoke-virtual {v2, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 492
    :cond_0
    invoke-static {p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash([II)I

    move-result v0

    .line 493
    .local v0, "hash":I
    invoke-static {v0, p1, p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->constructName(ILjava/lang/String;[II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v1

    .line 494
    .local v1, "symbol":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    invoke-direct {p0, v0, v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_addSymbol(ILcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;)V

    .line 495
    return-object v1
.end method

.method public findName(I)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 7
    .param p1, "firstQuad"    # I

    .prologue
    const/4 v5, 0x0

    .line 350
    invoke-static {p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v1

    .line 351
    .local v1, "hash":I
    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v2, v1, v6

    .line 352
    .local v2, "ix":I
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v4, v6, v2

    .line 357
    .local v4, "val":I
    shr-int/lit8 v6, v4, 0x8

    xor-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_3

    .line 359
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    aget-object v3, v6, v2

    .line 360
    .local v3, "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    if-nez v3, :cond_1

    move-object v3, v5

    .line 379
    .end local v3    # "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    :cond_0
    :goto_0
    return-object v3

    .line 363
    .restart local v3    # "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    :cond_1
    invoke-virtual {v3, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;->equals(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 370
    .end local v3    # "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    :cond_2
    and-int/lit16 v4, v4, 0xff

    .line 371
    if-lez v4, :cond_4

    .line 372
    add-int/lit8 v4, v4, -0x1

    .line 373
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v6, v4

    .line 374
    .local v0, "bucket":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_4

    .line 375
    const/4 v5, 0x0

    invoke-virtual {v0, v1, p1, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto :goto_0

    .line 366
    .end local v0    # "bucket":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :cond_3
    if-nez v4, :cond_2

    move-object v3, v5

    .line 367
    goto :goto_0

    :cond_4
    move-object v3, v5

    .line 379
    goto :goto_0
.end method

.method public findName(II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 7
    .param p1, "firstQuad"    # I
    .param p2, "secondQuad"    # I

    .prologue
    const/4 v5, 0x0

    .line 400
    invoke-static {p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash(II)I

    move-result v1

    .line 401
    .local v1, "hash":I
    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v2, v1, v6

    .line 402
    .local v2, "ix":I
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v4, v6, v2

    .line 407
    .local v4, "val":I
    shr-int/lit8 v6, v4, 0x8

    xor-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_3

    .line 409
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    aget-object v3, v6, v2

    .line 410
    .local v3, "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    if-nez v3, :cond_1

    move-object v3, v5

    .line 429
    .end local v3    # "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    :cond_0
    :goto_0
    return-object v3

    .line 413
    .restart local v3    # "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    :cond_1
    invoke-virtual {v3, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;->equals(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 420
    .end local v3    # "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    :cond_2
    and-int/lit16 v4, v4, 0xff

    .line 421
    if-lez v4, :cond_4

    .line 422
    add-int/lit8 v4, v4, -0x1

    .line 423
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v6, v4

    .line 424
    .local v0, "bucket":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_4

    .line 425
    invoke-virtual {v0, v1, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto :goto_0

    .line 416
    .end local v0    # "bucket":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :cond_3
    if-nez v4, :cond_2

    move-object v3, v5

    .line 417
    goto :goto_0

    :cond_4
    move-object v3, v5

    .line 429
    goto :goto_0
.end method

.method public findName([II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 7
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I

    .prologue
    const/4 v5, 0x0

    .line 457
    invoke-static {p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash([II)I

    move-result v1

    .line 459
    .local v1, "hash":I
    iget v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v2, v1, v6

    .line 460
    .local v2, "ix":I
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v4, v6, v2

    .line 461
    .local v4, "val":I
    shr-int/lit8 v6, v4, 0x8

    xor-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1

    .line 462
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    aget-object v3, v6, v2

    .line 463
    .local v3, "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    if-eqz v3, :cond_0

    .line 464
    invoke-virtual {v3, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;->equals([II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 478
    .end local v3    # "name":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    :cond_0
    :goto_0
    return-object v3

    .line 467
    :cond_1
    if-nez v4, :cond_2

    move-object v3, v5

    .line 468
    goto :goto_0

    .line 470
    :cond_2
    and-int/lit16 v4, v4, 0xff

    .line 471
    if-lez v4, :cond_3

    .line 472
    add-int/lit8 v4, v4, -0x1

    .line 473
    iget-object v6, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v6, v4

    .line 474
    .local v0, "bucket":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_3

    .line 475
    invoke-virtual {v0, v1, p1, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->find(I[II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    move-result-object v3

    goto :goto_0

    .end local v0    # "bucket":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :cond_3
    move-object v3, v5

    .line 478
    goto :goto_0
.end method

.method public declared-synchronized makeChild(ZZ)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .locals 1
    .param p1, "canonicalize"    # Z
    .param p2, "intern"    # Z

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-direct {v0, p0, p2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public maybeDirty()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->maybeDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->mergeChild(Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;)V

    .line 202
    invoke-direct {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->markAsShared()V

    .line 204
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    return v0
.end method
