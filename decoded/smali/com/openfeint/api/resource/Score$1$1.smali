.class Lcom/openfeint/api/resource/Score$1$1;
.super Ljava/lang/Object;
.source "Score.java"

# interfaces
.implements Lcom/openfeint/internal/request/IRawRequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Score$1;->perhapsUploadBlob(ZLjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openfeint/api/resource/Score$1;

.field private final synthetic val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/Score$1;Lcom/openfeint/api/resource/Score$SubmitToCB;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/api/resource/Score$1$1;->this$1:Lcom/openfeint/api/resource/Score$1;

    iput-object p2, p0, Lcom/openfeint/api/resource/Score$1$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 235
    const/16 v0, 0xc8

    if-gt v0, p1, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/openfeint/api/resource/Score$1$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    invoke-virtual {v0}, Lcom/openfeint/api/resource/Score$SubmitToCB;->onBlobUploadSuccess()V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/openfeint/api/resource/Score$1$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    invoke-virtual {v0, p2}, Lcom/openfeint/api/resource/Score$SubmitToCB;->onBlobUploadFailure(Ljava/lang/String;)V

    goto :goto_0
.end method
