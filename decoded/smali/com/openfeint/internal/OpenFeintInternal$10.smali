.class Lcom/openfeint/internal/OpenFeintInternal$10;
.super Ljava/lang/Object;
.source "OpenFeintInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/OpenFeintInternal;->login(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/OpenFeintInternal;

.field private final synthetic val$spotlight:Z


# direct methods
.method constructor <init>(Lcom/openfeint/internal/OpenFeintInternal;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal$10;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    iput-boolean p2, p0, Lcom/openfeint/internal/OpenFeintInternal$10;->val$spotlight:Z

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/openfeint/internal/OpenFeintInternal$10;)Lcom/openfeint/internal/OpenFeintInternal;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$10;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1022
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$10;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->access$16(Lcom/openfeint/internal/OpenFeintInternal;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$10;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->access$17(Lcom/openfeint/internal/OpenFeintInternal;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$10;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->isUserLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$10;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/openfeint/internal/OpenFeintInternal;->access$18(Lcom/openfeint/internal/OpenFeintInternal;Z)V

    .line 1030
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$10;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->access$19(Lcom/openfeint/internal/OpenFeintInternal;)Lcom/openfeint/api/resource/User;

    move-result-object v0

    .line 1032
    .local v0, "savedUser":Lcom/openfeint/api/resource/User;
    if-eqz v0, :cond_2

    .line 1033
    const-string v1, "OpenFeintInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Logging in last known user: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/openfeint/api/resource/User;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$10;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    new-instance v2, Lcom/openfeint/internal/OpenFeintInternal$10$1;

    iget-boolean v3, p0, Lcom/openfeint/internal/OpenFeintInternal$10;->val$spotlight:Z

    invoke-direct {v2, p0, v3, v0}, Lcom/openfeint/internal/OpenFeintInternal$10$1;-><init>(Lcom/openfeint/internal/OpenFeintInternal$10;ZLcom/openfeint/api/resource/User;)V

    invoke-virtual {v1, v4, v4, v4, v2}, Lcom/openfeint/internal/OpenFeintInternal;->loginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    goto :goto_0

    .line 1052
    :cond_2
    const-string v1, "OpenFeintInternal"

    const-string v2, "No last user, launch intro flow"

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$10;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->access$21(Lcom/openfeint/internal/OpenFeintInternal;)V

    .line 1054
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$10;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    iget-boolean v2, p0, Lcom/openfeint/internal/OpenFeintInternal$10;->val$spotlight:Z

    invoke-virtual {v1, v2}, Lcom/openfeint/internal/OpenFeintInternal;->launchIntroFlow(Z)V

    goto :goto_0
.end method
