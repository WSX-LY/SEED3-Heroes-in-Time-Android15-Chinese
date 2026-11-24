.class Lch/android/lib/openfeint/ChOpenFeint$1;
.super Lcom/openfeint/api/resource/Score$SubmitToCB;
.source "ChOpenFeint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/lib/openfeint/ChOpenFeint;->registerScore(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Lcom/openfeint/api/resource/Score$SubmitToCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

.field private final synthetic val$score:J


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/Score$SubmitToCB;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/lib/openfeint/ChOpenFeint$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    iput-wide p2, p0, Lch/android/lib/openfeint/ChOpenFeint$1;->val$score:J

    .line 35
    invoke-direct {p0}, Lcom/openfeint/api/resource/Score$SubmitToCB;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lch/android/lib/openfeint/ChOpenFeint$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lch/android/lib/openfeint/ChOpenFeint$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Score$SubmitToCB;->onFailure(Ljava/lang/String;)V

    .line 49
    :cond_0
    const-string v0, "KD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerScore : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public onSuccess(Z)V
    .locals 4
    .param p1, "newHighScore"    # Z

    .prologue
    .line 39
    iget-object v0, p0, Lch/android/lib/openfeint/ChOpenFeint$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lch/android/lib/openfeint/ChOpenFeint$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Score$SubmitToCB;->onSuccess(Z)V

    .line 42
    :cond_0
    const-string v0, "KD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerScore : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lch/android/lib/openfeint/ChOpenFeint$1;->val$score:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". success. is new ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method
