.class Lcom/openfeint/api/resource/Achievement$5;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "Achievement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Achievement;->load(Lcom/openfeint/api/resource/Achievement$LoadCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/api/resource/Achievement;

.field private final synthetic val$cb:Lcom/openfeint/api/resource/Achievement$LoadCB;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/Achievement;Ljava/lang/String;Lcom/openfeint/api/resource/Achievement$LoadCB;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/api/resource/Achievement$5;->this$0:Lcom/openfeint/api/resource/Achievement;

    iput-object p2, p0, Lcom/openfeint/api/resource/Achievement$5;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/openfeint/api/resource/Achievement$5;->val$cb:Lcom/openfeint/api/resource/Achievement$LoadCB;

    .line 353
    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    const-string v0, "GET"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-super {p0, p1}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$5;->val$cb:Lcom/openfeint/api/resource/Achievement$LoadCB;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$5;->val$cb:Lcom/openfeint/api/resource/Achievement$LoadCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Achievement$LoadCB;->onFailure(Ljava/lang/String;)V

    .line 368
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$5;->this$0:Lcom/openfeint/api/resource/Achievement;

    check-cast p1, Lcom/openfeint/api/resource/Achievement;

    .end local p1    # "responseBody":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Achievement;->shallowCopy(Lcom/openfeint/internal/resource/Resource;)V

    .line 358
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$5;->val$cb:Lcom/openfeint/api/resource/Achievement$LoadCB;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$5;->val$cb:Lcom/openfeint/api/resource/Achievement$LoadCB;

    invoke-virtual {v0}, Lcom/openfeint/api/resource/Achievement$LoadCB;->onSuccess()V

    .line 361
    :cond_0
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$5;->val$path:Ljava/lang/String;

    return-object v0
.end method
