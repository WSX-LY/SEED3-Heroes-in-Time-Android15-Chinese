.class final Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bucket"
.end annotation


# instance fields
.field final mName:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

.field final mNext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V
    .locals 0
    .param p1, "name"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .param p2, "next"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .prologue
    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 916
    iput-object p1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    .line 917
    iput-object p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 918
    return-void
.end method


# virtual methods
.method public find(III)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "hash"    # I
    .param p2, "firstQuad"    # I
    .param p3, "secondQuad"    # I

    .prologue
    .line 931
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 932
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    invoke-virtual {v2, p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 933
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    .line 944
    :cond_0
    :goto_0
    return-object v1

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, "curr":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_1
    if-nez v0, :cond_2

    .line 944
    const/4 v1, 0x0

    goto :goto_0

    .line 937
    :cond_2
    iget-object v1, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    .line 938
    .local v1, "currName":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 939
    invoke-virtual {v1, p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;->equals(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 936
    :cond_3
    iget-object v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_1
.end method

.method public find(I[II)Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "hash"    # I
    .param p2, "quads"    # [I
    .param p3, "qlen"    # I

    .prologue
    .line 949
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    invoke-virtual {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 950
    iget-object v2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    invoke-virtual {v2, p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;->equals([II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 951
    iget-object v1, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    .line 962
    :cond_0
    :goto_0
    return-object v1

    .line 954
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, "curr":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_1
    if-nez v0, :cond_2

    .line 962
    const/4 v1, 0x0

    goto :goto_0

    .line 955
    :cond_2
    iget-object v1, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;

    .line 956
    .local v1, "currName":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;
    invoke-virtual {v1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 957
    invoke-virtual {v1, p2, p3}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/Name;->equals([II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 954
    :cond_3
    iget-object v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_1
.end method

.method public length()I
    .locals 2

    .prologue
    .line 922
    const/4 v1, 0x1

    .line 923
    .local v1, "len":I
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, "curr":Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_0
    if-nez v0, :cond_0

    .line 926
    return v1

    .line 924
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 923
    iget-object v0, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lcom/openfeint/internal/vendor/org/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_0
.end method
