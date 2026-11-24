.class public abstract Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;
.super Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonStreamContext;
.source "JsonWriteContext.java"


# static fields
.field public static final STATUS_EXPECT_NAME:I = 0x5

.field public static final STATUS_EXPECT_VALUE:I = 0x4

.field public static final STATUS_OK_AFTER_COLON:I = 0x2

.field public static final STATUS_OK_AFTER_COMMA:I = 0x1

.field public static final STATUS_OK_AFTER_SPACE:I = 0x3

.field public static final STATUS_OK_AS_IS:I


# instance fields
.field _childArray:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

.field _childObject:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

.field protected final _parent:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;


# direct methods
.method protected constructor <init>(ILcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "parent"    # Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonStreamContext;-><init>(I)V

    .line 39
    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->_childArray:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    .line 41
    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->_childObject:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    .line 52
    iput-object p2, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->_parent:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    .line 53
    return-void
.end method

.method public static createRootContext()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/RootWContext;

    invoke-direct {v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/RootWContext;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected abstract appendDesc(Ljava/lang/StringBuilder;)V
.end method

.method public final createChildArrayContext()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->_childArray:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    .line 65
    .local v0, "ctxt":Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;
    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ArrayWContext;

    .end local v0    # "ctxt":Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;
    invoke-direct {v0, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ArrayWContext;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;)V

    .restart local v0    # "ctxt":Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;
    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->_childArray:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    .line 70
    :goto_0
    return-object v0

    .line 68
    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->_index:I

    goto :goto_0
.end method

.method public final createChildObjectContext()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->_childObject:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    .line 76
    .local v0, "ctxt":Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;
    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ObjectWContext;

    .end local v0    # "ctxt":Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;
    invoke-direct {v0, p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/ObjectWContext;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;)V

    .restart local v0    # "ctxt":Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;
    iput-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->_childObject:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    .line 81
    :goto_0
    return-object v0

    .line 79
    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->_index:I

    goto :goto_0
.end method

.method public bridge synthetic getParent()Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->getParent()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->_parent:Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 112
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/impl/JsonWriteContext;->appendDesc(Ljava/lang/StringBuilder;)V

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract writeFieldName(Ljava/lang/String;)I
.end method

.method public abstract writeValue()I
.end method
