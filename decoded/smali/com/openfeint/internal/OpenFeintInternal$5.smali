.class Lcom/openfeint/internal/OpenFeintInternal$5;
.super Ljava/lang/Object;
.source "OpenFeintInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/OpenFeintInternal;->submitIntent(Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/OpenFeintInternal;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/OpenFeintInternal;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal$5;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    iput-object p2, p0, Lcom/openfeint/internal/OpenFeintInternal$5;->val$intent:Landroid/content/Intent;

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$5;->val$intent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 537
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$5;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 538
    return-void
.end method
