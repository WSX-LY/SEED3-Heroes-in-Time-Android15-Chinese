.class Lcom/openfeint/internal/ui/WebNav$4$1;
.super Ljava/lang/Object;
.source "WebNav.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/WebNav$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openfeint/internal/ui/WebNav$4;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebNav$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebNav$4$1;->this$1:Lcom/openfeint/internal/ui/WebNav$4;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$4$1;->this$1:Lcom/openfeint/internal/ui/WebNav$4;

    invoke-static {v0}, Lcom/openfeint/internal/ui/WebNav$4;->access$0(Lcom/openfeint/internal/ui/WebNav$4;)Lcom/openfeint/internal/ui/WebNav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/ui/WebNav;->finish()V

    .line 198
    return-void
.end method
