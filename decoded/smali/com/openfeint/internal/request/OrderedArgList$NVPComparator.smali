.class Lcom/openfeint/internal/request/OrderedArgList$NVPComparator;
.super Ljava/lang/Object;
.source "OrderedArgList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/request/OrderedArgList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NVPComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/http/NameValuePair;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/apache/http/NameValuePair;

    check-cast p2, Lorg/apache/http/NameValuePair;

    invoke-virtual {p0, p1, p2}, Lcom/openfeint/internal/request/OrderedArgList$NVPComparator;->compare(Lorg/apache/http/NameValuePair;Lorg/apache/http/NameValuePair;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/http/NameValuePair;Lorg/apache/http/NameValuePair;)I
    .locals 3
    .param p1, "a"    # Lorg/apache/http/NameValuePair;
    .param p2, "b"    # Lorg/apache/http/NameValuePair;

    .prologue
    .line 155
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, "r":I
    if-nez v0, :cond_0

    .line 157
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 159
    .end local v0    # "r":I
    :cond_0
    return v0
.end method
