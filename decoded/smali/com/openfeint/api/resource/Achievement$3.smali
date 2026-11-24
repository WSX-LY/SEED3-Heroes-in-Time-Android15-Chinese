.class Lcom/openfeint/api/resource/Achievement$3;
.super Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;
.source "Achievement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Achievement;->unlock(Lcom/openfeint/api/resource/Achievement$UnlockCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/api/resource/Achievement;

.field private final synthetic val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/Achievement;Lcom/openfeint/api/resource/Achievement$UnlockCB;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/api/resource/Achievement$3;->this$0:Lcom/openfeint/api/resource/Achievement;

    iput-object p2, p0, Lcom/openfeint/api/resource/Achievement$3;->val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;

    .line 203
    invoke-direct {p0}, Lcom/openfeint/api/resource/Achievement$UpdateProgressionCB;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$3;->val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Achievement$UnlockCB;->onFailure(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public onSuccess(Z)V
    .locals 1
    .param p1, "complete"    # Z

    .prologue
    .line 205
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$3;->val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Achievement$UnlockCB;->onSuccess(Z)V

    .line 206
    return-void
.end method
