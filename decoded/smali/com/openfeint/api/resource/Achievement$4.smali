.class Lcom/openfeint/api/resource/Achievement$4;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "Achievement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Achievement;->updateProgression(FLcom/openfeint/api/resource/Achievement$UpdateProgressionCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/api/resource/Achievement;

.field private final synthetic val$cb:Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;

.field private final synthetic val$clampedPctComplete:F

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$resID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/Achievement;Lcom/openfeint/internal/request/OrderedArgList;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;F)V
    .locals 0
    .param p2, "$anonymous0"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/api/resource/Achievement$4;->this$0:Lcom/openfeint/api/resource/Achievement;

    iput-object p3, p0, Lcom/openfeint/api/resource/Achievement$4;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/openfeint/api/resource/Achievement$4;->val$resID:Ljava/lang/String;

    iput-object p5, p0, Lcom/openfeint/api/resource/Achievement$4;->val$cb:Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;

    iput p6, p0, Lcom/openfeint/api/resource/Achievement$4;->val$clampedPctComplete:F

    .line 275
    invoke-direct {p0, p2}, Lcom/openfeint/internal/request/JSONRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const-string v0, "PUT"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$4;->val$cb:Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$4;->val$cb:Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;->onFailure(Ljava/lang/String;)V

    .line 318
    :cond_0
    return-void
.end method

.method protected onResponse(ILjava/lang/Object;)V
    .locals 7
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/Object;

    .prologue
    const/16 v6, 0xc9

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 279
    const/16 v5, 0xc8

    if-lt p1, v5, :cond_4

    const/16 v5, 0x12c

    if-ge p1, v5, :cond_4

    move-object v0, p2

    .line 280
    check-cast v0, Lcom/openfeint/api/resource/Achievement;

    .line 282
    .local v0, "achievement":Lcom/openfeint/api/resource/Achievement;
    iget-object v5, p0, Lcom/openfeint/api/resource/Achievement$4;->this$0:Lcom/openfeint/api/resource/Achievement;

    iget v2, v5, Lcom/openfeint/api/resource/Achievement;->percentComplete:F

    .line 283
    .local v2, "oldPercentComplete":F
    iget-object v5, p0, Lcom/openfeint/api/resource/Achievement$4;->this$0:Lcom/openfeint/api/resource/Achievement;

    invoke-virtual {v5, v0}, Lcom/openfeint/api/resource/Achievement;->shallowCopy(Lcom/openfeint/internal/resource/Resource;)V

    .line 284
    iget-object v5, p0, Lcom/openfeint/api/resource/Achievement$4;->this$0:Lcom/openfeint/api/resource/Achievement;

    iget v1, v5, Lcom/openfeint/api/resource/Achievement;->percentComplete:F

    .line 285
    .local v1, "newPercentComplete":F
    iget-object v5, p0, Lcom/openfeint/api/resource/Achievement$4;->val$resID:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/openfeint/internal/offline/OfflineSupport;->updateServerCompletionPercentage(Ljava/lang/String;F)V

    .line 287
    if-eq v6, p1, :cond_0

    cmpl-float v5, v1, v2

    if-lez v5, :cond_1

    .line 288
    :cond_0
    invoke-static {v0}, Lcom/openfeint/internal/notifications/AchievementNotification;->showStatus(Lcom/openfeint/api/resource/Achievement;)V

    .line 291
    :cond_1
    iget-object v5, p0, Lcom/openfeint/api/resource/Achievement$4;->val$cb:Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;

    if-eqz v5, :cond_2

    .line 292
    iget-object v5, p0, Lcom/openfeint/api/resource/Achievement$4;->val$cb:Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;

    if-ne v6, p1, :cond_3

    :goto_0
    invoke-virtual {v5, v3}, Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;->onSuccess(Z)V

    .line 311
    .end local v0    # "achievement":Lcom/openfeint/api/resource/Achievement;
    .end local v1    # "newPercentComplete":F
    .end local v2    # "oldPercentComplete":F
    :cond_2
    :goto_1
    return-void

    .restart local v0    # "achievement":Lcom/openfeint/api/resource/Achievement;
    .restart local v1    # "newPercentComplete":F
    .restart local v2    # "oldPercentComplete":F
    :cond_3
    move v3, v4

    .line 292
    goto :goto_0

    .line 294
    .end local v0    # "achievement":Lcom/openfeint/api/resource/Achievement;
    .end local v1    # "newPercentComplete":F
    .end local v2    # "oldPercentComplete":F
    :cond_4
    const/16 v5, 0x190

    if-gt v5, p1, :cond_5

    const/16 v5, 0x1f4

    if-ge p1, v5, :cond_5

    .line 297
    invoke-virtual {p0, p2}, Lcom/openfeint/api/resource/Achievement$4;->onFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 301
    :cond_5
    const/high16 v5, 0x42c80000    # 100.0f

    iget v6, p0, Lcom/openfeint/api/resource/Achievement$4;->val$clampedPctComplete:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_6

    .line 303
    iget-object v5, p0, Lcom/openfeint/api/resource/Achievement$4;->this$0:Lcom/openfeint/api/resource/Achievement;

    iget v6, p0, Lcom/openfeint/api/resource/Achievement$4;->val$clampedPctComplete:F

    iput v6, v5, Lcom/openfeint/api/resource/Achievement;->percentComplete:F

    .line 304
    iget-object v5, p0, Lcom/openfeint/api/resource/Achievement$4;->this$0:Lcom/openfeint/api/resource/Achievement;

    iput-boolean v3, v5, Lcom/openfeint/api/resource/Achievement;->isUnlocked:Z

    .line 305
    iget-object v3, p0, Lcom/openfeint/api/resource/Achievement$4;->this$0:Lcom/openfeint/api/resource/Achievement;

    invoke-static {v3}, Lcom/openfeint/internal/notifications/AchievementNotification;->showStatus(Lcom/openfeint/api/resource/Achievement;)V

    .line 307
    :cond_6
    iget-object v3, p0, Lcom/openfeint/api/resource/Achievement$4;->val$cb:Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;

    if-eqz v3, :cond_2

    .line 308
    iget-object v3, p0, Lcom/openfeint/api/resource/Achievement$4;->val$cb:Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;

    invoke-virtual {v3, v4}, Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;->onSuccess(Z)V

    goto :goto_1
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$4;->val$path:Ljava/lang/String;

    return-object v0
.end method
