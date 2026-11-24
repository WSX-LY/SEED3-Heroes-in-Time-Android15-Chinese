.class Lcom/openfeint/internal/ui/NativeBrowser$2;
.super Ljava/lang/Object;
.source "NativeBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/NativeBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/NativeBrowser;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/NativeBrowser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/ui/NativeBrowser$2;->this$0:Lcom/openfeint/internal/ui/NativeBrowser;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    iget-object v1, p0, Lcom/openfeint/internal/ui/NativeBrowser$2;->this$0:Lcom/openfeint/internal/ui/NativeBrowser;

    invoke-static {v1}, Lcom/openfeint/internal/ui/NativeBrowser;->access$0(Lcom/openfeint/internal/ui/NativeBrowser;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v0, "returnIntent":Landroid/content/Intent;
    const-string v1, "com.openfeint.internal.ui.NativeBrowser.argument.failed"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    const-string v1, "com.openfeint.internal.ui.NativeBrowser.argument.failure_code"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string v1, "com.openfeint.internal.ui.NativeBrowser.argument.failure_desc"

    const-string v2, "Timeout"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/openfeint/internal/ui/NativeBrowser$2;->this$0:Lcom/openfeint/internal/ui/NativeBrowser;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/openfeint/internal/ui/NativeBrowser;->setResult(ILandroid/content/Intent;)V

    .line 88
    iget-object v1, p0, Lcom/openfeint/internal/ui/NativeBrowser$2;->this$0:Lcom/openfeint/internal/ui/NativeBrowser;

    invoke-virtual {v1}, Lcom/openfeint/internal/ui/NativeBrowser;->finish()V

    .line 90
    .end local v0    # "returnIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
