.class Lcom/openfeint/internal/ui/WebNav$4;
.super Ljava/lang/Object;
.source "WebNav.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/WebNav;->closeForDiskError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/WebNav;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebNav;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebNav$4;->this$0:Lcom/openfeint/internal/ui/WebNav;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/openfeint/internal/ui/WebNav$4;)Lcom/openfeint/internal/ui/WebNav;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$4;->this$0:Lcom/openfeint/internal/ui/WebNav;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 189
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav$4;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-static {v1}, Lcom/openfeint/internal/ui/WebNav;->access$0(Lcom/openfeint/internal/ui/WebNav;)V

    .line 190
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav$4;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-static {v1}, Lcom/openfeint/internal/Util;->sdcardReady(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "of_sdcard"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "place":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav$4;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    const-string v2, "of_nodisk"

    invoke-static {v2}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 194
    const-string v2, "of_no"

    invoke-static {v2}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/openfeint/internal/ui/WebNav$4$1;

    invoke-direct {v3, p0}, Lcom/openfeint/internal/ui/WebNav$4$1;-><init>(Lcom/openfeint/internal/ui/WebNav$4;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 200
    return-void

    .line 191
    .end local v0    # "place":Ljava/lang/String;
    :cond_0
    const-string v1, "of_device"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
