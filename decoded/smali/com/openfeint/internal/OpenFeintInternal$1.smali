.class Lcom/openfeint/internal/OpenFeintInternal$1;
.super Lcom/openfeint/internal/request/RawRequest;
.source "OpenFeintInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/OpenFeintInternal;->createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/OpenFeintInternal;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/OrderedArgList;)V
    .locals 0
    .param p2, "$anonymous0"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal$1;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    .line 295
    invoke-direct {p0, p2}, Lcom/openfeint/internal/request/RawRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    const-string v0, "POST"

    return-object v0
.end method

.method protected onResponse(ILjava/lang/Object;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 300
    const/16 v0, 0xc8

    if-gt v0, p1, :cond_2

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_2

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/openfeint/internal/resource/ServerException;

    if-nez v0, :cond_2

    .line 302
    :cond_0
    sget-object v0, Lcom/openfeint/internal/OpenFeintInternal$1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new user or enable of: response code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v1

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_1

    const-string v0, "new_user.openfeint.com"

    :goto_0
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->access$0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->postEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$1;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    check-cast p2, Lcom/openfeint/api/resource/User;

    .end local p2    # "responseBody":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/openfeint/internal/OpenFeintInternal;->access$1(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/api/resource/User;)V

    .line 308
    :goto_1
    return-void

    .line 303
    .restart local p2    # "responseBody":Ljava/lang/Object;
    :cond_1
    const-string v0, "enabled_of.openfeint.com"

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/OpenFeintInternal$1;->onFailure(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    const-string v0, "/xp/users.json"

    return-object v0
.end method
