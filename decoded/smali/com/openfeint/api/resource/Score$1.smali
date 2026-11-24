.class Lcom/openfeint/api/resource/Score$1;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "Score.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Score;->submitToInternal(Lcom/openfeint/api/resource/Leaderboard;Ljava/lang/String;Lcom/openfeint/api/resource/Score$SubmitToCB;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/api/resource/Score;

.field private final synthetic val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

.field private final synthetic val$fromOffline:Z

.field private final synthetic val$leaderboard:Lcom/openfeint/api/resource/Leaderboard;

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$uploadBlob:Z


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/Score;Lcom/openfeint/internal/request/OrderedArgList;Ljava/lang/String;ZLcom/openfeint/api/resource/Score$SubmitToCB;ZLcom/openfeint/api/resource/Leaderboard;)V
    .locals 0
    .param p2, "$anonymous0"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/api/resource/Score$1;->this$0:Lcom/openfeint/api/resource/Score;

    iput-object p3, p0, Lcom/openfeint/api/resource/Score$1;->val$path:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/openfeint/api/resource/Score$1;->val$fromOffline:Z

    iput-object p5, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    iput-boolean p6, p0, Lcom/openfeint/api/resource/Score$1;->val$uploadBlob:Z

    iput-object p7, p0, Lcom/openfeint/api/resource/Score$1;->val$leaderboard:Lcom/openfeint/api/resource/Leaderboard;

    .line 200
    invoke-direct {p0, p2}, Lcom/openfeint/internal/request/JSONRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    return-void
.end method

.method private final perhapsUploadBlob(ZLjava/lang/Object;)V
    .locals 8
    .param p1, "uploadBlob"    # Z
    .param p2, "responseBody"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 227
    if-eqz p1, :cond_1

    instance-of v3, p2, Ljava/util/List;

    if-eqz v3, :cond_1

    move-object v2, p2

    .line 228
    check-cast v2, Ljava/util/List;

    .line 229
    .local v2, "scores":Ljava/util/List;, "Ljava/util/List<Lcom/openfeint/api/resource/Score;>;"
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openfeint/api/resource/Score;

    .line 231
    .local v1, "s":Lcom/openfeint/api/resource/Score;
    new-instance v0, Lcom/openfeint/internal/request/CompressedBlobPostRequest;

    invoke-static {v1}, Lcom/openfeint/api/resource/Score;->access$0(Lcom/openfeint/api/resource/Score;)Lcom/openfeint/internal/resource/BlobUploadParameters;

    move-result-object v3

    const-string v4, "blob.%s.bin"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/openfeint/api/resource/Score;->resourceID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/openfeint/api/resource/Score$1;->this$0:Lcom/openfeint/api/resource/Score;

    iget-object v5, v5, Lcom/openfeint/api/resource/Score;->blob:[B

    invoke-direct {v0, v3, v4, v5}, Lcom/openfeint/internal/request/CompressedBlobPostRequest;-><init>(Lcom/openfeint/internal/resource/BlobUploadParameters;Ljava/lang/String;[B)V

    .line 232
    .local v0, "postRequest":Lcom/openfeint/internal/request/BlobPostRequest;
    iget-object v3, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    if-eqz v3, :cond_0

    .line 233
    new-instance v3, Lcom/openfeint/api/resource/Score$1$1;

    iget-object v4, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    invoke-direct {v3, p0, v4}, Lcom/openfeint/api/resource/Score$1$1;-><init>(Lcom/openfeint/api/resource/Score$1;Lcom/openfeint/api/resource/Score$SubmitToCB;)V

    invoke-virtual {v0, v3}, Lcom/openfeint/internal/request/BlobPostRequest;->setDelegate(Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 243
    :cond_0
    invoke-virtual {v0}, Lcom/openfeint/internal/request/BlobPostRequest;->launch()V

    .line 245
    .end local v0    # "postRequest":Lcom/openfeint/internal/request/BlobPostRequest;
    .end local v1    # "s":Lcom/openfeint/api/resource/Score;
    .end local v2    # "scores":Ljava/util/List;, "Ljava/util/List<Lcom/openfeint/api/resource/Score;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, "POST"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Score$SubmitToCB;->onFailure(Ljava/lang/String;)V

    .line 252
    :cond_0
    return-void
.end method

.method protected onResponse(ILjava/lang/Object;)V
    .locals 5
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 205
    const/16 v1, 0xc9

    if-ne v1, p1, :cond_3

    .line 206
    iget-boolean v1, p0, Lcom/openfeint/api/resource/Score$1;->val$fromOffline:Z

    if-nez v1, :cond_0

    .line 207
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 208
    .local v0, "r":Landroid/content/res/Resources;
    const-string v1, "of_score_submitted_notification"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@drawable/of_icon_highscore_notification"

    sget-object v3, Lcom/openfeint/api/Notification$Category;->HighScore:Lcom/openfeint/api/Notification$Category;

    sget-object v4, Lcom/openfeint/api/Notification$Type;->Success:Lcom/openfeint/api/Notification$Type;

    invoke-static {v1, v2, v3, v4}, Lcom/openfeint/internal/notifications/SimpleNotification;->show(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V

    .line 210
    .end local v0    # "r":Landroid/content/res/Resources;
    :cond_0
    iget-object v1, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/openfeint/api/resource/Score$SubmitToCB;->onSuccess(Z)V

    .line 211
    :cond_1
    iget-boolean v1, p0, Lcom/openfeint/api/resource/Score$1;->val$uploadBlob:Z

    invoke-direct {p0, v1, p2}, Lcom/openfeint/api/resource/Score$1;->perhapsUploadBlob(ZLjava/lang/Object;)V

    .line 222
    :cond_2
    :goto_0
    return-void

    .line 212
    :cond_3
    const/16 v1, 0xc8

    if-gt v1, p1, :cond_4

    const/16 v1, 0x12c

    if-ge p1, v1, :cond_4

    .line 213
    iget-object v1, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    invoke-virtual {v1, v3}, Lcom/openfeint/api/resource/Score$SubmitToCB;->onSuccess(Z)V

    goto :goto_0

    .line 214
    :cond_4
    if-eqz p1, :cond_5

    const/16 v1, 0x1f4

    if-gt v1, p1, :cond_6

    :cond_5
    iget-boolean v1, p0, Lcom/openfeint/api/resource/Score$1;->val$fromOffline:Z

    if-nez v1, :cond_6

    .line 216
    iget-object v1, p0, Lcom/openfeint/api/resource/Score$1;->this$0:Lcom/openfeint/api/resource/Score;

    iget-object v2, p0, Lcom/openfeint/api/resource/Score$1;->val$leaderboard:Lcom/openfeint/api/resource/Leaderboard;

    invoke-static {v1, v2}, Lcom/openfeint/internal/offline/OfflineSupport;->postOfflineScore(Lcom/openfeint/api/resource/Score;Lcom/openfeint/api/resource/Leaderboard;)V

    .line 217
    iget-object v1, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    invoke-virtual {v1, v3}, Lcom/openfeint/api/resource/Score$SubmitToCB;->onSuccess(Z)V

    goto :goto_0

    .line 220
    :cond_6
    invoke-virtual {p0, p2}, Lcom/openfeint/api/resource/Score$1;->onFailure(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/openfeint/api/resource/Score$1;->val$path:Ljava/lang/String;

    return-object v0
.end method
