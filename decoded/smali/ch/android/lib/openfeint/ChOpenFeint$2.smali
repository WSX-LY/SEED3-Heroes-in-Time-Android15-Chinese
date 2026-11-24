.class Lch/android/lib/openfeint/ChOpenFeint$2;
.super Lcom/openfeint/api/resource/Achievement$UnlockCB;
.source "ChOpenFeint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/lib/openfeint/ChOpenFeint;->registerAchievement(Landroid/app/Activity;Ljava/lang/String;Lcom/openfeint/api/resource/Achievement$UnlockCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/Achievement$UnlockCB;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/lib/openfeint/ChOpenFeint$2;->val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;

    .line 55
    invoke-direct {p0}, Lcom/openfeint/api/resource/Achievement$UnlockCB;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lch/android/lib/openfeint/ChOpenFeint$2;->val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lch/android/lib/openfeint/ChOpenFeint$2;->val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Achievement$UnlockCB;->onFailure(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method public onSuccess(Z)V
    .locals 1
    .param p1, "newUnlock"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lch/android/lib/openfeint/ChOpenFeint$2;->val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lch/android/lib/openfeint/ChOpenFeint$2;->val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Achievement$UnlockCB;->onSuccess(Z)V

    .line 62
    :cond_0
    return-void
.end method
