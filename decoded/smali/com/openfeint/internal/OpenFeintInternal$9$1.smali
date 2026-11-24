.class Lcom/openfeint/internal/OpenFeintInternal$9$1;
.super Ljava/lang/Object;
.source "OpenFeintInternal.java"

# interfaces
.implements Lcom/openfeint/internal/request/IRawRequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/OpenFeintInternal$9;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openfeint/internal/OpenFeintInternal$9;

.field private final synthetic val$delegate:Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;

.field private final synthetic val$params:Lcom/openfeint/internal/resource/BlobUploadParameters;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/OpenFeintInternal$9;Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;Lcom/openfeint/internal/resource/BlobUploadParameters;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal$9$1;->this$1:Lcom/openfeint/internal/OpenFeintInternal$9;

    iput-object p2, p0, Lcom/openfeint/internal/OpenFeintInternal$9$1;->val$delegate:Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;

    iput-object p3, p0, Lcom/openfeint/internal/OpenFeintInternal$9$1;->val$params:Lcom/openfeint/internal/resource/BlobUploadParameters;

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 802
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$9$1;->val$delegate:Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal$9$1;->val$params:Lcom/openfeint/internal/resource/BlobUploadParameters;

    iget-object v2, v2, Lcom/openfeint/internal/resource/BlobUploadParameters;->action:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal$9$1;->val$params:Lcom/openfeint/internal/resource/BlobUploadParameters;

    iget-object v2, v2, Lcom/openfeint/internal/resource/BlobUploadParameters;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0xc8

    if-gt v0, p1, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;->fileUploadedTo(Ljava/lang/String;Z)V

    .line 803
    return-void

    .line 802
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
