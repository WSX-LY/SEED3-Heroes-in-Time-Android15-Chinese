.class Lcom/openfeint/internal/ui/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/Settings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/Settings;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/Settings;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/ui/Settings$1;->this$0:Lcom/openfeint/internal/ui/Settings;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/openfeint/internal/ui/Settings$1;->this$0:Lcom/openfeint/internal/ui/Settings;

    invoke-virtual {v0}, Lcom/openfeint/internal/ui/Settings;->finish()V

    .line 49
    return-void
.end method
