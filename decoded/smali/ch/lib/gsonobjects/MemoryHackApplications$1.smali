.class Lch/lib/gsonobjects/MemoryHackApplications$1;
.super Ljava/lang/Object;
.source "MemoryHackApplications.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/lib/gsonobjects/MemoryHackApplications;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lch/lib/gsonobjects/MemoryHackApplications;


# direct methods
.method constructor <init>(Lch/lib/gsonobjects/MemoryHackApplications;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/lib/gsonobjects/MemoryHackApplications$1;->this$0:Lch/lib/gsonobjects/MemoryHackApplications;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lch/lib/gsonobjects/MemoryHackApplications$1;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lch/lib/gsonobjects/MemoryHackApplications$1;->index:I

    iget-object v1, p0, Lch/lib/gsonobjects/MemoryHackApplications$1;->this$0:Lch/lib/gsonobjects/MemoryHackApplications;

    invoke-static {v1}, Lch/lib/gsonobjects/MemoryHackApplications;->access$0(Lch/lib/gsonobjects/MemoryHackApplications;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lch/lib/gsonobjects/MemoryHackApplications$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lch/lib/gsonobjects/MemoryHackApplications$1;->this$0:Lch/lib/gsonobjects/MemoryHackApplications;

    invoke-static {v0}, Lch/lib/gsonobjects/MemoryHackApplications;->access$0(Lch/lib/gsonobjects/MemoryHackApplications;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lch/lib/gsonobjects/MemoryHackApplications$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lch/lib/gsonobjects/MemoryHackApplications$1;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "not support this operation."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    return-void
.end method
