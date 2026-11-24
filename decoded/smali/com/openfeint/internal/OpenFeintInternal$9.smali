.class Lcom/openfeint/internal/OpenFeintInternal$9;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "OpenFeintInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/OpenFeintInternal;->uploadFile(Ljava/lang/String;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/OpenFeintInternal;

.field private final synthetic val$contentType:Ljava/lang/String;

.field private final synthetic val$delegate:Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;

.field private final synthetic val$partSource:Lcom/openfeint/internal/request/multipart/PartSource;

.field private final synthetic val$xpApiPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/OpenFeintInternal;Ljava/lang/String;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    iput-object p2, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->val$xpApiPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->val$partSource:Lcom/openfeint/internal/request/multipart/PartSource;

    iput-object p4, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->val$contentType:Ljava/lang/String;

    iput-object p5, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->val$delegate:Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;

    .line 792
    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 794
    const-string v0, "POST"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->val$delegate:Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->val$delegate:Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;->fileUploadedTo(Ljava/lang/String;Z)V

    .line 810
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 797
    move-object v1, p1

    check-cast v1, Lcom/openfeint/internal/resource/BlobUploadParameters;

    .line 798
    .local v1, "params":Lcom/openfeint/internal/resource/BlobUploadParameters;
    new-instance v0, Lcom/openfeint/internal/request/BlobPostRequest;

    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->val$partSource:Lcom/openfeint/internal/request/multipart/PartSource;

    iget-object v3, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->val$contentType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/openfeint/internal/request/BlobPostRequest;-><init>(Lcom/openfeint/internal/resource/BlobUploadParameters;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;)V

    .line 799
    .local v0, "bp":Lcom/openfeint/internal/request/BlobPostRequest;
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->val$delegate:Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;

    if-eqz v2, :cond_0

    .line 800
    new-instance v2, Lcom/openfeint/internal/OpenFeintInternal$9$1;

    iget-object v3, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->val$delegate:Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;

    invoke-direct {v2, p0, v3, v1}, Lcom/openfeint/internal/OpenFeintInternal$9$1;-><init>(Lcom/openfeint/internal/OpenFeintInternal$9;Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;Lcom/openfeint/internal/resource/BlobUploadParameters;)V

    invoke-virtual {v0, v2}, Lcom/openfeint/internal/request/BlobPostRequest;->setDelegate(Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 806
    :cond_0
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v2, v0}, Lcom/openfeint/internal/OpenFeintInternal;->access$15(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/BaseRequest;)V

    .line 807
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->val$xpApiPath:Ljava/lang/String;

    return-object v0
.end method

.method public wantsLogin()Z
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x1

    return v0
.end method
