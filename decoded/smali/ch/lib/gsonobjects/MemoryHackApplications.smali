.class public Lch/lib/gsonobjects/MemoryHackApplications;
.super Ljava/lang/Object;
.source "MemoryHackApplications.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private packageNames:[Ljava/lang/String;

.field public timeMills:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lch/lib/gsonobjects/MemoryHackApplications;->timeMills:J

    .line 18
    iput-object p1, p0, Lch/lib/gsonobjects/MemoryHackApplications;->packageNames:[Ljava/lang/String;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lch/lib/gsonobjects/MemoryHackApplications;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lch/lib/gsonobjects/MemoryHackApplications;->packageNames:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getPackageNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lch/lib/gsonobjects/MemoryHackApplications;->packageNames:[Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lch/lib/gsonobjects/MemoryHackApplications$1;

    invoke-direct {v0, p0}, Lch/lib/gsonobjects/MemoryHackApplications$1;-><init>(Lch/lib/gsonobjects/MemoryHackApplications;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 29
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lch/lib/gsonobjects/MemoryHackApplications;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 30
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 31
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
